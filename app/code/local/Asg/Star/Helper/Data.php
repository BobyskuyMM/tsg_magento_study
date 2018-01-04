<?php

class Asg_Star_Helper_Data extends Mage_Core_Helper_Abstract
{
    /**
     * @param array $items
     * @return int
     */
    public function getItemsTotal($items)
    {
        $itemsTotal = 0;
        foreach ($items as $item) {
            $itemsTotal += $item->getRowTotal();
        }
        return $itemsTotal;
    }

    /**
     * @param array $items
     * @return int
     */
    public function getTotalQty($items)
    {
        $qty = 0;
        foreach ($items as $item) {
            $qty += $item->getQty();
        }
        return $qty;
    }
}
