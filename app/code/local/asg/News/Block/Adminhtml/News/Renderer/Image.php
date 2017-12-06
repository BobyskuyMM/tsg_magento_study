<?php

class Asg_News_Block_Adminhtml_News_Renderer_Image extends Mage_Adminhtml_Block_Widget_Grid_Column_Renderer_Abstract
{
    /**
     * @param Varien_Object $row
     * @return string
     * @throws Exception
     */
    public function render(Varien_Object $row)
    {
        /** @var Asg_News_Helper_Data $helper */
        $helper = Mage::helper('asgnews');

        $imageName = $row->getData($this->getColumn()->getIndex());

        if ('' == $imageName) {
            return '';
        }

        $imageUrl = $helper->getThumbnailUrl($imageName);

        $html = '<img ';
        $html .= 'id="' . $this->getColumn()->getId() . '" ';
        $html .= 'src="' . $imageUrl . '"';
        $html .= 'class="grid-image ' . $this->getColumn()->getInlineCss() . '"/>';

        return $html;
    }
}
