<?php

/** @var Mage_Core_Model_Resource_Setup $installer */
$installer = $this;
$tableNews = $installer->getTable('asg_advertising/table_banner');

$installer->startSetup();
$installer->getConnection()->dropTable($tableNews);

$table = $installer->getConnection()
    ->newTable($tableNews)
    ->addColumn('banner_id', Varien_Db_Ddl_Table::TYPE_INTEGER, null, array(
        'identity'  => true,
        'nullable'  => false,
        'primary'   => true,
    ), 'Banner id')

    ->addColumn('title', Varien_Db_Ddl_Table::TYPE_TEXT, 100, array(
        'nullable'  => false,
    ), 'Title')
    ->addColumn('desc', Varien_Db_Ddl_Table::TYPE_TEXT, 300, array(
        'nullable'  => false,
    ), 'Description')

    ->addColumn('image_original', Varien_Db_Ddl_Table::TYPE_TEXT, 255, array(
        'nullable'  => false,
    ))
    ->addColumn('image_grid', Varien_Db_Ddl_Table::TYPE_TEXT, 255, array(
        'nullable'  => false,
    ))
    ->addColumn('image_list', Varien_Db_Ddl_Table::TYPE_TEXT, 255, array(
        'nullable'  => false,
    ))

    ->addColumn('created_at', Varien_Db_Ddl_Table::TYPE_TIMESTAMP, null, array())
    ->addColumn('updated_at', Varien_Db_Ddl_Table::TYPE_TIMESTAMP, null, array());

$installer->getConnection()->createTable($table);
//$installer->getConnection()->dropTable($tableNews);
$installer->endSetup();
