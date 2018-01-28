<?php

class Asg_Advertising_Model_Observer_WidgetBannerChecker
{
    private $activeBannerLayoutHandler = "catalog_category_view";

    public function showBanners(Varien_Event_Observer $observer)
    {
        /** @var Mage_Catalog_Model_Resource_Product_Collection $model */
        $model = $observer->getData()['collection'];

        /** @var Mage_Core_Model_Layout $layout */
        $layout = Mage::app()->getLayout();

        /** @var array $handles */
        $handles = $layout->getUpdate()->getHandles();

        if (!in_array($this->activeBannerLayoutHandler, $handles)) {
            return;
        }

        /** @var Mage_Core_Controller_Request_Http $request */
        $request = Mage::app()->getRequest();

        /** @var Mage_Catalog_Block_Product_List_Toolbar $toolbarBlock */
        $toolbarBlock = $layout->getBlock('product_list_toolbar');

        /** @var string $mode */
        $mode = $toolbarBlock->getCurrentMode();

        $toolbarBlock->getCurrentPage();

        $currentPage = $toolbarBlock->getCurrentPage();
        $productsPerPage = $toolbarBlock->getDefaultPerPageValue();

        /** @var int $page */
        $page = $request->getParam('p', 0);

        /** @var  $requestParameters */
        $requestParameters = Mage::app()->getRequest()->getParams();

        /** @var int $newsPerPage */
        // $newsPerPage = Mage::getStoreConfig('tab1/general/news_per_page');

        /** @var Mage_Widget_Model_Resource_Widget_Instance $collection */
        $collection = Mage::getModel('widget/widget_instance')->getCollection();
        $collection->addFieldToFilter('instance_type', array('eq' => 'asg_advertising/banners'))
            ->load();


        $t = time();

        return;
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
