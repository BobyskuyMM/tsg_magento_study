<?php

class Asg_Csv_Block_Adminhtml_Csv_Renderer_Size extends Mage_Adminhtml_Block_Widget_Grid_Column_Renderer_Abstract
{
    /**
     * @param Varien_Object $row
     * @return string
     * @throws Exception
     */
    public function render(Varien_Object $row)
    {
        /** @var Asg_Csv_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');

        $size = $row->getData($this->getColumn()->getIndex());

        $html = "";
        if($size) {
            $html = $helper->formatBytes($size);
        }

        return $html;
    }
}
