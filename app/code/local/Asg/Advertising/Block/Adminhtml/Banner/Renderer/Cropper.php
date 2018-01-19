<?php

class Asg_Advertising_Block_Adminhtml_Banner_Renderer_Cropper extends  Varien_Data_Form_Element_Abstract
{
    protected $_element;
    private $elementId;
    private $btnText;
    
    public function __construct($attributes=array())
    {
        parent::__construct($attributes);
        if(!empty($attributes['cropper_id'])) {
            $this->elementId = $attributes['cropper_id'];
        } else {
            $this->elementId = 'cropper' . '_' . time();
        }

        if(!empty($attributes['btn_text'])) {
            $this->btnText = $attributes['btn_text'];
        }
    }

    public function getElementHtml()
    {
        $html =
                '<div><img width="500px" id="'.$this->elementId.'" src=""></div>'

                .'<div><img width="200px" class="preview hidden" id="'.$this->elementId.'_preview" /></div>'

                .'<input type="hidden" name="'.$this->elementId.'_data" id="'.$this->elementId.'_data"/>'

                .'<button type="button" data-image-selector="#'.$this->elementId.'" class="apply_cropped_image" >'.
                    '<span>'. $this->btnText .'</span>'
                .'</button>'

                .'<button type="button" data-image-selector="#'.$this->elementId.'" class="hidden change_cropped_image" id="'.$this->elementId.'_data" >'.
                    '<span>Change image</span>'
                .'</button>'
        ;

        return $html;
    }

}
