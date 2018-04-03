<?php

class Asg_Advertising_Adminhtml_BannerController extends Mage_Adminhtml_Controller_Action
{
    public function uploadAction()
    {
        /** @var array $response */
        $response = array();
        /** @var Asg_Advertising_Helper_Data $helper */
        $helper = Mage::helper('asg_advertising');
        if (isset($_FILES['image']['name']) && $_FILES['image']['name'] != '') {
            $uploader = new Varien_File_Uploader('image');
            $uploader->setFilesDispersion(false);
            $uploader->setAllowedExtensions($helper->getAllowedImageExtensions());
            $uploader->setAllowRenameFiles(true);
            $fileUploadPath = $helper->getBannersUploadPath();
            try {
                $uploader->save($fileUploadPath);
                $uploadedFile = $helper->generateBannerImageFrontendUrl($uploader->getUploadedFileName());
                $response['result'] = true;
                $response['image'] = $uploadedFile;
            } catch (Exception $e) {
                $response['result'] = false;
                $response['error'] = $helper->__('Invalid File Type');
            }
        } else {
            $response['result'] = false;
            $response['error'] = $helper->__('Empty request');
        }
        $this->getResponse()->setBody(
            Mage::helper('core')->jsonEncode($response)
        );
    }

}
