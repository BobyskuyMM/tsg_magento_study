<?php

class Asg_Csv_Helper_Data extends Mage_Core_Helper_Abstract
{
    /**
     * Get csv file upload folder
     *
     * @return string
     */
    public function getCsvUploadPath()
    {
        return Mage::getBaseDir('media') . DS . 'asgcsv_files' . DS;
    }
}
