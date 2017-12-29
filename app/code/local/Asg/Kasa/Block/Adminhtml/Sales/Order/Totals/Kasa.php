<?php

class Asg_Kasa_Block_Adminhtml_Sales_Order_Totals_Kasa extends Mage_Core_Block_Abstract
{
    public function initTotals()
    {
        $source = $this->getParentBlock()->getSource();
        if ($source->getKasaPercent()) {
            $total = new Varien_Object(array(
                'code' => Asg_Kasa_Model_Payment_Kasa::CODE,
                'field' => 'base_percent',
                'value' => $source->getKasaPercent(),
                'label' => Mage::helper('asg_kasa')->__('Kasa')
            ));
            $this->getParentBlock()->addTotal($total);
        }
        return $this;
    }
}
