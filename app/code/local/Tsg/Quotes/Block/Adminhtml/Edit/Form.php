<?php

class Tsg_Quotes_Block_Adminhtml_Edit_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        $quote = Mage::registry('current_quote');
        $form = new Varien_Data_Form();
        $fieldset = $form->addFieldset('edit_quote', array(
            'legend' => Mage::helper('tsg_quotes')->__('Quote Details')
        ));

        if ($quote) {
            $fieldset->addField('id', 'hidden', array(
                'name'      => 'id',
                'required'  => true
            ));
        }

        $fieldset->addField('name', 'text', array(
            'name'      => 'name',
            'title'     => Mage::helper('tsg_quotes')->__('Title'),
            'label'     => Mage::helper('tsg_quotes')->__('Title'),
            'maxlength' => '250',
            'required'  => true
        ));

        $fieldset->addField('dscr', 'textarea', array(
            'name'      => 'dscr',
            'title'     => Mage::helper('tsg_quotes')->__('Contents'),
            'label'     => Mage::helper('tsg_quotes')->__('Title'),
            'style'     => 'width: 98%; height: 200px',
            'required'  => true
        ));

        $form->setMethod('post');
        $form->setUseContainer(true);
        $form->setId('edit_form');
        $form->setAction($this->getUrl('*/*/save'));

        if ($quote) {
            $form->setValues($quote->getData());
        }


        $this->setForm($form);
    }
}