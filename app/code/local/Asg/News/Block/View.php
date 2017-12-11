<?php

class Asg_News_Block_View extends Mage_Core_Block_Template
{
    /**
     * @return Asg_News_Model_News
     */
    public function getCurrentNews()
    {
        /** @var Asg_News_Model_News $news */
        $news = Mage::registry('current_news');
        return $news;
    }

    /**
     * @param $news
     * @return string
     */
    public function getImageUrl($news)
    {
        /** @var Asg_News_Helper_Data $helper */
        $helper = Mage::helper('asgnews');
        $imgUrl = $helper->getImageUrl($news);
        return $imgUrl;
    }
}
