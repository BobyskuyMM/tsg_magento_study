<?php

class Asg_Advertising_Model_Observer_Cropper
{

    public function saveCroppedImage(Varien_Event_Observer $observer)
    {
        /** @var Mage_Widget_Model_Widget_Instance $model */
        $model = $observer->getData()['data_object'];

        if ("asg_advertising/banners" != $model->getInstanceType()) {
            return;
        }

        $parameters = $model->getWidgetParameters();
        $gridBannerImage = $parameters['banner_grid_data'];
        $listBannerImage = $parameters['banner_list_data'];

        /** @var Asg_Advertising_Helper_Data $helper */
        $helper = Mage::helper('asg_advertising');

        if($this->validBase64($gridBannerImage)) {
            $url = $helper->saveBAse64ImageToFile($gridBannerImage, 'grid');
            $parameters['banner_grid_data'] = $url;
        }

        if($this->validBase64($listBannerImage)) {
            $url = $helper->saveBAse64ImageToFile($listBannerImage, 'list');
            $parameters['banner_list_data'] = $url;
        }

        $model->setData('widget_parameters', serialize($parameters));
    }

    function validBase64($encodeImage)
    {
        $base_to_php = explode(',', $encodeImage);
        $data = $base_to_php[1];
        $decoded = base64_decode($data, true);
        // Decode the string in strict mode and send the response
        if (!base64_decode($data, true)) {
            return false;
        }
        // Encode and compare it to original one
        if (base64_encode($decoded) != $data) {
            return false;
        }
        return true;
    }
}
