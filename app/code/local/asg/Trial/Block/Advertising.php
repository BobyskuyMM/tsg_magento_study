<?php

class Asg_Trial_Block_Advertising extends Mage_Core_Block_Template
{
    const AVAILABLE_SKU = 'advertising';

    /**
     * @return bool
     */
    public function canShow()
    {
        $canShowBlock = false;
        /** @var Mage_Catalog_Model_Product $currentProduct */
        $currentProduct = Mage::registry('current_product');//

        if (!empty($currentProduct)) {
            $sku = $currentProduct->getSku();

            if (self::AVAILABLE_SKU == $sku) {
                $canShowBlock = true;
            }
        }

        return $canShowBlock;
    }
}
