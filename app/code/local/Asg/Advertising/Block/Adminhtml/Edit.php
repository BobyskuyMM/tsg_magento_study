<?php

class Asg_Advertising_Block_Adminhtml_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    protected function _construct()
    {
        $this->_blockGroup = 'asg_advertising';
        $this->_mode = 'edit';
        $this->_controller = 'adminhtml';
    }

    public function getHeaderText()
    {
        return Mage::helper('asg_advertising')->__("CreateBanner");
    }
}
