<?php

class Asg_Kasa_Model_Payment_Kasa extends Mage_Payment_Model_Method_Abstract
{
    const CODE = 'asg_kasa';
    protected $_code = 'asg_kasa';

    protected $_canUseCheckout = true;


    /**
     * @param string $code
     * @return bool
     */
    public static function isSelectedPaymentKasa($code)
    {
        $isSelected = false;
        if(self::CODE == $code) {
            $isSelected = true;
        }

        return $isSelected;
    }
}
