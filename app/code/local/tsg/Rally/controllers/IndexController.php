<?php

class Tsg_Rally_IndexController extends Mage_Core_Controller_Front_Action
{
    public function indexAction()
    {
//        echo "Hello magento world";
        $this->loadLayout();
        $this->renderLayout();
    }

    public function goodbyeAction()
    {
        echo 'Goodbye magento World';
    }

    public function paramsAction()
    {
        echo '';

        $params = $this->getRequest()->getParams();
        foreach ($params as $key => $value) {
            echo sprintf('Parameter: %s; Key: %s <br/>', $value, $key);
        }
    }
}
