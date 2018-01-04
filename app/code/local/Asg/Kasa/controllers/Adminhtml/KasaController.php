<?php

class Asg_Kasa_Adminhtml_KasaController extends Mage_Adminhtml_Controller_Action
{
    /**
     * Check for is allowed
     *
     * @return boolean
     */
    protected function _isAllowed()
    {
        return Mage::getSingleton('admin/session')->isAllowed('asg_kasa');
    }

    public function indexAction()
    {
        $this->loadLayout();
        $this->_setActiveMenu('asg_kasa');
        $this->renderLayout();
    }

    public function gridAction()
    {
        $this->loadLayout();
        $block = $this->getLayout()->createBlock('asg_kasa/adminhtml_kasa_grid')->toHtml();
        $this->getResponse()->setBody($block);
    }

    public function exportCsvAction()
    {
        $fileName   = uniqid() . '_looted_coins.csv';
        $content    = $this->getLayout()->createBlock('asg_kasa/adminhtml_kasa_grid')
            ->getCsvFile();
        $this->_prepareDownloadResponse($fileName, $content);
    }

    protected function _sendUploadResponse($fileName, $content, $contentType='application/octet-stream')
    {
        $this->_prepareDownloadResponse($fileName, $content, $contentType);
    }

}
