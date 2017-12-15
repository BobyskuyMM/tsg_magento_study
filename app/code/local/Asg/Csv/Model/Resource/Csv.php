<?php

class Asg_Csv_Model_Resource_Csv extends Mage_Core_Model_Mysql4_Abstract
{
    public function _construct()
    {
        $this->_init('asgcsv/table_csv', 'id');
    }
}
