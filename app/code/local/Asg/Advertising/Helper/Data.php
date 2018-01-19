<?php

class Asg_Advertising_Helper_Data extends Mage_Core_Helper_Abstract
{
    /** @var array $allowedImageExtensions */
    private $allowedImageExtensions = array('jpg', 'jpeg', 'gif', 'png');

    private $imagePath = 'asg_advertising';

    /**
     * @return string
     */
    public function getBannersUploadPath()
    {
        return Mage::getBaseDir('media') . DS . $this->imagePath . DS;
    }

    /**
     * @param $image
     * @return string
     */
    public function generateBannerImageFrontendUrl($image)
    {
        return  '/' . 'media' . '/' . $this->imagePath . '/' . $image;
    }

    /**
     * @return array
     */
    public function getAllowedImageExtensions()
    {
        return $this->allowedImageExtensions;
    }

}
