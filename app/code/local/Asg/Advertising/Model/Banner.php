<?php

class Asg_Advertising_Model_Banner extends Mage_Core_Model_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('asg_advertising/banner');
    }
}
