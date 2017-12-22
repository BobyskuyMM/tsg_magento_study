<?php

class Asg_Kasa_Model_Payment_Kasa extends Mage_Payment_Model_Method_Abstract
{
    protected $_code = 'asgkasa';

    protected $_canUseCheckout = true;

    /**
     * Return Order place redirect url
     *
     * @return string
     */
    public function getOrderPlaceRedirectUrl()
    {
        //when you click on place order you will be redirected on this url, if you don't want this action remove this method
        return Mage::getUrl('customcard/standard/redirect', array('_secure' => true));
    }
}
