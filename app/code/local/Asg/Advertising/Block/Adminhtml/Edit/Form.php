<?php

class Asg_Advertising_Block_Adminhtml_Edit_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        /** @var Asg_Advertising_Helper_Data $helper */
        $helper = Mage::helper('asg_advertising');

        $form = new Varien_Data_Form(array(
            'id' => 'edit_form',
            'action' => $this->getUrl('*/*/upload'),
            'method' => 'post',
            'enctype' => 'multipart/form-data'
        ));

        $this->setForm($form);

        $fieldset = $form->addFieldset('upload_form_fields', array(
            'legend' => $helper->__('Upload CSV file')
        ));

        $fieldset->addField('csv', 'file', array(
            'label' => $helper->__('Csv'),
            'name' => 'csv',
            'required'  => true
        ));

        $form->setUseContainer(true);
        $this->setForm($form);
        return parent::_prepareForm();
    }
}
