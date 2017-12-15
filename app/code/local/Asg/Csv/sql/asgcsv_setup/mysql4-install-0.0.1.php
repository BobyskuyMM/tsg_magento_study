<?php

/** @var Mage_Core_Model_Resource_Setup $installer */
$installer = $this;
$tableNews = $installer->getTable('asgcsv/table_csv');

$installer->startSetup();
$installer->getConnection()->dropTable($tableNews);

$table = $installer->getConnection()
    ->newTable($tableNews)
    ->addColumn('id', Varien_Db_Ddl_Table::TYPE_INTEGER, null, array(
        'identity'  => true,
        'nullable'  => false,
        'primary'   => true,
    ))
    ->addColumn('url', Varien_Db_Ddl_Table::TYPE_TEXT, null, array(
        'nullable'  => false,
    ))
    ->addColumn('sku', Varien_Db_Ddl_Table::TYPE_TEXT, 64, array(
        'nullable'  => false,
    ))

    ->addColumn('product_id', Varien_Db_Ddl_Table::TYPE_INTEGER, null, array(
        'unsigned'  => true,
        'nullable'  => false,
        'default'   => '0',
    ), 'Product id')

    ->addForeignKey(
        $installer->getFkName('asgcsv/table_csv', 'product_id', 'catalog/product', 'entity_id'),
        'product_id', $installer->getTable('catalog/product'), 'entity_id',
        Varien_Db_Ddl_Table::ACTION_CASCADE, Varien_Db_Ddl_Table::ACTION_NO_ACTION)

    ->addColumn('size', Varien_Db_Ddl_Table::TYPE_INTEGER, null, array(
        'unsigned'  => true,
        'nullable'  => true,
    ))
    ->addColumn('status', Varien_Db_Ddl_Table::TYPE_SMALLINT, null, array(
        'unsigned'  => true,
        'nullable'  => true
    ))
    ->addColumn('error', Varien_Db_Ddl_Table::TYPE_TEXT, 255, array(
        'nullable'  => true,
    ))
    ->addColumn('created_at', Varien_Db_Ddl_Table::TYPE_TIMESTAMP, null, array())
    ->addColumn('updated_at', Varien_Db_Ddl_Table::TYPE_TIMESTAMP, null, array());

$installer->getConnection()->createTable($table);
$installer->endSetup();
