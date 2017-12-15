<?php

class Asg_Csv_Model_Csv extends Mage_Core_Model_Abstract
{
    /**
     * Maximum SKU string length
     *
     * @var string
     */
    const SKU_MAX_LENGTH = 64;

    private $validationErrors = array();

    public function _construct()
    {
        parent::_construct();
        $this->_init('asgcsv/csv');
    }

    /**
     * Upload new image or delete exist image from news
     *
     * @throws Mage_Core_Exception
     */
    public function parseAndUploadCsvFile()
    {
        /** @var Asg_Csv_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');

        $data = false;

        $fileName = $this->uploadFile();
        if ($fileName) {
            $data = $this->readCsvFile($fileName);
        } else {
            Mage::throwException($helper->__('Error. File not process!'));
        }

        if (!is_array($data)) {
            Mage::throwException($helper->__('Error. Wrong file data!'));
        }

        try {
            $this->multipleInsert($data);
        } catch (Exception $e) {
            Mage::throwException($helper->__('Error. Wrong file data!'));
        }
        $this->deleteFile($fileName);
    }

    /**
     * Return uploaded file name or false if file can't upload
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

    private function deleteFile($filename)
    {
        /** @var Asg_Csv_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');
        $path = $helper->getCsvUploadPath();
        unlink($path . $filename);
    }

    /**
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

        $resultItem = array();
        foreach ($items as $item) {
            $sku = $item['sku'];
            $url = $item['url'];
            $line = $item['line'];
            if (!empty($productList[$sku])) {
                $resultItem[] = array(
                    'product_id' => $productList[$sku],
                    'sku' => $sku,
                    'url' => $url
                );
            } else {
                $errorsStringArray[$line][] = $helper->__("Error. Line ") . $line
                    . $helper->__(" : ")
                    . $helper->__("Product not found by SKU: ")
                    . $sku;
            }
        }

        $result = $this->getResponse();

        if (!count($errorsStringArray)) {
            $result->setResult(true);
            $result->setData($items);
        } else {
            $result->setResult(false);
            $result->setErrors($errorsStringArray);
        }

        return $result;
    }

    /**
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

    public function validate()
    {
        $validSku = false;
        $validUrl = false;
        $this->clearValidationErrors();

        $errorsStringArray = [];

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


    private function clearValidationErrors()
    {
        $this->validationErrors = [];
    }

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
     * @param $dataArray
     * @return int
     * @throws Zend_Db_Exception
     */
    private function multipleInsert($dataArray)
    {
        /** @var Mage_Core_Model_Resource $resource */
        $resource = Mage::getSingleton('core/resource');

        /** @var Varien_Db_Adapter_Pdo_Mysql $connection */
        $connection = $resource->getConnection('core_write');

        return $connection->insertMultiple(
            Mage::getSingleton('core/resource')->getTableName('asgcsv/table_csv'),
            $dataArray
        );
    }

    /**
     * @return Varien_Object
     */
    private function getResponse()
    {
        $result = new Varien_Object();
        $result->setResult(true);
        $result->setData(array());
        $result->setErrors(array());

        return $result;
    }
}
