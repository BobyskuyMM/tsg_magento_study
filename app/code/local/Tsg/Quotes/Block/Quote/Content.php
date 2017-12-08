<?php

class Tsg_Quotes_Block_Quote_Content extends Mage_Core_Block_Template
{
    protected function _construct()
    {
        $this->setTemplate('tsg/quotes/quote/views.phtml');
    }

    public function getQuote()
    {
        return Mage::getModel('tsg_quotes/quote')->load($this->getQuoteId());
    }
}
