<?php

class Asg_Advertising_Block_Adminhtml_Banner extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    protected function _construct()
    {
        $helper = Mage::helper('asg_advertising');
        $this->_addButtonLabel = $helper->__('Add new banner');
        $this->_blockGroup = 'asg_advertising';
        $this->_controller = 'adminhtml_banner';
        $this->_headerText = $helper->__('Banners list');
    }
}
