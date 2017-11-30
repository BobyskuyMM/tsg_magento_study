<?php

class Tsg_Rally_IndexController extends Mage_Core_Controller_Front_Action
{
    public function indexAction()
    {
        $this->loadLayout();
        $this->renderLayout();
    }

    public function goodbyeAction()
    {
        $this->loadLayout();
        $this->renderLayout();
//        echo 'Goodbye magento World';
    }

    public function paramsAction()
    {
        $params = $this->getRequest()->getParams();
        foreach ($params as $key => $value) {
            echo sprintf('Parameter: %s; Key: %s <br/>', $value, $key);
        }
    }
}
