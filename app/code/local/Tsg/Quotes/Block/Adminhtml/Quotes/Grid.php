<?php

class Tsg_Quotes_Block_Adminhtml_Quotes_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    protected function _construct()
    {
        $this->setId('quotesGrid');
        $this->_controller ='adminhtml_quotes';
        $this->setUseAjax(true);

        $this->setDefaultSort('id');
        $this->setDefaultDir('desc');
    }

    protected function _prepareCollection()
    {
        $collection = Mage::getModel('tsg_quotes/quote')->getCollection();

        $this->setCollection($collection);

        return parent::_prepareCollection($collection);
    }

    protected function _prepareColumns()
    {
        $this->addColumn('id', array(
            'header'        => Mage::helper('tsg_quotes')->__('ID'),
            'align'         => 'right',
            'width'         => '20px',
            'filter_index'  => 'id',
            'index'         => 'id'
        ));

        $this->addColumn('name', array(
            'header'        => Mage::helper('tsg_quotes')->__('Title'),
            'align'         => 'left',
            'filter_index'  => 'name',
            'index'         => 'name',
            'type'          => 'text',
            'truncate'      => 50,
            'escape'        => true
        ));

        $this->addColumn('action', array(
            'header'        => Mage::helper('tsg_quotes')->__('Action'),
            'type'          => 'action',
            'getter'        => 'getId',
            'actions'       => array(
                array(
                    'caption'   => Mage::helper('tsg_quotes')->__('Edit'),
                    'url'       => array( 'base' => '*/*/edit'),
                    'field'     => 'id'
                )
            ),
            'filter'        => false,
            'sortable'      => false,
            'index'         => 'id'
        ));

        parent::_prepareColumns();
    }

    public function getRowUrl($quotes)
    {
        return $this->getUrl('*/*/grid', array('_current' => true));
    }


}