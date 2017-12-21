<?php

class Asg_Csv_Block_Adminhtml_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    protected function _construct()
    {
        $this->_blockGroup = 'asgcsv';
        $this->_mode = 'edit';
        $this->_controller = 'adminhtml';
    }

    public function getHeaderText()
    {
        return Mage::helper('asgcsv')->__("Parse file");
    }
}
