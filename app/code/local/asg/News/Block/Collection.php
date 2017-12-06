<?php
class Asg_News_Block_Collection extends Mage_Core_Block_Template
{
    public function __construct()
    {
        parent::__construct();
        $collection = Mage::getModel('asgnews/news')->getCollection();
        $this->setCollection($collection);
    }

    protected function _prepareLayout()
    {
        parent::_prepareLayout();

        $newsPerPage = Mage::getStoreConfig('tab1/general/news_per_page');

        /** @var Mage_Page_Block_Html_Pager $pager */
        $pager = $this->getLayout()->createBlock('page/html_pager', 'custom.pager');

        $pager->setAvailableLimit(array($newsPerPage=>$newsPerPage));

        $pager->setCollection($this->getCollection());

        $this->setChild('pager', $pager);

        $this->getCollection()->load();

        return $this;
    }

    public function getPagerHtml()
    {
        return $this->getChildHtml('pager');
    }

    /**
     * get small image
     * @param $imageName
     * @return string
     * @throws Exception
     */
    public function getThumbnailUrl($imageName)
    {
        /** @var Asg_News_Helper_Data $helper */
        $helper = Mage::helper('asgnews');
        return $helper->getThumbnailUrl($imageName);
    }

    /**
     * function cat text
     * @param $text
     * @param int $start
     * @param int $length
     * @param string $encoding
     * @return string
     */
    public function catText($text, $start = 0, $length = 80, $encoding = 'UTF-8')
    {
        return mb_substr($text, $start, $length, $encoding);
    }

    /**
     * @param Asg_News_Model_News $news
     * @return string
     */
    public function getRowUrl(Asg_News_Model_News $news)
    {
        return Mage::getUrl('news/index/newsview', array('id' => $news->getId()));
    }
}
