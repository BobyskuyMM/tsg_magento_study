<?php

class Asg_Csv_Model_Resource_Csv extends Mage_Core_Model_Mysql4_Abstract
{
    public function _construct()
    {
        $this->_init('asgcsv/table_csv', 'id');
    }

    /**
     * Insert multi rows
     *
     * @param $dataArray
     * @return int
     * @throws Zend_Db_Exception
     */
    public function multipleInsert($dataArray)
    {
        /** @var Mage_Core_Model_Resource $resource */
        $resource = Mage::getSingleton('core/resource');

        /** @var Varien_Db_Adapter_Pdo_Mysql $connection */
        $connection = $resource->getConnection('core_write');

        return $connection->insertMultiple(
            Mage::getSingleton('core/resource')->getTableName('asgcsv/table_csv'),
            $dataArray
        );
    }

}
