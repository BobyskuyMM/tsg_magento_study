<?php

class Asg_Star_Model_Carrier_Star
    extends Mage_Shipping_Model_Carrier_Abstract
    implements Mage_Shipping_Model_Carrier_Interface
{
    protected $_code = 'asg_star';

    const CODE = 'asg_star';
    const FIRST_STAR_METHOD = 'first_star_method';
    const SECOND_STAR_METHOD = 'second_star_method';
    const THIRD_STAR_METHOD = 'third_star_method';

    protected $allowedMethods = [self::FIRST_STAR_METHOD, self::SECOND_STAR_METHOD, self::THIRD_STAR_METHOD];

    /**
     * @param Mage_Shipping_Model_Rate_Request $request
     *
     * @return Mage_Shipping_Model_Rate_Result
     */
    public function collectRates(Mage_Shipping_Model_Rate_Request $request)
    {
        /** @var $result Mage_Shipping_Model_Rate_Result */
        $result = Mage::getModel('shipping/rate_result');

        foreach ($this->allowedMethods as $key => $methodId) {
            /** @var Mage_Shipping_Model_Rate_Result_Method $method */
            $method = $this->createDeliveryMethod($request, $methodId);
            $result->append($method);
        }

        return $result;
    }

    /**
     * @param string $methodId
     * @return bool
     */
    public static function canUseKasaPayment($methodId)
    {
        $canUse = false;
        $allowedMethod = self::CODE . '_' . self::SECOND_STAR_METHOD;
        if ( $allowedMethod == $methodId) {
            $canUse = true;
        }

        return $canUse;
    }

    /**
     * @param Mage_Shipping_Model_Rate_Request $request
     * @param string $methodId
     *
     * @return Mage_Shipping_Model_Rate_Result_Method
     */
    private function createDeliveryMethod(Mage_Shipping_Model_Rate_Request $request, $methodId)
    {
        switch ($methodId) {
            case self::FIRST_STAR_METHOD:
                $shippingPrice = $this->calculateFirstMethodSippingPrice($request);
                break;
            case self::SECOND_STAR_METHOD:
                $shippingPrice = $this->calculatesSecondMethodSippingPrice($request);
                break;
            case self::THIRD_STAR_METHOD:
                $shippingPrice = $this->calculateThirdMethodSippingPrice($request);
                break;
            default:
                $shippingPrice = 0;
        }

        /** @var $methodFirst Mage_Shipping_Model_Rate_Result_Method */
        $methodFirst = Mage::getModel('shipping/rate_result_method');
        $methodFirst ->setCarrier($this->_code)
            ->setCarrierTitle($this->getConfigData('title'))
            ->setMethod($methodId)
            ->setMethodTitle($this->getTitle($methodId))
            ->setPrice($shippingPrice)
            ->setCost($shippingPrice);

        return $methodFirst;
    }


    /**
     * @param string $methodId
     *
     * @return string
     */
    private function getTitle($methodId)
    {
        /** @var Asg_Star_Helper_Data $helper */
        $helper = Mage::helper('asg_star');
        $title = '';

        switch ($methodId) {
            case self::FIRST_STAR_METHOD:
                $title = $helper->__('Too long (5-10 days)');
                break;
            case self::SECOND_STAR_METHOD:
                $title = $helper->__('Faster than Long (up to 5 days)');
                break;
            case self::THIRD_STAR_METHOD:
                $title = $helper->__('Teleport (1 day)');
                break;
        }

        return $title;
    }

    public function getAllowedMethods()
    {
        return array($this->_code => $this->getConfigData('title'));
    }

    /**
     * Check if carrier has shipping tracking option available
     *
     * @return boolean
     */
    public function isTrackingAvailable()
    {
        return true;
    }

    /**
     * @param Mage_Shipping_Model_Rate_Request $request
     * @return float
     */
    private function calculateFirstMethodSippingPrice(Mage_Shipping_Model_Rate_Request $request)
    {
        $shippingPrice = 10.00;

        return $shippingPrice;
    }

    /**
     * @param Mage_Shipping_Model_Rate_Request $request
     * @return float
     */
    private function calculatesSecondMethodSippingPrice(Mage_Shipping_Model_Rate_Request $request)
    {
        /** @var Asg_Star_Helper_Data $helper */
        $helper = Mage::helper('asg_star');
        $items = $request->getAllItems();
        $itemsTotal = $helper->getItemsTotal($items);
        $totalQty = $helper->getTotalQty($items);
        $shippingPrice =  (($itemsTotal / 100) * 5);
        $date = Mage::getSingleton('core/date')->date();

        if ( (date('N', strtotime($date)) >= 6)) {
            $shippingPrice += (($itemsTotal / 100) * 3);
        }
        if ($totalQty > 2) {
            $shippingPrice += (($itemsTotal / 100) * 2);
        }

        return round($shippingPrice,4);
    }

    /**
     * @param Mage_Shipping_Model_Rate_Request $request
     *
     * @return float
     */
    private function calculateThirdMethodSippingPrice(Mage_Shipping_Model_Rate_Request $request)
    {
        /** @var Asg_Star_Helper_Data $helper */
        $helper = Mage::helper('asg_star');
        $items = $request->getAllItems();
        $itemsTotal = $helper->getItemsTotal($items);

        if ($itemsTotal < 50) {
            $shippingPrice = 10.00;
        } elseif ($itemsTotal < 100) {
            $shippingPrice = (($itemsTotal / 100) * 15);
        } elseif ($itemsTotal < 1000) {
            $shippingPrice = (($itemsTotal / 100) * 5);
        } else {
            $shippingPrice = 0.00;
        }

        return round($shippingPrice,4);
    }
}
