<?php

class Asg_Kasa_Block_Order_Totals extends Mage_Core_Block_Abstract
{
    public function initTotals()
    {
        $parent = $this->getParentBlock();
        $source = $parent->getSource();
        if ($source->getKasaPercent()) {
            $total = new Varien_Object(array(
                'code'  => Asg_Kasa_Model_Payment_Kasa::CODE,
                'value' => $source->getKasaPercent(),
                'label' => Mage::helper('asg_kasa')->__('Kasa'),
            ));
            $parent->addTotal($total);
        }

        return $this;
    }
}
