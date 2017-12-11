<?php

class Asg_News_Helper_Data extends Mage_Core_Helper_Abstract
{
    /**
     * Get news images folder path in disc
     *
     * @return string
     */
    public function getNewsImageBasePath()
    {
        return Mage::getBaseDir('media') . DS . 'asg_news' . DS;
    }

    /**
     * Get images frontend folder
     *
     * @return string
     */
    public function getNewsImageFrontendFolder()
    {
        return  DS . 'media' . DS .'asg_news' . DS;
    }

    /**
     * Get thumbnail image name
     *
     * @param string $imageName
     * @return string
     */
    public function makeThumbnailImageName($imageName)
    {
        return 'thumbnail_' . $imageName;
    }


    /**
     * Get image thumbnail
     * @param Asg_News_Model_News $news
     * @return string
     */
    public function getImageUrl(Asg_News_Model_News $news)
    {
        $imageName = $news->getImage();
        if ($imageName) {
            return $this->getNewsImageFrontendFolder() . $imageName;
        }
        return "";
    }

    /**
     * Get image thumbnail
     * @param string $imageName
     * @return string
     * @throws Exception
     */
    public function getThumbnailUrl($imageName)
    {
        $imageBasePath = $this->getNewsImageBasePath();
        $imageThumbnailName = $this->makeThumbnailImageName($imageName);

        $imageDiscLocation = $imageBasePath . $imageName;
        $imageThumbnailDiscLocation = $imageBasePath . $imageThumbnailName;

        $imageThumbnailUrl = "";

        if (file_exists($imageThumbnailDiscLocation)) {
            $imageThumbnailUrl = $this->getNewsImageFrontendFolder() . $imageThumbnailName;
        } else {
            $imageThumbnailUrl = $this->getNewsImageFrontendFolder() . $imageThumbnailName;
            try {
                $image = new Varien_Image($imageDiscLocation);
                $image->constrainOnly(false);
                $image->keepFrame(true);

                $image->keepAspectRatio(true);
                $image->resize(120, 120);
                $image->save($imageBasePath . $imageThumbnailName);
            } catch (Exception $e) {
                Mage::logException($e);
                $imageThumbnailUrl = "";
            }
        }

        return $imageThumbnailUrl;
    }

    /**
     * Get image thumbnail
     * @param Asg_News_Model_News $news
     * @return string
     * @throws Exception
     */
    public function getThumbnailUrlFromNews(Asg_News_Model_News $news)
    {
        $imageName = $news->getImage();

        if ("" === $imageName) {
            return "";
        }

        return $this->getThumbnailUrl($imageName);
    }

}
