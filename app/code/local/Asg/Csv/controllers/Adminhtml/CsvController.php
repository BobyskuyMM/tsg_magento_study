<?php

class Asg_Csv_Adminhtml_CsvController extends Mage_Adminhtml_Controller_Action
{
    public function uploadAction()
    {
        $this->loadLayout();
        /** @var Mage_Adminhtml_Model_Session $session */
        $session = Mage::getSingleton('adminhtml/session');

        if ($this->getRequest()->isPost()) {
            try {
                /** @var Asg_Csv_Model_Csv $model */
                $model = Mage::getModel('asgcsv/csv');
                $model->parseAndUploadCsvFile();
                $session->addSuccess($this->__('Csv file was saved successfully'));
                $this->_redirect('*/catalog_product/index');
            } catch (Exception $e) {
                Mage::register('csv_parse_errors', $e->getMessage());
            }
        }
        $this->renderLayout();
    }

    public function imagesAction()
    {
        $this->_initProduct();
        $this->loadLayout();
        $this->getLayout()->getBlock('admin.product.reviews')
            ->setProductId(Mage::registry('product')->getId())
            ->setUseAjax(true);
        $this->renderLayout();
    }

    public function gridAction()
    {
        $this->loadLayout();
        $id = $this->getRequest()->get('id');
        if ($id) {
            Mage::register('csv_selected_product_id', $id);
            $this->getResponse()->setBody(
                $this->getLayout()->createBlock('asgcsv/adminhtml_csv_grid')->toHtml()
            );
        }
    }
}
