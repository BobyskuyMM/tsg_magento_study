<?php

class Asg_Csv_Model_Resource_Csv_Collection extends Mage_Core_Model_Mysql4_Collection_Abstract
{
    public function _construct()
    {
        parent::_construct();
        $this->_init('asgcsv/csv');
    }
}
