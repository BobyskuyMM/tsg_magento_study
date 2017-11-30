<?php

class Tsg_Quotes_Block_Adminhtml_Quotes extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    protected function _construct()
    {
        $helper = Mage::helper('tsg_quotes');
        $this->_addButtonLabel = $helper->__('Add New Quote');

        $this->_blockGroup = 'tsg_quotes';
        $this->_controller = 'adminhtml_quotes';
        $this->_headerText = $helper->__('Quotes');
    }






}