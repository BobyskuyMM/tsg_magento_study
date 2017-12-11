<?php

class Tsg_Quotes_Block_Content extends Mage_Core_Block_Template
{
    protected function _construct()
    {
        $this->setTemplate('tsg/quotes/view.phtml');
    }

    public function getRowUrl(Tsg_Quotes_Model_Quote $quote)
    {
        return $this->getUrl('*/*/', array('id' => $quote->getId()));
    }

    public function getCollection()
    {
        return Mage::getModel('tsg_quotes/quote')->getCollection();
    }
}
