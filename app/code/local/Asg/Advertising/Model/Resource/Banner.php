<?php

class Asg_Advertising_Model_Resource_Banner extends Mage_Core_Model_Mysql4_Abstract
{
    public function _construct()
    {
        $this->_init('asg_advertising/table_banner', 'id');
    }
}
