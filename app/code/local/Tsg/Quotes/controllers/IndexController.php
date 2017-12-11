<?php

class Tsg_Quotes_IndexController extends Mage_Core_Controller_Front_Action
{
    public function indexAction()
    {
        $this->loadLayout()->renderLayout();
    }

    public function viewAction()
    {
        $quoteId = (int)$this->getRequest()->getParam('id');
        if (!$quoteId) {
            $this->_forward('noRoute');
        }
        $this->loadLayout();
        $this->getLayout()
            ->getBlock('quote.item')
            ->setQuoteId($quoteId);

        try {
            $this->renderLayout();
        } catch (Exception $e) {
            Mage::logException($e);
            $this->_forward('noRoute');
        }
    }
}