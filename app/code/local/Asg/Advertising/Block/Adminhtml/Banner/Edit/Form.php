<?php

class Asg_Advertising_Block_Adminhtml_Banner_Edit_Form extends Mage_Adminhtml_Block_Widget_Form
{
    protected function _prepareForm()
    {
        $form = new Varien_Data_Form(array(
            'id' => 'edit_form',
            'action' => $this->getUrl('*/*/save', array(
                'id' => $this->getRequest()->getParam('id')
            )),
            'method' => 'post',
            'enctype' => 'multipart/form-data'
        ));
        /** @var Asg_Advertising_Helper_Data $helper */
        $helper = Mage::helper('asg_advertising');

        $fieldset = $form->addFieldset('general_form', array(
            'legend' => $helper->__('Create banner')
        ));

        $fieldset->addField('image', 'file', array(
            'label' => $helper->__('Image'),
            'name' => 'image',
            'required'  => true
        ));
        $fieldset->addField('upload_btn', 'button', array(
            'label' => Mage::helper('core')->__('Select image and press upload'),
            'value' => Mage::helper('core')->__('Upload'),
            'name'  => 'registered',
            'class' => 'form-button',
        ));
        $fieldset->addType('cropper', 'Asg_Advertising_Block_Adminhtml_Banner_Renderer_Cropper');
        $fieldset->addField('banner_grid', 'cropper', array(
            'name'      => 'banner_grid',
            'cropper_id' => 'banner_grid',
            'btn_text' => 'Select grid banner area',
            'label'     => $helper->__('Banner grid'),
        ));
        $fieldset->addField('banner_list', 'cropper', array(
            'name'      => 'banner_list',
            'cropper_id' => 'banner_list',
            'btn_text' => 'Select list banner area',
            'label'     => $helper->__('Banner list'),
        ));
        $fieldset->addField('title', 'text', array(
            'label' => $helper->__('Title'),
            'required' => true,
            'name' => 'title',
        ));
        $fieldset->addField('content', 'editor', array(
            'label' => $helper->__('Content'),
            'required' => true,
            'name' => 'content',
        ));
        $form->setUseContainer(true);
        $this->setForm($form);

        return parent::_prepareForm();
    }
}
