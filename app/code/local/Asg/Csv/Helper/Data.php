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

    /**
     * @param $bytes
     * @param int $precision
     * @return string
     */
    public function formatBytes($bytes, $precision = 2) {
        $base = log($bytes) / log(1024);
        $suffix = array("B", "KB", "MB", "GB", "TB");
        $f_base = floor($base);
        return round(pow(1024, $base - floor($base)), 1) . $suffix[$f_base];
    }

}
