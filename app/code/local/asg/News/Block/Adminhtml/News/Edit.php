<?php

class Asg_News_Block_Adminhtml_News_Edit extends Mage_Adminhtml_Block_Widget_Form_Container
{
    protected function _construct()
    {
        $this->_blockGroup = 'asgnews';
        $this->_controller = 'adminhtml_news';
    }

    public function getHeaderText()
    {
        $helper = Mage::helper('asgnews');
        $model = Mage::registry('current_news');

        if (!empty($model)) {
            return $helper->__("Edit News item '%s'", $this->escapeHtml($model->getTitle()));
        } else {
            return $helper->__("Add News item");
        }
    }

}