<?php

/**
 * Adminhtml cropper form for banner widget
 */
class Asg_Advertising_Block_Adminhtml_Banner_Edit_Options extends Mage_Adminhtml_Block_Widget
{
    public function __construct()
    {
        parent::__construct();
    }


    /**
     * Prepare chooser element HTML
     *
     * @param Varien_Data_Form_Element_Abstract $element Form Element
     * @return Varien_Data_Form_Element_Abstract
     */
    public function prepareElementHtml(Varien_Data_Form_Element_Abstract $element)
    {

        /** @var Asg_Advertising_Helper_Data $helper */
        $helper = Mage::helper('asg_advertising');


        $fieldset = new Varien_Data_Form_Element_Fieldset();
        $fieldset->setId('banner_options');

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

        $fieldset->addField('option_title', 'text', array(
            'label' => $helper->__('Title'),
            'required' => true,
        ));

        $fieldset->addField('option_content', 'editor', array(
            'label' => $helper->__('Content'),
            'required' => true,
            'name' => 'parameters[content]',
        ));

        $element->setData('after_element_html', $fieldset->getChildrenHtml());

        return $element;
    }

}
