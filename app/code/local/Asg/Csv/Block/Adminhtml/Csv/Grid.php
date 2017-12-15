<?php

class Asg_Csv_Block_Adminhtml_Csv_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    protected function _construct()
    {
        $this->setId('csvGrid');
        $this->_controller ='adminhtml_csv';
        $this->setUseAjax(true);

        $this->setDefaultSort('id');
        $this->setDefaultDir('desc');
    }

    protected function _prepareCollection()
    {
        $collection = Mage::getModel('asgcsv/csv')->getCollection();
        $this->setCollection($collection);
        return parent::_prepareCollection($collection);
    }

    protected function _prepareColumns()
    {
        /** @var Asg_News_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');

        $this->addColumn('id', array(
            'header'        => $helper->__('ID'),
            'align'         => 'right',
            'width'         => '20px',
            'filter_index'  => 'id',
            'index'         => 'id'
        ));

        $this->addColumn('sku', array(
            'header'        => $helper->__('SKU'),
            'align'         => 'left',
            'filter_index'  => 'sku',
            'index'         => 'sku',
            'type'          => 'text',
            'truncate'      => 50,
            'escape'        => true
        ));


        $this->addColumn('url', array(
            'header'        => $helper->__('URL'),
            'align'         => 'left',
            'filter_index'  => 'url',
            'index'         => 'url',
            'type'          => 'text',
            'truncate'      => 50,
            'escape'        => true
        ));

        parent::_prepareColumns();
    }

    public function getRowUrl($quotes)
    {
        return $this->getUrl('*/*/grid', array('_current' => true));
    }


}