<?php

class Asg_Csv_Model_Csv extends Mage_Core_Model_Abstract
{
    /**
     * Maximum SKU string length
     * @var string
     */
    const SKU_MAX_LENGTH = 64;

    const STATUS_NEW = 1;
    const STATUS_ERROR = 500;
    const STATUS_COMPLETE = 3;
    const STATUS_NOT_FOUND = 404;

    /**
     * Validation errors lis
     * @var $validationErrors array
     */
    private $validationErrors = array();

    public function _construct()
    {
        parent::_construct();
        $this->_init('asgcsv/csv');
    }

    public function getStatusesForSelect()
    {
        /** @var Asg_Csv_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');

        return array(
            self::STATUS_NEW        => $helper->__('In the queue'),
            self::STATUS_ERROR      => $helper->__('Error'),
            self::STATUS_COMPLETE   => $helper->__('Uploaded'),
            self::STATUS_NOT_FOUND  => $helper->__('Retry'),
        );
    }

    /**
     * Upload new image or delete exist image from news
     *
     * @throws Exception
     * @throws Mage_Core_Exception
     */
    public function parseAndUploadCsvFile()
    {
        /** @var Asg_Csv_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');

        $data = $this->getResponseObject();

        $fileName = $this->uploadFile();
        if ($fileName) {
            $data = $this->readCsvFile($fileName);
        } else {
            Mage::throwException($helper->__('Error. File not process!'));
        }

        if ($data->getResult()) {
            /** @var Asg_Csv_Model_Resource_Csv $resourceModel */
            $resourceModel = Mage::getResourceModel('asgcsv/csv');
            $resourceModel->multipleInsert($data->getItems());
        } else {
            Mage::throwException($this->getStringErrors($data->getErrors()));
        }

        $this->deleteFile($fileName);
    }

    /**
     * Convert errors array to string, use recursion call
     * @param $errors
     * @return string
     */
    private function getStringErrors($errors)
    {
        $errorString = "";
        foreach ($errors as $key => $value) {
            if (is_array($value)) {
                $errorString .= $this->getStringErrors($value);
            } else {
                $errorString .= $value . "<br/>";
            }
        }
        return $errorString;
    }

    /**
     * Returns uploaded file name or false if file can't upload
     * @return bool|string
     * @throws Mage_Core_Exception
     */
    private function uploadFile()
    {
        /** @var Asg_Csv_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');

        $uploadedFile = false;

        if (isset($_FILES['csv']['name']) && $_FILES['csv']['name'] != '') {
            $uploader = new Varien_File_Uploader('csv');
            $uploader->setFilesDispersion(false);
            $uploader->setAllowedExtensions(array('csv'));
            $uploader->setAllowRenameFiles(true);

            $fileUploadPath = $helper->getCsvUploadPath();

            try {
                $uploader->save($fileUploadPath);
                $uploadedFile = $fileUploadPath . $uploader->getUploadedFileName();
            } catch (Exception $e) {
                Mage::throwException('Invalid File Type');
            }
        }

        return $uploadedFile;
    }

    /**
     * Delete file from storage
     * @param $filename
     */
    private function deleteFile($filename)
    {
        /** @var Asg_Csv_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');
        $path = $helper->getCsvUploadPath();
        unlink($path . $filename);
    }

    /**
     * Method read CSV file, parse, validate adn write data to db
     * @param $file
     * @return Varien_Object
     * @throws Exception
     */
    private function readCsvFile($file)
    {
        /** @var Asg_Csv_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');
        $csv = new Varien_File_Csv();
        $fileData = $csv->getData($file);

        /** @var array<string> $errorsStringArray */
        $errorsStringArray = [];
        if (empty($fileData[0][0])
            && empty($fileData[0][1])
            && 'sku' != $fileData[0][0]
            && 'url' != $fileData[0][1]
        ) {
            $errorsStringArray[0] = $helper->__("Error. Line 0: incorrect file header");
        }

        $items = array();
        $skuList = array();

        for ($i = 1; $i < count($fileData); $i++) {
            $sku = $fileData[$i][0];
            $url = $fileData[$i][1];

            $this->setData(array('sku' => $sku, 'url' => $url));

            if ($this->validate()) {
                $items[] = array('sku' => $sku, 'url' => $url, 'line' => $i);
                $skuList[$sku] = $sku;
            } else {
                foreach ($this->getValidationErrors() as $error) {
                    $errorsStringArray[$i][] = $helper->__("Error. Line ") . $i . ":" . $helper->__($error);
                }
            }
        }

        $productList = $this->getProductIdsArrayBySku(array_values($skuList));
        $resultItems = array();
        foreach ($items as $item) {
            $sku = $item['sku'];
            $url = $item['url'];
            $line = $item['line'];
            if (!empty($productList[$sku])) {
                $resultItems[] = array(
                    'product_id' => $productList[$sku],
                    'url' => $url,
                    'status' => self::STATUS_NEW,
                    'created_at' => Mage::getSingleton('core/date')->gmtDate(),
                );
            } else {
                $errorsStringArray[$line][] = $helper->__("Error. Line ") . $line
                    . $helper->__(" : ")
                    . $helper->__("Product not found by SKU: ")
                    . $sku;
            }
        }
        $result = $this->getResponseObject();
        if (!count($errorsStringArray)) {
            $result->setResult(true);
            $result->setItems($resultItems);
        } else {
            $result->setResult(false);
            $result->setErrors($errorsStringArray);
        }
        return $result;
    }


    /**
     * Returns product ids list by sku list
     * @param $skuList
     * @return mixed
     */
    public function getProductIdsArrayBySku($skuList)
    {
        if (!count($skuList)) {
            return array();
        }
        /** @var array<Mage_Catalog_Model_Product> $productsCollection */
        $productsCollection = Mage::getResourceModel('catalog/product_collection')
            ->addAttributeToFilter('sku', array('in' => $skuList))
            ->load();

        $productList = array();
        /** @var Mage_Catalog_Model_Product $product */
        foreach ($productsCollection as $product) {
            $productList[(string)$product->getSku()] = $product->getId();
        }

        return $productList;
    }

    /**
     * Validate SKU and URL property on model
     * @return bool
     */
    public function validate()
    {
        $validSku = false;
        $validUrl = false;
        $this->clearValidationErrors();

        $errorsStringArray = [];

        $sku = $this->getSku();
        $url = $this->getUrl();
        if (empty($sku)) {
            $errorsStringArray[] = "SKU can't be empty";
        } else {
            if (!$this->isValidSku($sku)) {
                $errorsStringArray[] = "SKU length should be" . self::SKU_MAX_LENGTH . " characters maximum";
            } else {
                $validSku = true;
            }
        }
        if (empty($url)) {
            $errorsStringArray[] = "URL can't be empty";
        } else {
            if (!$this->isValidUrl($url)) {
                $errorsStringArray[] = "URL is not valid";
            } else {
                $validUrl = true;
            }
        }
        $isValid = false;
        if ($validUrl && $validSku) {
            $isValid = true;
        } else {
            $this->validationErrors = $errorsStringArray;
        }
        return $isValid;
    }

    /**
     * Method for process CSV rows on CRON
     *
     * @param Mage_Cron_Model_Schedule $schedule
     * @throws Exception
     */
    public function handleTheQueue(Mage_Cron_Model_Schedule $schedule)
    {
        /** @var array<Asg_Csv_Model_Csv> $csvRowsCollection */
        $newRowsCollection = Mage::getResourceModel('asgcsv/csv_collection');
        $newRowsCollection->addFieldToFilter('status', array('in' => self::STATUS_NEW))
            ->load();

        foreach ($newRowsCollection as $item) {
            $this->downloadImageAndSaveToProduct($item);
        }

        $date = new Zend_Date(Mage::getModel('core/date')->gmtTimestamp());
        $date->subDay(1);
        $previousDayDateTimestamp = gmdate("Y-m-d H:i:s", $date->getTimestamp());

        /** @var array<Asg_Csv_Model_Csv> $retryRowsCollection */
        $retryRowsCollection = Mage::getResourceModel('asgcsv/csv_collection');
        $retryRowsCollection
            ->addFieldToFilter('status', array('in' => self::STATUS_NOT_FOUND))
            ->addFieldToFilter('updated_at', array('to' => $previousDayDateTimestamp));

        foreach ($retryRowsCollection as $item) {
            $this->downloadImageAndSaveToProduct($item);
        }
    }

    /**
     * Download image and process
     * @param Asg_Csv_Model_Csv $item
     * @throws Exception
     */
    private function downloadImageAndSaveToProduct(Asg_Csv_Model_Csv $item)
    {
        $url = $item->getUrl();
        $curl = new Varien_Http_Adapter_Curl();
        $curl->setConfig(array('timeout' => 15, 'header' => false,));

        $curl->write(Zend_Http_Client::GET, $url);
        $data = $curl->read();
        $httpCode = $curl->getInfo(CURLINFO_HTTP_CODE);
        $curl->close();

        if ($httpCode == 200 ) {
            $item->setStatus(self::STATUS_COMPLETE);
            $this->setError("");

            $fileInfo = pathinfo($url);
            $fileName = uniqid() . "_" . $fileInfo['basename'];

            $file = new Varien_Io_File();
            $file->setAllowCreateFolders(true);
            $path = Mage::getBaseDir('media') . DS . 'csv_import';
            $file->open(array('path' => $path));
            $file->write($fileName, $data);
            $file->close();
            $image = $path . DS . $fileName;
            $item->setSize(filesize($image));
            $this->setImageToProduct($item->getProductId(), $image);
        } else {
            if ($httpCode == 404 ) {
                $item->setStatus(self::STATUS_NOT_FOUND);
            } else {
                $item->setStatus(self::STATUS_ERROR);
                $item->setError("Undefined error. Error code: " . $httpCode);
            }
        }
        $item->setUpdatedAt(Mage::getSingleton('core/date')->gmtDate());
        $item->save();
    }

    /**
     * Method for add image to product
     * @param $productId
     * @param $imagePath
     * @throws Exception
     */
    private function setImageToProduct($productId, $imagePath)
    {
        /** @var Mage_Catalog_Model_Product $product */
        $product = Mage::getModel('catalog/product')->load($productId);

        $mediaAttribute = array();
        if (!$product->getImage()) {
            $mediaAttribute[] = 'image';
        }
        if (!$product->getSmallImage()) {
            $mediaAttribute[] = 'small_image';
        }
        if(!$product->getThumbnail()) {
            $mediaAttribute[] = 'thumbnail';
        }

        $product->addImageToMediaGallery($imagePath, $mediaAttribute, false, false);
        $product->save();
    }

    /**
     * Clear validation errors
     */
    private function clearValidationErrors()
    {
        $this->validationErrors = [];
    }

    /**
     * Returns validation errors
     * @return array
     */
    public function getValidationErrors()
    {
        return $this->validationErrors;
    }


    /**
     * @param $sku
     * @return bool
     */
    private function isValidSku($sku)
    {
        /** @var Mage_Core_Helper_String $helper */
        $helper = Mage::helper('core/string');
        $isValid = true;
        if ($helper->strlen($sku) > Mage_Catalog_Model_Product_Attribute_Backend_Sku::SKU_MAX_LENGTH) {
            $isValid = false;
        }
        return $isValid;
    }

    /**
     * @param $url
     * @return bool
     */
    private function isValidUrl($url)
    {
        $isValid = Zend_Uri::check($url);
        return $isValid;
    }

    /**
     * @return Varien_Object
     */
    private function getResponseObject()
    {
        $result = new Varien_Object();
        $result->setResult(true);
        $result->setItems(array());
        $result->setErrors(array());

        return $result;
    }
}
