<?php

class Asg_Csv_Model_Adminhtml_Observer
{
    /**
     * Add new Button before grid on admin/catalog_product/index page
     * @return $this
     */
    public function addCatalogImportImageButton()
    {
        if (Mage::getSingleton('admin/session')->isAllowed('catalog/products')) {
            /** @var Mage_Adminhtml_Block_Catalog_Product $block */
            $block = Mage::app()->getLayout()->getBlock('products_list');
            if (!$block) {
                return $this;
            }
            $url = $block->getUrl('*/csv/upload');
            $block->addButton('cvs_image_import_btn', array(
                'label'     => "Images import",
                'onclick'   => 'setLocation(\'' . $url . '\')',
                'class'     => 'cvsImageImportBtn'
            ));
        }

        return $this;
    }
}
