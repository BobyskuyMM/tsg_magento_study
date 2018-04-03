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
        /** @var $widgetInstance Mage_Widget_Model_Widget_Instance */
        $widgetInstance = Mage::registry('current_widget_instance');
        /** @var array $parameters */
        $parameters = $widgetInstance->getWidgetParameters();
        /** @var Asg_Advertising_Helper_Data $helper */
        $helper = Mage::helper('asg_advertising');
        $fieldset = new Varien_Data_Form_Element_Fieldset();
        $fieldset->setId('banner_options');
        $fieldset->addField('image', 'file', array(
            'label' => $helper->__('Image'),
            'name' => 'image',
            'required'  => false
        ));
        $cropperImage = "";
        if(!empty($parameters['base_cropper_image'])) {
            $cropperImage = $parameters['base_cropper_image'];
        }
        $fieldset->addField('base_cropper_image', 'hidden', array(
            'name' => 'parameters[base_cropper_image]',
            'value' => $cropperImage
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
            'image' => $cropperImage,
            'image_preview' => !empty($parameters['banner_grid_data']) ? $parameters['banner_grid_data'] : '',
            'cropper_options' => !empty($parameters['banner_grid_options']) ? $parameters['banner_grid_options'] : '',
        ));
        $fieldset->addField('banner_list', 'cropper', array(
            'name'      => 'banner_list',
            'cropper_id' => 'banner_list',
            'btn_text' => 'Select list banner area',
            'label'     => $helper->__('Banner list'),
            'image' => $cropperImage,
            'image_preview' => !empty($parameters['banner_list_data']) ? $parameters['banner_list_data'] : '',
            'cropper_options' => !empty($parameters['banner_list_options']) ? $parameters['banner_list_options'] : '',
        ));
        $fieldset->addField('option_title', 'text', array(
            'label' => $helper->__('Title'),
            'name' => 'parameters[option_title]',
            'value' => !empty($parameters['option_title']) ? $parameters['option_title'] : '',
            'required' => true,
        ));
        $fieldset->addField('grid_position', 'text', array(
            'label' => $helper->__('Banner grid position'),
            'name' => 'parameters[grid_position]',
            'value' => !empty($parameters['grid_position']) ? $parameters['grid_position'] : '',
            'required' => true,
        ));
        $fieldset->addField('list_position', 'text', array(
            'label' => $helper->__('Banner list position'),
            'name' => 'parameters[list_position]',
            'value' => !empty($parameters['list_position']) ? $parameters['list_position'] : '',
            'required' => true,
        ));
        $fieldset->addField('option_content', 'editor', array(
            'label' => $helper->__('Content'),
            'name' => 'parameters[content]',
            'style'     => 'height:36em;',
            'required' => true,
            'value' => !empty($parameters['content']) ? $parameters['content'] : '',
            'config'    => Mage::getSingleton('cms/wysiwyg_config')->getConfig()
        ));
        $fieldset->addField('option_url', 'text', array(
            'label' => $helper->__('Banner url'),
            'name' => 'parameters[url]',
            'required' => true,
            'value' => !empty($parameters['url']) ? $parameters['url'] : '',
        ));
        $element->setData('after_element_html', $fieldset->getChildrenHtml());
        return $element;
    }
}
