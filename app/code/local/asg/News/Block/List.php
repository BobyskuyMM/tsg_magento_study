<?php

class Asg_News_Block_List extends Mage_Core_Block_Template
{
    public function getNewsCollection()
    {
        /** @var $newsCollection */
        $newsCollection = Mage::getModel('asgnews/news')->getCollection();
        $newsCollection->setOrder('created', 'DESC');
        return $newsCollection;
    }
}