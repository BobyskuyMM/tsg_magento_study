<?php

class Asg_Advertising_Adminhtml_BannerController extends Mage_Adminhtml_Controller_Action
{
    /**
     * Check for is allowed
     *
     * @return boolean
     *
    protected function _isAllowed()
    {
        return Mage::getSingleton('admin/session')->isAllowed('catalog/products');
    }
*/

    public function indexAction()
    {
        $this->loadLayout();
        $this->_setActiveMenu('asg_advertising');
        $this->renderLayout();
    }

    public function gridAction()
    {
        $this->loadLayout();
        $block = $this->getLayout()->createBlock('asg_advertising/adminhtml_banner_grid')->toHtml();
        $this->getResponse()->setBody($block);
    }

    public function editAction()
    {
        $this->loadLayout()->_setActiveMenu('asg_advertising');
        $this->renderLayout();
    }

    public function newAction()
    {
        $this->_forward('edit');
    }

    public function uploadAction()
    {
        $response = [];

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
                $response['error'] = 'Invalid File Type';
            }
        } else {
            $response['result'] = false;
            $response['error'] = 'Empty request';
        }

        $this->getResponse()->setBody(
            Mage::helper('core')->jsonEncode($response)
        );

    }

}
