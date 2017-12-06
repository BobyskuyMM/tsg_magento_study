<?php

class Asg_News_IndexController extends Mage_Core_Controller_Front_Action
{
    public function newsListAction()
    {
        $this->loadLayout();
        $this->renderLayout();
    }

    public function newsViewAction()
    {
        $this->loadLayout();

        $newsId = (int)$this->getRequest()->getParam('id');
        if (!$newsId) {
            $this->_forward('noRoute');
        }

        $news = Mage::getModel('asgnews/news')->load($newsId);

        if (empty($news)) {
            $this->_forward('noRoute');
        }

        Mage::register('current_news', $news);
        $this->loadLayout();
        $this->renderLayout();
    }
}
