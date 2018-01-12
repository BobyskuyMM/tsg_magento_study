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
//        $this->loadLayout();
//        $this->getLayout()->createBlock('asg_advertising/adminhtml_banner_grid')->toHtml();
        $this->loadLayout();
        $block = $this->getLayout()->createBlock('asg_advertising/adminhtml_banner_grid')->toHtml();
        $this->getResponse()->setBody($block);
    }

    public function newAction()
    {
//        /** @var Mage_Adminhtml_Model_Session $session */
//
//        if (!$id) {
//            /** @var Asg_News_Model_News $model */
//            $model = Mage::getModel('asgnews/news')->load($id);
//
//            if (!$model->isObjectNew()) {
//                Mage::register('current_news', $model);
//            }
//        }

        $this->loadLayout()->_setActiveMenu('asgnews');
        $this->renderLayout();

    }
}
