<?php

class Asg_Kasa_Model_Observer_PaymentChecker
{
    /**
     * Enabled just Kasa Payment method on Checkout by Condition
     * @param Varien_Event_Observer $observer
     */
    public function paymentMethodIsActive(Varien_Event_Observer $observer)
    {
        $event = $observer->getEvent();
        $method = $event->getMethodInstance();
        $result = $event->getResult();
        /** @var Mage_Sales_Model_Quote $quote */
        $quote = $event->getData()['quote'];

        if (!empty($quote)) {
            if (Asg_Star_Model_Carrier_Star::canUseKasaPayment($quote->getShippingAddress()->getShippingMethod())) {
                if (Asg_Kasa_Model_Payment_Kasa::isSelectedPaymentKasa($method->getCode())) {
                    $result->isAvailable = true;
                } else {
                    $result->isAvailable = false;
                }
            }
        }
    }
}
