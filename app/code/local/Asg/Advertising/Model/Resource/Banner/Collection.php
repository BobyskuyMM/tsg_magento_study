<?php

class Asg_Advertising_Model_Resource_Banner_Collection extends Mage_Core_Model_Mysql4_Collection_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('asg_advertising/banner');
    }
}
