<?php
/**
 * @category   MagePsycho
 * @package    MagePsycho_Paymentfilter
 * @author     magepsycho@gmail.com
 * @website    http://www.magepsycho.com
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */
class Asg_Kasa_Model_Observer_PaymentChecker
{
    public function paymentMethodIsActive(Varien_Event_Observer $observer) {
        $event           = $observer->getEvent();
        $method          = $event->getMethodInstance();
        $result          = $event->getResult();
        $currencyCode    = Mage::app()->getStore()->getCurrentCurrencyCode();

        /** @var Mage_Sales_Model_Quote $quote */
        $quote = $event->getData()['quote'];

        if(!empty($quote)) {
            $shipingMethod = $quote->getShippingAddress()->getShippingMethod();

            if ("asgstar_first_rate" == $shipingMethod ) {
                if("asgkasa" == $method->getCode()) {
                    $result->isAvailable = true;
                } else {
                    $result->isAvailable = false;
                }
            }

        }

//        if($someTrueConditionGoesHere){
//            $result->isAvailable = true;
//        }else{
//            ;
//        }

    }

}
