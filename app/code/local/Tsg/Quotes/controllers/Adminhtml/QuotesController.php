<?php

class Tsg_Quotes_Adminhtml_QuotesController extends Mage_Adminhtml_Controller_Action
{
    public function indexAction()
    {
        $this->_title($this->__('Quotes'));

        $helper = $this->getQuotesHelper();
        $this->loadLayout();
        $this->_setActiveMenu('tsg_quotes');
        $this->_addBreadcrumb($helper->__('Quotes'), $helper->__('Quotes'));
        $this->renderLayout();
    }

    public function newAction()
    {
        $this->_title($this->__('Add new quotes'));

        $helper = $this->getQuotesHelper();
        $this->loadLayout();
        $this->_setActiveMenu('tsg_quotes');
        $this->_addBreadcrumb($helper->__('Add new quote'), $helper->__('Add new quote'));
        $this->renderLayout();
    }

    public function editAction()
    {
        $this->_title($this->__('Edit quote'));

        $helper = $this->getQuotesHelper();
        $this->loadLayout();
        $this->_setActiveMenu('tsg_quote');
        $this->_addBreadcrumb($helper->__('Edit_quote'), $helper->__('Edit_quote'));
        $this->renderLayout();
    }

    public function deleteAction()
    {
        $tipId = $this->getRequest()->getParams('id', false);


        /**  @var Mage_Core_Model_Session_Abstract $session */
        $session = Mage::getSingleton('admin/session');
        try {
            $this->getQuoteModel()->setId($tipId)->delete();
            $session->addSuccess($this->getQuotesHelper()->__('Quote successfully deleted'));

            return $this->_redirect('*/*/');
        } catch (Mage_Core_Exception $e) {
            $session->addError($e->getMessage());
        } catch (Exception $e) {
            Mage::logException($e);
            $session->addError($this->__('Something went wrong'));
        }

        return $this->_redirectReferer();
    }

    public function saveAction()
    {
        $data = $this->getRequest()->getPost();
        if (!empty($data)) {
            /**  @var Mage_Core_Model_Session_Abstract $session */
            $session = Mage::getSingleton('admin/session');
            try {
                $this->getQuoteModel()->setData($data)->save();
                $session->addSuccess($this->getQuotesHelper()->__('Quote successfully saved'));
            } catch (Mage_Core_Exception $e) {
                $session->addError($e->getMessage());
            } catch (Exception $e) {
                Mage::logException($e);
                $session->addError($this->__('Something went wrong'));
            }
        }
        return $this->_redirect('*/*/');
    }

    public function gridAction()
    {
        $this->loadLayout();
        $this->getResponse()->setBody(
            $this->getLayout()->createBlock('tsg_quotes/adminhtml_quotes_grid')->toHtml()
        );
    }

    /**
     * @return Tsg_Quotes_Helper_Data
     */
    private function getQuotesHelper()
    {
        /** @var Tsg_Quotes_Helper_Data $helper */
        $helper = Mage::helper('tsg_quotes');
        return $helper;
    }

    /**
     * @return Mage_Core_Model_Abstract
     */
    private function getQuoteModel()
    {
        return Mage::getModel('tsg_quotes/quote');
    }
}
