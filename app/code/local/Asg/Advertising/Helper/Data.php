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

    /**
     * @param string $encodeImage
     * @param string $type Can't be: grid or list
     *
     * @return string
     */
    public function saveBAse64ImageToFile($encodeImage, $type)
    {
        $base_to_php = explode(',', $encodeImage);
        $data = base64_decode($base_to_php[1]);
        $imageName = $type . '_' . uniqid() . '.png';
        $filePath = $this->getBannersUploadPath() . $imageName;
        file_put_contents($filePath, $data);

        return $this->generateBannerImageFrontendUrl($imageName);
    }

}
