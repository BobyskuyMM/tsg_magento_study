<?php

class Asg_Kasa_Model_Sales_Quote_Kasa extends Mage_Sales_Model_Quote_Address_Total_Abstract
{
    protected $fixTotal = 0;

    /**
     * Collect grand total address amount
     *
     * @param   Mage_Sales_Model_Quote_Address $address
     * @return  Mage_Sales_Model_Quote_Address_Total_Grand
     */
    public function collect(Mage_Sales_Model_Quote_Address $address)
    {
        parent::collect($address);
        if (!$this->isActiveTotal($address)) {
            return $this;
        }

        /** @var Mage_Core_Model_Store $store */
        $store = $address->getQuote()->getStore();
        /** @var Mage_Sales_Model_Quote $store */
        $quote = $address->getQuote();

        $baseSubTotal = $address->getBaseSubtotal();
        $baseDiscount = $address->getBaseDiscountAmount();
        $baseCurrentTotal = $baseSubTotal + $baseDiscount;
        $baseKasaGrantTotal = (($baseCurrentTotal/100) * 3);
        if ($baseKasaGrantTotal == intval($baseKasaGrantTotal)) {
            $baseKasaGrantTotal += 1;
            $baseLootedCoins = 1;
        } else {
            $baseLootedCoins = ceil($baseKasaGrantTotal) - $baseKasaGrantTotal;
            $baseKasaGrantTotal = ceil($baseKasaGrantTotal);
        }

        $quote->setBaseLootedCoins($baseLootedCoins)
            ->setBaseKasaPercent($baseKasaGrantTotal)
            ->setLootedCoins($baseLootedCoins)
            ->setKasaPercent($baseKasaGrantTotal);

        $address->setGrandTotal($store->convertPrice($baseKasaGrantTotal));
        $address->setBaseGrandTotal($baseKasaGrantTotal);

        return $this;
    }


    /**
     * Add grand total information to address
     *
     * @param Mage_Sales_Model_Quote_Address $address
     * @return $this|array
     */
    public function fetch(Mage_Sales_Model_Quote_Address $address)
    {
        if (!$this->isActiveTotal($address)) {
            return  $this;
        }

        $address->addTotal(array(
            'code' => $this->getCode(),
            'title' => Mage::helper('asg_kasa')->__('Kasa'),
            'value' => $address->getQuote()->getBaseKasaPercent(),
        ));

        return $this;
    }

    /**
     * @param Mage_Sales_Model_Quote_Address $address
     * @return bool
     */
    private function isActiveTotal(Mage_Sales_Model_Quote_Address $address)
    {
        $items = $this->_getAddressItems($address);
        if (!count($items)) {
            return false;
        }

        /** @var Mage_Sales_Model_Quote $store */
        $quote = $address->getQuote();

        /** @var string $shipping */
        $shipping = $address->getShippingMethod();
        if(!$shipping) {
            return false;
        }

        /** @var Mage_Sales_Model_Quote_Payment $payment */
        $payment = $quote->getPayment();
        if(!$payment) {
            return false;
        }

        $paymentCode = $payment->getMethod();
        if(!$paymentCode) {
            return false;
        }

        $result = Asg_Kasa_Model_Payment_Kasa::isSelectedPaymentKasa($payment->getMethod())
            && Asg_Star_Model_Carrier_Star::canUseKasaPayment($shipping);

        return $result;
    }
}
