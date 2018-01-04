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
        $newsId = (int)$this->getRequest()->getParam('id');
        if ($newsId) {
            $news = Mage::getModel('asgnews/news')->load($newsId);
            if (!$news->isObjectNew()) {
                Mage::register('current_news', $news);
                $this->loadLayout();
                $this->renderLayout();
            } else {
                $this->_forward('noRoute');
            }
        } else {
            $this->_forward('noRoute');
        }
        return;
    }
}
