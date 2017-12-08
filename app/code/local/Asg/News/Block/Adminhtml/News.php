<?php

class Asg_News_Block_Adminhtml_News extends Mage_Adminhtml_Block_Widget_Grid_Container
{
    protected function _construct()
    {
        parent::_construct();

        $helper = Mage::helper('asgnews');
        $this->_blockGroup = 'asgnews';
        $this->_controller = 'adminhtml_news';

        $this->_headerText = $helper->__("News Management");
        $this->_addButtonLabel = $helper->__('Add News');
    }
}
