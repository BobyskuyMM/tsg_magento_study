<?php

class Asg_Advertising_Block_Adminhtml_Banner_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    protected function _construct()
    {
        $this->setId('advertisingGrid');
        $this->_controller ='adminhtml_banner';

        $this->setDefaultSort('id');
        $this->setDefaultDir('desc');

        $this->setUseAjax(true);
    }

    protected function _prepareCollection()
    {
        $collection = Mage::getModel('asg_advertising/banner')->getCollection();
        $this->setCollection($collection);
        return parent::_prepareCollection($collection);
    }

    protected function _prepareColumns()
    {
        /** @var Asg_Advertising_Helper_Data $helper */
        $helper = Mage::helper('asg_advertising');
        $this->addColumn('banner_id', array(
            'header'        => $helper->__('ID'),
            'align'         => 'right',
            'width'         => '20px',
            'filter_index'  => 'banner_id',
            'index'         => 'banner_id'
        ));
        $this->addColumn('title', array(
            'header'        => $helper->__('Title'),
            'align'         => 'left',
            'filter_index'  => 'title',
            'index'         => 'title',
            'type'          => 'text',
            'truncate'      => 50,
            'escape'        => true
        ));
        $this->addColumn('desc', array(
            'header'        => $helper->__('Description'),
            'align'         => 'left',
            'filter_index'  => 'desc',
            'index'         => 'desc',
            'type'          => 'text',
            'truncate'      => 50,
            'escape'        => true
        ));
        $this->addColumn('created_at', array(
            'header' => $this->__('Created at'),
            'index' => 'created_at',
            'type' => 'datetime',
            'format' => 'Y-M-d H:m:s'
        ));
        parent::_prepareColumns();
    }

    public function getGridUrl()
    {
        return $this->getUrl('*/*/grid', array('_current'=>true));
    }

}
