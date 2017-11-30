<?php

class Tsg_Quotes_Block_Adminhtml_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    protected function _construct()
    {
        $this->_blockGroup = 'tsg_quotes';
        $this->_mode = 'edit';
        $this->_controller = 'adminhtml';

        $quoteId = (int)$this->getRequest()->getParam($this->_objectId);

        if ($quoteId) {
            //Mage::throwException($this->__('Quote with this id does not exist'));
            $quote = Mage::getModel('tsg_quotes/quote')->load($quoteId);
            Mage::register('current_quote', $quote);
        }

        $this->_removeButton('reset');
    }

    public function getHeaderText()
    {
        $quote = Mage::registry('current_quote');
        if ($quote) {
            return Mage::helper('tsg_quotes')->__("Edit Quote '%s'", $this->escapeHtml($quote->getName()));
        } else {
            return Mage::helper('tsg_quotes')->__("Add New Quote");
        }
    }
}