<?php

class Asg_News_Model_News extends Mage_Core_Model_Abstract
{
    /**
     * @var Allowed Image Extensions for uploading
     */
    private $allowedImageExtensions = array('jpg', 'jpeg', 'gif', 'png');

    public function _construct()
    {
        parent::_construct();
        $this->_init('asgnews/news');
    }

    protected function _afterDelete()
    {
        $this->removeImagesFromDisc();
        return parent::_afterDelete();
    }

    /**
     * Remove news item image from disc
     */
    private function removeImagesFromDisc()
    {
        $imageName = $this->getImage();

        if ('' !== $imageName) {
            /** @var Asg_News_Helper_Data $helper */
            $helper = Mage::helper('asgnews');

            $path = $helper->getNewsImageBasePath();

            $imageDiscLocation = $path . $imageName;
            $imageThumbnailDiscLocation = $path . $helper->makeThumbnailImageName($imageName);

            if (file_exists($imageDiscLocation)) {
                @unlink($imageDiscLocation);
            }

            if (file_exists($imageThumbnailDiscLocation)) {
                @unlink($imageThumbnailDiscLocation);
            }
        }
    }

    /**
     * Upload new image or delete exist image from news
     *
     * @param $data
     * @throws Mage_Core_Exception]
     */
    public function processImage($data)
    {
        $helper = $this->getHelper();

        $newImageName = $this->getImage();

        if (isset($_FILES['image']['name']) && $_FILES['image']['name'] != '') {
            $uploader = new Varien_File_Uploader('image');
            $uploader->setFilesDispersion(false);
            $uploader->setAllowedExtensions($this->allowedImageExtensions);
            $uploader->setAllowRenameFiles(true);

            $filePath = $helper->getNewsImageBasePath();

            try {
                $uploader->save($filePath);
                $newImageName = $uploader->getUploadedFileName();
            } catch (Exception $e) {
                Mage::throwException('Invalid File Type');
            }
        }

        if (isset($data['image']['delete']) && $data['image']['delete'] == 1) {
            $this->removeImagesFromDisc();
            $newImageName = "";
        }

        $this->setImage($newImageName);
    }

    /**
     * @return Asg_News_Helper_Data
     */
    private function getHelper()
    {
        /** @var Asg_News_Helper_Data $helper */
        $helper = Mage::helper('asgnews');
        return $helper;
    }
}
