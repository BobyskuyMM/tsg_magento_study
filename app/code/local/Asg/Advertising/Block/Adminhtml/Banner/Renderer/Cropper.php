<?php

class Asg_Advertising_Block_Adminhtml_Banner_Renderer_Cropper extends  Varien_Data_Form_Element_Abstract
{
    protected $_element;
    private $elementId;
    private $btnText;

    private $imagePreviewSrc = "";
    private $cropperOptions = "";
    private $imageSrc = "";

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
        if(!empty($attributes['image_preview'])) {
            $this->imagePreviewSrc = $attributes['image_preview'];
        }
        if(!empty($attributes['image'])) {
            $this->imageSrc = $attributes['image'];
        }
        if(!empty($attributes['cropper_options'])) {
            $this->cropperOptions = $attributes['cropper_options'];
        } else {
            $this->cropperOptions = "{}";
        }
    }

    public function getElementHtml()
    {
        $html =
                '<div><img width="500px" id="'.$this->elementId.'" src="'.$this->imageSrc.'"></div>'
                .'<div><img width="200px" class="preview hidden" src="'.$this->imagePreviewSrc.'" id="'.$this->elementId.'_preview" /></div>'
                .'<input type="hidden" value="'.$this->imagePreviewSrc.'" name="parameters['.$this->elementId.'_data]" id="'.$this->elementId.'_data"/>'
                .'<input type="hidden" value=\''.$this->cropperOptions.'\' name="parameters['.$this->elementId.'_options]" id="'.$this->elementId.'_options"/>'

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
