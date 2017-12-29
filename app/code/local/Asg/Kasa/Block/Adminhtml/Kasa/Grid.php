<?php

class Asg_Kasa_Block_Adminhtml_Kasa_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    protected function _construct()
    {
        $this->setId('kasaGrid');
        $this->_controller = 'adminhtml_kasa';
        $this->setDefaultSort('id');
        $this->setDefaultDir('desc');
        $this->setUseAjax(true);
    }

    protected function _prepareCollection()
    {
        $collection = Mage::getModel('sales/order')
            ->getCollection()
            ->addAttributeToFilter( 'base_looted_coins', array('neq' => ''))
        ;
        $this->setCollection($collection);
        return parent::_prepareCollection();
    }

    protected function _prepareColumns()
    {
        /** @var Asg_Kasa_Helper_Data $helper */
        $helper = Mage::helper('asg_kasa');
        $this->addColumn('real_order_id', array(
            'header'=> Mage::helper('sales')->__('Order #'),
            'width' => '80px',
            'type'  => 'text',
            'index' => 'increment_id',
        ));
        $this->addColumn('base_looted_coins', array(
            'header' => $helper->__('Looted coins(Base)'),
            'index' => 'base_looted_coins',
            'type'  => 'currency',
            'currency' => 'base_currency_code',
        ));
        $this->addExportType('*/*/exportCsv', $helper->__('Export to CSV'));

        return parent::_prepareColumns();
    }
}