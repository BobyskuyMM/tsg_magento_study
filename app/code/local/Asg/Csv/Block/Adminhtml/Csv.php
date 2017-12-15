<?php

class Asg_Csv_Block_Adminhtml_Csv extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    protected function _construct()
    {
        $helper = Mage::helper('asgcsv');
        $this->_addButtonLabel = $helper->__('Add New Bla Bla Bla');

        $this->_blockGroup = 'asgcsv';
        $this->_controller = 'adminhtml_csv';
        $this->_headerText = $helper->__('Csv');
    }






}