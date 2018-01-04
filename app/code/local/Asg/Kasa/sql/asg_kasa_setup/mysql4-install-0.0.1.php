<?php

/* @var $installer Mage_Sales_Model_Mysql4_Setup */
$installer = $this;

$installer->startSetup();

$installer->getConnection()->addColumn($this->getTable('sales_flat_order'), 'base_kasa_percent', 'decimal(12,4) default NULL' );
$installer->getConnection()->addColumn($this->getTable('sales_flat_order'), 'kasa_percent', 'decimal(12,4) default NULL' );
$installer->getConnection()->addColumn($this->getTable('sales_flat_order'), 'base_looted_coins', 'decimal(12,4) default NULL' );
$installer->getConnection()->addColumn($this->getTable('sales_flat_order'), 'looted_coins', 'decimal(12,4) default NULL' );

$installer->getConnection()->addColumn($this->getTable('sales_flat_quote'), 'base_kasa_percent', 'decimal(12,4) default NULL' );
$installer->getConnection()->addColumn($this->getTable('sales_flat_quote'), 'kasa_percent', 'decimal(12,4) default NULL' );
$installer->getConnection()->addColumn($this->getTable('sales_flat_quote'), 'base_looted_coins', 'decimal(12,4) default NULL' );
$installer->getConnection()->addColumn($this->getTable('sales_flat_quote'), 'looted_coins', 'decimal(12,4) default NULL' );

$installer->endSetup();
