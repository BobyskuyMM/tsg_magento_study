<?php

class Asg_News_Adminhtml_NewsController extends Mage_Adminhtml_Controller_Action
{
    public function indexAction()
    {
        $this->loadLayout();
        $this->_setActiveMenu('asgnews');
        $this->renderLayout();
    }

    public function newAction()
    {
        $this->_forward('edit');
    }

    public function saveAction()
    {
        /** @var Mage_Adminhtml_Model_Session $session */
        $session = Mage::getSingleton('adminhtml/session');

        $data = $this->getRequest()->getPost();

        if ($data) {
            try {
                /** @var Asg_News_Helper_Data $helper */
                $helper = Mage::helper('asgnews');

                $id = (int)$this->getRequest()->getParam('id');

                /** @var Asg_News_Model_News $model */
                $model = Mage::getModel('asgnews/news');


                $oldImage = "";

                if ($id) {
                    $model->load($id);
                    $oldImage = $model->getImage();
                }

                $model->addData($data);

                $model->processImage($data, $oldImage);

                $model->save();

                $session->addSuccess($this->__('News was saved successfully'));
                $session->setFormData(false);
                $this->_redirect('*/*/');
            } catch (Exception $e) {
                $session->addError($e->getMessage());
                $session->setFormData($data);
                $this->_redirect('*/*/edit', array(
                    'id' => $this->getRequest()->getParam('id')
                ));
            }
            return;
        }

        $session->addError($this->__('Unable to find item to save'));
        $this->_redirect('*/*/');
    }

    public function deleteAction()
    {
        if ($id = $this->getRequest()->getParam('id')) {

            /** @var Mage_Adminhtml_Model_Session $session */
            $session = Mage::getSingleton('adminhtml/session');

            try {
                Mage::getModel('asgnews/news')->setId($id)->delete();
                $session->addSuccess($this->__('News was deleted successfully'));
            } catch (Exception $e) {
                $session->addError($e->getMessage());
                $this->_redirect('*/*/edit', array('id' => $id));
            }
        }
        $this->_redirect('*/*/');
    }


    public function editAction()
    {
        $id = (int)$this->getRequest()->getParam('id');

        /** @var Mage_Adminhtml_Model_Session $session */
        $session = Mage::getSingleton('adminhtml/session');

        if ($id) {
            /** @var Asg_News_Model_News $model */
            $model = Mage::getModel('asgnews/news')->load($id);

            if (!$model->isObjectNew()) {
                Mage::register('current_news', $model);
            }
        }

        $this->loadLayout()->_setActiveMenu('asgnews');

        //$this->_addLeft($this->getLayout()->createBlock('asgnews/adminhtml_news_edit_tabs'));
        //$this->_addContent($this->getLayout()->createBlock('asgnews/adminhtml_news_edit'));

        $this->renderLayout();
    }

    public function massDeleteAction()
    {
        $news = $this->getRequest()->getParam('news', null);

        if (is_array($news) && sizeof($news) > 0) {
            try {
                foreach ($news as $id) {
                    Mage::getModel('asgnews/news')->setId($id)->delete();
                }
                $this->_getSession()->addSuccess($this->__('Total of %d news have been deleted', sizeof($news)));
            } catch (Exception $e) {
                $this->_getSession()->addError($e->getMessage());
            }
        } else {
            $this->_getSession()->addError($this->__('Please select news'));
        }
        $this->_redirect('*/*');
    }
}
