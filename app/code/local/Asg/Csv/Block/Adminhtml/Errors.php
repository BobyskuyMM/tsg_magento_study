<?php
//asgcsv/validation-errors.phtml<?php

class Asg_Csv_Block_Adminhtml_Errors extends Mage_Adminhtml_Block_Abstract
{
    protected function _construct()
    {
        /** @var Asg_Csv_Helper_Data $helper */
        $helper = Mage::helper('asgcsv');
        $this->_template = "asgcsv/validation-errors.phtml";
    }






}