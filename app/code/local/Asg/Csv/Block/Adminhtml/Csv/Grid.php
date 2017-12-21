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
        $productId = Mage::registry('csv_selected_product_id');

        if(!empty($productId)) {
            /** @var array<Asg_Csv_Model_Csv> $collection */
            $collection = Mage::getResourceModel('asgcsv/csv_collection');
            $collection->addFieldToFilter('product_id', array('in' => $productId))
                ->load();
        } else {
            $collection = array();
        }

        $this->setCollection($collection);
        return parent::_prepareCollection($collection);
    }

    protected function _prepareColumns()
    {
        /** @var Asg_News_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');

        /** @var Asg_Csv_Model_Csv $model */
        $model = Mage::getModel("asgcsv/csv");

        $this->addColumn('id', array(
            'header'        => $helper->__('ID'),
            'align'         => 'right',
            'width'         => '20px',
            'filter_index'  => 'id',
            'index'         => 'id'
        ));

        $this->addColumn('created_at', array(
            'header' => $this->__('Created at'),
            'index' => 'created_at',
            'type' => 'datetime',
            'format' => 'Y-M-d H:m:s'
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


        $this->addColumn('status', array(
            'header'        => $helper->__('Status'),
            'align'         => 'left',
            'filter_index'  => 'status',
            'index'         => 'status',
            'type'          => 'options',
            'escape'        => true,
            'options'   => $model->getStatusesForSelect()
        ));

        $this->addColumn('error', array(
            'header'        => $helper->__('Error'),
            'align'         => 'left',
            'filter_index'  => 'error',
            'index'         => 'error',
            'type'          => 'text',
            'truncate'      => 50,
            'escape'        => true
        ));

        $this->addColumn('size', array(
            'header'        => $helper->__('Size'),
            'align'         => 'left',
            'index'         => 'size',
            'filter'        => false,
            'sortable'      => false,
            'renderer'      => 'asgcsv/adminhtml_csv_renderer_size'
        ));

        $this->addColumn('updated_at', array(
            'header' => $this->__('Updated at'),
            'index' => 'updated_at',
            'type' => 'datetime',
            'format' => 'Y-M-d H:m:s'
        ));

        parent::_prepareColumns();
    }
}