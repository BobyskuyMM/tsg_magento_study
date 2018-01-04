<?php

class Asg_Kasa_Block_Adminhtml_Kasa extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    protected function _construct()
    {
        parent::_construct();

        $helper = Mage::helper('asg_kasa');
        $this->_blockGroup = 'asg_kasa';
        $this->_controller = 'adminhtml_kasa';

        $this->_headerText = $helper->__("Kasa list");
    }
}
