<?php

class Asg_News_Block_Adminhtml_News_Grid extends Mage_Adminhtml_Block_Widget_Grid
{
    protected function _construct()
    {
        $this->setId('newsGrid');
        $this->_controller = 'adminhtml_news';

        $this->setDefaultSort('id');
        $this->setDefaultDir('desc');

        $this->setUseAjax(true);
    }

    protected function _prepareCollection()
    {
        $collection = Mage::getModel('asgnews/news')->getCollection();
        $this->setCollection($collection);
        return parent::_prepareCollection();
    }

    protected function _prepareColumns()
    {
        $helper = Mage::helper('asgnews');

        $this->addColumn('id', array(
            'header' => $helper->__('News ID'),
            'index' => 'id',
            'filter_index'  => 'id',
        ));

        $this->addColumn('image', array(
            'header'    => Mage::helper('asgnews')->__('News image'),
            'align'     =>'left',
            'index'     => 'image',
            'filter' => false,
            'sortable'  => false,
            'renderer'  => 'asgnews/adminhtml_news_renderer_image'
        ));

        $this->addColumn('title', array(
            'header' => $helper->__('Title'),
            'index' => 'title',
            'type' => 'text',
        ));

        return parent::_prepareColumns();
    }

    protected function _prepareMassaction()
    {
        $this->setMassactionIdField('id');
        $this->getMassactionBlock()->setFormFieldName('news');

        $this->getMassactionBlock()->addItem('delete', array(
            'label' => $this->__('Delete'),
            'url' => $this->getUrl('*/*/massDelete'),
        ));

        return $this;
    }

    public function getRowUrl($model)
    {
        return $this->getUrl('*/*/edit', array(
            'id' => $model->getId(),
        ));
    }

    public function getGridUrl()
    {
        return $this->getUrl('*/*/grid', array('_current'=>true));
    }

}