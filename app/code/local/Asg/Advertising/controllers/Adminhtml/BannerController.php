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
        $this->getLayout()->createBlock('asg_advertising/adminhtml_banner_grid')->toHtml();
    }
}
