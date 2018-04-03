<?php

class Asg_Advertising_Block_Catalog_Banner extends Mage_Core_Block_Template
{
    /** @var array $banners */
    private $banners;

    public function _construct()
    {
        $this->_template = "asg_advertising/banner/cropper.phtml";
    }

    protected function _toHtml()
    {
        /** @var Mage_Widget_Model_Resource_Widget_Instance $collection */
        $collection = Mage::getModel('widget/widget_instance')->getCollection();
        $collection->addFieldToFilter('instance_type', array('eq' => 'asg_advertising/banners'))
            ->load();

        $banners = array();

        /** @var Mage_Widget_Model_Widget_Instance $banner */
        foreach ($collection as $banner) {
            $item = $banner->getWidgetParameters();
            $item['id'] = $banner->getId();
            $banners[] = $item;
        }

        $this->banners = $banners;

        return parent::_toHtml();
    }

    /**
     * @return array
     */
    public function getBanners()
    {
        return $this->banners;
    }

}