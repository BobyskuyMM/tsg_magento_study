-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.37 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for magento
CREATE DATABASE IF NOT EXISTS `magento` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `magento`;

-- Dumping structure for table magento.adminnotification_inbox
CREATE TABLE IF NOT EXISTS `adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox';

-- Dumping data for table magento.adminnotification_inbox: ~9 rows (approximately)
/*!40000 ALTER TABLE `adminnotification_inbox` DISABLE KEYS */;
INSERT INTO `adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
	(1, 2, '2017-06-13 18:20:53', 'New Patch for PayPal Instant Payment Notification (IPN) Changes. Upgrade to 1.9.3.3 or SUPEE-8167 by June 30, 2017 to Avoid Service Disruptions – 6/13/2017', 'As of June 30, 2017, PayPal Instant Payment Notifications will no longer allow you to use HTTP to post messages back to PayPal for verification. To comply with these changes, all merchants using PayPal must upgrade to Community Edition 1.9.3.3 or apply the SUPEE-8167 patch. Updates must be in place by June 30, 2017 to avoid any service disruptions. The patch is available on the Community Edition Download Page (https://magento.com/tech-resources/download) and more information is available from PayPal at https://www.paypal-knowledge.com/infocenter/index?page=content&widgetview=true&id=FAQ1916&viewlocale=en_US\n\n', 'https://magento.com/tech-resources/download ', 0, 1),
	(2, 2, '2017-09-11 22:52:53', 'USPS Name Change Impacts “First-Class Mail Parcel” Service – 09/11/2017', 'USPS changed their “First-Class Mail Parcel” Service to “First-Class Package Service – Retail.” Merchants offering this service must change the name, as “First-Class Mail Parcel” will no longer work. Patches addressing this issue are available on the Magento Open Source download page. More information about the issue is available in a Technical Bulletin at http://devdocs.magento.com/guides/v2.1/release-notes/tech_bull_USPS-patch-Sept2017.html ', 'http://devdocs.magento.com/guides/v2.1/release-notes/tech_bull_USPS-patch-Sept2017.html ', 0, 1),
	(3, 1, '2017-09-15 17:50:16', 'Magento Open Source 1.9.3.6 and SUPEE-10266 Security Enhancements – 9/14/2017', 'Magento Open Source 1.9.3.6 and SUPEE-10266 include critical security enhancements. Please update your site as soon as possible. More information is available in the release notes: \nhttp://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html.\n', 'http://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html', 0, 1),
	(4, 4, '2017-09-26 22:42:02', 'Magento Open Source 2.2 Delivers Enhanced Commerce Capabilities – 9/26/2017', 'Magento Open Source 2.2 includes a range of platform enhancements, including a new deployment process that minimizes production downtime, optimized performance, platform updates that improve developer experience, and Magento Social marketing tools. Learn more at http://devdocs.magento.com/guides/v2.2/release-notes/bk-release-notes.html.\n\n', 'http://devdocs.magento.com/guides/v2.2/release-notes/bk-release-notes.html ', 0, 1),
	(5, 1, '2017-11-29 19:06:29', 'Magento Open Source 1.9.3.7 Enhances Security - 11/28/2017', 'Magento Open Source 1.9.3.7 includes critical security enhancements. We encourage you to upgrade or patch as soon as is reasonably possible. Review the release notes for more information: \nhttp://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html\n\n', 'http://devdocs.magento.com/guides/m1x/ce19-ee114/ce1.9_release-notes.html', 0, 1),
	(6, 4, '2017-12-12 20:00:13', 'Magento Open Source 2.2.2 Accelerates Growth with Instant Purchase Checkout, Integrated Email Marketing Automation, Advanced Reporting, and More – 12/12/2017', 'Our newest release of Magento Open Source equips merchants with powerful tools to accelerate growth and improve operational efficiency. It boosts conversion rates with a streamlined Instant Purchase checkout, jump-starts sales with integrated dotmailer email marketing automation, delivers actionable insights through Advanced Reporting, and provides integrated multi-carrier shipping and fulfillment capabilities with Magento Shipping. https://magento.com/blog/magento-news/new-instant-purchase-checkout-boosts-sales ', 'https://magento.com/blog/magento-news/new-instant-purchase-checkout-boosts-sales ', 0, 1),
	(7, 4, '2017-12-17 23:54:11', 'Survey: Do you use site personalization and optimization tools? If yes, we\'d to hear from you!', 'We\'d like to invite you to take our online survey on site personalization and optimization tools. Your input is valuable and will help to inform the products we bring to market.\n\nThe survey should take no more than 5 minutes to complete. \n\nTo get started, go to: \nhttps://www.surveymonkey.com/r/NF9ZH8D\n\nThank you in advance for your participation.', 'https://www.surveymonkey.com/r/NF9ZH8D', 1, 1),
	(8, 4, '2017-12-26 18:24:06', 'Survey: Do you use site personalization tools? If yes, please take our survey.', 'We\'d like to invite you to take our online survey on site personalization and optimization tools. Your input is valuable and will help to inform the products we bring to market.\n\nThe survey should take no more than 5 minutes to complete. \n\nTo get started, go to: \nhttps://www.surveymonkey.com/r/NF9ZH8D\n\nThank you in advance for your participation.', 'https://www.surveymonkey.com/r/NF9ZH8D', 1, 1),
	(9, 4, '2017-12-27 15:46:32', 'Magento Survey: Take our quick survey on payments risk & fraud.', 'We\'d like to invite you to take our online survey on payments risk and fraud. The survey should take no more than 2 minutes to complete.\n\nTo get started, go to: \nhttps://www.surveymonkey.co.uk/r/J8SQ9VG\n\nThank you in advance for your participation.\n\n~The Magento Team', 'https://www.surveymonkey.co.uk/r/J8SQ9VG', 0, 1),
	(10, 4, '2018-01-03 17:34:06', 'Survey: Tell us about your expectations for mobile commerce with our 1 minute survey', 'Happy new year!\n\nHas mobile commerce lived up to your expectations? We\'d like to hear from you. Take our short survey and tell us what you think.\n\nGo to: https://www.surveymonkey.com/r/589GJVT\n\nCheers!\n\n~The Magento Team', 'https://www.surveymonkey.com/r/589GJVT', 1, 0);
/*!40000 ALTER TABLE `adminnotification_inbox` ENABLE KEYS */;

-- Dumping structure for table magento.admin_assert
CREATE TABLE IF NOT EXISTS `admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table';

-- Dumping data for table magento.admin_assert: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin_assert` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_assert` ENABLE KEYS */;

-- Dumping structure for table magento.admin_role
CREATE TABLE IF NOT EXISTS `admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Admin Role Table';

-- Dumping data for table magento.admin_role: ~4 rows (approximately)
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
	(1, 0, 1, 1, 'G', 0, 'Administrators'),
	(3, 0, 1, 0, 'G', 0, 'manager'),
	(7, 1, 2, 0, 'U', 1, 'admin'),
	(8, 3, 2, 0, 'U', 2, 'test');
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;

-- Dumping structure for table magento.admin_rule
CREATE TABLE IF NOT EXISTS `admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`),
  CONSTRAINT `FK_ADMIN_RULE_ROLE_ID_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=815 DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table';

-- Dumping data for table magento.admin_rule: ~205 rows (approximately)
/*!40000 ALTER TABLE `admin_rule` DISABLE KEYS */;
INSERT INTO `admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
	(1, 1, 'all', NULL, 0, 'G', 'allow'),
	(611, 3, 'all', NULL, 0, 'G', 'deny'),
	(612, 3, 'admin', NULL, 0, 'G', 'deny'),
	(613, 3, 'admin/dashboard', NULL, 0, 'G', 'deny'),
	(614, 3, 'admin/system', NULL, 0, 'G', 'deny'),
	(615, 3, 'admin/system/acl', NULL, 0, 'G', 'deny'),
	(616, 3, 'admin/system/acl/roles', NULL, 0, 'G', 'deny'),
	(617, 3, 'admin/system/acl/users', NULL, 0, 'G', 'deny'),
	(618, 3, 'admin/system/acl/variables', NULL, 0, 'G', 'deny'),
	(619, 3, 'admin/system/acl/blocks', NULL, 0, 'G', 'deny'),
	(620, 3, 'admin/system/store', NULL, 0, 'G', 'deny'),
	(621, 3, 'admin/system/design', NULL, 0, 'G', 'deny'),
	(622, 3, 'admin/system/config', NULL, 0, 'G', 'deny'),
	(623, 3, 'admin/system/config/general', NULL, 0, 'G', 'deny'),
	(624, 3, 'admin/system/config/web', NULL, 0, 'G', 'deny'),
	(625, 3, 'admin/system/config/design', NULL, 0, 'G', 'deny'),
	(626, 3, 'admin/system/config/system', NULL, 0, 'G', 'deny'),
	(627, 3, 'admin/system/config/advanced', NULL, 0, 'G', 'deny'),
	(628, 3, 'admin/system/config/trans_email', NULL, 0, 'G', 'deny'),
	(629, 3, 'admin/system/config/dev', NULL, 0, 'G', 'deny'),
	(630, 3, 'admin/system/config/currency', NULL, 0, 'G', 'deny'),
	(631, 3, 'admin/system/config/sendfriend', NULL, 0, 'G', 'deny'),
	(632, 3, 'admin/system/config/admin', NULL, 0, 'G', 'deny'),
	(633, 3, 'admin/system/config/cms', NULL, 0, 'G', 'deny'),
	(634, 3, 'admin/system/config/customer', NULL, 0, 'G', 'deny'),
	(635, 3, 'admin/system/config/catalog', NULL, 0, 'G', 'deny'),
	(636, 3, 'admin/system/config/payment', NULL, 0, 'G', 'deny'),
	(637, 3, 'admin/system/config/payment_services', NULL, 0, 'G', 'deny'),
	(638, 3, 'admin/system/config/sales', NULL, 0, 'G', 'deny'),
	(639, 3, 'admin/system/config/sales_email', NULL, 0, 'G', 'deny'),
	(640, 3, 'admin/system/config/sales_pdf', NULL, 0, 'G', 'deny'),
	(641, 3, 'admin/system/config/cataloginventory', NULL, 0, 'G', 'deny'),
	(642, 3, 'admin/system/config/shipping', NULL, 0, 'G', 'deny'),
	(643, 3, 'admin/system/config/carriers', NULL, 0, 'G', 'deny'),
	(644, 3, 'admin/system/config/promo', NULL, 0, 'G', 'deny'),
	(645, 3, 'admin/system/config/checkout', NULL, 0, 'G', 'deny'),
	(646, 3, 'admin/system/config/paypal', NULL, 0, 'G', 'deny'),
	(647, 3, 'admin/system/config/reports', NULL, 0, 'G', 'deny'),
	(648, 3, 'admin/system/config/google', NULL, 0, 'G', 'deny'),
	(649, 3, 'admin/system/config/tax', NULL, 0, 'G', 'deny'),
	(650, 3, 'admin/system/config/wishlist', NULL, 0, 'G', 'deny'),
	(651, 3, 'admin/system/config/contacts', NULL, 0, 'G', 'deny'),
	(652, 3, 'admin/system/config/sitemap', NULL, 0, 'G', 'deny'),
	(653, 3, 'admin/system/config/rss', NULL, 0, 'G', 'deny'),
	(654, 3, 'admin/system/config/api', NULL, 0, 'G', 'deny'),
	(655, 3, 'admin/system/config/oauth', NULL, 0, 'G', 'deny'),
	(656, 3, 'admin/system/config/configswatches', NULL, 0, 'G', 'deny'),
	(657, 3, 'admin/system/config/newsletter', NULL, 0, 'G', 'deny'),
	(658, 3, 'admin/system/config/downloadable', NULL, 0, 'G', 'deny'),
	(659, 3, 'admin/system/config/persistent', NULL, 0, 'G', 'deny'),
	(660, 3, 'admin/system/config/tab1', NULL, 0, 'G', 'deny'),
	(661, 3, 'admin/system/config/moneybookers', NULL, 0, 'G', 'deny'),
	(662, 3, 'admin/system/currency', NULL, 0, 'G', 'deny'),
	(663, 3, 'admin/system/currency/rates', NULL, 0, 'G', 'deny'),
	(664, 3, 'admin/system/currency/symbols', NULL, 0, 'G', 'deny'),
	(665, 3, 'admin/system/email_template', NULL, 0, 'G', 'deny'),
	(666, 3, 'admin/system/variable', NULL, 0, 'G', 'deny'),
	(667, 3, 'admin/system/myaccount', NULL, 0, 'G', 'deny'),
	(668, 3, 'admin/system/tools', NULL, 0, 'G', 'deny'),
	(669, 3, 'admin/system/tools/backup', NULL, 0, 'G', 'deny'),
	(670, 3, 'admin/system/tools/backup/rollback', NULL, 0, 'G', 'deny'),
	(671, 3, 'admin/system/tools/compiler', NULL, 0, 'G', 'deny'),
	(672, 3, 'admin/system/convert', NULL, 0, 'G', 'deny'),
	(673, 3, 'admin/system/convert/gui', NULL, 0, 'G', 'deny'),
	(674, 3, 'admin/system/convert/profiles', NULL, 0, 'G', 'deny'),
	(675, 3, 'admin/system/convert/import', NULL, 0, 'G', 'deny'),
	(676, 3, 'admin/system/convert/export', NULL, 0, 'G', 'deny'),
	(677, 3, 'admin/system/cache', NULL, 0, 'G', 'deny'),
	(678, 3, 'admin/system/extensions', NULL, 0, 'G', 'deny'),
	(679, 3, 'admin/system/extensions/local', NULL, 0, 'G', 'deny'),
	(680, 3, 'admin/system/extensions/custom', NULL, 0, 'G', 'deny'),
	(681, 3, 'admin/system/adminnotification', NULL, 0, 'G', 'deny'),
	(682, 3, 'admin/system/adminnotification/show_toolbar', NULL, 0, 'G', 'deny'),
	(683, 3, 'admin/system/adminnotification/show_list', NULL, 0, 'G', 'deny'),
	(684, 3, 'admin/system/adminnotification/mark_as_read', NULL, 0, 'G', 'deny'),
	(685, 3, 'admin/system/adminnotification/remove', NULL, 0, 'G', 'deny'),
	(686, 3, 'admin/system/index', NULL, 0, 'G', 'deny'),
	(687, 3, 'admin/system/order_statuses', NULL, 0, 'G', 'deny'),
	(688, 3, 'admin/system/api', NULL, 0, 'G', 'deny'),
	(689, 3, 'admin/system/api/users', NULL, 0, 'G', 'deny'),
	(690, 3, 'admin/system/api/roles', NULL, 0, 'G', 'deny'),
	(691, 3, 'admin/system/api/consumer', NULL, 0, 'G', 'deny'),
	(692, 3, 'admin/system/api/consumer/edit', NULL, 0, 'G', 'deny'),
	(693, 3, 'admin/system/api/consumer/delete', NULL, 0, 'G', 'deny'),
	(694, 3, 'admin/system/api/authorizedTokens', NULL, 0, 'G', 'deny'),
	(695, 3, 'admin/system/api/oauth_admin_token', NULL, 0, 'G', 'deny'),
	(696, 3, 'admin/system/api/rest_roles', NULL, 0, 'G', 'deny'),
	(697, 3, 'admin/system/api/rest_roles/add', NULL, 0, 'G', 'deny'),
	(698, 3, 'admin/system/api/rest_roles/edit', NULL, 0, 'G', 'deny'),
	(699, 3, 'admin/system/api/rest_roles/delete', NULL, 0, 'G', 'deny'),
	(700, 3, 'admin/system/api/rest_attributes', NULL, 0, 'G', 'deny'),
	(701, 3, 'admin/system/api/rest_attributes/edit', NULL, 0, 'G', 'deny'),
	(702, 3, 'admin/global_search', NULL, 0, 'G', 'deny'),
	(703, 3, 'admin/cms', NULL, 0, 'G', 'deny'),
	(704, 3, 'admin/cms/block', NULL, 0, 'G', 'deny'),
	(705, 3, 'admin/cms/page', NULL, 0, 'G', 'deny'),
	(706, 3, 'admin/cms/page/save', NULL, 0, 'G', 'deny'),
	(707, 3, 'admin/cms/page/delete', NULL, 0, 'G', 'deny'),
	(708, 3, 'admin/cms/media_gallery', NULL, 0, 'G', 'deny'),
	(709, 3, 'admin/cms/poll', NULL, 0, 'G', 'deny'),
	(710, 3, 'admin/cms/widget_instance', NULL, 0, 'G', 'deny'),
	(711, 3, 'admin/customer', NULL, 0, 'G', 'deny'),
	(712, 3, 'admin/customer/group', NULL, 0, 'G', 'deny'),
	(713, 3, 'admin/customer/manage', NULL, 0, 'G', 'deny'),
	(714, 3, 'admin/customer/online', NULL, 0, 'G', 'deny'),
	(715, 3, 'admin/catalog', NULL, 0, 'G', 'allow'),
	(716, 3, 'admin/catalog/attributes', NULL, 0, 'G', 'deny'),
	(717, 3, 'admin/catalog/attributes/attributes', NULL, 0, 'G', 'deny'),
	(718, 3, 'admin/catalog/attributes/sets', NULL, 0, 'G', 'deny'),
	(719, 3, 'admin/catalog/categories', NULL, 0, 'G', 'deny'),
	(720, 3, 'admin/catalog/products', NULL, 0, 'G', 'allow'),
	(721, 3, 'admin/catalog/update_attributes', NULL, 0, 'G', 'deny'),
	(722, 3, 'admin/catalog/urlrewrite', NULL, 0, 'G', 'deny'),
	(723, 3, 'admin/catalog/search', NULL, 0, 'G', 'deny'),
	(724, 3, 'admin/catalog/reviews_ratings', NULL, 0, 'G', 'deny'),
	(725, 3, 'admin/catalog/reviews_ratings/reviews', NULL, 0, 'G', 'deny'),
	(726, 3, 'admin/catalog/reviews_ratings/reviews/all', NULL, 0, 'G', 'deny'),
	(727, 3, 'admin/catalog/reviews_ratings/reviews/pending', NULL, 0, 'G', 'deny'),
	(728, 3, 'admin/catalog/reviews_ratings/ratings', NULL, 0, 'G', 'deny'),
	(729, 3, 'admin/catalog/tag', NULL, 0, 'G', 'deny'),
	(730, 3, 'admin/catalog/tag/all', NULL, 0, 'G', 'deny'),
	(731, 3, 'admin/catalog/tag/pending', NULL, 0, 'G', 'deny'),
	(732, 3, 'admin/catalog/sitemap', NULL, 0, 'G', 'deny'),
	(733, 3, 'admin/promo', NULL, 0, 'G', 'deny'),
	(734, 3, 'admin/promo/catalog', NULL, 0, 'G', 'deny'),
	(735, 3, 'admin/promo/quote', NULL, 0, 'G', 'deny'),
	(736, 3, 'admin/sales', NULL, 0, 'G', 'deny'),
	(737, 3, 'admin/sales/order', NULL, 0, 'G', 'deny'),
	(738, 3, 'admin/sales/order/actions', NULL, 0, 'G', 'deny'),
	(739, 3, 'admin/sales/order/actions/create', NULL, 0, 'G', 'deny'),
	(740, 3, 'admin/sales/order/actions/view', NULL, 0, 'G', 'deny'),
	(741, 3, 'admin/sales/order/actions/email', NULL, 0, 'G', 'deny'),
	(742, 3, 'admin/sales/order/actions/reorder', NULL, 0, 'G', 'deny'),
	(743, 3, 'admin/sales/order/actions/edit', NULL, 0, 'G', 'deny'),
	(744, 3, 'admin/sales/order/actions/cancel', NULL, 0, 'G', 'deny'),
	(745, 3, 'admin/sales/order/actions/review_payment', NULL, 0, 'G', 'deny'),
	(746, 3, 'admin/sales/order/actions/capture', NULL, 0, 'G', 'deny'),
	(747, 3, 'admin/sales/order/actions/invoice', NULL, 0, 'G', 'deny'),
	(748, 3, 'admin/sales/order/actions/creditmemo', NULL, 0, 'G', 'deny'),
	(749, 3, 'admin/sales/order/actions/hold', NULL, 0, 'G', 'deny'),
	(750, 3, 'admin/sales/order/actions/unhold', NULL, 0, 'G', 'deny'),
	(751, 3, 'admin/sales/order/actions/ship', NULL, 0, 'G', 'deny'),
	(752, 3, 'admin/sales/order/actions/comment', NULL, 0, 'G', 'deny'),
	(753, 3, 'admin/sales/order/actions/emails', NULL, 0, 'G', 'deny'),
	(754, 3, 'admin/sales/invoice', NULL, 0, 'G', 'deny'),
	(755, 3, 'admin/sales/shipment', NULL, 0, 'G', 'deny'),
	(756, 3, 'admin/sales/creditmemo', NULL, 0, 'G', 'deny'),
	(757, 3, 'admin/sales/transactions', NULL, 0, 'G', 'deny'),
	(758, 3, 'admin/sales/transactions/fetch', NULL, 0, 'G', 'deny'),
	(759, 3, 'admin/sales/recurring_profile', NULL, 0, 'G', 'deny'),
	(760, 3, 'admin/sales/billing_agreement', NULL, 0, 'G', 'deny'),
	(761, 3, 'admin/sales/billing_agreement/actions', NULL, 0, 'G', 'deny'),
	(762, 3, 'admin/sales/billing_agreement/actions/view', NULL, 0, 'G', 'deny'),
	(763, 3, 'admin/sales/billing_agreement/actions/manage', NULL, 0, 'G', 'deny'),
	(764, 3, 'admin/sales/billing_agreement/actions/use', NULL, 0, 'G', 'deny'),
	(765, 3, 'admin/sales/checkoutagreement', NULL, 0, 'G', 'deny'),
	(766, 3, 'admin/sales/tax', NULL, 0, 'G', 'deny'),
	(767, 3, 'admin/sales/tax/classes_customer', NULL, 0, 'G', 'deny'),
	(768, 3, 'admin/sales/tax/classes_product', NULL, 0, 'G', 'deny'),
	(769, 3, 'admin/sales/tax/import_export', NULL, 0, 'G', 'deny'),
	(770, 3, 'admin/sales/tax/rates', NULL, 0, 'G', 'deny'),
	(771, 3, 'admin/sales/tax/rules', NULL, 0, 'G', 'deny'),
	(772, 3, 'admin/report', NULL, 0, 'G', 'deny'),
	(773, 3, 'admin/report/salesroot', NULL, 0, 'G', 'deny'),
	(774, 3, 'admin/report/salesroot/paypal_settlement_reports', NULL, 0, 'G', 'deny'),
	(775, 3, 'admin/report/salesroot/paypal_settlement_reports/view', NULL, 0, 'G', 'deny'),
	(776, 3, 'admin/report/salesroot/paypal_settlement_reports/fetch', NULL, 0, 'G', 'deny'),
	(777, 3, 'admin/report/salesroot/sales', NULL, 0, 'G', 'deny'),
	(778, 3, 'admin/report/salesroot/tax', NULL, 0, 'G', 'deny'),
	(779, 3, 'admin/report/salesroot/shipping', NULL, 0, 'G', 'deny'),
	(780, 3, 'admin/report/salesroot/invoiced', NULL, 0, 'G', 'deny'),
	(781, 3, 'admin/report/salesroot/refunded', NULL, 0, 'G', 'deny'),
	(782, 3, 'admin/report/salesroot/coupons', NULL, 0, 'G', 'deny'),
	(783, 3, 'admin/report/shopcart', NULL, 0, 'G', 'deny'),
	(784, 3, 'admin/report/shopcart/product', NULL, 0, 'G', 'deny'),
	(785, 3, 'admin/report/shopcart/abandoned', NULL, 0, 'G', 'deny'),
	(786, 3, 'admin/report/products', NULL, 0, 'G', 'deny'),
	(787, 3, 'admin/report/products/bestsellers', NULL, 0, 'G', 'deny'),
	(788, 3, 'admin/report/products/sold', NULL, 0, 'G', 'deny'),
	(789, 3, 'admin/report/products/viewed', NULL, 0, 'G', 'deny'),
	(790, 3, 'admin/report/products/lowstock', NULL, 0, 'G', 'deny'),
	(791, 3, 'admin/report/products/downloads', NULL, 0, 'G', 'deny'),
	(792, 3, 'admin/report/customers', NULL, 0, 'G', 'deny'),
	(793, 3, 'admin/report/customers/accounts', NULL, 0, 'G', 'deny'),
	(794, 3, 'admin/report/customers/totals', NULL, 0, 'G', 'deny'),
	(795, 3, 'admin/report/customers/orders', NULL, 0, 'G', 'deny'),
	(796, 3, 'admin/report/review', NULL, 0, 'G', 'deny'),
	(797, 3, 'admin/report/review/customer', NULL, 0, 'G', 'deny'),
	(798, 3, 'admin/report/review/product', NULL, 0, 'G', 'deny'),
	(799, 3, 'admin/report/tags', NULL, 0, 'G', 'deny'),
	(800, 3, 'admin/report/tags/customer', NULL, 0, 'G', 'deny'),
	(801, 3, 'admin/report/tags/popular', NULL, 0, 'G', 'deny'),
	(802, 3, 'admin/report/tags/product', NULL, 0, 'G', 'deny'),
	(803, 3, 'admin/report/search', NULL, 0, 'G', 'deny'),
	(804, 3, 'admin/report/statistics', NULL, 0, 'G', 'deny'),
	(805, 3, 'admin/newsletter', NULL, 0, 'G', 'deny'),
	(806, 3, 'admin/newsletter/problem', NULL, 0, 'G', 'deny'),
	(807, 3, 'admin/newsletter/queue', NULL, 0, 'G', 'deny'),
	(808, 3, 'admin/newsletter/subscriber', NULL, 0, 'G', 'deny'),
	(809, 3, 'admin/newsletter/template', NULL, 0, 'G', 'deny'),
	(810, 3, 'admin/page_cache', NULL, 0, 'G', 'deny'),
	(811, 3, 'admin/asgcsv', NULL, 0, 'G', 'deny'),
	(812, 3, 'admin/asg_kasa', NULL, 0, 'G', 'allow'),
	(813, 3, 'admin/asgnews', NULL, 0, 'G', 'deny'),
	(814, 3, 'admin/tsg_quotes', NULL, 0, 'G', 'deny');
/*!40000 ALTER TABLE `admin_rule` ENABLE KEYS */;

-- Dumping structure for table magento.admin_user
CREATE TABLE IF NOT EXISTS `admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Admin User Table';

-- Dumping data for table magento.admin_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin_user` DISABLE KEYS */;
INSERT INTO `admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
	(1, 'admin', 'admin', 'bobyskuymm@gmail.com', 'admin', '1094036a926852f81bdc506036c31843:eT83sXoVF5xAWQ5FYmUsDEaAZQiIqW8d', '2017-11-28 10:56:59', '2017-12-27 09:28:09', '2018-01-05 15:01:49', 64, 0, 1, 'a:1:{s:11:"configState";a:60:{s:15:"general_country";s:1:"0";s:14:"general_locale";s:1:"1";s:25:"general_store_information";s:1:"0";s:17:"carriers_asg_star";s:1:"1";s:17:"carriers_flatrate";s:1:"0";s:18:"carriers_tablerate";s:1:"0";s:21:"carriers_freeshipping";s:1:"0";s:12:"carriers_ups";s:1:"0";s:13:"carriers_usps";s:1:"0";s:14:"carriers_fedex";s:1:"0";s:12:"carriers_dhl";s:1:"0";s:15:"carriers_dhlint";s:1:"0";s:16:"payment_asg_kasa";s:1:"1";s:31:"payment_paypal_group_all_in_one";s:1:"1";s:24:"payment_payflow_advanced";s:1:"0";s:34:"payment_settings_payments_advanced";s:1:"1";s:43:"payment_settings_payments_advanced_advanced";s:1:"0";s:25:"payment_billing_agreement";s:1:"0";s:16:"payment_frontend";s:1:"0";s:33:"payment_settings_express_checkout";s:1:"1";s:42:"payment_settings_express_checkout_advanced";s:1:"0";s:11:"payment_wpp";s:1:"0";s:20:"payment_wpp_settings";s:1:"1";s:29:"payment_wpp_settings_advanced";s:1:"0";s:29:"payment_wpp_billing_agreement";s:1:"0";s:20:"payment_wpp_frontend";s:1:"0";s:37:"payment_wpp_settings_express_checkout";s:1:"1";s:46:"payment_wpp_settings_express_checkout_advanced";s:1:"0";s:19:"payment_wps_express";s:1:"0";s:28:"payment_settings_wps_express";s:1:"1";s:37:"payment_settings_wps_express_advanced";s:1:"0";s:37:"payment_wps_express_billing_agreement";s:1:"0";s:28:"payment_wps_express_frontend";s:1:"0";s:31:"payment_paypal_payment_gateways";s:1:"0";s:45:"payment_paypal_verisign_with_express_checkout";s:1:"0";s:31:"payment_settings_paypal_payflow";s:1:"1";s:40:"payment_settings_paypal_payflow_advanced";s:1:"0";s:31:"payment_paypal_payflow_frontend";s:1:"0";s:39:"payment_paypal_payflow_express_checkout";s:1:"1";s:20:"payment_payflow_link";s:1:"0";s:29:"payment_settings_payflow_link";s:1:"1";s:38:"payment_settings_payflow_link_advanced";s:1:"0";s:29:"payment_payflow_link_frontend";s:1:"0";s:46:"payment_settings_payflow_link_express_checkout";s:1:"1";s:55:"payment_settings_payflow_link_express_checkout_advanced";s:1:"0";s:38:"payment_payflow_link_billing_agreement";s:1:"0";s:42:"payment_paypal_alternative_payment_methods";s:1:"1";s:24:"payment_express_checkout";s:1:"0";s:19:"payment_settings_ec";s:1:"1";s:28:"payment_settings_ec_advanced";s:1:"0";s:42:"payment_express_checkout_billing_agreement";s:1:"0";s:33:"payment_express_checkout_frontend";s:1:"0";s:14:"payment_ccsave";s:1:"0";s:15:"payment_checkmo";s:1:"0";s:20:"payment_banktransfer";s:1:"0";s:22:"payment_cashondelivery";s:1:"0";s:12:"payment_free";s:1:"0";s:21:"payment_purchaseorder";s:1:"0";s:20:"payment_authorizenet";s:1:"0";s:31:"payment_authorizenet_directpost";s:1:"0";}}', NULL, NULL),
	(2, 'test', 'test', 'test@mail.com', 'test', '8278555de0610524807a8ff01757113b:HmBmfTovSjcH2ee7ZxFqSHwZwkdFwijy', '2017-12-26 08:14:47', '2017-12-29 10:55:35', '2017-12-29 10:55:35', 5, 0, 1, 'b:0;', NULL, NULL);
/*!40000 ALTER TABLE `admin_user` ENABLE KEYS */;

-- Dumping structure for table magento.api2_acl_attribute
CREATE TABLE IF NOT EXISTS `api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_ATTRIBUTE_USER_TYPE_RESOURCE_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes';

-- Dumping data for table magento.api2_acl_attribute: ~0 rows (approximately)
/*!40000 ALTER TABLE `api2_acl_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `api2_acl_attribute` ENABLE KEYS */;

-- Dumping structure for table magento.api2_acl_role
CREATE TABLE IF NOT EXISTS `api2_acl_role` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_API2_ACL_ROLE_CREATED_AT` (`created_at`),
  KEY `IDX_API2_ACL_ROLE_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles';

-- Dumping data for table magento.api2_acl_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `api2_acl_role` DISABLE KEYS */;
INSERT INTO `api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
	(1, '2017-11-28 12:55:46', NULL, 'Guest'),
	(2, '2017-11-28 12:55:46', NULL, 'Customer');
/*!40000 ALTER TABLE `api2_acl_role` ENABLE KEYS */;

-- Dumping structure for table magento.api2_acl_rule
CREATE TABLE IF NOT EXISTS `api2_acl_rule` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`),
  CONSTRAINT `FK_API2_ACL_RULE_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules';

-- Dumping data for table magento.api2_acl_rule: ~0 rows (approximately)
/*!40000 ALTER TABLE `api2_acl_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `api2_acl_rule` ENABLE KEYS */;

-- Dumping structure for table magento.api2_acl_user
CREATE TABLE IF NOT EXISTS `api2_acl_user` (
  `admin_id` int(10) unsigned NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  UNIQUE KEY `UNQ_API2_ACL_USER_ADMIN_ID` (`admin_id`),
  KEY `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` (`role_id`),
  CONSTRAINT `FK_API2_ACL_USER_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_API2_ACL_USER_ROLE_ID_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

-- Dumping data for table magento.api2_acl_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `api2_acl_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `api2_acl_user` ENABLE KEYS */;

-- Dumping structure for table magento.api_assert
CREATE TABLE IF NOT EXISTS `api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts';

-- Dumping data for table magento.api_assert: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_assert` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_assert` ENABLE KEYS */;

-- Dumping structure for table magento.api_role
CREATE TABLE IF NOT EXISTS `api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_API_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles';

-- Dumping data for table magento.api_role: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_role` ENABLE KEYS */;

-- Dumping structure for table magento.api_rule
CREATE TABLE IF NOT EXISTS `api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`),
  CONSTRAINT `FK_API_RULE_ROLE_ID_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules';

-- Dumping data for table magento.api_rule: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_rule` ENABLE KEYS */;

-- Dumping structure for table magento.api_session
CREATE TABLE IF NOT EXISTS `api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id',
  KEY `IDX_API_SESSION_USER_ID` (`user_id`),
  KEY `IDX_API_SESSION_SESSID` (`sessid`),
  CONSTRAINT `FK_API_SESSION_USER_ID_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- Dumping data for table magento.api_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_session` ENABLE KEYS */;

-- Dumping structure for table magento.api_user
CREATE TABLE IF NOT EXISTS `api_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users';

-- Dumping data for table magento.api_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `api_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_user` ENABLE KEYS */;

-- Dumping structure for table magento.asg_advertising_banners_entities
CREATE TABLE IF NOT EXISTS `asg_advertising_banners_entities` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Banner id',
  `title` varchar(100) NOT NULL COMMENT 'Title',
  `desc` text NOT NULL COMMENT 'Description',
  `image_original` varchar(255) NOT NULL COMMENT 'Image_original',
  `image_grid` varchar(255) NOT NULL COMMENT 'Image_grid',
  `image_list` varchar(255) NOT NULL COMMENT 'Image_list',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated_at',
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='asg_advertising_banners_entities';

-- Dumping data for table magento.asg_advertising_banners_entities: ~0 rows (approximately)
/*!40000 ALTER TABLE `asg_advertising_banners_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `asg_advertising_banners_entities` ENABLE KEYS */;

-- Dumping structure for table magento.asg_csv_entities
CREATE TABLE IF NOT EXISTS `asg_csv_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `url` text NOT NULL COMMENT 'Url',
  `sku` varchar(64) NOT NULL COMMENT 'Sku',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `size` int(10) unsigned DEFAULT NULL COMMENT 'Size',
  `status` smallint(5) unsigned DEFAULT NULL COMMENT 'Status',
  `error` varchar(255) DEFAULT NULL COMMENT 'Error',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated_at',
  PRIMARY KEY (`id`),
  KEY `FK_ASG_CSV_ENTITIES_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` (`product_id`),
  CONSTRAINT `FK_ASG_CSV_ENTITIES_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='asg_csv_entities';

-- Dumping data for table magento.asg_csv_entities: ~49 rows (approximately)
/*!40000 ALTER TABLE `asg_csv_entities` DISABLE KEYS */;
INSERT INTO `asg_csv_entities` (`id`, `url`, `sku`, `product_id`, `size`, `status`, `error`, `created_at`, `updated_at`) VALUES
	(29, 'https://tehnot.com/wp-content/uploads/2017/10/1200px-b.svg_.png', 'drink', 1, NULL, 404, NULL, '2017-12-18 13:29:49', '2017-12-26 08:30:14'),
	(30, 'http://www.douglasradburn.co.uk/wp-content/uploads/large_5984441243-700x415.jpg', 'drink', 1, 64616, 3, NULL, '2017-12-18 13:29:49', '2017-12-20 14:30:02'),
	(31, 'http://good-com.com.ua/test-not-found.jpg', 'tea', 1, NULL, 500, 'Undefined error. Error code: 0', '2017-12-18 13:29:49', '2017-12-20 14:30:02'),
	(32, 'http://getstatuscode.com/500', 'tea', 1, NULL, 500, 'Undefined error. Error code: 403', '2017-12-18 13:29:49', '2017-12-20 14:30:03'),
	(33, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', 'advertising', 1, 277945, 3, NULL, '2017-12-18 13:29:49', '2017-12-20 14:30:04'),
	(34, 'https://tehnot.com/wp-content/uploads/2017/10/1200px-b.svg_.png', 'drink', 1, NULL, 404, NULL, '2017-12-14 13:29:49', '2017-12-26 08:30:14'),
	(35, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', 'tea', 1, 277945, 3, NULL, '2017-12-18 13:29:49', '2017-12-20 14:27:19'),
	(36, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', 'drink', 1, 6461600, 3, NULL, '2017-12-20 13:28:09', '2017-12-20 14:27:20'),
	(37, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', 'advertising', 3, 277945, 3, NULL, '2017-12-20 13:28:09', '2017-12-20 14:27:22'),
	(38, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', 'tea', 2, 27794500, 3, NULL, '2017-12-20 13:28:09', '2017-12-20 14:27:23'),
	(39, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', 'tea', 2, 277945, 3, NULL, '2017-12-20 13:28:09', '2017-12-20 14:27:24'),
	(40, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', 'advertising', 3, 2779, 3, NULL, '2017-12-20 13:28:09', '2017-12-20 14:27:25'),
	(41, 'http://good-com.com.ua/test-not-found.jpg', 'drink', 1, 12, 500, 'Undefined error. Error code: 0', '2017-12-20 13:28:09', '2017-12-20 14:30:04'),
	(42, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', 'tea', 2, 277945, 3, NULL, '2017-12-20 13:28:09', '2017-12-20 14:59:46'),
	(43, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 1, 277945, 3, NULL, '2017-12-20 13:59:48', '2017-12-20 14:59:47'),
	(44, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, 277945, 3, NULL, '2017-12-20 13:59:48', '2017-12-20 14:59:48'),
	(45, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-20 13:59:48', '2017-12-20 14:59:49'),
	(46, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-20 13:59:48', '2017-12-20 14:59:50'),
	(47, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, 277945, 3, NULL, '2017-12-20 13:59:48', '2017-12-20 14:59:51'),
	(48, 'http://good-com.com.ua/test-not-found.jpg', '', 1, NULL, 500, 'Undefined error. Error code: 0', '2017-12-20 13:59:48', '2017-12-20 14:59:51'),
	(49, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-20 13:59:48', '2017-12-20 14:59:52'),
	(50, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 1, 277945, 3, NULL, '2017-12-26 08:19:43', '2017-12-26 08:30:06'),
	(51, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, 277945, 3, NULL, '2017-12-26 08:19:43', '2017-12-26 08:30:06'),
	(52, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-26 08:19:43', '2017-12-26 08:30:07'),
	(53, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-26 08:19:43', '2017-12-26 08:30:07'),
	(54, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, 277945, 3, NULL, '2017-12-26 08:19:43', '2017-12-26 08:30:08'),
	(55, 'http://good-com.com.ua/test-not-found.jpg', '', 1, NULL, 500, 'Undefined error. Error code: 0', '2017-12-26 08:19:43', '2017-12-26 08:30:08'),
	(56, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-26 08:19:43', '2017-12-26 08:30:08'),
	(57, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 1, 277945, 3, NULL, '2017-12-26 08:21:20', '2017-12-26 08:30:08'),
	(58, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, 277945, 3, NULL, '2017-12-26 08:21:20', '2017-12-26 08:30:09'),
	(59, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-26 08:21:20', '2017-12-26 08:30:09'),
	(60, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-26 08:21:20', '2017-12-26 08:30:09'),
	(61, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, 277945, 3, NULL, '2017-12-26 08:21:20', '2017-12-26 08:30:10'),
	(62, 'http://good-com.com.ua/test-not-found.jpg', '', 1, NULL, 500, 'Undefined error. Error code: 0', '2017-12-26 08:21:20', '2017-12-26 08:30:10'),
	(63, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-26 08:21:20', '2017-12-26 08:30:10'),
	(64, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 1, 277945, 3, NULL, '2017-12-26 08:21:57', '2017-12-26 08:30:11'),
	(65, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, 277945, 3, NULL, '2017-12-26 08:21:57', '2017-12-26 08:30:11'),
	(66, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-26 08:21:57', '2017-12-26 08:30:11'),
	(67, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-26 08:21:57', '2017-12-26 08:30:12'),
	(68, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, 277945, 3, NULL, '2017-12-26 08:21:57', '2017-12-26 08:30:12'),
	(69, 'http://good-com.com.ua/test-not-found.jpg', '', 1, NULL, 500, 'Undefined error. Error code: 0', '2017-12-26 08:21:57', '2017-12-26 08:30:12'),
	(70, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, 277945, 3, NULL, '2017-12-26 08:21:57', '2017-12-26 08:30:12'),
	(71, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 1, NULL, 1, NULL, '2017-12-26 11:35:18', NULL),
	(72, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, NULL, 1, NULL, '2017-12-26 11:35:18', NULL),
	(73, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, NULL, 1, NULL, '2017-12-26 11:35:18', NULL),
	(74, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, NULL, 1, NULL, '2017-12-26 11:35:18', NULL),
	(75, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 3, NULL, 1, NULL, '2017-12-26 11:35:18', NULL),
	(76, 'http://good-com.com.ua/test-not-found.jpg', '', 1, NULL, 1, NULL, '2017-12-26 11:35:18', NULL),
	(77, 'http://fozzyshop.com.ua/33352-thickbox_default/viski-jameson.jpg', '', 2, NULL, 1, NULL, '2017-12-26 11:35:18', NULL);
/*!40000 ALTER TABLE `asg_csv_entities` ENABLE KEYS */;

-- Dumping structure for table magento.asg_ipci_import_items
CREATE TABLE IF NOT EXISTS `asg_ipci_import_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `url` text NOT NULL COMMENT 'Url',
  `sku` varchar(64) NOT NULL COMMENT 'Sku',
  `size` int(10) unsigned DEFAULT NULL COMMENT 'Size',
  `status` smallint(5) unsigned DEFAULT NULL COMMENT 'Status',
  `error` varchar(255) DEFAULT NULL COMMENT 'Error',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated_at',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='asg_ipci_import_items';

-- Dumping data for table magento.asg_ipci_import_items: ~0 rows (approximately)
/*!40000 ALTER TABLE `asg_ipci_import_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `asg_ipci_import_items` ENABLE KEYS */;

-- Dumping structure for table magento.asg_news_entities
CREATE TABLE IF NOT EXISTS `asg_news_entities` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `title` varchar(50) NOT NULL COMMENT 'Title',
  `content` text NOT NULL COMMENT 'Content',
  `image` varchar(250) NOT NULL COMMENT 'Img_path',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='asg_news_entities';

-- Dumping data for table magento.asg_news_entities: ~8 rows (approximately)
/*!40000 ALTER TABLE `asg_news_entities` DISABLE KEYS */;
INSERT INTO `asg_news_entities` (`id`, `title`, `content`, `image`) VALUES
	(1, 'Test32', 'Oooo2332', '55f9620f8b717c0eee5de443f2605f78.jpg'),
	(2, 'jyhgoyuo', 'yuikpouyoiutyoy', 'af70c017c0c3b7ecb2702a959431ed43.jpg'),
	(3, 'ertyer yer', 'dfghdfghdf dh\r\ndfgh\r\n df hdf\r\nhdf hlknmdefglkhdf\r\nhg fedgh[dfp;ohkodfpg h\r\ndfgh[dfnlkghdfpl;kjh gpoggdgfgggg\r\nhgggggd fgpokh;dfgh;gdfkhfd\r\n hdf[gpk phkdfpghkpfd', '1e084b225c1e2ae5d90fb04fcf83e18e.jpg'),
	(4, 'wertwet', 'Доброго времени суток.\r\n\r\nВсе файлы/бд на юникоде.\r\n\r\nНо если текст состоит из русских символов, то\r\nsubstr($text,0,1000) оставляет не 1000 знаков, а 500 ибо в юникоде 1 рксский символ = 2м английским.\r\n\r\nКак дать установку на отличие русских символов от не русских и соответствующее обрезание делать?\r\n\r\nКак вариант перед обрезанием и после iconv() перекодировать, но что то уж больно костылями пахнет', 'a4c1ec99141685687447b996ff3b660b.jpg'),
	(5, 'ertyer yer', 'dfghdfghdf dh\r\ndfgh\r\n df hdf\r\nhdf hlknmdefglkhdf\r\nhg fedgh[dfp;ohkodfpg h\r\ndfgh[dfnlkghdfpl;kjh gpoggdgfgggg\r\nhgggggd fgpokh;dfgh;gdfkhfd\r\n hdf[gpk phkdfpghkpfd', '1e084b225c1e2ae5d90fb04fcf83e18e.jpg'),
	(6, 'ertyer yer', 'dfghdfghdf dh\r\ndfgh\r\n df hdf\r\nhdf hlknmdefglkhdf\r\nhg fedgh[dfp;ohkodfpg h\r\ndfgh[dfnlkghdfpl;kjh gpoggdgfgggg\r\nhgggggd fgpokh;dfgh;gdfkhfd\r\n hdf[gpk phkdfpghkpfd', '1e084b225c1e2ae5d90fb04fcf83e18e.jpg'),
	(7, 'wertwet', 'Доброго времени суток.\r\n\r\nВсе файлы/бд на юникоде.\r\n\r\nНо если текст состоит из русских символов, то\r\nsubstr($text,0,1000) оставляет не 1000 знаков, а 500 ибо в юникоде 1 рксский символ = 2м английским.\r\n\r\nКак дать установку на отличие русских символов от не русских и соответствующее обрезание делать?\r\n\r\nКак вариант перед обрезанием и после iconv() перекодировать, но что то уж больно костылями пахнет', 'a4c1ec99141685687447b996ff3b660b.jpg'),
	(8, 'wertwet222', 'Доброго времени суток.222\r\n\r\nВсе файлы/бд на юникоде.\r\n\r\nНо если текст состоит из русских символов, то\r\nsubstr($text,0,1000) оставляет не 1000 знаков, а 500 ибо в юникоде 1 рксский символ = 2м английским.\r\n\r\nКак дать установку на отличие русских символов от не русских и соответствующее обрезание делать?\r\n\r\nКак вариант перед обрезанием и после iconv() перекодировать, но что то уж больно костылями пахнет', 'mbuntu-7_2.jpg'),
	(9, 'Test', 'Oooow', 'mbuntu-11.jpg'),
	(10, 'empty image', 'empty image', 'mbuntu-10.jpg'),
	(11, '111', 'ІВАРУВАПВАПРВ АПРО РВ ', 'mbuntu-10.jpg'),
	(12, '', '', '');
/*!40000 ALTER TABLE `asg_news_entities` ENABLE KEYS */;

-- Dumping structure for table magento.captcha_log
CREATE TABLE IF NOT EXISTS `captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- Dumping data for table magento.captcha_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `captcha_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `captcha_log` ENABLE KEYS */;

-- Dumping structure for table magento.cataloginventory_stock
CREATE TABLE IF NOT EXISTS `cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock';

-- Dumping data for table magento.cataloginventory_stock: ~0 rows (approximately)
/*!40000 ALTER TABLE `cataloginventory_stock` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
	(1, 'Default');
/*!40000 ALTER TABLE `cataloginventory_stock` ENABLE KEYS */;

-- Dumping structure for table magento.cataloginventory_stock_item
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `UNQ_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`),
  CONSTRAINT `FK_CATINV_STOCK_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATINV_STOCK_ITEM_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item';

-- Dumping data for table magento.cataloginventory_stock_item: ~2 rows (approximately)
/*!40000 ALTER TABLE `cataloginventory_stock_item` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_item` (`item_id`, `product_id`, `stock_id`, `qty`, `min_qty`, `use_config_min_qty`, `is_qty_decimal`, `backorders`, `use_config_backorders`, `min_sale_qty`, `use_config_min_sale_qty`, `max_sale_qty`, `use_config_max_sale_qty`, `is_in_stock`, `low_stock_date`, `notify_stock_qty`, `use_config_notify_stock_qty`, `manage_stock`, `use_config_manage_stock`, `stock_status_changed_auto`, `use_config_qty_increments`, `qty_increments`, `use_config_enable_qty_inc`, `enable_qty_increments`, `is_decimal_divided`) VALUES
	(1, 1, 1, 994.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0),
	(2, 2, 1, 989.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0),
	(3, 3, 1, 995.0000, 0.0000, 1, 0, 0, 1, 1.0000, 1, 0.0000, 1, 1, NULL, NULL, 1, 0, 1, 0, 1, 0.0000, 1, 0, 0);
/*!40000 ALTER TABLE `cataloginventory_stock_item` ENABLE KEYS */;

-- Dumping structure for table magento.cataloginventory_stock_status
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CATINV_STOCK_STS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATINV_STOCK_STS_STOCK_ID_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATINV_STOCK_STS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

-- Dumping data for table magento.cataloginventory_stock_status: ~3 rows (approximately)
/*!40000 ALTER TABLE `cataloginventory_stock_status` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
	(1, 1, 1, 994.0000, 1),
	(2, 1, 1, 989.0000, 1),
	(3, 1, 1, 995.0000, 1);
/*!40000 ALTER TABLE `cataloginventory_stock_status` ENABLE KEYS */;

-- Dumping structure for table magento.cataloginventory_stock_status_idx
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

-- Dumping data for table magento.cataloginventory_stock_status_idx: ~3 rows (approximately)
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` DISABLE KEYS */;
INSERT INTO `cataloginventory_stock_status_idx` (`product_id`, `website_id`, `stock_id`, `qty`, `stock_status`) VALUES
	(1, 1, 1, 999.0000, 1),
	(2, 1, 1, 999.0000, 1),
	(3, 1, 1, 999.0000, 1);
/*!40000 ALTER TABLE `cataloginventory_stock_status_idx` ENABLE KEYS */;

-- Dumping structure for table magento.cataloginventory_stock_status_tmp
CREATE TABLE IF NOT EXISTS `cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `IDX_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- Dumping data for table magento.cataloginventory_stock_status_tmp: 0 rows
/*!40000 ALTER TABLE `cataloginventory_stock_status_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cataloginventory_stock_status_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalogrule
CREATE TABLE IF NOT EXISTS `catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule';

-- Dumping data for table magento.catalogrule: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule` ENABLE KEYS */;

-- Dumping structure for table magento.catalogrule_affected_product
CREATE TABLE IF NOT EXISTS `catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- Dumping data for table magento.catalogrule_affected_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_affected_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_affected_product` ENABLE KEYS */;

-- Dumping structure for table magento.catalogrule_customer_group
CREATE TABLE IF NOT EXISTS `catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_CATALOGRULE_CUSTOMER_GROUP_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- Dumping data for table magento.catalogrule_customer_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_customer_group` ENABLE KEYS */;

-- Dumping structure for table magento.catalogrule_group_website
CREATE TABLE IF NOT EXISTS `catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_GROUP_WS_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- Dumping data for table magento.catalogrule_group_website: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_group_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_group_website` ENABLE KEYS */;

-- Dumping structure for table magento.catalogrule_product
CREATE TABLE IF NOT EXISTS `catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `EAA51B56FF092A0DCB795D1CEF812B7B` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `IDX_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CATALOGRULE_PRODUCT_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATALOGRULE_PRODUCT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_PRD_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product';

-- Dumping data for table magento.catalogrule_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_product` ENABLE KEYS */;

-- Dumping structure for table magento.catalogrule_product_price
CREATE TABLE IF NOT EXISTS `catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `UNQ_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_PRD_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATRULE_PRD_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price';

-- Dumping data for table magento.catalogrule_product_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_product_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_product_price` ENABLE KEYS */;

-- Dumping structure for table magento.catalogrule_website
CREATE TABLE IF NOT EXISTS `catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_CATALOGRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CATALOGRULE_WEBSITE_RULE_ID_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATALOGRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- Dumping data for table magento.catalogrule_website: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogrule_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogrule_website` ENABLE KEYS */;

-- Dumping structure for table magento.catalogsearch_fulltext
CREATE TABLE IF NOT EXISTS `catalogsearch_fulltext` (
  `fulltext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`fulltext_id`),
  UNIQUE KEY `UNQ_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`),
  FULLTEXT KEY `FTI_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- Dumping data for table magento.catalogsearch_fulltext: 3 rows
/*!40000 ALTER TABLE `catalogsearch_fulltext` DISABLE KEYS */;
INSERT INTO `catalogsearch_fulltext` (`fulltext_id`, `product_id`, `store_id`, `data_index`) VALUES
	(111, 3, 1, 'advertising|None|Сік|Сік|Сік|9|1'),
	(113, 1, 1, 'drink|Taxable Goods|Кава|Кава|Кава|10|1'),
	(112, 2, 1, 'tea|None|Чай|Чай|Чай|7|1');
/*!40000 ALTER TABLE `catalogsearch_fulltext` ENABLE KEYS */;

-- Dumping structure for table magento.catalogsearch_query
CREATE TABLE IF NOT EXISTS `catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  KEY `IDX_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `IDX_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`),
  KEY `IDX_CATALOGSEARCH_QUERY_SYNONYM_FOR` (`synonym_for`),
  CONSTRAINT `FK_CATALOGSEARCH_QUERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Catalog search query table';

-- Dumping data for table magento.catalogsearch_query: ~2 rows (approximately)
/*!40000 ALTER TABLE `catalogsearch_query` DISABLE KEYS */;
INSERT INTO `catalogsearch_query` (`query_id`, `query_text`, `num_results`, `popularity`, `redirect`, `synonym_for`, `store_id`, `display_in_terms`, `is_active`, `is_processed`, `updated_at`) VALUES
	(1, 'кава', 1, 3, NULL, NULL, 1, 1, 1, 0, '2017-12-04 13:48:35'),
	(2, 'чай', 1, 2, NULL, NULL, 1, 1, 1, 0, '2017-12-04 13:55:35');
/*!40000 ALTER TABLE `catalogsearch_query` ENABLE KEYS */;

-- Dumping structure for table magento.catalogsearch_result
CREATE TABLE IF NOT EXISTS `catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`),
  KEY `IDX_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CATALOGSEARCH_RESULT_QUERY_ID_CATALOGSEARCH_QUERY_QUERY_ID` FOREIGN KEY (`query_id`) REFERENCES `catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATSRCH_RESULT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- Dumping data for table magento.catalogsearch_result: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalogsearch_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalogsearch_result` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_anc_categs_index_idx
CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- Dumping data for table magento.catalog_category_anc_categs_index_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_anc_categs_index_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_anc_categs_index_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_anc_categs_index_tmp
CREATE TABLE IF NOT EXISTS `catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`),
  KEY `IDX_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- Dumping data for table magento.catalog_category_anc_categs_index_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_category_anc_categs_index_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_anc_categs_index_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_anc_products_index_idx
CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- Dumping data for table magento.catalog_category_anc_products_index_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_anc_products_index_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_anc_products_index_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_anc_products_index_tmp
CREATE TABLE IF NOT EXISTS `catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- Dumping data for table magento.catalog_category_anc_products_index_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_category_anc_products_index_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_anc_products_index_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_entity
CREATE TABLE IF NOT EXISTS `catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table';

-- Dumping data for table magento.catalog_category_entity: ~3 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity` DISABLE KEYS */;
INSERT INTO `catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
	(1, 3, 0, 0, '2017-11-28 10:55:54', '2017-11-28 10:55:54', '1', 0, 0, 2),
	(2, 3, 3, 1, '2017-11-28 10:55:54', '2017-11-28 10:55:54', '1/2', 1, 1, 1),
	(3, 3, 3, 2, '2017-12-04 12:20:53', '2017-12-21 08:51:11', '1/2/3', 1, 2, 0);
/*!40000 ALTER TABLE `catalog_category_entity` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_entity_datetime
CREATE TABLE IF NOT EXISTS `catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DTIME_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DTIME_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table';

-- Dumping data for table magento.catalog_category_entity_datetime: ~2 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_datetime` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 3, 59, 0, 3, NULL),
	(2, 3, 60, 0, 3, NULL);
/*!40000 ALTER TABLE `catalog_category_entity_datetime` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_entity_decimal
CREATE TABLE IF NOT EXISTS `catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_DEC_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_DEC_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table';

-- Dumping data for table magento.catalog_category_entity_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_decimal` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 3, 70, 0, 3, NULL);
/*!40000 ALTER TABLE `catalog_category_entity_decimal` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_entity_int
CREATE TABLE IF NOT EXISTS `catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_INT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_INT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table';

-- Dumping data for table magento.catalog_category_entity_int: ~12 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 3, 67, 0, 1, 1),
	(2, 3, 67, 1, 1, 1),
	(3, 3, 42, 0, 2, 1),
	(4, 3, 67, 0, 2, 1),
	(5, 3, 42, 1, 2, 1),
	(6, 3, 67, 1, 2, 1),
	(7, 3, 42, 0, 3, 1),
	(8, 3, 67, 0, 3, 1),
	(9, 3, 50, 0, 3, NULL),
	(10, 3, 51, 0, 3, 0),
	(11, 3, 68, 0, 3, 0),
	(12, 3, 69, 0, 3, 0);
/*!40000 ALTER TABLE `catalog_category_entity_int` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_entity_text
CREATE TABLE IF NOT EXISTS `catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_TEXT_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_TEXT_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table';

-- Dumping data for table magento.catalog_category_entity_text: ~9 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 3, 65, 0, 1, NULL),
	(2, 3, 65, 1, 1, NULL),
	(3, 3, 65, 0, 2, NULL),
	(4, 3, 65, 1, 2, NULL),
	(5, 3, 44, 0, 3, NULL),
	(6, 3, 47, 0, 3, NULL),
	(7, 3, 48, 0, 3, NULL),
	(8, 3, 62, 0, 3, NULL),
	(9, 3, 65, 0, 3, NULL);
/*!40000 ALTER TABLE `catalog_category_entity_text` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_entity_varchar
CREATE TABLE IF NOT EXISTS `catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_CTGR_ENTT_VCHR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_ENTT_VCHR_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table';

-- Dumping data for table magento.catalog_category_entity_varchar: ~13 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 3, 41, 0, 1, 'Root Catalog'),
	(2, 3, 41, 1, 1, 'Root Catalog'),
	(3, 3, 43, 1, 1, 'root-catalog'),
	(4, 3, 41, 0, 2, 'Default Category'),
	(5, 3, 41, 1, 2, 'Default Category'),
	(6, 3, 49, 1, 2, 'PRODUCTS'),
	(7, 3, 43, 1, 2, 'default-category'),
	(8, 3, 41, 0, 3, 'Main'),
	(9, 3, 46, 0, 3, NULL),
	(10, 3, 49, 0, 3, 'PRODUCTS'),
	(11, 3, 58, 0, 3, NULL),
	(12, 3, 61, 0, 3, NULL),
	(13, 3, 43, 0, 3, 'main'),
	(14, 3, 57, 1, 3, 'main.html'),
	(15, 3, 57, 0, 3, 'main.html');
/*!40000 ALTER TABLE `catalog_category_entity_varchar` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_flat_store_1
CREATE TABLE IF NOT EXISTS `catalog_category_flat_store_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` decimal(12,4) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_PATH` (`path`),
  KEY `IDX_CATALOG_CATEGORY_FLAT_STORE_1_LEVEL` (`level`),
  CONSTRAINT `FK_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_FLAT_STORE_1_ENTT_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat (Store 1)';

-- Dumping data for table magento.catalog_category_flat_store_1: ~2 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_flat_store_1` DISABLE KEYS */;
INSERT INTO `catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `page_layout`, `path_in_store`, `url_key`, `url_path`) VALUES
	(1, 0, '2017-11-28 10:55:54', '2017-11-28 10:55:54', '1', 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, 'root-catalog', NULL),
	(2, 1, '2017-11-28 10:55:54', '2017-11-28 10:55:54', '1/2', 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Default Category', NULL, NULL, 'default-category', NULL);
/*!40000 ALTER TABLE `catalog_category_flat_store_1` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_product
CREATE TABLE IF NOT EXISTS `catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `IDX_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_CTGR_PRD_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_PRD_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

-- Dumping data for table magento.catalog_category_product: ~6 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_product` DISABLE KEYS */;
INSERT INTO `catalog_category_product` (`category_id`, `product_id`, `position`) VALUES
	(2, 1, 1),
	(2, 2, 1),
	(2, 3, 1),
	(3, 1, 1),
	(3, 2, 1),
	(3, 3, 1);
/*!40000 ALTER TABLE `catalog_category_product` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_product_index
CREATE TABLE IF NOT EXISTS `catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `15D3C269665C74C2219037D534F4B0DC` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`),
  CONSTRAINT `FK_CATALOG_CATEGORY_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_PRD_IDX_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CTGR_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

-- Dumping data for table magento.catalog_category_product_index: ~6 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_product_index` DISABLE KEYS */;
INSERT INTO `catalog_category_product_index` (`category_id`, `product_id`, `position`, `is_parent`, `store_id`, `visibility`) VALUES
	(2, 1, 1, 1, 1, 4),
	(2, 2, 1, 1, 1, 4),
	(2, 3, 1, 1, 1, 4),
	(3, 1, 1, 1, 1, 4),
	(3, 2, 1, 1, 1, 4),
	(3, 3, 1, 1, 1, 4);
/*!40000 ALTER TABLE `catalog_category_product_index` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_product_index_enbl_idx
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- Dumping data for table magento.catalog_category_product_index_enbl_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_product_index_enbl_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_product_index_enbl_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_product_index_enbl_tmp
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- Dumping data for table magento.catalog_category_product_index_enbl_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_category_product_index_enbl_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_product_index_enbl_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_product_index_idx
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- Dumping data for table magento.catalog_category_product_index_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_category_product_index_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_product_index_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_category_product_index_tmp
CREATE TABLE IF NOT EXISTS `catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- Dumping data for table magento.catalog_category_product_index_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_category_product_index_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_category_product_index_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_compare_item
CREATE TABLE IF NOT EXISTS `catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_COMPARE_ITEM_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CATALOG_COMPARE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_CMP_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table';

-- Dumping data for table magento.catalog_compare_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_compare_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_compare_item` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_eav_attribute
CREATE TABLE IF NOT EXISTS `catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`),
  CONSTRAINT `FK_CATALOG_EAV_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

-- Dumping data for table magento.catalog_eav_attribute: ~91 rows (approximately)
/*!40000 ALTER TABLE `catalog_eav_attribute` DISABLE KEYS */;
INSERT INTO `catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
	(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
	(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(64, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(65, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(66, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(70, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(71, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
	(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
	(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
	(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
	(75, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
	(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'virtual,downloadable', 0, 0, 0, 0),
	(80, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
	(81, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
	(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(89, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(90, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(92, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
	(93, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(95, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(96, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(99, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
	(100, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
	(101, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
	(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(105, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(107, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(109, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
	(111, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(112, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
	(113, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
	(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
	(115, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(116, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
	(117, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
	(118, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
	(119, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
	(120, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
	(121, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
	(122, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
	(123, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
	(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
	(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
	(126, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
	(127, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
	(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
	(129, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
	(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
	(131, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0);
/*!40000 ALTER TABLE `catalog_eav_attribute` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_bundle_option
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_OPT_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option';

-- Dumping data for table magento.catalog_product_bundle_option: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_option` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_bundle_option_value
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_OPT_VAL_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value';

-- Dumping data for table magento.catalog_product_bundle_option_value: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_option_value` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_bundle_price_index
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_BNDL_PRICE_IDX_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- Dumping data for table magento.catalog_product_bundle_price_index: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_price_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_price_index` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_bundle_selection
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_OPT_ID_CAT_PRD_BNDL_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection';

-- Dumping data for table magento.catalog_product_bundle_selection: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_selection` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_selection` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_bundle_selection_price
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DCF37523AA05D770A70AA4ED7C2616E4` FOREIGN KEY (`selection_id`) REFERENCES `catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- Dumping data for table magento.catalog_product_bundle_selection_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_selection_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_selection_price` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_bundle_stock_index
CREATE TABLE IF NOT EXISTS `catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- Dumping data for table magento.catalog_product_bundle_stock_index: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_bundle_stock_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_bundle_stock_index` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_enabled_index
CREATE TABLE IF NOT EXISTS `catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  PRIMARY KEY (`product_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENABLED_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- Dumping data for table magento.catalog_product_enabled_index: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_enabled_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_enabled_index` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity
CREATE TABLE IF NOT EXISTS `catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_SKU` (`sku`),
  CONSTRAINT `FK_CAT_PRD_ENTT_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table';

-- Dumping data for table magento.catalog_product_entity: ~2 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity` DISABLE KEYS */;
INSERT INTO `catalog_product_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `type_id`, `sku`, `has_options`, `required_options`, `created_at`, `updated_at`) VALUES
	(1, 4, 4, 'simple', 'drink', 0, 0, '2017-12-04 12:23:49', '2017-12-27 10:20:55'),
	(2, 4, 4, 'simple', 'tea', 0, 0, '2017-12-04 12:25:39', '2017-12-26 08:30:12'),
	(3, 4, 4, 'simple', 'advertising', 0, 0, '2017-12-04 12:26:54', '2017-12-26 08:30:12');
/*!40000 ALTER TABLE `catalog_product_entity` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_datetime
CREATE TABLE IF NOT EXISTS `catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_DTIME_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table';

-- Dumping data for table magento.catalog_product_entity_datetime: ~18 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_datetime` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_datetime` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 93, 0, 1, NULL),
	(2, 4, 94, 0, 1, NULL),
	(3, 4, 77, 0, 1, NULL),
	(4, 4, 78, 0, 1, NULL),
	(5, 4, 104, 0, 1, NULL),
	(6, 4, 105, 0, 1, NULL),
	(7, 4, 93, 0, 2, NULL),
	(8, 4, 94, 0, 2, NULL),
	(9, 4, 77, 0, 2, NULL),
	(10, 4, 78, 0, 2, NULL),
	(11, 4, 104, 0, 2, NULL),
	(12, 4, 105, 0, 2, NULL),
	(13, 4, 93, 0, 3, NULL),
	(14, 4, 94, 0, 3, NULL),
	(15, 4, 77, 0, 3, NULL),
	(16, 4, 78, 0, 3, NULL),
	(17, 4, 104, 0, 3, NULL),
	(18, 4, 105, 0, 3, NULL);
/*!40000 ALTER TABLE `catalog_product_entity_datetime` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_decimal
CREATE TABLE IF NOT EXISTS `catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table';

-- Dumping data for table magento.catalog_product_entity_decimal: ~12 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_decimal` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_decimal` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 80, 0, 1, 1.0000),
	(2, 4, 75, 0, 1, 10.0000),
	(3, 4, 76, 0, 1, NULL),
	(4, 4, 120, 0, 1, NULL),
	(5, 4, 80, 0, 2, 1.0000),
	(6, 4, 75, 0, 2, 7.0000),
	(7, 4, 76, 0, 2, NULL),
	(8, 4, 120, 0, 2, NULL),
	(9, 4, 80, 0, 3, 1.0000),
	(10, 4, 75, 0, 3, 9.0000),
	(11, 4, 76, 0, 3, NULL),
	(12, 4, 120, 0, 3, NULL);
/*!40000 ALTER TABLE `catalog_product_entity_decimal` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_gallery
CREATE TABLE IF NOT EXISTS `catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table';

-- Dumping data for table magento.catalog_product_entity_gallery: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_entity_gallery` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_group_price
CREATE TABLE IF NOT EXISTS `catalog_product_entity_group_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `CC12C83765B562314470A24F2BDD0F36` (`entity_id`,`all_groups`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DF909D22C11B60B1E5E3EE64AB220ECE` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Attribute Backend Table';

-- Dumping data for table magento.catalog_product_entity_group_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_group_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_entity_group_price` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_int
CREATE TABLE IF NOT EXISTS `catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_INT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table';

-- Dumping data for table magento.catalog_product_entity_int: ~12 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_int` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 96, 0, 1, 1),
	(2, 4, 102, 0, 1, 4),
	(3, 4, 121, 0, 1, 2),
	(4, 4, 100, 0, 1, 0),
	(5, 4, 96, 0, 2, 1),
	(6, 4, 102, 0, 2, 4),
	(7, 4, 121, 0, 2, 0),
	(8, 4, 100, 0, 2, 0),
	(9, 4, 96, 0, 3, 1),
	(10, 4, 102, 0, 3, 4),
	(11, 4, 121, 0, 3, 0),
	(12, 4, 100, 0, 3, 0);
/*!40000 ALTER TABLE `catalog_product_entity_int` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_media_gallery
CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table';

-- Dumping data for table magento.catalog_product_entity_media_gallery: ~91 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery` (`value_id`, `attribute_id`, `entity_id`, `value`) VALUES
	(2, 88, 2, '/1/4/1401389516_1.jpg'),
	(3, 88, 3, '/i/m/images.jpg'),
	(4, 88, 3, '/1/4/1401389516_1_1.jpg'),
	(5, 88, 3, '/2/3/23621664_522873111411860_5267534870174870946_n.jpg'),
	(6, 88, 3, '/1/4/1401389516_1_1_1.jpg'),
	(7, 88, 3, '/5/a/5a3a4d43973b9_viski-jameson.jpg'),
	(8, 88, 2, '/5/a/5a3a4d4e778e0_viski-jameson.jpg'),
	(9, 88, 3, '/5/a/5a3a4d51d77c6_viski-jameson.jpg'),
	(10, 88, 2, '/5/a/5a3a4d54269af_viski-jameson.jpg'),
	(11, 88, 3, '/5/a/5a3a500398bb1_large_5984441243-700x415.jpg'),
	(12, 88, 2, '/5/a/5a3a5004e9868_viski-jameson.jpg'),
	(13, 88, 3, '/5/a/5a3a50061457d_viski-jameson.jpg'),
	(14, 88, 2, '/5/a/5a3a50075b95e_viski-jameson.jpg'),
	(15, 88, 3, '/5/a/5a3a5bea22033_large_5984441243-700x415.jpg'),
	(16, 88, 2, '/5/a/5a3a5bebd3a82_viski-jameson.jpg'),
	(17, 88, 3, '/5/a/5a3a5bed20be6_viski-jameson.jpg'),
	(18, 88, 2, '/5/a/5a3a5bee952c2_viski-jameson.jpg'),
	(19, 88, 3, '/5/a/5a3a5c5143263_large_5984441243-700x415.jpg'),
	(20, 88, 2, '/5/a/5a3a5c5658d3b_viski-jameson.jpg'),
	(21, 88, 3, '/5/a/5a3a5c591b1a6_viski-jameson.jpg'),
	(22, 88, 2, '/5/a/5a3a5c5e2fe80_viski-jameson.jpg'),
	(23, 88, 3, '/5/a/5a3a5f4d4093d_large_5984441243-700x415.jpg'),
	(24, 88, 3, '/5/a/5a3a5f574acf5_viski-jameson.jpg'),
	(25, 88, 2, '/5/a/5a3a5f59ef0bb_viski-jameson.jpg'),
	(27, 88, 3, '/5/a/5a3a65806845c_viski-jameson.jpg'),
	(28, 88, 2, '/5/a/5a3a6581ec890_viski-jameson.jpg'),
	(29, 88, 2, '/5/a/5a3a65836dfc5_viski-jameson.jpg'),
	(30, 88, 3, '/5/a/5a3a6584e3dde_viski-jameson.jpg'),
	(31, 88, 2, '/5/a/5a3a65866a25f_viski-jameson.jpg'),
	(33, 88, 3, '/5/a/5a3a6cef239f2_viski-jameson.jpg'),
	(34, 88, 2, '/5/a/5a3a6cf04d29e_viski-jameson.jpg'),
	(35, 88, 2, '/5/a/5a3a6cf17f7f2_viski-jameson.jpg'),
	(36, 88, 3, '/5/a/5a3a6cf2a7ed6_viski-jameson.jpg'),
	(37, 88, 2, '/5/a/5a3a6cf3d4248_viski-jameson.jpg'),
	(39, 88, 3, '/5/a/5a3a6cf639eca_viski-jameson.jpg'),
	(40, 88, 2, '/5/a/5a3a6cf763726_viski-jameson.jpg'),
	(41, 88, 2, '/5/a/5a3a6cf88c861_viski-jameson.jpg'),
	(42, 88, 3, '/5/a/5a3a6cf9c4350_viski-jameson.jpg'),
	(43, 88, 2, '/5/a/5a3a6cfb116de_viski-jameson.jpg'),
	(46, 88, 3, '/5/a/5a3a73407ced7_viski-jameson.jpg'),
	(47, 88, 2, '/5/a/5a3a7341ba7be_viski-jameson.jpg'),
	(48, 88, 2, '/5/a/5a3a7342eb7c8_viski-jameson.jpg'),
	(49, 88, 3, '/5/a/5a3a73442f7cd_viski-jameson.jpg'),
	(50, 88, 2, '/5/a/5a3a73457b140_viski-jameson.jpg'),
	(53, 88, 3, '/5/a/5a3a73490c9a1_viski-jameson.jpg'),
	(54, 88, 2, '/5/a/5a3a734a37513_viski-jameson.jpg'),
	(55, 88, 2, '/5/a/5a3a734b69f78_viski-jameson.jpg'),
	(56, 88, 3, '/5/a/5a3a734c9733b_viski-jameson.jpg'),
	(57, 88, 2, '/5/a/5a3a734dcbf30_viski-jameson.jpg'),
	(60, 88, 2, '/5/a/5a3a73e02ae09_viski-jameson.jpg'),
	(62, 88, 3, '/5/a/5a3a73e28d137_viski-jameson.jpg'),
	(63, 88, 2, '/5/a/5a3a73e3c4341_viski-jameson.jpg'),
	(64, 88, 2, '/5/a/5a3a73e4f2438_viski-jameson.jpg'),
	(65, 88, 3, '/5/a/5a3a73e63a268_viski-jameson.jpg'),
	(66, 88, 2, '/5/a/5a3a73e776582_viski-jameson.jpg'),
	(69, 88, 2, '/5/a/5a3a73ecc2e1f_viski-jameson.jpg'),
	(71, 88, 3, '/5/a/5a3a73ef550f3_viski-jameson.jpg'),
	(72, 88, 2, '/5/a/5a3a73f09f15e_viski-jameson.jpg'),
	(73, 88, 2, '/5/a/5a3a73f1f141f_viski-jameson.jpg'),
	(74, 88, 3, '/5/a/5a3a73f32ddba_viski-jameson.jpg'),
	(75, 88, 2, '/5/a/5a3a73f459fd2_viski-jameson.jpg'),
	(76, 88, 2, '/5/a/5a3a7ad9e3e78_viski-jameson.jpg'),
	(78, 88, 3, '/5/a/5a3a7adc3e84c_viski-jameson.jpg'),
	(79, 88, 2, '/5/a/5a3a7add49cee_viski-jameson.jpg'),
	(80, 88, 2, '/5/a/5a3a7ade59e70_viski-jameson.jpg'),
	(81, 88, 3, '/5/a/5a3a7adf73a11_viski-jameson.jpg'),
	(82, 88, 2, '/5/a/5a3a7ae083eca_viski-jameson.jpg'),
	(83, 88, 2, '/5/a/5a3a7ae19a090_viski-jameson.jpg'),
	(85, 88, 3, '/5/a/5a3a7ae3bb591_viski-jameson.jpg'),
	(86, 88, 2, '/5/a/5a3a7ae4c5b70_viski-jameson.jpg'),
	(87, 88, 2, '/5/a/5a3a7ae5cb0b1_viski-jameson.jpg'),
	(88, 88, 3, '/5/a/5a3a7ae6d6200_viski-jameson.jpg'),
	(89, 88, 2, '/5/a/5a3a7ae7e9fd6_viski-jameson.jpg'),
	(90, 88, 1, '/5/a/5a42088dcfd6f_viski-jameson.jpg'),
	(91, 88, 3, '/5/a/5a42088e97b67_viski-jameson.jpg'),
	(92, 88, 2, '/5/a/5a42088f019d0_viski-jameson.jpg'),
	(93, 88, 2, '/5/a/5a42088f6b597_viski-jameson.jpg'),
	(94, 88, 3, '/5/a/5a42088fc6d92_viski-jameson.jpg'),
	(95, 88, 2, '/5/a/5a42089034232_viski-jameson.jpg'),
	(96, 88, 1, '/5/a/5a4208908cda5_viski-jameson.jpg'),
	(97, 88, 3, '/5/a/5a420890e464f_viski-jameson.jpg'),
	(98, 88, 2, '/5/a/5a4208914955b_viski-jameson.jpg'),
	(99, 88, 2, '/5/a/5a420891a33b6_viski-jameson.jpg'),
	(100, 88, 3, '/5/a/5a4208920b86e_viski-jameson.jpg'),
	(101, 88, 2, '/5/a/5a4208926790d_viski-jameson.jpg'),
	(102, 88, 1, '/5/a/5a420892c7f83_viski-jameson.jpg'),
	(103, 88, 3, '/5/a/5a4208932c7f4_viski-jameson.jpg'),
	(104, 88, 2, '/5/a/5a42089389b2d_viski-jameson.jpg'),
	(105, 88, 2, '/5/a/5a420893e7e9f_viski-jameson.jpg'),
	(106, 88, 3, '/5/a/5a42089452f2c_viski-jameson.jpg'),
	(107, 88, 2, '/5/a/5a420894b21a7_viski-jameson.jpg');
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_media_gallery_value
CREATE TABLE IF NOT EXISTS `catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_MDA_GLR_VAL_VAL_ID_CAT_PRD_ENTT_MDA_GLR_VAL_ID` FOREIGN KEY (`value_id`) REFERENCES `catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

-- Dumping data for table magento.catalog_product_entity_media_gallery_value: ~152 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_media_gallery_value` (`value_id`, `store_id`, `label`, `position`, `disabled`) VALUES
	(2, 0, NULL, 1, 0),
	(2, 1, NULL, 1, 0),
	(3, 0, NULL, 1, 0),
	(3, 1, NULL, 1, 0),
	(4, 0, NULL, 2, 0),
	(4, 1, NULL, 2, 0),
	(5, 0, NULL, 3, 0),
	(5, 1, NULL, 3, 0),
	(6, 0, NULL, 4, 0),
	(6, 1, NULL, 4, 0),
	(7, 0, NULL, 0, 0),
	(7, 1, NULL, 5, 0),
	(8, 0, NULL, 0, 0),
	(8, 1, NULL, 2, 0),
	(9, 0, NULL, 0, 0),
	(9, 1, NULL, 6, 0),
	(10, 0, NULL, 0, 0),
	(10, 1, NULL, 3, 0),
	(11, 0, NULL, 0, 0),
	(11, 1, NULL, 7, 0),
	(12, 0, NULL, 0, 0),
	(12, 1, NULL, 4, 0),
	(13, 0, NULL, 0, 0),
	(13, 1, NULL, 8, 0),
	(14, 0, NULL, 0, 0),
	(14, 1, NULL, 5, 0),
	(15, 0, NULL, 0, 0),
	(15, 1, NULL, 9, 0),
	(16, 0, NULL, 0, 0),
	(16, 1, NULL, 6, 0),
	(17, 0, NULL, 0, 0),
	(17, 1, NULL, 10, 0),
	(18, 0, NULL, 0, 0),
	(18, 1, NULL, 7, 0),
	(19, 0, NULL, 0, 0),
	(19, 1, NULL, 11, 0),
	(20, 0, NULL, 0, 0),
	(20, 1, NULL, 8, 0),
	(21, 0, NULL, 0, 0),
	(21, 1, NULL, 12, 0),
	(22, 0, NULL, 0, 0),
	(22, 1, NULL, 9, 0),
	(23, 0, NULL, 0, 0),
	(23, 1, NULL, 13, 0),
	(24, 0, NULL, 0, 0),
	(24, 1, NULL, 14, 0),
	(25, 0, NULL, 0, 0),
	(25, 1, NULL, 10, 0),
	(27, 0, NULL, 0, 0),
	(27, 1, NULL, 15, 0),
	(28, 0, NULL, 0, 0),
	(28, 1, NULL, 11, 0),
	(29, 0, NULL, 0, 0),
	(29, 1, NULL, 12, 0),
	(30, 0, NULL, 0, 0),
	(30, 1, NULL, 16, 0),
	(31, 0, NULL, 0, 0),
	(31, 1, NULL, 13, 0),
	(33, 0, NULL, 0, 0),
	(33, 1, NULL, 17, 0),
	(34, 0, NULL, 0, 0),
	(34, 1, NULL, 14, 0),
	(35, 0, NULL, 0, 0),
	(35, 1, NULL, 15, 0),
	(36, 0, NULL, 0, 0),
	(36, 1, NULL, 18, 0),
	(37, 0, NULL, 0, 0),
	(37, 1, NULL, 16, 0),
	(39, 0, NULL, 0, 0),
	(39, 1, NULL, 19, 0),
	(40, 0, NULL, 0, 0),
	(40, 1, NULL, 17, 0),
	(41, 0, NULL, 0, 0),
	(41, 1, NULL, 18, 0),
	(42, 0, NULL, 0, 0),
	(42, 1, NULL, 20, 0),
	(43, 0, NULL, 0, 0),
	(43, 1, NULL, 19, 0),
	(46, 0, NULL, 0, 0),
	(46, 1, NULL, 21, 0),
	(47, 0, NULL, 0, 0),
	(47, 1, NULL, 20, 0),
	(48, 0, NULL, 0, 0),
	(48, 1, NULL, 21, 0),
	(49, 0, NULL, 0, 0),
	(49, 1, NULL, 22, 0),
	(50, 0, NULL, 0, 0),
	(50, 1, NULL, 22, 0),
	(53, 0, NULL, 0, 0),
	(53, 1, NULL, 23, 0),
	(54, 0, NULL, 0, 0),
	(54, 1, NULL, 23, 0),
	(55, 0, NULL, 0, 0),
	(55, 1, NULL, 24, 0),
	(56, 0, NULL, 0, 0),
	(56, 1, NULL, 24, 0),
	(57, 0, NULL, 0, 0),
	(57, 1, NULL, 25, 0),
	(60, 0, NULL, 0, 0),
	(60, 1, NULL, 26, 0),
	(62, 0, NULL, 0, 0),
	(62, 1, NULL, 25, 0),
	(63, 0, NULL, 0, 0),
	(63, 1, NULL, 27, 0),
	(64, 0, NULL, 0, 0),
	(64, 1, NULL, 28, 0),
	(65, 0, NULL, 0, 0),
	(65, 1, NULL, 26, 0),
	(66, 0, NULL, 0, 0),
	(66, 1, NULL, 29, 0),
	(69, 0, NULL, 0, 0),
	(69, 1, NULL, 30, 0),
	(71, 0, NULL, 0, 0),
	(71, 1, NULL, 27, 0),
	(72, 0, NULL, 0, 0),
	(72, 1, NULL, 31, 0),
	(73, 0, NULL, 0, 0),
	(73, 1, NULL, 32, 0),
	(74, 0, NULL, 0, 0),
	(74, 1, NULL, 28, 0),
	(75, 0, NULL, 0, 0),
	(75, 1, NULL, 33, 0),
	(76, 0, NULL, 2, 0),
	(78, 0, NULL, 5, 0),
	(79, 0, NULL, 3, 0),
	(80, 0, NULL, 4, 0),
	(81, 0, NULL, 6, 0),
	(82, 0, NULL, 5, 0),
	(83, 0, NULL, 6, 0),
	(85, 0, NULL, 7, 0),
	(86, 0, NULL, 7, 0),
	(87, 0, NULL, 8, 0),
	(88, 0, NULL, 8, 0),
	(89, 0, NULL, 9, 0),
	(90, 0, NULL, 1, 0),
	(91, 0, NULL, 9, 0),
	(92, 0, NULL, 10, 0),
	(93, 0, NULL, 11, 0),
	(94, 0, NULL, 10, 0),
	(95, 0, NULL, 12, 0),
	(96, 0, NULL, 2, 0),
	(97, 0, NULL, 11, 0),
	(98, 0, NULL, 13, 0),
	(99, 0, NULL, 14, 0),
	(100, 0, NULL, 12, 0),
	(101, 0, NULL, 15, 0),
	(102, 0, NULL, 3, 0),
	(103, 0, NULL, 13, 0),
	(104, 0, NULL, 16, 0),
	(105, 0, NULL, 17, 0),
	(106, 0, NULL, 14, 0),
	(107, 0, NULL, 18, 0);
/*!40000 ALTER TABLE `catalog_product_entity_media_gallery_value` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_text
CREATE TABLE IF NOT EXISTS `catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_TEXT_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table';

-- Dumping data for table magento.catalog_product_entity_text: ~12 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_text` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 72, 0, 1, 'Кава'),
	(2, 4, 73, 0, 1, 'Кава'),
	(3, 4, 83, 0, 1, NULL),
	(4, 4, 106, 0, 1, NULL),
	(5, 4, 72, 0, 2, 'Чай'),
	(6, 4, 73, 0, 2, 'Чай'),
	(7, 4, 83, 0, 2, NULL),
	(8, 4, 106, 0, 2, NULL),
	(9, 4, 72, 0, 3, 'Сік'),
	(10, 4, 73, 0, 3, 'Сік'),
	(11, 4, 83, 0, 3, NULL),
	(12, 4, 106, 0, 3, NULL);
/*!40000 ALTER TABLE `catalog_product_entity_text` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_tier_price
CREATE TABLE IF NOT EXISTS `catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `E8AB433B9ACB00343ABB312AD2FAB087` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_6E08D719F0501DD1D8E6D4EFF2511C85` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table';

-- Dumping data for table magento.catalog_product_entity_tier_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_tier_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_entity_tier_price` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_entity_varchar
CREATE TABLE IF NOT EXISTS `catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_ENTT_VCHR_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table';

-- Dumping data for table magento.catalog_product_entity_varchar: ~58 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_entity_varchar` DISABLE KEYS */;
INSERT INTO `catalog_product_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
	(1, 4, 71, 0, 1, 'Кава'),
	(2, 4, 97, 0, 1, 'kava'),
	(3, 4, 117, 0, 1, NULL),
	(4, 4, 118, 0, 1, '2'),
	(5, 4, 119, 0, 1, '4'),
	(6, 4, 82, 0, 1, NULL),
	(7, 4, 84, 0, 1, NULL),
	(8, 4, 85, 0, 1, '/5/a/5a42088dcfd6f_viski-jameson.jpg'),
	(9, 4, 86, 0, 1, '/5/a/5a42088dcfd6f_viski-jameson.jpg'),
	(10, 4, 87, 0, 1, '/5/a/5a42088dcfd6f_viski-jameson.jpg'),
	(11, 4, 103, 0, 1, NULL),
	(12, 4, 107, 0, 1, NULL),
	(13, 4, 109, 0, 1, 'container1'),
	(14, 4, 122, 0, 1, NULL),
	(16, 4, 98, 0, 1, 'kava.html'),
	(17, 4, 71, 0, 2, 'Чай'),
	(18, 4, 97, 0, 2, 'chaj'),
	(19, 4, 117, 0, 2, NULL),
	(20, 4, 118, 0, 2, '2'),
	(21, 4, 119, 0, 2, '4'),
	(22, 4, 82, 0, 2, NULL),
	(23, 4, 84, 0, 2, NULL),
	(24, 4, 85, 0, 2, '/5/a/5a3a4d54269af_viski-jameson.jpg'),
	(25, 4, 86, 0, 2, '/5/a/5a3a4d54269af_viski-jameson.jpg'),
	(26, 4, 87, 0, 2, '/5/a/5a3a4d54269af_viski-jameson.jpg'),
	(27, 4, 103, 0, 2, NULL),
	(28, 4, 107, 0, 2, NULL),
	(29, 4, 109, 0, 2, 'container1'),
	(30, 4, 122, 0, 2, NULL),
	(32, 4, 98, 0, 2, 'chaj.html'),
	(33, 4, 71, 0, 3, 'Сік'),
	(34, 4, 97, 0, 3, 'sik'),
	(35, 4, 117, 0, 3, NULL),
	(36, 4, 118, 0, 3, '2'),
	(37, 4, 119, 0, 3, '4'),
	(38, 4, 82, 0, 3, NULL),
	(39, 4, 84, 0, 3, NULL),
	(40, 4, 85, 0, 3, '/5/a/5a3a4d51d77c6_viski-jameson.jpg'),
	(41, 4, 86, 0, 3, '/5/a/5a3a4d51d77c6_viski-jameson.jpg'),
	(42, 4, 87, 0, 3, '/5/a/5a3a4d51d77c6_viski-jameson.jpg'),
	(43, 4, 103, 0, 3, NULL),
	(44, 4, 107, 0, 3, NULL),
	(45, 4, 109, 0, 3, 'container1'),
	(46, 4, 122, 0, 3, NULL),
	(48, 4, 98, 0, 3, 'sik.html'),
	(49, 4, 112, 0, 1, NULL),
	(50, 4, 113, 0, 1, NULL),
	(51, 4, 114, 0, 1, NULL),
	(85, 4, 112, 0, 2, NULL),
	(86, 4, 113, 0, 2, NULL),
	(87, 4, 114, 0, 2, NULL),
	(112, 4, 112, 0, 3, NULL),
	(113, 4, 113, 0, 3, NULL),
	(114, 4, 114, 0, 3, NULL);
/*!40000 ALTER TABLE `catalog_product_entity_varchar` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_flat_1
CREATE TABLE IF NOT EXISTS `catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'type_id',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `is_recurring` smallint(6) DEFAULT NULL COMMENT 'is_recurring',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` varchar(255) DEFAULT NULL COMMENT 'msrp_display_actual_price_type',
  `msrp_enabled` smallint(6) DEFAULT NULL COMMENT 'msrp_enabled',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'price_view',
  `recurring_profile` text COMMENT 'recurring_profile',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'required_options',
  `shipment_type` int(11) DEFAULT NULL COMMENT 'shipment_type',
  `short_description` text COMMENT 'short_description',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `status` smallint(5) unsigned DEFAULT NULL COMMENT 'status',
  `tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'tax_class_id',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) unsigned DEFAULT NULL COMMENT 'visibility',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_TYPE_ID` (`type_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`),
  KEY `IDX_CATALOG_PRODUCT_FLAT_1_STATUS` (`status`),
  CONSTRAINT `FK_CAT_PRD_FLAT_1_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

-- Dumping data for table magento.catalog_product_flat_1: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_flat_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_flat_1` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_eav
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`),
  CONSTRAINT `FK_CATALOG_PRODUCT_INDEX_EAV_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

-- Dumping data for table magento.catalog_product_index_eav: ~3 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_eav` DISABLE KEYS */;
INSERT INTO `catalog_product_index_eav` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
	(1, 121, 1, 2),
	(2, 121, 1, 0),
	(3, 121, 1, 0);
/*!40000 ALTER TABLE `catalog_product_index_eav` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_eav_decimal
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`),
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_EAV_DEC_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- Dumping data for table magento.catalog_product_index_eav_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_eav_decimal_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- Dumping data for table magento.catalog_product_index_eav_decimal_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_eav_decimal_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- Dumping data for table magento.catalog_product_index_eav_decimal_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_eav_decimal_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_eav_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

-- Dumping data for table magento.catalog_product_index_eav_idx: ~3 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_eav_idx` DISABLE KEYS */;
INSERT INTO `catalog_product_index_eav_idx` (`entity_id`, `attribute_id`, `store_id`, `value`) VALUES
	(1, 121, 1, 0),
	(2, 121, 1, 0),
	(3, 121, 1, 0);
/*!40000 ALTER TABLE `catalog_product_index_eav_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_eav_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

-- Dumping data for table magento.catalog_product_index_eav_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_eav_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_eav_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_group_price
CREATE TABLE IF NOT EXISTS `catalog_product_index_group_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_GROUP_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_195DF97C81B0BDD6A2EEC50F870E16D1` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_GROUP_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Index Table';

-- Dumping data for table magento.catalog_product_index_group_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_group_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_group_price` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price
CREATE TABLE IF NOT EXISTS `catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `IDX_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`),
  CONSTRAINT `FK_CAT_PRD_IDX_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

-- Dumping data for table magento.catalog_product_index_price: ~12 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
	(1, 0, 1, 2, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
	(1, 1, 1, 2, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
	(1, 2, 1, 2, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
	(1, 3, 1, 2, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
	(2, 0, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
	(2, 1, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
	(2, 2, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
	(2, 3, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
	(3, 0, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
	(3, 1, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
	(3, 2, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
	(3, 3, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL);
/*!40000 ALTER TABLE `catalog_product_index_price` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_bundle_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- Dumping data for table magento.catalog_product_index_price_bundle_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_bundle_opt_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- Dumping data for table magento.catalog_product_index_price_bundle_opt_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_opt_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_opt_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_bundle_opt_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- Dumping data for table magento.catalog_product_index_price_bundle_opt_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_opt_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_opt_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_bundle_sel_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- Dumping data for table magento.catalog_product_index_price_bundle_sel_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_sel_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_sel_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_bundle_sel_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- Dumping data for table magento.catalog_product_index_price_bundle_sel_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_sel_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_sel_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_bundle_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- Dumping data for table magento.catalog_product_index_price_bundle_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_bundle_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_cfg_opt_agr_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- Dumping data for table magento.catalog_product_index_price_cfg_opt_agr_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_agr_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_cfg_opt_agr_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- Dumping data for table magento.catalog_product_index_price_cfg_opt_agr_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_agr_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_cfg_opt_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- Dumping data for table magento.catalog_product_index_price_cfg_opt_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_cfg_opt_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- Dumping data for table magento.catalog_product_index_price_cfg_opt_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_cfg_opt_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_downlod_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- Dumping data for table magento.catalog_product_index_price_downlod_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_downlod_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_downlod_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_downlod_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- Dumping data for table magento.catalog_product_index_price_downlod_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_downlod_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_downlod_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_final_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- Dumping data for table magento.catalog_product_index_price_final_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_final_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_final_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_final_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- Dumping data for table magento.catalog_product_index_price_final_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_final_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_final_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

-- Dumping data for table magento.catalog_product_index_price_idx: ~12 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_idx` DISABLE KEYS */;
INSERT INTO `catalog_product_index_price_idx` (`entity_id`, `customer_group_id`, `website_id`, `tax_class_id`, `price`, `final_price`, `min_price`, `max_price`, `tier_price`, `group_price`) VALUES
	(1, 0, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
	(1, 1, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
	(1, 2, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
	(1, 3, 1, 0, 10.0000, 10.0000, 10.0000, 10.0000, NULL, NULL),
	(2, 0, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
	(2, 1, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
	(2, 2, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
	(2, 3, 1, 0, 7.0000, 7.0000, 7.0000, 7.0000, NULL, NULL),
	(3, 0, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
	(3, 1, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
	(3, 2, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL),
	(3, 3, 1, 0, 9.0000, 9.0000, 9.0000, 9.0000, NULL, NULL);
/*!40000 ALTER TABLE `catalog_product_index_price_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_opt_agr_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- Dumping data for table magento.catalog_product_index_price_opt_agr_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_opt_agr_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_opt_agr_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_opt_agr_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- Dumping data for table magento.catalog_product_index_price_opt_agr_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_opt_agr_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_opt_agr_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_opt_idx
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- Dumping data for table magento.catalog_product_index_price_opt_idx: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_price_opt_idx` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_opt_idx` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_opt_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- Dumping data for table magento.catalog_product_index_price_opt_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_opt_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_opt_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_price_tmp
CREATE TABLE IF NOT EXISTS `catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

-- Dumping data for table magento.catalog_product_index_price_tmp: 0 rows
/*!40000 ALTER TABLE `catalog_product_index_price_tmp` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_price_tmp` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_tier_price
CREATE TABLE IF NOT EXISTS `catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_ENTT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_IDX_TIER_PRICE_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- Dumping data for table magento.catalog_product_index_tier_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_tier_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_index_tier_price` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_index_website
CREATE TABLE IF NOT EXISTS `catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `IDX_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`),
  CONSTRAINT `FK_CAT_PRD_IDX_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

-- Dumping data for table magento.catalog_product_index_website: ~1 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_index_website` DISABLE KEYS */;
INSERT INTO `catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
	(1, '2017-12-27', 1);
/*!40000 ALTER TABLE `catalog_product_index_website` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_link
CREATE TABLE IF NOT EXISTS `catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`),
  CONSTRAINT `FK_CAT_PRD_LNK_LNKED_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_LNK_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table';

-- Dumping data for table magento.catalog_product_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_link` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_link_attribute
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`),
  CONSTRAINT `FK_CAT_PRD_LNK_ATTR_LNK_TYPE_ID_CAT_PRD_LNK_TYPE_LNK_TYPE_ID` FOREIGN KEY (`link_type_id`) REFERENCES `catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table';

-- Dumping data for table magento.catalog_product_link_attribute: ~5 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_attribute` DISABLE KEYS */;
INSERT INTO `catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
	(1, 1, 'position', 'int'),
	(2, 3, 'position', 'int'),
	(3, 3, 'qty', 'decimal'),
	(4, 4, 'position', 'int'),
	(5, 5, 'position', 'int');
/*!40000 ALTER TABLE `catalog_product_link_attribute` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_link_attribute_decimal
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`),
  CONSTRAINT `FK_AB2EFA9A14F7BCF1D5400056203D14B6` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_LNK_ATTR_DEC_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table';

-- Dumping data for table magento.catalog_product_link_attribute_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_attribute_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_link_attribute_decimal` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_link_attribute_int
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_PRODUCT_LINK_ATTRIBUTE_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`),
  CONSTRAINT `FK_CAT_PRD_LNK_ATTR_INT_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_D6D878F8BA2A4282F8DDED7E6E3DE35C` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table';

-- Dumping data for table magento.catalog_product_link_attribute_int: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_attribute_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_link_attribute_int` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_link_attribute_varchar
CREATE TABLE IF NOT EXISTS `catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`),
  CONSTRAINT `FK_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DEE9C4DA61CFCC01DFCF50F0D79CEA51` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table';

-- Dumping data for table magento.catalog_product_link_attribute_varchar: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_attribute_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_link_attribute_varchar` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_link_type
CREATE TABLE IF NOT EXISTS `catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table';

-- Dumping data for table magento.catalog_product_link_type: ~4 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_link_type` DISABLE KEYS */;
INSERT INTO `catalog_product_link_type` (`link_type_id`, `code`) VALUES
	(1, 'relation'),
	(3, 'super'),
	(4, 'up_sell'),
	(5, 'cross_sell');
/*!40000 ALTER TABLE `catalog_product_link_type` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_option
CREATE TABLE IF NOT EXISTS `catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_PRD_OPT_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table';

-- Dumping data for table magento.catalog_product_option: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_option_price
CREATE TABLE IF NOT EXISTS `catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_OPT_PRICE_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table';

-- Dumping data for table magento.catalog_product_option_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_price` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_option_title
CREATE TABLE IF NOT EXISTS `catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_OPT_TTL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table';

-- Dumping data for table magento.catalog_product_option_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_title` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_option_type_price
CREATE TABLE IF NOT EXISTS `catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_B523E3378E8602F376CC415825576B7F` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_OPT_TYPE_PRICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table';

-- Dumping data for table magento.catalog_product_option_type_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_type_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_type_price` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_option_type_title
CREATE TABLE IF NOT EXISTS `catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_C085B9CF2C2A302E8043FDEA1937D6A2` FOREIGN KEY (`option_type_id`) REFERENCES `catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_OPT_TYPE_TTL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table';

-- Dumping data for table magento.catalog_product_option_type_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_type_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_type_title` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_option_type_value
CREATE TABLE IF NOT EXISTS `catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `IDX_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`),
  CONSTRAINT `FK_CAT_PRD_OPT_TYPE_VAL_OPT_ID_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table';

-- Dumping data for table magento.catalog_product_option_type_value: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_option_type_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_option_type_value` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_relation
CREATE TABLE IF NOT EXISTS `catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`),
  CONSTRAINT `FK_CAT_PRD_RELATION_CHILD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_RELATION_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- Dumping data for table magento.catalog_product_relation: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_relation` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_super_attribute
CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID_ATTRIBUTE_ID` (`product_id`,`attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table';

-- Dumping data for table magento.catalog_product_super_attribute: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_super_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_super_attribute` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_super_attribute_label
CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_309442281DF7784210ED82B2CC51E5D5` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_SPR_ATTR_LBL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table';

-- Dumping data for table magento.catalog_product_super_attribute_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_super_attribute_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_super_attribute_label` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_super_attribute_pricing
CREATE TABLE IF NOT EXISTS `catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) DEFAULT NULL COMMENT 'Value Index',
  `is_percent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`),
  KEY `IDX_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CAT_PRD_SPR_ATTR_PRICING_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CDE8813117106CFAA3AD209358F66332` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table';

-- Dumping data for table magento.catalog_product_super_attribute_pricing: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_super_attribute_pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_super_attribute_pricing` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_super_link
CREATE TABLE IF NOT EXISTS `catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  KEY `IDX_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_CAT_PRD_SPR_LNK_PARENT_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_SPR_LNK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table';

-- Dumping data for table magento.catalog_product_super_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_super_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `catalog_product_super_link` ENABLE KEYS */;

-- Dumping structure for table magento.catalog_product_website
CREATE TABLE IF NOT EXISTS `catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `IDX_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CAT_PRD_WS_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

-- Dumping data for table magento.catalog_product_website: ~2 rows (approximately)
/*!40000 ALTER TABLE `catalog_product_website` DISABLE KEYS */;
INSERT INTO `catalog_product_website` (`product_id`, `website_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1);
/*!40000 ALTER TABLE `catalog_product_website` ENABLE KEYS */;

-- Dumping structure for table magento.checkout_agreement
CREATE TABLE IF NOT EXISTS `checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement';

-- Dumping data for table magento.checkout_agreement: ~0 rows (approximately)
/*!40000 ALTER TABLE `checkout_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_agreement` ENABLE KEYS */;

-- Dumping structure for table magento.checkout_agreement_store
CREATE TABLE IF NOT EXISTS `checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CHECKOUT_AGREEMENT_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CHKT_AGRT_STORE_AGRT_ID_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- Dumping data for table magento.checkout_agreement_store: ~0 rows (approximately)
/*!40000 ALTER TABLE `checkout_agreement_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_agreement_store` ENABLE KEYS */;

-- Dumping structure for table magento.cms_block
CREATE TABLE IF NOT EXISTS `cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

-- Dumping data for table magento.cms_block: ~3 rows (approximately)
/*!40000 ALTER TABLE `cms_block` DISABLE KEYS */;
INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
	(1, 'Footer Links', 'footer_links', '\n<ul>\n    <li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\n    <li><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\n<li class="last privacy"><a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy</a></li>\r\n</ul>', '2017-11-28 10:55:47', '2017-11-28 10:55:48', 1),
	(2, 'Footer Links Company', 'footer_links_company', '\n<div class="links">\n    <div class="block-title">\n        <strong><span>Company</span></strong>\n    </div>\n    <ul>\n        <li><a href="{{store url=""}}about-magento-demo-store/">About Us</a></li>\n        <li><a href="{{store url=""}}contacts/">Contact Us</a></li>\n        <li><a href="{{store url=""}}customer-service/">Customer Service</a></li>\n        <li><a href="{{store url=""}}privacy-policy-cookie-restriction-mode/">Privacy Policy</a></li>\n    </ul>\n</div>', '2017-11-28 10:55:47', '2017-11-28 10:55:47', 1),
	(3, 'Cookie restriction notice', 'cookie_restriction_notice_block', '<p>This website requires cookies to provide all of its features. For more information on what data is contained in the cookies, please see our <a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy page</a>. To accept cookies from this site, please click the Allow button below.</p>', '2017-11-28 10:55:48', '2017-11-28 10:55:48', 1);
/*!40000 ALTER TABLE `cms_block` ENABLE KEYS */;

-- Dumping structure for table magento.cms_block_store
CREATE TABLE IF NOT EXISTS `cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `IDX_CMS_BLOCK_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CMS_BLOCK_STORE_BLOCK_ID_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CMS_BLOCK_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

-- Dumping data for table magento.cms_block_store: ~3 rows (approximately)
/*!40000 ALTER TABLE `cms_block_store` DISABLE KEYS */;
INSERT INTO `cms_block_store` (`block_id`, `store_id`) VALUES
	(1, 0),
	(2, 0),
	(3, 0);
/*!40000 ALTER TABLE `cms_block_store` ENABLE KEYS */;

-- Dumping structure for table magento.cms_page
CREATE TABLE IF NOT EXISTS `cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  PRIMARY KEY (`page_id`),
  KEY `IDX_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='CMS Page Table';

-- Dumping data for table magento.cms_page: ~6 rows (approximately)
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
	(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', NULL, '\n<div class="page-title"><h1>Whoops, our bad...</h1></div>\n<dl>\n    <dt>The page you requested was not found, and we have a fine guess why.</dt>\n    <dd>\n        <ul class="disc">\n            <li>If you typed the URL directly, please make sure the spelling is correct.</li>\n            <li>If you clicked on a link to get here, the link is outdated.</li>\n        </ul>\n    </dd>\n</dl>\n<dl>\n    <dt>What can you do?</dt>\n    <dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\n    <dd>\n        <ul class="disc">\n            <li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\n            <li>Use the search bar at the top of the page to search for your products.</li>\n            <li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a>\n            <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li>\n        </ul>\n    </dd>\n</dl>\n', '2017-11-28 10:55:47', '2017-11-28 10:55:47', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 'Home page', 'two_columns_right', NULL, NULL, 'home', NULL, '{{block type="catalog/product_list" \r\nname="home.catalog.product.list" \r\nalias="products_homepage" \r\ncategory_id="3" \r\ntemplate="catalog/product/list.phtml"}}', '2017-11-28 10:55:47', '2017-12-04 12:46:04', 1, 0, '<!--<reference name="content">\r\n        <block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n    </reference>\r\n    <reference name="right">\r\n        <action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\r\n        <action method="unsetChild"><alias>right.reports.product.compared</alias></action>\r\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
	(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '\n<div class="page-title">\n    <h1>About Magento Store</h1>\n</div>\n<div class="col3-set">\n<div class="col-1"><p style="line-height:1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nMorbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec,\ntempus vitae, iaculis semper, pede.</small></p>\n<p style="color:#888; font:1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\nMorbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis,\nporta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p></div>\n<div class="col-2">\n<p><strong style="color:#de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus.\nDuis lobortis. Nulla nec velit.</strong></p>\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper.\nPhasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada\nfames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac,\ntempus nec, tempor nec, justo. </p>\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam.\nPellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.\nVestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est.\nNulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat.\nPellentesque eget velit. Nunc tincidunt.</p></div>\n<div class="col-3">\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper </p>\n<p><strong style="color:#de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci,\nsit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\n<div class="divider"></div>\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\n<p style="line-height:1.2em;"><strong style="font:italic 2em Georgia, serif;">John Doe</strong><br />\n<small>Some important guy</small></p></div>\n</div>', '2017-11-28 10:55:47', '2017-11-28 10:55:47', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\n<h1>Customer Service</h1>\n</div>\n<ul class="disc">\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\n<li><a href="#answer2">Privacy &amp; Security</a></li>\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\n<li><a href="#answer4">Ordering</a></li>\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\n<li><a href="#answer6">Viewing Orders</a></li>\n<li><a href="#answer7">Updating Account Information</a></li>\n</ul>\n<dl>\n<dt id="answer1">Shipping &amp; Delivery</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer2">Privacy &amp; Security</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer3">Returns &amp; Replacements</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer4">Ordering</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\nPellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\nNunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\njusto.</dd>\n<dt id="answer6">Viewing Orders</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\nMauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\nCras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\nfaucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n<dt id="answer7">Updating Account Information</dt>\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.\n Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.\n Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in,\n faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa.\n Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.\n Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec,\n justo.</dd>\n</dl>', '2017-11-28 10:55:47', '2017-11-28 10:55:47', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\n    <ul class="messages">\n        <li class="notice-msg">\n            <ul>\n                <li>Please enable cookies in your web browser to continue.</li>\n            </ul>\n        </li>\n    </ul>\n    <div class="page-title">\n        <h1><a name="top"></a>What are Cookies?</h1>\n    </div>\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website.\n    On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically\n    whenever you visit our site so that we can personalize your experience and provide you with better service.\n    We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes.\n     If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase\n     or take advantage of certain features of our website, such as storing items in your Shopping Cart or\n     receiving personalized recommendations. As a result, we strongly encourage you to configure your web\n     browser to accept cookies from our website.</p>\n    <h2 class="subtitle">Enabling Cookies</h2>\n    <ul class="disc">\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\n        <li><a href="#opera">Opera 7.x</a></li>\n    </ul>\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\n    <ol>\n        <li>\n            <p>Start Internet Explorer</p>\n        </li>\n        <li>\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Privacy</strong> tab</p>\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click the <strong>Advanced</strong> button</p>\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>,\n            put another check mark in the <strong>Always accept session cookies </strong>box</p>\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Restart Internet Explore</p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\n    <ol>\n        <li>\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> tab</p>\n        </li>\n        <li>\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>)\n            under <strong>Settings</strong>. Click <strong>OK</strong></p>\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>Expand the <strong>Cookies</strong> section</p>\n        </li>\n        <li>\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n    <h3><a name="opera"></a>Opera 7.x</h3>\n    <ol>\n        <li>\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\n        </li>\n        <li>\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\n        </li>\n        <li>\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong>\n            should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\n        </li>\n        <li>\n            <p>Save changes by clicking <strong>Ok</strong></p>\n        </li>\n    </ol>\n    <p class="a-top"><a href="#top">Back to Top</a></p>\n</div>\n', '2017-11-28 10:55:47', '2017-11-28 10:55:47', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style="color: #ff0000; font-weight: bold; font-size: 13px">\n    Please replace this text with you Privacy Policy.\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\n</p>\n<p>\n    This privacy policy sets out how {{config path="general/store_information/name"}} uses and protects any information\n    that you give {{config path="general/store_information/name"}} when you use this website.\n    {{config path="general/store_information/name"}} is committed to ensuring that your privacy is protected.\n    Should we ask you to provide certain information by which you can be identified when using this website,\n    then you can be assured that it will only be used in accordance with this privacy statement.\n    {{config path="general/store_information/name"}} may change this policy from time to time by updating this page.\n    You should check this page from time to time to ensure that you are happy with any changes.\n</p>\n<h2>What we collect</h2>\n<p>We may collect the following information:</p>\n<ul>\n    <li>name</li>\n    <li>contact information including email address</li>\n    <li>demographic information such as postcode, preferences and interests</li>\n    <li>other information relevant to customer surveys and/or offers</li>\n</ul>\n<p>\n    For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\n</p>\n<h2>What we do with the information we gather</h2>\n<p>\n    We require this information to understand your needs and provide you with a better service,\n    and in particular for the following reasons:\n</p>\n<ul>\n    <li>Internal record keeping.</li>\n    <li>We may use the information to improve our products and services.</li>\n    <li>\n        We may periodically send promotional emails about new products, special offers or other information which we\n        think you may find interesting using the email address which you have provided.\n    </li>\n    <li>\n        From time to time, we may also use your information to contact you for market research purposes.\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\n        according to your interests.\n    </li>\n</ul>\n<h2>Security</h2>\n<p>\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\n    the information we collect online.\n</p>\n<h2>How we use cookies</h2>\n<p>\n    A cookie is a small file which asks permission to be placed on your computer\'s hard drive.\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\n    your preferences.\n</p>\n<p>\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\n    analysis purposes and then the data is removed from the system.\n</p>\n<p>\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\n</p>\n<h2>Links to other websites</h2>\n<p>\n    Our website may contain links to other websites of interest. However, once you have used these links\n    to leave our site, you should note that we do not have any control over that other website.\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\n    visiting such sites and such sites are not governed by this privacy statement.\n    You should exercise caution and look at the privacy statement applicable to the website in question.\n</p>\n<h2>Controlling your personal information</h2>\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\n<ul>\n    <li>\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\n        that you do not want the information to be used by anybody for direct marketing purposes\n    </li>\n    <li>\n        if you have previously agreed to us using your personal information for direct marketing purposes,\n        you may change your mind at any time by writing to or emailing us at\n        {{config path="trans_email/ident_general/email"}}\n    </li>\n</ul>\n<p>\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\n    or are required by law to do so. We may use your personal information to send you promotional information\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\n</p>\n<p>\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\n    A small fee will be payable. If you would like a copy of the information held on you please write to\n    {{config path="general/store_information/address"}}.\n</p>\n<p>\n    If you believe that any information we are holding on you is incorrect or incomplete,\n    please write to or email us as soon as possible, at the above address.\n    We will promptly correct any information found to be incorrect.\n</p>\n<h2><a name="list"></a>List of cookies we collect</h2>\n<p>The table below lists the cookies we collect and what information they store.</p>\n<table class="data-table">\n    <thead>\n        <tr>\n            <th>COOKIE name</th>\n            <th>COOKIE Description</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr>\n            <th>CART</th>\n            <td>The association with your shopping cart.</td>\n        </tr>\n        <tr>\n            <th>CATEGORY_INFO</th>\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\n        </tr>\n        <tr>\n            <th>COMPARE</th>\n            <td>The items that you have in the Compare Products list.</td>\n        </tr>\n        <tr>\n            <th>CURRENCY</th>\n            <td>Your preferred currency</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER</th>\n            <td>An encrypted version of your customer id with the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_AUTH</th>\n            <td>An indicator if you are currently logged into the store.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_INFO</th>\n            <td>An encrypted version of the customer group you belong to.</td>\n        </tr>\n        <tr>\n            <th>CUSTOMER_SEGMENT_IDS</th>\n            <td>Stores the Customer Segment ID</td>\n        </tr>\n        <tr>\n            <th>EXTERNAL_NO_CACHE</th>\n            <td>A flag, which indicates whether caching is disabled or not.</td>\n        </tr>\n        <tr>\n            <th>FRONTEND</th>\n            <td>You sesssion ID on the server.</td>\n        </tr>\n        <tr>\n            <th>GUEST-VIEW</th>\n            <td>Allows guests to edit their orders.</td>\n        </tr>\n        <tr>\n            <th>LAST_CATEGORY</th>\n            <td>The last category you visited.</td>\n        </tr>\n        <tr>\n            <th>LAST_PRODUCT</th>\n            <td>The most recent product you have viewed.</td>\n        </tr>\n        <tr>\n            <th>NEWMESSAGE</th>\n            <td>Indicates whether a new message has been received.</td>\n        </tr>\n        <tr>\n            <th>NO_CACHE</th>\n            <td>Indicates whether it is allowed to use cache.</td>\n        </tr>\n        <tr>\n            <th>PERSISTENT_SHOPPING_CART</th>\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\n        </tr>\n        <tr>\n            <th>POLL</th>\n            <td>The ID of any polls you have recently voted in.</td>\n        </tr>\n        <tr>\n            <th>POLLN</th>\n            <td>Information on what polls you have voted on.</td>\n        </tr>\n        <tr>\n            <th>RECENTLYCOMPARED</th>\n            <td>The items that you have recently compared.            </td>\n        </tr>\n        <tr>\n            <th>STF</th>\n            <td>Information on products you have emailed to friends.</td>\n        </tr>\n        <tr>\n            <th>STORE</th>\n            <td>The store view or language you have selected.</td>\n        </tr>\n        <tr>\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\n            <td>Indicates whether a customer allowed to use cookies.</td>\n        </tr>\n        <tr>\n            <th>VIEWED_PRODUCT_IDS</th>\n            <td>The products that you have recently viewed.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST</th>\n            <td>An encrypted list of products added to your Wishlist.</td>\n        </tr>\n        <tr>\n            <th>WISHLIST_CNT</th>\n            <td>The number of items in your Wishlist.</td>\n        </tr>\n    </tbody>\n</table>', '2017-11-28 10:55:48', '2017-11-28 10:55:48', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;

-- Dumping structure for table magento.cms_page_store
CREATE TABLE IF NOT EXISTS `cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `IDX_CMS_PAGE_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CMS_PAGE_STORE_PAGE_ID_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CMS_PAGE_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

-- Dumping data for table magento.cms_page_store: ~6 rows (approximately)
/*!40000 ALTER TABLE `cms_page_store` DISABLE KEYS */;
INSERT INTO `cms_page_store` (`page_id`, `store_id`) VALUES
	(1, 0),
	(3, 0),
	(4, 0),
	(5, 0),
	(6, 0),
	(2, 1);
/*!40000 ALTER TABLE `cms_page_store` ENABLE KEYS */;

-- Dumping structure for table magento.core_cache
CREATE TABLE IF NOT EXISTS `core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `IDX_CORE_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- Dumping data for table magento.core_cache: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_cache` ENABLE KEYS */;

-- Dumping structure for table magento.core_cache_option
CREATE TABLE IF NOT EXISTS `core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

-- Dumping data for table magento.core_cache_option: ~8 rows (approximately)
/*!40000 ALTER TABLE `core_cache_option` DISABLE KEYS */;
INSERT INTO `core_cache_option` (`code`, `value`) VALUES
	('block_html', 1),
	('collections', 1),
	('config', 1),
	('config_api', 1),
	('config_api2', 1),
	('eav', 1),
	('layout', 1),
	('translate', 1);
/*!40000 ALTER TABLE `core_cache_option` ENABLE KEYS */;

-- Dumping structure for table magento.core_cache_tag
CREATE TABLE IF NOT EXISTS `core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `IDX_CORE_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- Dumping data for table magento.core_cache_tag: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_cache_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_cache_tag` ENABLE KEYS */;

-- Dumping structure for table magento.core_config_data
CREATE TABLE IF NOT EXISTS `core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNQ_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8 COMMENT='Config Data';

-- Dumping data for table magento.core_config_data: ~215 rows (approximately)
/*!40000 ALTER TABLE `core_config_data` DISABLE KEYS */;
INSERT INTO `core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
	(1, 'default', 0, 'general/region/display_all', '1'),
	(2, 'default', 0, 'general/region/state_required', 'AT,CA,CH,DE,EE,ES,FI,FR,LT,LV,RO,US'),
	(3, 'default', 0, 'catalog/category/root_id', '2'),
	(4, 'default', 0, 'payment/paypal_express/skip_order_review_step', '1'),
	(5, 'default', 0, 'payment/payflow_link/mobile_optimized', '1'),
	(6, 'default', 0, 'payment/payflow_advanced/mobile_optimized', '1'),
	(7, 'default', 0, 'payment/hosted_pro/mobile_optimized', '1'),
	(8, 'default', 0, 'admin/dashboard/enable_charts', '1'),
	(9, 'default', 0, 'web/unsecure/base_url', 'http://mag.dev/'),
	(10, 'default', 0, 'web/secure/base_url', 'http://mag.dev/'),
	(11, 'default', 0, 'general/locale/code', 'en_US'),
	(12, 'default', 0, 'general/locale/timezone', 'America/Los_Angeles'),
	(13, 'default', 0, 'currency/options/base', 'USD'),
	(14, 'default', 0, 'currency/options/default', 'USD'),
	(15, 'default', 0, 'currency/options/allow', 'USD'),
	(16, 'default', 0, 'dev/restrict/allow_ips', NULL),
	(17, 'default', 0, 'dev/debug/profiler', '0'),
	(18, 'default', 0, 'dev/template/allow_symlink', '0'),
	(19, 'default', 0, 'dev/translate_inline/active', '0'),
	(20, 'default', 0, 'dev/translate_inline/active_admin', '0'),
	(21, 'default', 0, 'dev/log/active', '1'),
	(22, 'default', 0, 'dev/log/file', 'system.log'),
	(23, 'default', 0, 'dev/log/exception_file', 'exception.log'),
	(24, 'default', 0, 'dev/js/merge_files', '0'),
	(25, 'default', 0, 'dev/css/merge_css_files', '0'),
	(26, 'websites', 1, 'dev/debug/template_hints', '0'),
	(27, 'websites', 1, 'dev/debug/template_hints_blocks', '0'),
	(28, 'websites', 1, 'dev/debug/profiler', '0'),
	(29, 'default', 0, 'tab1/general/news_per_page', '3'),
	(30, 'websites', 1, 'general/locale/code', 'uk_UA'),
	(31, 'default', 0, 'carriers/asg_star/active', '1'),
	(32, 'default', 0, 'carriers/asg_star/title', 'Star Delivery'),
	(33, 'default', 0, 'carriers/asg_star/sort_order', '10'),
	(34, 'default', 0, 'carriers/flatrate/active', '1'),
	(35, 'default', 0, 'carriers/flatrate/title', 'Flat Rate'),
	(36, 'default', 0, 'carriers/flatrate/name', 'Fixed'),
	(37, 'default', 0, 'carriers/flatrate/type', 'I'),
	(38, 'default', 0, 'carriers/flatrate/price', '5.00'),
	(39, 'default', 0, 'carriers/flatrate/handling_type', 'F'),
	(40, 'default', 0, 'carriers/flatrate/handling_fee', NULL),
	(41, 'default', 0, 'carriers/flatrate/specificerrmsg', 'This shipping method is currently unavailable. If you would like to ship using this shipping method, please contact us.'),
	(42, 'default', 0, 'carriers/flatrate/sallowspecific', '0'),
	(43, 'default', 0, 'carriers/flatrate/specificcountry', NULL),
	(44, 'default', 0, 'carriers/flatrate/showmethod', '0'),
	(45, 'default', 0, 'carriers/flatrate/sort_order', NULL),
	(46, 'default', 0, 'carriers/tablerate/active', '0'),
	(47, 'default', 0, 'carriers/tablerate/title', 'Best Way'),
	(48, 'default', 0, 'carriers/tablerate/name', 'Table Rate'),
	(49, 'default', 0, 'carriers/tablerate/condition_name', 'package_weight'),
	(50, 'default', 0, 'carriers/tablerate/include_virtual_price', '1'),
	(51, 'default', 0, 'carriers/tablerate/handling_type', 'F'),
	(52, 'default', 0, 'carriers/tablerate/handling_fee', NULL),
	(53, 'default', 0, 'carriers/tablerate/specificerrmsg', 'This shipping method is currently unavailable. If you would like to ship using this shipping method, please contact us.'),
	(54, 'default', 0, 'carriers/tablerate/sallowspecific', '0'),
	(55, 'default', 0, 'carriers/tablerate/specificcountry', NULL),
	(56, 'default', 0, 'carriers/tablerate/showmethod', '0'),
	(57, 'default', 0, 'carriers/tablerate/sort_order', NULL),
	(58, 'default', 0, 'carriers/freeshipping/active', '0'),
	(59, 'default', 0, 'carriers/freeshipping/title', 'Free Shipping'),
	(60, 'default', 0, 'carriers/freeshipping/name', 'Free'),
	(61, 'default', 0, 'carriers/freeshipping/free_shipping_subtotal', NULL),
	(62, 'default', 0, 'carriers/freeshipping/specificerrmsg', 'This shipping method is currently unavailable. If you would like to ship using this shipping method, please contact us.'),
	(63, 'default', 0, 'carriers/freeshipping/sallowspecific', '0'),
	(64, 'default', 0, 'carriers/freeshipping/specificcountry', NULL),
	(65, 'default', 0, 'carriers/freeshipping/showmethod', '0'),
	(66, 'default', 0, 'carriers/freeshipping/sort_order', NULL),
	(67, 'default', 0, 'carriers/ups/active', '0'),
	(68, 'default', 0, 'carriers/ups/type', 'UPS'),
	(69, 'default', 0, 'carriers/ups/gateway_xml_url', 'https://onlinetools.ups.com/ups.app/xml/Rate'),
	(70, 'default', 0, 'carriers/ups/tracking_xml_url', 'https://onlinetools.ups.com/ups.app/xml/Track'),
	(71, 'default', 0, 'carriers/ups/shipconfirm_xml_url', 'https://onlinetools.ups.com/ups.app/xml/ShipConfirm'),
	(72, 'default', 0, 'carriers/ups/shipaccept_xml_url', 'https://onlinetools.ups.com/ups.app/xml/ShipAccept'),
	(73, 'default', 0, 'carriers/ups/mode_xml', '1'),
	(74, 'default', 0, 'carriers/ups/password', NULL),
	(75, 'default', 0, 'carriers/ups/username', NULL),
	(76, 'default', 0, 'carriers/ups/access_license_number', NULL),
	(77, 'default', 0, 'carriers/ups/origin_shipment', 'Shipments Originating in United States'),
	(78, 'default', 0, 'carriers/ups/title', 'United Parcel Service'),
	(79, 'default', 0, 'carriers/ups/gateway_url', 'http://www.ups.com/using/services/rave/qcostcgi.cgi'),
	(80, 'default', 0, 'carriers/ups/negotiated_active', '0'),
	(81, 'default', 0, 'carriers/ups/shipment_requesttype', '0'),
	(82, 'default', 0, 'carriers/ups/container', 'CP'),
	(83, 'default', 0, 'carriers/ups/shipper_number', NULL),
	(84, 'default', 0, 'carriers/ups/dest_type', 'RES'),
	(85, 'default', 0, 'carriers/ups/unit_of_measure', 'LBS'),
	(86, 'default', 0, 'carriers/ups/pickup', 'CC'),
	(87, 'default', 0, 'carriers/ups/max_package_weight', '150'),
	(88, 'default', 0, 'carriers/ups/min_package_weight', '0.1'),
	(89, 'default', 0, 'carriers/ups/handling_type', 'F'),
	(90, 'default', 0, 'carriers/ups/handling_action', 'O'),
	(91, 'default', 0, 'carriers/ups/handling_fee', NULL),
	(92, 'default', 0, 'carriers/ups/allowed_methods', '1DM,1DML,1DA,1DAL,1DAPI,1DP,1DPL,2DM,2DML,2DA,2DAL,3DS,GND,GNDCOM,GNDRES,STD,XPR,WXS,XPRL,XDM,XDML,XPD'),
	(93, 'default', 0, 'carriers/ups/free_method', 'GND'),
	(94, 'default', 0, 'carriers/ups/free_shipping_enable', '0'),
	(95, 'default', 0, 'carriers/ups/free_shipping_subtotal', NULL),
	(96, 'default', 0, 'carriers/ups/specificerrmsg', 'This shipping method is currently unavailable. If you would like to ship using this shipping method, please contact us.'),
	(97, 'default', 0, 'carriers/ups/sallowspecific', '0'),
	(98, 'default', 0, 'carriers/ups/specificcountry', NULL),
	(99, 'default', 0, 'carriers/ups/debug', '0'),
	(100, 'default', 0, 'carriers/ups/showmethod', '0'),
	(101, 'default', 0, 'carriers/ups/sort_order', NULL),
	(102, 'default', 0, 'carriers/usps/active', '0'),
	(103, 'default', 0, 'carriers/usps/gateway_url', 'http://production.shippingapis.com/ShippingAPI.dll'),
	(104, 'default', 0, 'carriers/usps/gateway_secure_url', 'https://secure.shippingapis.com/ShippingAPI.dll'),
	(105, 'default', 0, 'carriers/usps/title', 'United States Postal Service'),
	(106, 'default', 0, 'carriers/usps/userid', NULL),
	(107, 'default', 0, 'carriers/usps/password', NULL),
	(108, 'default', 0, 'carriers/usps/mode', '0'),
	(109, 'default', 0, 'carriers/usps/shipment_requesttype', '0'),
	(110, 'default', 0, 'carriers/usps/container', 'VARIABLE'),
	(111, 'default', 0, 'carriers/usps/size', 'REGULAR'),
	(112, 'default', 0, 'carriers/usps/machinable', 'true'),
	(113, 'default', 0, 'carriers/usps/max_package_weight', '70'),
	(114, 'default', 0, 'carriers/usps/handling_type', 'F'),
	(115, 'default', 0, 'carriers/usps/handling_action', 'O'),
	(116, 'default', 0, 'carriers/usps/handling_fee', NULL),
	(117, 'default', 0, 'carriers/usps/allowed_methods', '0_FCLE,0_FCL,0_FCP,1,2,3,4,6,7,13,16,17,22,23,25,27,28,33,34,35,36,37,42,43,53,57,61,INT_1,INT_2,INT_4,INT_6,INT_7,INT_8,INT_9,INT_10,INT_11,INT_12,INT_13,INT_14,INT_15,INT_16,INT_20'),
	(118, 'default', 0, 'carriers/usps/free_method', NULL),
	(119, 'default', 0, 'carriers/usps/free_shipping_subtotal', NULL),
	(120, 'default', 0, 'carriers/usps/specificerrmsg', 'This shipping method is currently unavailable. If you would like to ship using this shipping method, please contact us.'),
	(121, 'default', 0, 'carriers/usps/sallowspecific', '0'),
	(122, 'default', 0, 'carriers/usps/specificcountry', NULL),
	(123, 'default', 0, 'carriers/usps/debug', '0'),
	(124, 'default', 0, 'carriers/usps/showmethod', '0'),
	(125, 'default', 0, 'carriers/usps/sort_order', NULL),
	(126, 'default', 0, 'carriers/usps/free_shipping_enable', '0'),
	(127, 'default', 0, 'carriers/fedex/active', '0'),
	(128, 'default', 0, 'carriers/fedex/title', 'Federal Express'),
	(129, 'default', 0, 'carriers/fedex/account', NULL),
	(130, 'default', 0, 'carriers/fedex/meter_number', NULL),
	(131, 'default', 0, 'carriers/fedex/key', NULL),
	(132, 'default', 0, 'carriers/fedex/password', NULL),
	(133, 'default', 0, 'carriers/fedex/sandbox_mode', '0'),
	(134, 'default', 0, 'carriers/fedex/shipment_requesttype', '0'),
	(135, 'default', 0, 'carriers/fedex/packaging', 'YOUR_PACKAGING'),
	(136, 'default', 0, 'carriers/fedex/dropoff', 'REGULAR_PICKUP'),
	(137, 'default', 0, 'carriers/fedex/unit_of_measure', 'LB'),
	(138, 'default', 0, 'carriers/fedex/max_package_weight', '150'),
	(139, 'default', 0, 'carriers/fedex/handling_type', 'F'),
	(140, 'default', 0, 'carriers/fedex/handling_action', 'O'),
	(141, 'default', 0, 'carriers/fedex/handling_fee', NULL),
	(142, 'default', 0, 'carriers/fedex/residence_delivery', '0'),
	(143, 'default', 0, 'carriers/fedex/allowed_methods', 'EUROPE_FIRST_INTERNATIONAL_PRIORITY,FEDEX_1_DAY_FREIGHT,FEDEX_2_DAY_FREIGHT,FEDEX_2_DAY,FEDEX_2_DAY_AM,FEDEX_3_DAY_FREIGHT,FEDEX_EXPRESS_SAVER,FEDEX_GROUND,FIRST_OVERNIGHT,GROUND_HOME_DELIVERY,INTERNATIONAL_ECONOMY,INTERNATIONAL_ECONOMY_FREIGHT,INTERNATIONAL_FIRST,INTERNATIONAL_GROUND,INTERNATIONAL_PRIORITY,INTERNATIONAL_PRIORITY_FREIGHT,PRIORITY_OVERNIGHT,SMART_POST,STANDARD_OVERNIGHT,FEDEX_FREIGHT,FEDEX_NATIONAL_FREIGHT'),
	(144, 'default', 0, 'carriers/fedex/smartpost_hubid', NULL),
	(145, 'default', 0, 'carriers/fedex/free_method', 'FEDEX_GROUND'),
	(146, 'default', 0, 'carriers/fedex/free_shipping_enable', '0'),
	(147, 'default', 0, 'carriers/fedex/free_shipping_subtotal', NULL),
	(148, 'default', 0, 'carriers/fedex/specificerrmsg', 'This shipping method is currently unavailable. If you would like to ship using this shipping method, please contact us.'),
	(149, 'default', 0, 'carriers/fedex/sallowspecific', '0'),
	(150, 'default', 0, 'carriers/fedex/specificcountry', NULL),
	(151, 'default', 0, 'carriers/fedex/debug', '0'),
	(152, 'default', 0, 'carriers/fedex/showmethod', '0'),
	(153, 'default', 0, 'carriers/fedex/sort_order', NULL),
	(154, 'default', 0, 'carriers/dhl/active', '0'),
	(155, 'default', 0, 'carriers/dhl/gateway_url', 'https://eCommerce.airborne.com/ApiLandingTest.asp'),
	(156, 'default', 0, 'carriers/dhl/title', 'DHL (Deprecated)'),
	(157, 'default', 0, 'carriers/dhl/id', NULL),
	(158, 'default', 0, 'carriers/dhl/password', NULL),
	(159, 'default', 0, 'carriers/dhl/account', NULL),
	(160, 'default', 0, 'carriers/dhl/shipping_key', NULL),
	(161, 'default', 0, 'carriers/dhl/shipping_intlkey', NULL),
	(162, 'default', 0, 'carriers/dhl/shipment_requesttype', '0'),
	(163, 'default', 0, 'carriers/dhl/shipment_type', 'P'),
	(164, 'default', 0, 'carriers/dhl/handling_type', 'F'),
	(165, 'default', 0, 'carriers/dhl/handling_action', 'O'),
	(166, 'default', 0, 'carriers/dhl/contentdesc', 'Big Box'),
	(167, 'default', 0, 'carriers/dhl/handling_fee', NULL),
	(168, 'default', 0, 'carriers/dhl/max_package_weight', '150'),
	(169, 'default', 0, 'carriers/dhl/dutiable', '0'),
	(170, 'default', 0, 'carriers/dhl/dutypaymenttype', 'R'),
	(171, 'default', 0, 'carriers/dhl/allowed_methods', 'IE,E SAT,E 10:30AM,E,N,S,G'),
	(172, 'default', 0, 'carriers/dhl/specificerrmsg', 'This shipping method is currently unavailable. If you would like to ship using this shipping method, please contact us.'),
	(173, 'default', 0, 'carriers/dhl/free_method', 'G'),
	(174, 'default', 0, 'carriers/dhl/free_shipping_enable', '0'),
	(175, 'default', 0, 'carriers/dhl/free_shipping_subtotal', NULL),
	(176, 'default', 0, 'carriers/dhl/additional_protection_enabled', '0'),
	(177, 'default', 0, 'carriers/dhl/additional_protection_min_value', NULL),
	(178, 'default', 0, 'carriers/dhl/additional_protection_use_subtotal', '0'),
	(179, 'default', 0, 'carriers/dhl/additional_protection_value', NULL),
	(180, 'default', 0, 'carriers/dhl/additional_protection_rounding', '0'),
	(181, 'default', 0, 'carriers/dhl/hazardous_materials', '0'),
	(182, 'default', 0, 'carriers/dhl/default_length', NULL),
	(183, 'default', 0, 'carriers/dhl/default_width', NULL),
	(184, 'default', 0, 'carriers/dhl/default_height', NULL),
	(185, 'default', 0, 'carriers/dhl/shipment_days', 'Mon,Tue,Wed,Thu,Fri,Sat'),
	(186, 'default', 0, 'carriers/dhl/intl_shipment_days', 'Mon,Tue,Wed,Thu,Fri'),
	(187, 'default', 0, 'carriers/dhl/sallowspecific', '0'),
	(188, 'default', 0, 'carriers/dhl/specificcountry', NULL),
	(189, 'default', 0, 'carriers/dhl/showmethod', '0'),
	(190, 'default', 0, 'carriers/dhl/debug', '0'),
	(191, 'default', 0, 'carriers/dhl/sort_order', NULL),
	(192, 'default', 0, 'carriers/dhlint/active', '0'),
	(193, 'default', 0, 'carriers/dhlint/title', 'DHL'),
	(194, 'default', 0, 'carriers/dhlint/gateway_url', 'https://xmlpi-ea.dhl.com/XMLShippingServlet'),
	(195, 'default', 0, 'carriers/dhlint/id', NULL),
	(196, 'default', 0, 'carriers/dhlint/password', NULL),
	(197, 'default', 0, 'carriers/dhlint/account', NULL),
	(198, 'default', 0, 'carriers/dhlint/content_type', 'D'),
	(199, 'default', 0, 'carriers/dhlint/handling_type', 'F'),
	(200, 'default', 0, 'carriers/dhlint/handling_action', 'O'),
	(201, 'default', 0, 'carriers/dhlint/handling_fee', NULL),
	(202, 'default', 0, 'carriers/dhlint/divide_order_weight', '1'),
	(203, 'default', 0, 'carriers/dhlint/unit_of_measure', 'K'),
	(204, 'default', 0, 'carriers/dhlint/size', '0'),
	(205, 'default', 0, 'carriers/dhlint/doc_methods', '2,5,6,7,9,B,C,D,U,K,L,G,W,I,N,O,R,S,T,X'),
	(206, 'default', 0, 'carriers/dhlint/ready_time', NULL),
	(207, 'default', 0, 'carriers/dhlint/specificerrmsg', 'This shipping method is currently unavailable. If you would like to ship using this shipping method, please contact us.'),
	(208, 'default', 0, 'carriers/dhlint/free_method_doc', NULL),
	(209, 'default', 0, 'carriers/dhlint/free_shipping_enable', '0'),
	(210, 'default', 0, 'carriers/dhlint/free_shipping_subtotal', NULL),
	(211, 'default', 0, 'carriers/dhlint/sallowspecific', '0'),
	(212, 'default', 0, 'carriers/dhlint/specificcountry', NULL),
	(213, 'default', 0, 'carriers/dhlint/showmethod', '0'),
	(214, 'default', 0, 'carriers/dhlint/debug', '0'),
	(215, 'default', 0, 'carriers/dhlint/sort_order', NULL),
	(216, 'stores', 1, 'carriers/asg_star/title', 'Зіркова доставка'),
	(217, 'stores', 1, 'payment/asg_kasa/title', 'Каса');
/*!40000 ALTER TABLE `core_config_data` ENABLE KEYS */;

-- Dumping structure for table magento.core_email_queue
CREATE TABLE IF NOT EXISTS `core_email_queue` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Message Id',
  `entity_id` int(10) unsigned DEFAULT NULL COMMENT 'Entity ID',
  `entity_type` varchar(128) DEFAULT NULL COMMENT 'Entity Type',
  `event_type` varchar(128) DEFAULT NULL COMMENT 'Event Type',
  `message_body_hash` varchar(64) NOT NULL COMMENT 'Message Body Hash',
  `message_body` mediumtext NOT NULL COMMENT 'Message Body',
  `message_parameters` text NOT NULL COMMENT 'Message Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `processed_at` timestamp NULL DEFAULT NULL COMMENT 'Finish Time',
  PRIMARY KEY (`message_id`),
  KEY `0ADECE62FD629241C147389ADF20706E` (`entity_id`,`entity_type`,`event_type`,`message_body_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Email Queue';

-- Dumping data for table magento.core_email_queue: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_email_queue` DISABLE KEYS */;
INSERT INTO `core_email_queue` (`message_id`, `entity_id`, `entity_type`, `event_type`, `message_body_hash`, `message_body`, `message_parameters`, `created_at`, `processed_at`) VALUES
	(1, 9, 'order', 'new_order', '51ce10c1a95ff1b1db3bb51fa9efbedb', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">\n<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #EBEBEB;">\n<head>\n<meta http-equiv="Content-Type" content="text/html; charset=utf-8">\n<meta name="viewport" content="initial-scale=1.0, width=device-width">\n</head>\n<body style="font-family: Verdana, Arial; font-weight: normal; margin: 0; padding: 0; text-align: left; color: #333333; background-color: #EBEBEB; -webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%; background: #EBEBEB; font-size: 12px;">\n<style type="text/css">\n/*\r\n// ----------------------------------------------\r\n// Usage example:\r\n// For IE set $mq-support to false.\r\n// Set the fixed value.\r\n// Then use mixins to test whether styles should be applied.\r\n// ----------------------------------------------\r\n\r\n$mq-support: false;\r\n$mq-fixed-value: 1024;\r\n\r\n// Renders at fixed value\r\n@include bp (min-width, 300px) { \r\n    div { color:#000; }\r\n}\r\n\r\n// Doesn\'t render without MQ support\r\n@include bp (min-width, 1200px) { \r\n    div { color:#FFF; }\r\n}\r\n\r\n// Doesn\'t render without MQ support\r\n@include bp (max-width, 300px) { \r\n    div { color:#444; }\r\n}\r\n\r\n// Renders at fixed value\r\n@include bp (max-width, 1200px) { \r\n    div { color:#888; }\r\n}\r\n\r\n// ----------------------------------------------\r\n*/\r\n/* Font Styles */\r\n@import url(http://fonts.googleapis.com/css?family=Raleway:400,500,700);\r\n/* Media Queries */\r\n/* Setting the Web Font inside a media query so that Outlook doesn\'t try to render the web font */\r\n@media screen {\r\n  .email-heading h1,\r\n  .store-info h4,\r\n  th.cell-name,\r\n  a.product-name,\r\n  p.product-name,\r\n  .address-details h6,\r\n  .method-info h6,\r\n  h5.closing-text,\r\n  .action-button,\r\n  .action-button a,\r\n  .action-button span,\r\n  .action-content h1 {\r\n    font-family: \'Raleway\', Verdana, Arial !important;\r\n    font-weight: normal;\r\n  }\r\n}\r\n@media screen and (max-width: 600px) {\r\n  body {\r\n    width: 94% !important;\r\n    padding: 0 3% !important;\r\n    display: block !important;\r\n  }\r\n\r\n  .container-table {\r\n    width: 100% !important;\r\n    max-width: 600px;\r\n    min-width: 300px;\r\n  }\r\n\r\n  td.store-info h4 {\r\n    margin-top: 8px !important;\r\n    margin-bottom: 0px !important;\r\n  }\r\n\r\n  td.store-info p {\r\n    margin: 5px 0 !important;\r\n  }\r\n\r\n  .wrapper {\r\n    width: 100% !important;\r\n    display: block;\r\n    padding: 5px 0 !important;\r\n  }\r\n\r\n  .cell-name,\r\n  .cell-content {\r\n    padding: 8px !important;\r\n  }\r\n}\r\n@media screen and (max-width: 450px) {\r\n  .email-heading,\r\n  .store-info {\r\n    float: left;\r\n    width: 98% !important;\r\n    display: block;\r\n    text-align: center;\r\n    padding: 10px 1% !important;\r\n    border-right: 0px !important;\r\n  }\r\n\r\n  .address-details, .method-info {\r\n    width: 85%;\r\n    display: block;\r\n  }\r\n\r\n  .store-info {\r\n    border-top: 1px dashed #C3CED4;\r\n  }\r\n\r\n  .method-info {\r\n    margin-bottom: 15px !important;\r\n  }\r\n}\r\n/* Remove link color on iOS */\r\n.no-link a {\r\n  color: #333333 !important;\r\n  cursor: default !important;\r\n  text-decoration: none !important;\r\n}\r\n\r\n.method-info h6,\r\n.address-details h6,\r\n.closing-text {\r\n  color: #3696C2 !important;\r\n}\r\n\r\ntd.order-details h3,\r\ntd.store-info h4 {\r\n  color: #333333 !important;\r\n}\r\n\r\n.method-info p,\r\n.method-info dl {\r\n  margin: 5px 0 !important;\r\n  font-size: 12px !important;\r\n}\r\n\r\ntd.align-center {\r\n  text-align: center !important;\r\n}\r\n\r\ntd.align-right {\r\n  text-align: right !important;\r\n}\r\n\r\n/* Newsletter styles */\r\ntd.expander {\r\n  padding: 0 !important;\r\n}\r\n\r\ntable.button td,\r\ntable.social-button td {\r\n  width: 92% !important;\r\n}\r\n\r\ntable.facebook:hover td {\r\n  background: #2d4473 !important;\r\n}\r\n\r\ntable.twitter:hover td {\r\n  background: #0087bb !important;\r\n}\r\n\r\ntable.google-plus:hover td {\r\n  background: #CC0000 !important;\r\n}\r\n\r\n/* ============================================ *\r\n * Product Grid\r\n * ============================================ */\r\n@media screen and (max-width: 600px) {\r\n  .products-grid tr td {\r\n    width: 50% !important;\r\n    display: block !important;\r\n    float: left !important;\r\n  }\r\n}\r\n.product-name a:hover {\r\n  color: #3399CC !important;\r\n  text-decoration: none !important;\r\n}\r\n\n\n</style>\n<!-- Begin wrapper table --><table width="100%" cellpadding="0" cellspacing="0" border="0" id="background-table" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse; padding: 0; margin: 0 auto; background-color: #EBEBEB; font-size: 12px;"><tr>\n<td valign="top" class="container-td" align="center" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 0; margin: 0; width: 100%;">\n            <table cellpadding="0" cellspacing="0" border="0" align="center" class="container-table" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse; padding: 0; margin: 0 auto; width: 600px;">\n<tr>\n<td style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 0; margin: 0;">\n                        <table cellpadding="0" cellspacing="0" border="0" class="logo-container" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse; padding: 0; margin: 0; width: 100%;"><tr>\n<td class="logo" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 15px 0px 10px 5px; margin: 0;">\n                                    <a href="http://mag.dev/index.php/" style="color: #3696C2; float: left; display: block;">\n                                        <img width="165" height="48" src="http://mag.dev/skin/frontend/rwd/default/images/logo_email.gif" alt="Main Website Store" border="0" style="-ms-interpolation-mode: bicubic; outline: none; text-decoration: none;"></a>\n                                </td>\n                            </tr></table>\n</td>\n                </tr>\n<tr>\n<td valign="top" class="top-content" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 5px; margin: 0; border: 1px solid #EBEBEB; background: #FFF;">\n                    <!-- Begin Content -->\n\n\n\n<table cellpadding="0" cellspacing="0" border="0" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse; padding: 0; margin: 0; width: 100%;">\n<tr>\n<td style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 0; margin: 0;">\n            <table cellpadding="0" cellspacing="0" border="0" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse; padding: 0; margin: 0;"><tr>\n<td class="email-heading" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 0 1%; margin: 0; background: #E1F0F8; border-right: 1px dashed #C3CED4; text-align: center; width: 58%;">\n                        <h1 style="font-family: Verdana, Arial; font-weight: 700; font-size: 16px; margin: 1em 0; line-height: 20px; text-transform: uppercase; margin-top: 25px;">Thank you for your order from Main Website Store.</h1>\n                        <p style="font-family: Verdana, Arial; font-weight: normal; line-height: 20px; margin: 1em 0;">Once your package ships we will send an email with a link to track your order. Your order summary is below. Thank you again for your business.</p>\n                    </td>\n                    <td class="store-info" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 2%; margin: 0; background: #E1F0F8; width: 40%;">\n                        <h4 style="font-family: Verdana, Arial; font-weight: bold; margin-bottom: 5px; font-size: 12px; margin-top: 13px;">Order Questions?</h4>\n                        <p style="font-family: Verdana, Arial; font-weight: normal; font-size: 11px; line-height: 17px; margin: 1em 0;">\n                            \n                            \n                            \n                            <b>Email:</b> <a href="mailto:support@example.com" style="color: #3696C2; text-decoration: underline;">support@example.com</a>\n                            \n                        </p>\n                    </td>\n                </tr></table>\n</td>\n    </tr>\n<tr>\n<td class="order-details" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 5px 15px; margin: 0; text-align: center;">\n            <h3 style="font-family: Verdana, Arial; font-weight: normal; font-size: 17px; margin-bottom: 10px; margin-top: 15px;">Your order <span class="no-link">#100000011</span>\n</h3>\n            <p style="font-family: Verdana, Arial; font-weight: normal; font-size: 11px; margin: 1em 0 15px;">Placed on 29 грудня 2017 р. 00:52:13 PST</p>\n        </td>\n    </tr>\n<tr class="order-information"><td style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 0; margin: 0;">\n            \n            \n\n            </td></tr>\n<tr>\n<td style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 0; margin: 0;">\n            <table class="items" cellpadding="0" cellspacing="0" border="0" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse; padding: 10px 15px; margin: 0; width: 100%;">\n<thead><tr>\n<th class="cell-name" style="font-family: Verdana, Arial; font-weight: 700; padding: 10px 15px; background: #F1F1F1; text-transform: uppercase; text-align: left; font-size: 11px;">\n                                                            Items in your order                                                    </th>\n                        <th class="cell-name align-center" style="font-family: Verdana, Arial; font-weight: 700; padding: 10px 15px; background: #F1F1F1; text-transform: uppercase; text-align: center; font-size: 11px;">\n                            Qty                        </th>\n                        <th class="cell-name align-right" style="font-family: Verdana, Arial; font-weight: 700; padding: 10px 15px; background: #F1F1F1; text-transform: uppercase; text-align: right; font-size: 11px;">\n                            Price                        </th>\n                    </tr></thead>\n<tbody><tr>\n<td class="cell-content product-info" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px; margin: 0; border-top: 1px solid #EBEBEB; text-align: left;">\n        <p class="product-name" style="font-family: Verdana, Arial; font-weight: bold; margin: 0 0 5px 0; color: #636363; font-style: normal; text-rendering: optimizeLegibility; text-transform: uppercase; line-height: 1.4; font-size: 14px; float: left; width: 100%; display: block;">Кава</p>\n        <p class="sku" style="font-family: Verdana, Arial; font-weight: normal; margin: 0 0 5px; float: left; width: 100%; display: block;">SKU: drink</p>\n                                                                                                            </td>\n            <td class="cell-content align-center" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px; margin: 0; border-top: 1px solid #EBEBEB;">1</td>\n            <td class="cell-content align-right" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px; margin: 0; border-top: 1px solid #EBEBEB;">\n                                                                                <span class="price" style=\'font-family: "Helvetica Neue", Verdana, Arial, sans-serif;\'>10,00 USD</span>                    \n\n                                    \n\n                            </td>\n        </tr></tbody>\n<tbody><tr>\n<td class="cell-content product-info" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px; margin: 0; border-top: 1px solid #EBEBEB; text-align: left;">\n        <p class="product-name" style="font-family: Verdana, Arial; font-weight: bold; margin: 0 0 5px 0; color: #636363; font-style: normal; text-rendering: optimizeLegibility; text-transform: uppercase; line-height: 1.4; font-size: 14px; float: left; width: 100%; display: block;">Чай</p>\n        <p class="sku" style="font-family: Verdana, Arial; font-weight: normal; margin: 0 0 5px; float: left; width: 100%; display: block;">SKU: tea</p>\n                                                                                                            </td>\n            <td class="cell-content align-center" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px; margin: 0; border-top: 1px solid #EBEBEB;">1</td>\n            <td class="cell-content align-right" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px; margin: 0; border-top: 1px solid #EBEBEB;">\n                                                                                <span class="price" style=\'font-family: "Helvetica Neue", Verdana, Arial, sans-serif;\'>7,00 USD</span>                    \n\n                                    \n\n                            </td>\n        </tr></tbody>\n</table>\n</td>\n    </tr>\n<tr>\n<td style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 0; margin: 0;">\n            <table class="table-totals" cellpadding="0" cellspacing="0" border="0" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse; padding: 0; margin: 0; width: 100%; background: #E1F0F8;"><tr>\n<td class="padding-totals" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 20px 15px; margin: 0; text-align: right; line-height: 20px;">\n            <table cellpadding="0" cellspacing="0" border="0" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse; padding: 0; margin: 0; width: 100%;">\n<tr class="subtotal">\n<td colspan="3" align="right" style="padding: 3px 9px; font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; margin: 0;">\n                        Subtotal                    </td>\n        <td align="right" style="padding: 3px 9px; font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; margin: 0;">\n                        <span class="price" style=\'font-family: "Helvetica Neue", Verdana, Arial, sans-serif;\'>17,00 USD</span>                    </td>\n    </tr>\n<tr class="shipping" style="padding-bottom: 5px;">\n<td colspan="3" align="right" style="padding: 3px 9px; font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; margin: 0;">\n                        Shipping &amp; Handling                    </td>\n        <td align="right" style="padding: 3px 9px; font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; margin: 0;">\n                        <span class="price" style=\'font-family: "Helvetica Neue", Verdana, Arial, sans-serif;\'>0,85 USD</span>                    </td>\n    </tr>\n<tr class="discount">\n<td colspan="3" align="right" style="padding: 3px 9px; font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; margin: 0;">\n                        Discount                    </td>\n        <td align="right" style="padding: 3px 9px; font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; margin: 0;">\n                        <span class="price" style=\'font-family: "Helvetica Neue", Verdana, Arial, sans-serif;\'>-1,70 USD</span>                    </td>\n    </tr>\n<tr class="grand_total">\n<td colspan="3" align="right" style="padding: 3px 9px; font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; margin: 0;">\n                        <strong style="font-family: Verdana, Arial; font-weight: normal;">Grand Total</strong>\n                    </td>\n        <td align="right" style="padding: 3px 9px; font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; margin: 0;">\n                        <strong style="font-family: Verdana, Arial; font-weight: normal;"><span class="price" style=\'font-family: "Helvetica Neue", Verdana, Arial, sans-serif;\'>17,15 USD</span></strong>\n                    </td>\n    </tr>\n</table>\n</td>\n    </tr></table>\n</td>\n    </tr>\n<table cellpadding="0" cellspacing="0" border="0" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; border-collapse: collapse; padding: 0; margin: 0;">\n<tr>\n<td class="address-details" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px 0; margin: 0; padding-top: 10px; text-align: left;">\n                        <h6 style="font-family: Verdana, Arial; font-weight: 700; font-size: 12px; margin-bottom: 0px; margin-top: 5px; text-transform: uppercase;">Bill to:</h6>\n                        <p style="font-family: Verdana, Arial; font-weight: normal; font-size: 12px; line-height: 18px; margin-bottom: 15px; margin-top: 2px;"><span class="no-link">Mike Middle Last<br>\nTSG<br>\nStreet<br>\n\n\n\nuzh,  Armed Forces Europe, 7777<br>\nСША<br>\nT: +380851122333\n\n</span></p>\n                    </td>\n                    \n                    <td class="address-details" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px 0; margin: 0; padding-top: 10px; text-align: left;">\n                        <h6 style="font-family: Verdana, Arial; font-weight: 700; font-size: 12px; margin-bottom: 0px; margin-top: 5px; text-transform: uppercase;">Ship to:</h6>\n                        <p style="font-family: Verdana, Arial; font-weight: normal; font-size: 12px; line-height: 18px; margin-bottom: 15px; margin-top: 2px;"><span class="no-link">Mike Middle Last<br>\nTSG<br>\nStreet<br>\n\n\n\nuzh,  Armed Forces Europe, 7777<br>\nСША<br>\nT: +380851122333\n\n</span></p>\n                    </td>\n                    \n                </tr>\n<tr>\n<td class="method-info" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px 0; margin: 0; text-align: left; padding-bottom: 10px;">\n                        <h6 style="font-family: Verdana, Arial; font-weight: 700; text-align: left; font-size: 12px; margin-bottom: 0px; margin-top: 5px; text-transform: uppercase;">Shipping method:</h6>\n                        <p style="font-family: Verdana, Arial; font-weight: normal; text-align: left; font-size: 12px; margin-top: 2px; margin-bottom: 30px; line-height: 18px; padding: 0;">Зіркова доставка - Швидше ніж Довго (до 5 днів)</p>\n                    </td>\n                    \n                    <td class="method-info" style="font-family: Verdana, Arial; font-weight: normal; border-collapse: collapse; vertical-align: top; padding: 10px 15px 0; margin: 0; text-align: left; padding-bottom: 10px;">\n                        <h6 style="font-family: Verdana, Arial; font-weight: 700; text-align: left; font-size: 12px; margin-bottom: 0px; margin-top: 5px; text-transform: uppercase;">Payment method:</h6>\n                        <p class="subtitle" style="font-family: Verdana, Arial; font-weight: normal; text-align: left; font-size: 12px; margin-top: 2px; margin-bottom: 30px; line-height: 18px; padding: 0;"><strong style="font-family: Verdana, Arial; font-weight: normal; text-align: left;">Каса</strong></p>\n\n\n\n                    </td>\n                </tr>\n</table>\n</table>\n<!-- End Content -->\n</td>\n                </tr>\n</table>\n<h5 class="closing-text" style="font-family: Verdana, Arial; font-weight: normal; text-align: center; font-size: 22px; line-height: 32px; margin-bottom: 75px; margin-top: 30px;">Thank you, Main Website Store!</h5>\n        </td>\n    </tr></table>\n<!-- End wrapper table -->\n</body>\n</html>\n', 'a:7:{s:7:"subject";s:41:"Main Website Store: New Order # 100000011";s:17:"return_path_email";N;s:8:"is_plain";b:0;s:10:"from_email";s:17:"sales@example.com";s:9:"from_name";s:5:"Sales";s:8:"reply_to";N;s:9:"return_to";N;}', '2017-12-29 08:52:15', NULL);
/*!40000 ALTER TABLE `core_email_queue` ENABLE KEYS */;

-- Dumping structure for table magento.core_email_queue_recipients
CREATE TABLE IF NOT EXISTS `core_email_queue_recipients` (
  `recipient_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Recipient Id',
  `message_id` int(10) unsigned NOT NULL COMMENT 'Message ID',
  `recipient_email` varchar(128) NOT NULL COMMENT 'Recipient Email',
  `recipient_name` varchar(255) NOT NULL COMMENT 'Recipient Name',
  `email_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Email Type',
  PRIMARY KEY (`recipient_id`),
  UNIQUE KEY `19BDB9C5FE4BD685FCF992A71E976CD0` (`message_id`,`recipient_email`,`email_type`),
  KEY `IDX_CORE_EMAIL_QUEUE_RECIPIENTS_RECIPIENT_EMAIL` (`recipient_email`),
  KEY `IDX_CORE_EMAIL_QUEUE_RECIPIENTS_EMAIL_TYPE` (`email_type`),
  CONSTRAINT `FK_6F4948F3ABF97DE12127EF14B140802A` FOREIGN KEY (`message_id`) REFERENCES `core_email_queue` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Email Queue';

-- Dumping data for table magento.core_email_queue_recipients: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_email_queue_recipients` DISABLE KEYS */;
INSERT INTO `core_email_queue_recipients` (`recipient_id`, `message_id`, `recipient_email`, `recipient_name`, `email_type`) VALUES
	(1, 1, 'user@gmail.com', 'Mike Middle Last', 0);
/*!40000 ALTER TABLE `core_email_queue_recipients` ENABLE KEYS */;

-- Dumping structure for table magento.core_email_template
CREATE TABLE IF NOT EXISTS `core_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `UNQ_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates';

-- Dumping data for table magento.core_email_template: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_email_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_email_template` ENABLE KEYS */;

-- Dumping structure for table magento.core_flag
CREATE TABLE IF NOT EXISTS `core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `IDX_CORE_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Flag';

-- Dumping data for table magento.core_flag: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_flag` DISABLE KEYS */;
INSERT INTO `core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
	(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2017-11-28 10:56:59'),
	(2, 'catalog_product_flat', 0, 'a:2:{s:8:"is_built";b:1;s:16:"is_store_built_1";b:1;}', '2017-11-30 15:46:16');
/*!40000 ALTER TABLE `core_flag` ENABLE KEYS */;

-- Dumping structure for table magento.core_layout_link
CREATE TABLE IF NOT EXISTS `core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `UNQ_CORE_LAYOUT_LINK_STORE_ID_PACKAGE_THEME_LAYOUT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`),
  CONSTRAINT `FK_CORE_LAYOUT_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_LYT_LNK_LYT_UPDATE_ID_CORE_LYT_UPDATE_LYT_UPDATE_ID` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link';

-- Dumping data for table magento.core_layout_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_layout_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_layout_link` ENABLE KEYS */;

-- Dumping structure for table magento.core_layout_update
CREATE TABLE IF NOT EXISTS `core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`layout_update_id`),
  KEY `IDX_CORE_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates';

-- Dumping data for table magento.core_layout_update: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_layout_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_layout_update` ENABLE KEYS */;

-- Dumping structure for table magento.core_resource
CREATE TABLE IF NOT EXISTS `core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

-- Dumping data for table magento.core_resource: ~58 rows (approximately)
/*!40000 ALTER TABLE `core_resource` DISABLE KEYS */;
INSERT INTO `core_resource` (`code`, `version`, `data_version`) VALUES
	('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
	('admin_setup', '1.6.1.2', '1.6.1.2'),
	('api2_setup', '1.0.0.0', '1.0.0.0'),
	('api_setup', '1.6.0.1', '1.6.0.1'),
	('asgcsv_setup', '0.0.1', '0.0.1'),
	('asgipci_setup', '0.0.1', '0.0.1'),
	('asgnews_setup', '0.0.1', '0.0.1'),
	('asg_advertising_setup', '0.0.1', '0.0.1'),
	('asg_kasa_setup', '0.0.1', '0.0.1'),
	('backup_setup', '1.6.0.0', '1.6.0.0'),
	('bundle_setup', '1.6.0.0.1', '1.6.0.0.1'),
	('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
	('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
	('cataloginventory_setup', '1.6.0.0.2', '1.6.0.0.2'),
	('catalogrule_setup', '1.6.0.3', '1.6.0.3'),
	('catalogsearch_setup', '1.8.2.0', '1.8.2.0'),
	('catalog_setup', '1.6.0.0.19.1.2', '1.6.0.0.19.1.2'),
	('checkout_setup', '1.6.0.0', '1.6.0.0'),
	('cms_setup', '1.6.0.0.2', '1.6.0.0.2'),
	('compiler_setup', '1.6.0.0', '1.6.0.0'),
	('contacts_setup', '1.6.0.0', '1.6.0.0'),
	('core_setup', '1.6.0.6', '1.6.0.6'),
	('cron_setup', '1.6.0.0', '1.6.0.0'),
	('customer_setup', '1.6.2.0.4', '1.6.2.0.4'),
	('dataflow_setup', '1.6.0.0', '1.6.0.0'),
	('directory_setup', '1.6.0.3', '1.6.0.3'),
	('downloadable_setup', '1.6.0.0.2', '1.6.0.0.2'),
	('eav_setup', '1.6.0.1', '1.6.0.1'),
	('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
	('googleanalytics_setup', '1.6.0.0', '1.6.0.0'),
	('importexport_setup', '1.6.0.2', '1.6.0.2'),
	('index_setup', '1.6.0.0', '1.6.0.0'),
	('log_setup', '1.6.1.1', '1.6.1.1'),
	('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
	('newsletter_setup', '1.6.0.2', '1.6.0.2'),
	('oauth_setup', '1.0.0.0', '1.0.0.0'),
	('paygate_setup', '1.6.0.0', '1.6.0.0'),
	('payment_setup', '1.6.0.0', '1.6.0.0'),
	('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
	('paypal_setup', '1.6.0.6', '1.6.0.6'),
	('persistent_setup', '1.0.0.0', '1.0.0.0'),
	('poll_setup', '1.6.0.1', '1.6.0.1'),
	('productalert_setup', '1.6.0.0', '1.6.0.0'),
	('rating_setup', '1.6.0.1', '1.6.0.1'),
	('reports_setup', '1.6.0.0.1', '1.6.0.0.1'),
	('review_setup', '1.6.0.0', '1.6.0.0'),
	('salesrule_setup', '1.6.0.3', '1.6.0.3'),
	('sales_setup', '1.6.0.9', '1.6.0.9'),
	('sendfriend_setup', '1.6.0.1', '1.6.0.1'),
	('shipping_setup', '1.6.0.0', '1.6.0.0'),
	('sitemap_setup', '1.6.0.0', '1.6.0.0'),
	('tag_setup', '1.6.0.0', '1.6.0.0'),
	('tax_setup', '1.6.0.4', '1.6.0.4'),
	('tsg_quotes_setup', '0.2.0', '0.2.0'),
	('usa_setup', '1.6.0.3', '1.6.0.3'),
	('weee_setup', '1.6.0.0', '1.6.0.0'),
	('widget_setup', '1.6.0.0', '1.6.0.0'),
	('wishlist_setup', '1.6.0.0', '1.6.0.0');
/*!40000 ALTER TABLE `core_resource` ENABLE KEYS */;

-- Dumping structure for table magento.core_session
CREATE TABLE IF NOT EXISTS `core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

-- Dumping data for table magento.core_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_session` ENABLE KEYS */;

-- Dumping structure for table magento.core_store
CREATE TABLE IF NOT EXISTS `core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UNQ_CORE_STORE_CODE` (`code`),
  KEY `IDX_CORE_STORE_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `IDX_CORE_STORE_GROUP_ID` (`group_id`),
  CONSTRAINT `FK_CORE_STORE_GROUP_ID_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_STORE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores';

-- Dumping data for table magento.core_store: ~2 rows (approximately)
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
	(0, 'admin', 0, 0, 'Admin', 0, 1),
	(1, 'default', 1, 1, 'Default Store View', 0, 1);
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;

-- Dumping structure for table magento.core_store_group
CREATE TABLE IF NOT EXISTS `core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `IDX_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `IDX_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`),
  CONSTRAINT `FK_CORE_STORE_GROUP_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Store Groups';

-- Dumping data for table magento.core_store_group: ~2 rows (approximately)
/*!40000 ALTER TABLE `core_store_group` DISABLE KEYS */;
INSERT INTO `core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
	(0, 0, 'Default', 0, 0),
	(1, 1, 'Main Website Store', 2, 1);
/*!40000 ALTER TABLE `core_store_group` ENABLE KEYS */;

-- Dumping structure for table magento.core_translate
CREATE TABLE IF NOT EXISTS `core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  KEY `IDX_CORE_TRANSLATE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CORE_TRANSLATE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations';

-- Dumping data for table magento.core_translate: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_translate` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_translate` ENABLE KEYS */;

-- Dumping structure for table magento.core_url_rewrite
CREATE TABLE IF NOT EXISTS `core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  KEY `IDX_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  KEY `IDX_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  KEY `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  KEY `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` (`product_id`),
  CONSTRAINT `FK_CORE_URL_REWRITE_CTGR_ID_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_URL_REWRITE_PRODUCT_ID_CATALOG_CATEGORY_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_URL_REWRITE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='Url Rewrites';

-- Dumping data for table magento.core_url_rewrite: ~7 rows (approximately)
/*!40000 ALTER TABLE `core_url_rewrite` DISABLE KEYS */;
INSERT INTO `core_url_rewrite` (`url_rewrite_id`, `store_id`, `id_path`, `request_path`, `target_path`, `is_system`, `options`, `description`, `category_id`, `product_id`) VALUES
	(1, 1, 'product/1', 'kava.html', 'catalog/product/view/id/1', 1, NULL, NULL, NULL, 1),
	(2, 1, 'product/2', 'chaj.html', 'catalog/product/view/id/2', 1, NULL, NULL, NULL, 2),
	(3, 1, 'product/3', 'sik.html', 'catalog/product/view/id/3', 1, NULL, NULL, NULL, 3),
	(71, 1, 'category/3', 'main.html', 'catalog/category/view/id/3', 1, NULL, NULL, 3, NULL),
	(73, 1, 'product/1/3', 'main/kava.html', 'catalog/product/view/id/1/category/3', 1, NULL, NULL, 3, 1),
	(75, 1, 'product/2/3', 'main/chaj.html', 'catalog/product/view/id/2/category/3', 1, NULL, NULL, 3, 2),
	(77, 1, 'product/3/3', 'main/sik.html', 'catalog/product/view/id/3/category/3', 1, NULL, NULL, 3, 3);
/*!40000 ALTER TABLE `core_url_rewrite` ENABLE KEYS */;

-- Dumping structure for table magento.core_variable
CREATE TABLE IF NOT EXISTS `core_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables';

-- Dumping data for table magento.core_variable: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_variable` ENABLE KEYS */;

-- Dumping structure for table magento.core_variable_value
CREATE TABLE IF NOT EXISTS `core_variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  KEY `IDX_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_CORE_VARIABLE_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CORE_VARIABLE_VALUE_VARIABLE_ID_CORE_VARIABLE_VARIABLE_ID` FOREIGN KEY (`variable_id`) REFERENCES `core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value';

-- Dumping data for table magento.core_variable_value: ~0 rows (approximately)
/*!40000 ALTER TABLE `core_variable_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_variable_value` ENABLE KEYS */;

-- Dumping structure for table magento.core_website
CREATE TABLE IF NOT EXISTS `core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `UNQ_CORE_WEBSITE_CODE` (`code`),
  KEY `IDX_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `IDX_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Websites';

-- Dumping data for table magento.core_website: ~2 rows (approximately)
/*!40000 ALTER TABLE `core_website` DISABLE KEYS */;
INSERT INTO `core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
	(0, 'admin', 'Admin', 0, 0, 0),
	(1, 'base', 'Main Website', 0, 1, 1);
/*!40000 ALTER TABLE `core_website` ENABLE KEYS */;

-- Dumping structure for table magento.coupon_aggregated
CREATE TABLE IF NOT EXISTS `coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `FK_COUPON_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated';

-- Dumping data for table magento.coupon_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `coupon_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_aggregated` ENABLE KEYS */;

-- Dumping structure for table magento.coupon_aggregated_order
CREATE TABLE IF NOT EXISTS `coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`),
  CONSTRAINT `FK_COUPON_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order';

-- Dumping data for table magento.coupon_aggregated_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `coupon_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_aggregated_order` ENABLE KEYS */;

-- Dumping structure for table magento.coupon_aggregated_updated
CREATE TABLE IF NOT EXISTS `coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_COUPON_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `IDX_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`),
  CONSTRAINT `FK_COUPON_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Updated';

-- Dumping data for table magento.coupon_aggregated_updated: ~0 rows (approximately)
/*!40000 ALTER TABLE `coupon_aggregated_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon_aggregated_updated` ENABLE KEYS */;

-- Dumping structure for table magento.cron_schedule
CREATE TABLE IF NOT EXISTS `cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `IDX_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `IDX_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='Cron Schedule';

-- Dumping data for table magento.cron_schedule: ~30 rows (approximately)
/*!40000 ALTER TABLE `cron_schedule` DISABLE KEYS */;
INSERT INTO `cron_schedule` (`schedule_id`, `job_code`, `status`, `messages`, `created_at`, `scheduled_at`, `executed_at`, `finished_at`) VALUES
	(94, 'core_email_queue_send_all', 'success', NULL, '2017-12-26 10:40:09', '2017-12-26 10:40:00', '2017-12-26 10:40:34', '2017-12-26 10:40:34'),
	(95, 'core_email_queue_send_all', 'success', NULL, '2017-12-26 10:40:09', '2017-12-26 10:41:00', '2017-12-26 10:41:15', '2017-12-26 10:41:15'),
	(96, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:42:00', NULL, NULL),
	(97, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:43:00', NULL, NULL),
	(98, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:44:00', NULL, NULL),
	(99, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:45:00', NULL, NULL),
	(100, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:46:00', NULL, NULL),
	(101, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:47:00', NULL, NULL),
	(102, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:48:00', NULL, NULL),
	(103, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:49:00', NULL, NULL),
	(104, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:50:00', NULL, NULL),
	(105, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:51:00', NULL, NULL),
	(106, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:52:00', NULL, NULL),
	(107, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:53:00', NULL, NULL),
	(108, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:54:00', NULL, NULL),
	(109, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:55:00', NULL, NULL),
	(110, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:56:00', NULL, NULL),
	(111, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:57:00', NULL, NULL),
	(112, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:58:00', NULL, NULL),
	(113, 'core_email_queue_send_all', 'pending', NULL, '2017-12-26 10:40:09', '2017-12-26 10:59:00', NULL, NULL),
	(114, 'captcha_delete_expired_images', 'success', NULL, '2017-12-26 10:40:10', '2017-12-26 10:40:00', '2017-12-26 10:40:34', '2017-12-26 10:40:34'),
	(115, 'captcha_delete_expired_images', 'pending', NULL, '2017-12-26 10:40:10', '2017-12-26 10:50:00', NULL, NULL),
	(116, 'newsletter_send_all', 'success', NULL, '2017-12-26 10:40:10', '2017-12-26 10:40:00', '2017-12-26 10:40:34', '2017-12-26 10:40:34'),
	(117, 'newsletter_send_all', 'pending', NULL, '2017-12-26 10:40:10', '2017-12-26 10:45:00', NULL, NULL),
	(118, 'newsletter_send_all', 'pending', NULL, '2017-12-26 10:40:10', '2017-12-26 10:50:00', NULL, NULL),
	(119, 'newsletter_send_all', 'pending', NULL, '2017-12-26 10:40:10', '2017-12-26 10:55:00', NULL, NULL),
	(120, 'csv_product_image_import', 'success', NULL, '2017-12-26 10:40:10', '2017-12-26 10:40:00', '2017-12-26 10:40:34', '2017-12-26 10:40:34'),
	(121, 'csv_product_image_import', 'pending', NULL, '2017-12-26 10:40:10', '2017-12-26 10:45:00', NULL, NULL),
	(122, 'csv_product_image_import', 'pending', NULL, '2017-12-26 10:40:10', '2017-12-26 10:50:00', NULL, NULL),
	(123, 'csv_product_image_import', 'pending', NULL, '2017-12-26 10:40:10', '2017-12-26 10:55:00', NULL, NULL);
/*!40000 ALTER TABLE `cron_schedule` ENABLE KEYS */;

-- Dumping structure for table magento.customer_address_entity
CREATE TABLE IF NOT EXISTS `customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_CUSTOMER_ADDRESS_ENTITY_PARENT_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity';

-- Dumping data for table magento.customer_address_entity: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity` DISABLE KEYS */;
INSERT INTO `customer_address_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `increment_id`, `parent_id`, `created_at`, `updated_at`, `is_active`) VALUES
	(1, 2, 0, NULL, 1, '2017-12-25 14:08:23', '2017-12-29 08:52:13', 1);
/*!40000 ALTER TABLE `customer_address_entity` ENABLE KEYS */;

-- Dumping structure for table magento.customer_address_entity_datetime
CREATE TABLE IF NOT EXISTS `customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime';

-- Dumping data for table magento.customer_address_entity_datetime: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_address_entity_datetime` ENABLE KEYS */;

-- Dumping structure for table magento.customer_address_entity_decimal
CREATE TABLE IF NOT EXISTS `customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal';

-- Dumping data for table magento.customer_address_entity_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_address_entity_decimal` ENABLE KEYS */;

-- Dumping structure for table magento.customer_address_entity_int
CREATE TABLE IF NOT EXISTS `customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int';

-- Dumping data for table magento.customer_address_entity_int: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_int` DISABLE KEYS */;
INSERT INTO `customer_address_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
	(1, 2, 29, 1, 9);
/*!40000 ALTER TABLE `customer_address_entity_int` ENABLE KEYS */;

-- Dumping structure for table magento.customer_address_entity_text
CREATE TABLE IF NOT EXISTS `customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text';

-- Dumping data for table magento.customer_address_entity_text: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_text` DISABLE KEYS */;
INSERT INTO `customer_address_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
	(1, 2, 25, 1, 'Street');
/*!40000 ALTER TABLE `customer_address_entity_text` ENABLE KEYS */;

-- Dumping structure for table magento.customer_address_entity_varchar
CREATE TABLE IF NOT EXISTS `customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_ID_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ADDR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar';

-- Dumping data for table magento.customer_address_entity_varchar: ~13 rows (approximately)
/*!40000 ALTER TABLE `customer_address_entity_varchar` DISABLE KEYS */;
INSERT INTO `customer_address_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
	(1, 2, 20, 1, 'Mike'),
	(2, 2, 21, 1, 'Middle'),
	(3, 2, 22, 1, 'Last'),
	(4, 2, 24, 1, 'TSG'),
	(5, 2, 26, 1, 'uzh'),
	(6, 2, 27, 1, 'US'),
	(7, 2, 28, 1, 'Armed Forces Europe'),
	(8, 2, 30, 1, '7777'),
	(9, 2, 31, 1, '+380851122333'),
	(10, 2, 32, 1, NULL),
	(11, 2, 19, 1, NULL),
	(12, 2, 23, 1, NULL),
	(13, 2, 36, 1, NULL);
/*!40000 ALTER TABLE `customer_address_entity_varchar` ENABLE KEYS */;

-- Dumping structure for table magento.customer_eav_attribute
CREATE TABLE IF NOT EXISTS `customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  PRIMARY KEY (`attribute_id`),
  CONSTRAINT `FK_CSTR_EAV_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

-- Dumping data for table magento.customer_eav_attribute: ~40 rows (approximately)
/*!40000 ALTER TABLE `customer_eav_attribute` DISABLE KEYS */;
INSERT INTO `customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
	(1, 1, NULL, 0, NULL, 1, 10, NULL),
	(2, 0, NULL, 0, NULL, 1, 0, NULL),
	(3, 1, NULL, 0, NULL, 1, 20, NULL),
	(4, 0, NULL, 0, NULL, 0, 30, NULL),
	(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
	(6, 1, NULL, 0, NULL, 0, 50, NULL),
	(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
	(8, 0, NULL, 0, NULL, 0, 70, NULL),
	(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
	(10, 1, NULL, 0, NULL, 1, 25, NULL),
	(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
	(12, 0, NULL, 0, NULL, 1, 0, NULL),
	(13, 0, NULL, 0, NULL, 1, 0, NULL),
	(14, 0, NULL, 0, NULL, 1, 0, NULL),
	(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
	(16, 0, NULL, 0, NULL, 1, 0, NULL),
	(17, 0, 'datetime', 0, NULL, 0, 0, NULL),
	(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
	(19, 0, NULL, 0, NULL, 0, 10, NULL),
	(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
	(21, 1, NULL, 0, NULL, 0, 30, NULL),
	(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
	(23, 0, NULL, 0, NULL, 0, 50, NULL),
	(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
	(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
	(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
	(27, 1, NULL, 0, NULL, 1, 90, NULL),
	(28, 1, NULL, 0, NULL, 1, 100, NULL),
	(29, 1, NULL, 0, NULL, 1, 100, NULL),
	(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
	(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
	(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
	(33, 0, NULL, 0, NULL, 1, 0, NULL),
	(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL),
	(35, 1, NULL, 0, NULL, 1, 28, NULL),
	(36, 1, NULL, 0, NULL, 1, 140, NULL),
	(37, 0, NULL, 0, NULL, 1, 0, NULL),
	(38, 0, NULL, 0, NULL, 1, 0, NULL),
	(39, 0, NULL, 0, NULL, 1, 0, NULL),
	(40, 0, NULL, 0, NULL, 1, 0, NULL);
/*!40000 ALTER TABLE `customer_eav_attribute` ENABLE KEYS */;

-- Dumping structure for table magento.customer_eav_attribute_website
CREATE TABLE IF NOT EXISTS `customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `IDX_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CSTR_EAV_ATTR_WS_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_EAV_ATTR_WS_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- Dumping data for table magento.customer_eav_attribute_website: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_eav_attribute_website` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_eav_attribute_website` ENABLE KEYS */;

-- Dumping structure for table magento.customer_entity
CREATE TABLE IF NOT EXISTS `customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `IDX_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_CUSTOMER_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Customer Entity';

-- Dumping data for table magento.customer_entity: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity` DISABLE KEYS */;
INSERT INTO `customer_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `website_id`, `email`, `group_id`, `increment_id`, `store_id`, `created_at`, `updated_at`, `is_active`, `disable_auto_group_change`) VALUES
	(1, 1, 0, 1, 'user@gmail.com', 1, NULL, 1, '2017-12-21 14:06:52', '2017-12-29 08:52:13', 1, 0);
/*!40000 ALTER TABLE `customer_entity` ENABLE KEYS */;

-- Dumping structure for table magento.customer_entity_datetime
CREATE TABLE IF NOT EXISTS `customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ENTT_DTIME_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime';

-- Dumping data for table magento.customer_entity_datetime: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_entity_datetime` ENABLE KEYS */;

-- Dumping structure for table magento.customer_entity_decimal
CREATE TABLE IF NOT EXISTS `customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ENTT_DEC_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal';

-- Dumping data for table magento.customer_entity_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_entity_decimal` ENABLE KEYS */;

-- Dumping structure for table magento.customer_entity_int
CREATE TABLE IF NOT EXISTS `customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ENTT_INT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_INT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int';

-- Dumping data for table magento.customer_entity_int: ~2 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_int` DISABLE KEYS */;
INSERT INTO `customer_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
	(1, 1, 13, 1, 1),
	(2, 1, 14, 1, 1);
/*!40000 ALTER TABLE `customer_entity_int` ENABLE KEYS */;

-- Dumping structure for table magento.customer_entity_text
CREATE TABLE IF NOT EXISTS `customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_CSTR_ENTT_TEXT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_TEXT_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text';

-- Dumping data for table magento.customer_entity_text: ~0 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_entity_text` ENABLE KEYS */;

-- Dumping structure for table magento.customer_entity_varchar
CREATE TABLE IF NOT EXISTS `customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`),
  CONSTRAINT `FK_CSTR_ENTT_VCHR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CSTR_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar';

-- Dumping data for table magento.customer_entity_varchar: ~5 rows (approximately)
/*!40000 ALTER TABLE `customer_entity_varchar` DISABLE KEYS */;
INSERT INTO `customer_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `entity_id`, `value`) VALUES
	(1, 1, 5, 1, 'Mike'),
	(2, 1, 6, 1, 'Middle'),
	(3, 1, 7, 1, 'Last'),
	(4, 1, 12, 1, '3abb8a54afe7fbb75af0bdfd3497a7f8:cN0ZQXi72WsFx9Vsq1c9i9ZcyxsI2psx'),
	(5, 1, 3, 1, 'Default Store View');
/*!40000 ALTER TABLE `customer_entity_varchar` ENABLE KEYS */;

-- Dumping structure for table magento.customer_form_attribute
CREATE TABLE IF NOT EXISTS `customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `IDX_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_CSTR_FORM_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

-- Dumping data for table magento.customer_form_attribute: ~94 rows (approximately)
/*!40000 ALTER TABLE `customer_form_attribute` DISABLE KEYS */;
INSERT INTO `customer_form_attribute` (`form_code`, `attribute_id`) VALUES
	('adminhtml_customer', 1),
	('adminhtml_customer', 3),
	('adminhtml_customer', 4),
	('checkout_register', 4),
	('customer_account_create', 4),
	('customer_account_edit', 4),
	('adminhtml_customer', 5),
	('checkout_register', 5),
	('customer_account_create', 5),
	('customer_account_edit', 5),
	('adminhtml_customer', 6),
	('checkout_register', 6),
	('customer_account_create', 6),
	('customer_account_edit', 6),
	('adminhtml_customer', 7),
	('checkout_register', 7),
	('customer_account_create', 7),
	('customer_account_edit', 7),
	('adminhtml_customer', 8),
	('checkout_register', 8),
	('customer_account_create', 8),
	('customer_account_edit', 8),
	('adminhtml_checkout', 9),
	('adminhtml_customer', 9),
	('checkout_register', 9),
	('customer_account_create', 9),
	('customer_account_edit', 9),
	('adminhtml_checkout', 10),
	('adminhtml_customer', 10),
	('adminhtml_checkout', 11),
	('adminhtml_customer', 11),
	('checkout_register', 11),
	('customer_account_create', 11),
	('customer_account_edit', 11),
	('adminhtml_checkout', 15),
	('adminhtml_customer', 15),
	('checkout_register', 15),
	('customer_account_create', 15),
	('customer_account_edit', 15),
	('adminhtml_customer', 17),
	('checkout_register', 17),
	('customer_account_create', 17),
	('customer_account_edit', 17),
	('adminhtml_checkout', 18),
	('adminhtml_customer', 18),
	('checkout_register', 18),
	('customer_account_create', 18),
	('customer_account_edit', 18),
	('adminhtml_customer_address', 19),
	('customer_address_edit', 19),
	('customer_register_address', 19),
	('adminhtml_customer_address', 20),
	('customer_address_edit', 20),
	('customer_register_address', 20),
	('adminhtml_customer_address', 21),
	('customer_address_edit', 21),
	('customer_register_address', 21),
	('adminhtml_customer_address', 22),
	('customer_address_edit', 22),
	('customer_register_address', 22),
	('adminhtml_customer_address', 23),
	('customer_address_edit', 23),
	('customer_register_address', 23),
	('adminhtml_customer_address', 24),
	('customer_address_edit', 24),
	('customer_register_address', 24),
	('adminhtml_customer_address', 25),
	('customer_address_edit', 25),
	('customer_register_address', 25),
	('adminhtml_customer_address', 26),
	('customer_address_edit', 26),
	('customer_register_address', 26),
	('adminhtml_customer_address', 27),
	('customer_address_edit', 27),
	('customer_register_address', 27),
	('adminhtml_customer_address', 28),
	('customer_address_edit', 28),
	('customer_register_address', 28),
	('adminhtml_customer_address', 29),
	('customer_address_edit', 29),
	('customer_register_address', 29),
	('adminhtml_customer_address', 30),
	('customer_address_edit', 30),
	('customer_register_address', 30),
	('adminhtml_customer_address', 31),
	('customer_address_edit', 31),
	('customer_register_address', 31),
	('adminhtml_customer_address', 32),
	('customer_address_edit', 32),
	('customer_register_address', 32),
	('adminhtml_customer', 35),
	('adminhtml_customer_address', 36),
	('customer_address_edit', 36),
	('customer_register_address', 36);
/*!40000 ALTER TABLE `customer_form_attribute` ENABLE KEYS */;

-- Dumping structure for table magento.customer_group
CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Customer Group';

-- Dumping data for table magento.customer_group: ~4 rows (approximately)
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
INSERT INTO `customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
	(0, 'NOT LOGGED IN', 3),
	(1, 'General', 3),
	(2, 'Wholesale', 3),
	(3, 'Retailer', 3);
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;

-- Dumping structure for table magento.dataflow_batch
CREATE TABLE IF NOT EXISTS `dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_DATAFLOW_BATCH_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_DATAFLOW_BATCH_PROFILE_ID_DATAFLOW_PROFILE_PROFILE_ID` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_DATAFLOW_BATCH_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch';

-- Dumping data for table magento.dataflow_batch: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_batch` ENABLE KEYS */;

-- Dumping structure for table magento.dataflow_batch_export
CREATE TABLE IF NOT EXISTS `dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_export_id`),
  KEY `IDX_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`),
  CONSTRAINT `FK_DATAFLOW_BATCH_EXPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export';

-- Dumping data for table magento.dataflow_batch_export: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_batch_export` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_batch_export` ENABLE KEYS */;

-- Dumping structure for table magento.dataflow_batch_import
CREATE TABLE IF NOT EXISTS `dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_import_id`),
  KEY `IDX_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`),
  CONSTRAINT `FK_DATAFLOW_BATCH_IMPORT_BATCH_ID_DATAFLOW_BATCH_BATCH_ID` FOREIGN KEY (`batch_id`) REFERENCES `dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import';

-- Dumping data for table magento.dataflow_batch_import: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_batch_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_batch_import` ENABLE KEYS */;

-- Dumping structure for table magento.dataflow_import_data
CREATE TABLE IF NOT EXISTS `dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`import_id`),
  KEY `IDX_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`),
  CONSTRAINT `FK_DATAFLOW_IMPORT_DATA_SESSION_ID_DATAFLOW_SESSION_SESSION_ID` FOREIGN KEY (`session_id`) REFERENCES `dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data';

-- Dumping data for table magento.dataflow_import_data: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_import_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_import_data` ENABLE KEYS */;

-- Dumping structure for table magento.dataflow_profile
CREATE TABLE IF NOT EXISTS `dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile';

-- Dumping data for table magento.dataflow_profile: ~6 rows (approximately)
/*!40000 ALTER TABLE `dataflow_profile` DISABLE KEYS */;
INSERT INTO `dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
	(1, 'Export All Products', '2017-11-28 10:55:47', '2017-11-28 10:55:47', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
	(2, 'Export Product Stocks', '2017-11-28 10:55:47', '2017-11-28 10:55:47', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
	(3, 'Import All Products', '2017-11-28 10:55:47', '2017-11-28 10:55:47', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
	(4, 'Import Product Stocks', '2017-11-28 10:55:47', '2017-11-28 10:55:47', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
	(5, 'Export Customers', '2017-11-28 10:55:47', '2017-11-28 10:55:47', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
	(6, 'Import Customers', '2017-11-28 10:55:47', '2017-11-28 10:55:47', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');
/*!40000 ALTER TABLE `dataflow_profile` ENABLE KEYS */;

-- Dumping structure for table magento.dataflow_profile_history
CREATE TABLE IF NOT EXISTS `dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`),
  CONSTRAINT `FK_AEA06B0C500063D3CE6EA671AE776645` FOREIGN KEY (`profile_id`) REFERENCES `dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History';

-- Dumping data for table magento.dataflow_profile_history: ~6 rows (approximately)
/*!40000 ALTER TABLE `dataflow_profile_history` DISABLE KEYS */;
INSERT INTO `dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
	(1, 1, 'create', 0, '2017-11-28 10:55:47'),
	(2, 2, 'create', 0, '2017-11-28 10:55:47'),
	(3, 3, 'create', 0, '2017-11-28 10:55:47'),
	(4, 4, 'create', 0, '2017-11-28 10:55:47'),
	(5, 5, 'create', 0, '2017-11-28 10:55:47'),
	(6, 6, 'create', 0, '2017-11-28 10:55:47');
/*!40000 ALTER TABLE `dataflow_profile_history` ENABLE KEYS */;

-- Dumping structure for table magento.dataflow_session
CREATE TABLE IF NOT EXISTS `dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session';

-- Dumping data for table magento.dataflow_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `dataflow_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataflow_session` ENABLE KEYS */;

-- Dumping structure for table magento.design_change
CREATE TABLE IF NOT EXISTS `design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `IDX_DESIGN_CHANGE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_DESIGN_CHANGE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes';

-- Dumping data for table magento.design_change: ~0 rows (approximately)
/*!40000 ALTER TABLE `design_change` DISABLE KEYS */;
/*!40000 ALTER TABLE `design_change` ENABLE KEYS */;

-- Dumping structure for table magento.directory_country
CREATE TABLE IF NOT EXISTS `directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

-- Dumping data for table magento.directory_country: ~246 rows (approximately)
/*!40000 ALTER TABLE `directory_country` DISABLE KEYS */;
INSERT INTO `directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
	('AD', 'AD', 'AND'),
	('AE', 'AE', 'ARE'),
	('AF', 'AF', 'AFG'),
	('AG', 'AG', 'ATG'),
	('AI', 'AI', 'AIA'),
	('AL', 'AL', 'ALB'),
	('AM', 'AM', 'ARM'),
	('AN', 'AN', 'ANT'),
	('AO', 'AO', 'AGO'),
	('AQ', 'AQ', 'ATA'),
	('AR', 'AR', 'ARG'),
	('AS', 'AS', 'ASM'),
	('AT', 'AT', 'AUT'),
	('AU', 'AU', 'AUS'),
	('AW', 'AW', 'ABW'),
	('AX', 'AX', 'ALA'),
	('AZ', 'AZ', 'AZE'),
	('BA', 'BA', 'BIH'),
	('BB', 'BB', 'BRB'),
	('BD', 'BD', 'BGD'),
	('BE', 'BE', 'BEL'),
	('BF', 'BF', 'BFA'),
	('BG', 'BG', 'BGR'),
	('BH', 'BH', 'BHR'),
	('BI', 'BI', 'BDI'),
	('BJ', 'BJ', 'BEN'),
	('BL', 'BL', 'BLM'),
	('BM', 'BM', 'BMU'),
	('BN', 'BN', 'BRN'),
	('BO', 'BO', 'BOL'),
	('BR', 'BR', 'BRA'),
	('BS', 'BS', 'BHS'),
	('BT', 'BT', 'BTN'),
	('BV', 'BV', 'BVT'),
	('BW', 'BW', 'BWA'),
	('BY', 'BY', 'BLR'),
	('BZ', 'BZ', 'BLZ'),
	('CA', 'CA', 'CAN'),
	('CC', 'CC', 'CCK'),
	('CD', 'CD', 'COD'),
	('CF', 'CF', 'CAF'),
	('CG', 'CG', 'COG'),
	('CH', 'CH', 'CHE'),
	('CI', 'CI', 'CIV'),
	('CK', 'CK', 'COK'),
	('CL', 'CL', 'CHL'),
	('CM', 'CM', 'CMR'),
	('CN', 'CN', 'CHN'),
	('CO', 'CO', 'COL'),
	('CR', 'CR', 'CRI'),
	('CU', 'CU', 'CUB'),
	('CV', 'CV', 'CPV'),
	('CX', 'CX', 'CXR'),
	('CY', 'CY', 'CYP'),
	('CZ', 'CZ', 'CZE'),
	('DE', 'DE', 'DEU'),
	('DJ', 'DJ', 'DJI'),
	('DK', 'DK', 'DNK'),
	('DM', 'DM', 'DMA'),
	('DO', 'DO', 'DOM'),
	('DZ', 'DZ', 'DZA'),
	('EC', 'EC', 'ECU'),
	('EE', 'EE', 'EST'),
	('EG', 'EG', 'EGY'),
	('EH', 'EH', 'ESH'),
	('ER', 'ER', 'ERI'),
	('ES', 'ES', 'ESP'),
	('ET', 'ET', 'ETH'),
	('FI', 'FI', 'FIN'),
	('FJ', 'FJ', 'FJI'),
	('FK', 'FK', 'FLK'),
	('FM', 'FM', 'FSM'),
	('FO', 'FO', 'FRO'),
	('FR', 'FR', 'FRA'),
	('GA', 'GA', 'GAB'),
	('GB', 'GB', 'GBR'),
	('GD', 'GD', 'GRD'),
	('GE', 'GE', 'GEO'),
	('GF', 'GF', 'GUF'),
	('GG', 'GG', 'GGY'),
	('GH', 'GH', 'GHA'),
	('GI', 'GI', 'GIB'),
	('GL', 'GL', 'GRL'),
	('GM', 'GM', 'GMB'),
	('GN', 'GN', 'GIN'),
	('GP', 'GP', 'GLP'),
	('GQ', 'GQ', 'GNQ'),
	('GR', 'GR', 'GRC'),
	('GS', 'GS', 'SGS'),
	('GT', 'GT', 'GTM'),
	('GU', 'GU', 'GUM'),
	('GW', 'GW', 'GNB'),
	('GY', 'GY', 'GUY'),
	('HK', 'HK', 'HKG'),
	('HM', 'HM', 'HMD'),
	('HN', 'HN', 'HND'),
	('HR', 'HR', 'HRV'),
	('HT', 'HT', 'HTI'),
	('HU', 'HU', 'HUN'),
	('ID', 'ID', 'IDN'),
	('IE', 'IE', 'IRL'),
	('IL', 'IL', 'ISR'),
	('IM', 'IM', 'IMN'),
	('IN', 'IN', 'IND'),
	('IO', 'IO', 'IOT'),
	('IQ', 'IQ', 'IRQ'),
	('IR', 'IR', 'IRN'),
	('IS', 'IS', 'ISL'),
	('IT', 'IT', 'ITA'),
	('JE', 'JE', 'JEY'),
	('JM', 'JM', 'JAM'),
	('JO', 'JO', 'JOR'),
	('JP', 'JP', 'JPN'),
	('KE', 'KE', 'KEN'),
	('KG', 'KG', 'KGZ'),
	('KH', 'KH', 'KHM'),
	('KI', 'KI', 'KIR'),
	('KM', 'KM', 'COM'),
	('KN', 'KN', 'KNA'),
	('KP', 'KP', 'PRK'),
	('KR', 'KR', 'KOR'),
	('KW', 'KW', 'KWT'),
	('KY', 'KY', 'CYM'),
	('KZ', 'KZ', 'KAZ'),
	('LA', 'LA', 'LAO'),
	('LB', 'LB', 'LBN'),
	('LC', 'LC', 'LCA'),
	('LI', 'LI', 'LIE'),
	('LK', 'LK', 'LKA'),
	('LR', 'LR', 'LBR'),
	('LS', 'LS', 'LSO'),
	('LT', 'LT', 'LTU'),
	('LU', 'LU', 'LUX'),
	('LV', 'LV', 'LVA'),
	('LY', 'LY', 'LBY'),
	('MA', 'MA', 'MAR'),
	('MC', 'MC', 'MCO'),
	('MD', 'MD', 'MDA'),
	('ME', 'ME', 'MNE'),
	('MF', 'MF', 'MAF'),
	('MG', 'MG', 'MDG'),
	('MH', 'MH', 'MHL'),
	('MK', 'MK', 'MKD'),
	('ML', 'ML', 'MLI'),
	('MM', 'MM', 'MMR'),
	('MN', 'MN', 'MNG'),
	('MO', 'MO', 'MAC'),
	('MP', 'MP', 'MNP'),
	('MQ', 'MQ', 'MTQ'),
	('MR', 'MR', 'MRT'),
	('MS', 'MS', 'MSR'),
	('MT', 'MT', 'MLT'),
	('MU', 'MU', 'MUS'),
	('MV', 'MV', 'MDV'),
	('MW', 'MW', 'MWI'),
	('MX', 'MX', 'MEX'),
	('MY', 'MY', 'MYS'),
	('MZ', 'MZ', 'MOZ'),
	('NA', 'NA', 'NAM'),
	('NC', 'NC', 'NCL'),
	('NE', 'NE', 'NER'),
	('NF', 'NF', 'NFK'),
	('NG', 'NG', 'NGA'),
	('NI', 'NI', 'NIC'),
	('NL', 'NL', 'NLD'),
	('NO', 'NO', 'NOR'),
	('NP', 'NP', 'NPL'),
	('NR', 'NR', 'NRU'),
	('NU', 'NU', 'NIU'),
	('NZ', 'NZ', 'NZL'),
	('OM', 'OM', 'OMN'),
	('PA', 'PA', 'PAN'),
	('PE', 'PE', 'PER'),
	('PF', 'PF', 'PYF'),
	('PG', 'PG', 'PNG'),
	('PH', 'PH', 'PHL'),
	('PK', 'PK', 'PAK'),
	('PL', 'PL', 'POL'),
	('PM', 'PM', 'SPM'),
	('PN', 'PN', 'PCN'),
	('PR', 'PR', 'PRI'),
	('PS', 'PS', 'PSE'),
	('PT', 'PT', 'PRT'),
	('PW', 'PW', 'PLW'),
	('PY', 'PY', 'PRY'),
	('QA', 'QA', 'QAT'),
	('RE', 'RE', 'REU'),
	('RO', 'RO', 'ROU'),
	('RS', 'RS', 'SRB'),
	('RU', 'RU', 'RUS'),
	('RW', 'RW', 'RWA'),
	('SA', 'SA', 'SAU'),
	('SB', 'SB', 'SLB'),
	('SC', 'SC', 'SYC'),
	('SD', 'SD', 'SDN'),
	('SE', 'SE', 'SWE'),
	('SG', 'SG', 'SGP'),
	('SH', 'SH', 'SHN'),
	('SI', 'SI', 'SVN'),
	('SJ', 'SJ', 'SJM'),
	('SK', 'SK', 'SVK'),
	('SL', 'SL', 'SLE'),
	('SM', 'SM', 'SMR'),
	('SN', 'SN', 'SEN'),
	('SO', 'SO', 'SOM'),
	('SR', 'SR', 'SUR'),
	('ST', 'ST', 'STP'),
	('SV', 'SV', 'SLV'),
	('SY', 'SY', 'SYR'),
	('SZ', 'SZ', 'SWZ'),
	('TC', 'TC', 'TCA'),
	('TD', 'TD', 'TCD'),
	('TF', 'TF', 'ATF'),
	('TG', 'TG', 'TGO'),
	('TH', 'TH', 'THA'),
	('TJ', 'TJ', 'TJK'),
	('TK', 'TK', 'TKL'),
	('TL', 'TL', 'TLS'),
	('TM', 'TM', 'TKM'),
	('TN', 'TN', 'TUN'),
	('TO', 'TO', 'TON'),
	('TR', 'TR', 'TUR'),
	('TT', 'TT', 'TTO'),
	('TV', 'TV', 'TUV'),
	('TW', 'TW', 'TWN'),
	('TZ', 'TZ', 'TZA'),
	('UA', 'UA', 'UKR'),
	('UG', 'UG', 'UGA'),
	('UM', 'UM', 'UMI'),
	('US', 'US', 'USA'),
	('UY', 'UY', 'URY'),
	('UZ', 'UZ', 'UZB'),
	('VA', 'VA', 'VAT'),
	('VC', 'VC', 'VCT'),
	('VE', 'VE', 'VEN'),
	('VG', 'VG', 'VGB'),
	('VI', 'VI', 'VIR'),
	('VN', 'VN', 'VNM'),
	('VU', 'VU', 'VUT'),
	('WF', 'WF', 'WLF'),
	('WS', 'WS', 'WSM'),
	('YE', 'YE', 'YEM'),
	('YT', 'YT', 'MYT'),
	('ZA', 'ZA', 'ZAF'),
	('ZM', 'ZM', 'ZMB'),
	('ZW', 'ZW', 'ZWE');
/*!40000 ALTER TABLE `directory_country` ENABLE KEYS */;

-- Dumping structure for table magento.directory_country_format
CREATE TABLE IF NOT EXISTS `directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `UNQ_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format';

-- Dumping data for table magento.directory_country_format: ~0 rows (approximately)
/*!40000 ALTER TABLE `directory_country_format` DISABLE KEYS */;
/*!40000 ALTER TABLE `directory_country_format` ENABLE KEYS */;

-- Dumping structure for table magento.directory_country_region
CREATE TABLE IF NOT EXISTS `directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8 COMMENT='Directory Country Region';

-- Dumping data for table magento.directory_country_region: ~484 rows (approximately)
/*!40000 ALTER TABLE `directory_country_region` DISABLE KEYS */;
INSERT INTO `directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
	(1, 'US', 'AL', 'Alabama'),
	(2, 'US', 'AK', 'Alaska'),
	(3, 'US', 'AS', 'American Samoa'),
	(4, 'US', 'AZ', 'Arizona'),
	(5, 'US', 'AR', 'Arkansas'),
	(6, 'US', 'AF', 'Armed Forces Africa'),
	(7, 'US', 'AA', 'Armed Forces Americas'),
	(8, 'US', 'AC', 'Armed Forces Canada'),
	(9, 'US', 'AE', 'Armed Forces Europe'),
	(10, 'US', 'AM', 'Armed Forces Middle East'),
	(11, 'US', 'AP', 'Armed Forces Pacific'),
	(12, 'US', 'CA', 'California'),
	(13, 'US', 'CO', 'Colorado'),
	(14, 'US', 'CT', 'Connecticut'),
	(15, 'US', 'DE', 'Delaware'),
	(16, 'US', 'DC', 'District of Columbia'),
	(17, 'US', 'FM', 'Federated States Of Micronesia'),
	(18, 'US', 'FL', 'Florida'),
	(19, 'US', 'GA', 'Georgia'),
	(20, 'US', 'GU', 'Guam'),
	(21, 'US', 'HI', 'Hawaii'),
	(22, 'US', 'ID', 'Idaho'),
	(23, 'US', 'IL', 'Illinois'),
	(24, 'US', 'IN', 'Indiana'),
	(25, 'US', 'IA', 'Iowa'),
	(26, 'US', 'KS', 'Kansas'),
	(27, 'US', 'KY', 'Kentucky'),
	(28, 'US', 'LA', 'Louisiana'),
	(29, 'US', 'ME', 'Maine'),
	(30, 'US', 'MH', 'Marshall Islands'),
	(31, 'US', 'MD', 'Maryland'),
	(32, 'US', 'MA', 'Massachusetts'),
	(33, 'US', 'MI', 'Michigan'),
	(34, 'US', 'MN', 'Minnesota'),
	(35, 'US', 'MS', 'Mississippi'),
	(36, 'US', 'MO', 'Missouri'),
	(37, 'US', 'MT', 'Montana'),
	(38, 'US', 'NE', 'Nebraska'),
	(39, 'US', 'NV', 'Nevada'),
	(40, 'US', 'NH', 'New Hampshire'),
	(41, 'US', 'NJ', 'New Jersey'),
	(42, 'US', 'NM', 'New Mexico'),
	(43, 'US', 'NY', 'New York'),
	(44, 'US', 'NC', 'North Carolina'),
	(45, 'US', 'ND', 'North Dakota'),
	(46, 'US', 'MP', 'Northern Mariana Islands'),
	(47, 'US', 'OH', 'Ohio'),
	(48, 'US', 'OK', 'Oklahoma'),
	(49, 'US', 'OR', 'Oregon'),
	(50, 'US', 'PW', 'Palau'),
	(51, 'US', 'PA', 'Pennsylvania'),
	(52, 'US', 'PR', 'Puerto Rico'),
	(53, 'US', 'RI', 'Rhode Island'),
	(54, 'US', 'SC', 'South Carolina'),
	(55, 'US', 'SD', 'South Dakota'),
	(56, 'US', 'TN', 'Tennessee'),
	(57, 'US', 'TX', 'Texas'),
	(58, 'US', 'UT', 'Utah'),
	(59, 'US', 'VT', 'Vermont'),
	(60, 'US', 'VI', 'Virgin Islands'),
	(61, 'US', 'VA', 'Virginia'),
	(62, 'US', 'WA', 'Washington'),
	(63, 'US', 'WV', 'West Virginia'),
	(64, 'US', 'WI', 'Wisconsin'),
	(65, 'US', 'WY', 'Wyoming'),
	(66, 'CA', 'AB', 'Alberta'),
	(67, 'CA', 'BC', 'British Columbia'),
	(68, 'CA', 'MB', 'Manitoba'),
	(69, 'CA', 'NL', 'Newfoundland and Labrador'),
	(70, 'CA', 'NB', 'New Brunswick'),
	(71, 'CA', 'NS', 'Nova Scotia'),
	(72, 'CA', 'NT', 'Northwest Territories'),
	(73, 'CA', 'NU', 'Nunavut'),
	(74, 'CA', 'ON', 'Ontario'),
	(75, 'CA', 'PE', 'Prince Edward Island'),
	(76, 'CA', 'QC', 'Quebec'),
	(77, 'CA', 'SK', 'Saskatchewan'),
	(78, 'CA', 'YT', 'Yukon Territory'),
	(79, 'DE', 'NDS', 'Niedersachsen'),
	(80, 'DE', 'BAW', 'Baden-Württemberg'),
	(81, 'DE', 'BAY', 'Bayern'),
	(82, 'DE', 'BER', 'Berlin'),
	(83, 'DE', 'BRG', 'Brandenburg'),
	(84, 'DE', 'BRE', 'Bremen'),
	(85, 'DE', 'HAM', 'Hamburg'),
	(86, 'DE', 'HES', 'Hessen'),
	(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
	(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
	(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
	(90, 'DE', 'SAR', 'Saarland'),
	(91, 'DE', 'SAS', 'Sachsen'),
	(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
	(93, 'DE', 'SCN', 'Schleswig-Holstein'),
	(94, 'DE', 'THE', 'Thüringen'),
	(95, 'AT', 'WI', 'Wien'),
	(96, 'AT', 'NO', 'Niederösterreich'),
	(97, 'AT', 'OO', 'Oberösterreich'),
	(98, 'AT', 'SB', 'Salzburg'),
	(99, 'AT', 'KN', 'Kärnten'),
	(100, 'AT', 'ST', 'Steiermark'),
	(101, 'AT', 'TI', 'Tirol'),
	(102, 'AT', 'BL', 'Burgenland'),
	(103, 'AT', 'VB', 'Vorarlberg'),
	(104, 'CH', 'AG', 'Aargau'),
	(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
	(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
	(107, 'CH', 'BE', 'Bern'),
	(108, 'CH', 'BL', 'Basel-Landschaft'),
	(109, 'CH', 'BS', 'Basel-Stadt'),
	(110, 'CH', 'FR', 'Freiburg'),
	(111, 'CH', 'GE', 'Genf'),
	(112, 'CH', 'GL', 'Glarus'),
	(113, 'CH', 'GR', 'Graubünden'),
	(114, 'CH', 'JU', 'Jura'),
	(115, 'CH', 'LU', 'Luzern'),
	(116, 'CH', 'NE', 'Neuenburg'),
	(117, 'CH', 'NW', 'Nidwalden'),
	(118, 'CH', 'OW', 'Obwalden'),
	(119, 'CH', 'SG', 'St. Gallen'),
	(120, 'CH', 'SH', 'Schaffhausen'),
	(121, 'CH', 'SO', 'Solothurn'),
	(122, 'CH', 'SZ', 'Schwyz'),
	(123, 'CH', 'TG', 'Thurgau'),
	(124, 'CH', 'TI', 'Tessin'),
	(125, 'CH', 'UR', 'Uri'),
	(126, 'CH', 'VD', 'Waadt'),
	(127, 'CH', 'VS', 'Wallis'),
	(128, 'CH', 'ZG', 'Zug'),
	(129, 'CH', 'ZH', 'Zürich'),
	(130, 'ES', 'A Coruсa', 'A Coruña'),
	(131, 'ES', 'Alava', 'Alava'),
	(132, 'ES', 'Albacete', 'Albacete'),
	(133, 'ES', 'Alicante', 'Alicante'),
	(134, 'ES', 'Almeria', 'Almeria'),
	(135, 'ES', 'Asturias', 'Asturias'),
	(136, 'ES', 'Avila', 'Avila'),
	(137, 'ES', 'Badajoz', 'Badajoz'),
	(138, 'ES', 'Baleares', 'Baleares'),
	(139, 'ES', 'Barcelona', 'Barcelona'),
	(140, 'ES', 'Burgos', 'Burgos'),
	(141, 'ES', 'Caceres', 'Caceres'),
	(142, 'ES', 'Cadiz', 'Cadiz'),
	(143, 'ES', 'Cantabria', 'Cantabria'),
	(144, 'ES', 'Castellon', 'Castellon'),
	(145, 'ES', 'Ceuta', 'Ceuta'),
	(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
	(147, 'ES', 'Cordoba', 'Cordoba'),
	(148, 'ES', 'Cuenca', 'Cuenca'),
	(149, 'ES', 'Girona', 'Girona'),
	(150, 'ES', 'Granada', 'Granada'),
	(151, 'ES', 'Guadalajara', 'Guadalajara'),
	(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
	(153, 'ES', 'Huelva', 'Huelva'),
	(154, 'ES', 'Huesca', 'Huesca'),
	(155, 'ES', 'Jaen', 'Jaen'),
	(156, 'ES', 'La Rioja', 'La Rioja'),
	(157, 'ES', 'Las Palmas', 'Las Palmas'),
	(158, 'ES', 'Leon', 'Leon'),
	(159, 'ES', 'Lleida', 'Lleida'),
	(160, 'ES', 'Lugo', 'Lugo'),
	(161, 'ES', 'Madrid', 'Madrid'),
	(162, 'ES', 'Malaga', 'Malaga'),
	(163, 'ES', 'Melilla', 'Melilla'),
	(164, 'ES', 'Murcia', 'Murcia'),
	(165, 'ES', 'Navarra', 'Navarra'),
	(166, 'ES', 'Ourense', 'Ourense'),
	(167, 'ES', 'Palencia', 'Palencia'),
	(168, 'ES', 'Pontevedra', 'Pontevedra'),
	(169, 'ES', 'Salamanca', 'Salamanca'),
	(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
	(171, 'ES', 'Segovia', 'Segovia'),
	(172, 'ES', 'Sevilla', 'Sevilla'),
	(173, 'ES', 'Soria', 'Soria'),
	(174, 'ES', 'Tarragona', 'Tarragona'),
	(175, 'ES', 'Teruel', 'Teruel'),
	(176, 'ES', 'Toledo', 'Toledo'),
	(177, 'ES', 'Valencia', 'Valencia'),
	(178, 'ES', 'Valladolid', 'Valladolid'),
	(179, 'ES', 'Vizcaya', 'Vizcaya'),
	(180, 'ES', 'Zamora', 'Zamora'),
	(181, 'ES', 'Zaragoza', 'Zaragoza'),
	(182, 'FR', '1', 'Ain'),
	(183, 'FR', '2', 'Aisne'),
	(184, 'FR', '3', 'Allier'),
	(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
	(186, 'FR', '5', 'Hautes-Alpes'),
	(187, 'FR', '6', 'Alpes-Maritimes'),
	(188, 'FR', '7', 'Ardèche'),
	(189, 'FR', '8', 'Ardennes'),
	(190, 'FR', '9', 'Ariège'),
	(191, 'FR', '10', 'Aube'),
	(192, 'FR', '11', 'Aude'),
	(193, 'FR', '12', 'Aveyron'),
	(194, 'FR', '13', 'Bouches-du-Rhône'),
	(195, 'FR', '14', 'Calvados'),
	(196, 'FR', '15', 'Cantal'),
	(197, 'FR', '16', 'Charente'),
	(198, 'FR', '17', 'Charente-Maritime'),
	(199, 'FR', '18', 'Cher'),
	(200, 'FR', '19', 'Corrèze'),
	(201, 'FR', '2A', 'Corse-du-Sud'),
	(202, 'FR', '2B', 'Haute-Corse'),
	(203, 'FR', '21', 'Côte-d\'Or'),
	(204, 'FR', '22', 'Côtes-d\'Armor'),
	(205, 'FR', '23', 'Creuse'),
	(206, 'FR', '24', 'Dordogne'),
	(207, 'FR', '25', 'Doubs'),
	(208, 'FR', '26', 'Drôme'),
	(209, 'FR', '27', 'Eure'),
	(210, 'FR', '28', 'Eure-et-Loir'),
	(211, 'FR', '29', 'Finistère'),
	(212, 'FR', '30', 'Gard'),
	(213, 'FR', '31', 'Haute-Garonne'),
	(214, 'FR', '32', 'Gers'),
	(215, 'FR', '33', 'Gironde'),
	(216, 'FR', '34', 'Hérault'),
	(217, 'FR', '35', 'Ille-et-Vilaine'),
	(218, 'FR', '36', 'Indre'),
	(219, 'FR', '37', 'Indre-et-Loire'),
	(220, 'FR', '38', 'Isère'),
	(221, 'FR', '39', 'Jura'),
	(222, 'FR', '40', 'Landes'),
	(223, 'FR', '41', 'Loir-et-Cher'),
	(224, 'FR', '42', 'Loire'),
	(225, 'FR', '43', 'Haute-Loire'),
	(226, 'FR', '44', 'Loire-Atlantique'),
	(227, 'FR', '45', 'Loiret'),
	(228, 'FR', '46', 'Lot'),
	(229, 'FR', '47', 'Lot-et-Garonne'),
	(230, 'FR', '48', 'Lozère'),
	(231, 'FR', '49', 'Maine-et-Loire'),
	(232, 'FR', '50', 'Manche'),
	(233, 'FR', '51', 'Marne'),
	(234, 'FR', '52', 'Haute-Marne'),
	(235, 'FR', '53', 'Mayenne'),
	(236, 'FR', '54', 'Meurthe-et-Moselle'),
	(237, 'FR', '55', 'Meuse'),
	(238, 'FR', '56', 'Morbihan'),
	(239, 'FR', '57', 'Moselle'),
	(240, 'FR', '58', 'Nièvre'),
	(241, 'FR', '59', 'Nord'),
	(242, 'FR', '60', 'Oise'),
	(243, 'FR', '61', 'Orne'),
	(244, 'FR', '62', 'Pas-de-Calais'),
	(245, 'FR', '63', 'Puy-de-Dôme'),
	(246, 'FR', '64', 'Pyrénées-Atlantiques'),
	(247, 'FR', '65', 'Hautes-Pyrénées'),
	(248, 'FR', '66', 'Pyrénées-Orientales'),
	(249, 'FR', '67', 'Bas-Rhin'),
	(250, 'FR', '68', 'Haut-Rhin'),
	(251, 'FR', '69', 'Rhône'),
	(252, 'FR', '70', 'Haute-Saône'),
	(253, 'FR', '71', 'Saône-et-Loire'),
	(254, 'FR', '72', 'Sarthe'),
	(255, 'FR', '73', 'Savoie'),
	(256, 'FR', '74', 'Haute-Savoie'),
	(257, 'FR', '75', 'Paris'),
	(258, 'FR', '76', 'Seine-Maritime'),
	(259, 'FR', '77', 'Seine-et-Marne'),
	(260, 'FR', '78', 'Yvelines'),
	(261, 'FR', '79', 'Deux-Sèvres'),
	(262, 'FR', '80', 'Somme'),
	(263, 'FR', '81', 'Tarn'),
	(264, 'FR', '82', 'Tarn-et-Garonne'),
	(265, 'FR', '83', 'Var'),
	(266, 'FR', '84', 'Vaucluse'),
	(267, 'FR', '85', 'Vendée'),
	(268, 'FR', '86', 'Vienne'),
	(269, 'FR', '87', 'Haute-Vienne'),
	(270, 'FR', '88', 'Vosges'),
	(271, 'FR', '89', 'Yonne'),
	(272, 'FR', '90', 'Territoire-de-Belfort'),
	(273, 'FR', '91', 'Essonne'),
	(274, 'FR', '92', 'Hauts-de-Seine'),
	(275, 'FR', '93', 'Seine-Saint-Denis'),
	(276, 'FR', '94', 'Val-de-Marne'),
	(277, 'FR', '95', 'Val-d\'Oise'),
	(278, 'RO', 'AB', 'Alba'),
	(279, 'RO', 'AR', 'Arad'),
	(280, 'RO', 'AG', 'Argeş'),
	(281, 'RO', 'BC', 'Bacău'),
	(282, 'RO', 'BH', 'Bihor'),
	(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
	(284, 'RO', 'BT', 'Botoşani'),
	(285, 'RO', 'BV', 'Braşov'),
	(286, 'RO', 'BR', 'Brăila'),
	(287, 'RO', 'B', 'Bucureşti'),
	(288, 'RO', 'BZ', 'Buzău'),
	(289, 'RO', 'CS', 'Caraş-Severin'),
	(290, 'RO', 'CL', 'Călăraşi'),
	(291, 'RO', 'CJ', 'Cluj'),
	(292, 'RO', 'CT', 'Constanţa'),
	(293, 'RO', 'CV', 'Covasna'),
	(294, 'RO', 'DB', 'Dâmboviţa'),
	(295, 'RO', 'DJ', 'Dolj'),
	(296, 'RO', 'GL', 'Galaţi'),
	(297, 'RO', 'GR', 'Giurgiu'),
	(298, 'RO', 'GJ', 'Gorj'),
	(299, 'RO', 'HR', 'Harghita'),
	(300, 'RO', 'HD', 'Hunedoara'),
	(301, 'RO', 'IL', 'Ialomiţa'),
	(302, 'RO', 'IS', 'Iaşi'),
	(303, 'RO', 'IF', 'Ilfov'),
	(304, 'RO', 'MM', 'Maramureş'),
	(305, 'RO', 'MH', 'Mehedinţi'),
	(306, 'RO', 'MS', 'Mureş'),
	(307, 'RO', 'NT', 'Neamţ'),
	(308, 'RO', 'OT', 'Olt'),
	(309, 'RO', 'PH', 'Prahova'),
	(310, 'RO', 'SM', 'Satu-Mare'),
	(311, 'RO', 'SJ', 'Sălaj'),
	(312, 'RO', 'SB', 'Sibiu'),
	(313, 'RO', 'SV', 'Suceava'),
	(314, 'RO', 'TR', 'Teleorman'),
	(315, 'RO', 'TM', 'Timiş'),
	(316, 'RO', 'TL', 'Tulcea'),
	(317, 'RO', 'VS', 'Vaslui'),
	(318, 'RO', 'VL', 'Vâlcea'),
	(319, 'RO', 'VN', 'Vrancea'),
	(320, 'FI', 'Lappi', 'Lappi'),
	(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
	(322, 'FI', 'Kainuu', 'Kainuu'),
	(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
	(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
	(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
	(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
	(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
	(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
	(329, 'FI', 'Satakunta', 'Satakunta'),
	(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
	(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
	(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
	(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
	(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
	(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
	(336, 'FI', 'Uusimaa', 'Uusimaa'),
	(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
	(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
	(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
	(340, 'EE', 'EE-37', 'Harjumaa'),
	(341, 'EE', 'EE-39', 'Hiiumaa'),
	(342, 'EE', 'EE-44', 'Ida-Virumaa'),
	(343, 'EE', 'EE-49', 'Jõgevamaa'),
	(344, 'EE', 'EE-51', 'Järvamaa'),
	(345, 'EE', 'EE-57', 'Läänemaa'),
	(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
	(347, 'EE', 'EE-65', 'Põlvamaa'),
	(348, 'EE', 'EE-67', 'Pärnumaa'),
	(349, 'EE', 'EE-70', 'Raplamaa'),
	(350, 'EE', 'EE-74', 'Saaremaa'),
	(351, 'EE', 'EE-78', 'Tartumaa'),
	(352, 'EE', 'EE-82', 'Valgamaa'),
	(353, 'EE', 'EE-84', 'Viljandimaa'),
	(354, 'EE', 'EE-86', 'Võrumaa'),
	(355, 'LV', 'LV-DGV', 'Daugavpils'),
	(356, 'LV', 'LV-JEL', 'Jelgava'),
	(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
	(358, 'LV', 'LV-JUR', 'Jūrmala'),
	(359, 'LV', 'LV-LPX', 'Liepāja'),
	(360, 'LV', 'LV-LE', 'Liepājas novads'),
	(361, 'LV', 'LV-REZ', 'Rēzekne'),
	(362, 'LV', 'LV-RIX', 'Rīga'),
	(363, 'LV', 'LV-RI', 'Rīgas novads'),
	(364, 'LV', 'Valmiera', 'Valmiera'),
	(365, 'LV', 'LV-VEN', 'Ventspils'),
	(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
	(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
	(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
	(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
	(370, 'LV', 'Alojas novads', 'Alojas novads'),
	(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
	(372, 'LV', 'LV-AL', 'Alūksnes novads'),
	(373, 'LV', 'Amatas novads', 'Amatas novads'),
	(374, 'LV', 'Apes novads', 'Apes novads'),
	(375, 'LV', 'Auces novads', 'Auces novads'),
	(376, 'LV', 'Babītes novads', 'Babītes novads'),
	(377, 'LV', 'Baldones novads', 'Baldones novads'),
	(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
	(379, 'LV', 'LV-BL', 'Balvu novads'),
	(380, 'LV', 'LV-BU', 'Bauskas novads'),
	(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
	(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
	(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
	(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
	(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
	(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
	(387, 'LV', 'LV-CE', 'Cēsu novads'),
	(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
	(389, 'LV', 'LV-DA', 'Daugavpils novads'),
	(390, 'LV', 'LV-DO', 'Dobeles novads'),
	(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
	(392, 'LV', 'Durbes novads', 'Durbes novads'),
	(393, 'LV', 'Engures novads', 'Engures novads'),
	(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
	(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
	(396, 'LV', 'LV-GU', 'Gulbenes novads'),
	(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
	(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
	(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
	(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
	(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
	(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
	(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
	(404, 'LV', 'LV-JL', 'Jelgavas novads'),
	(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
	(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
	(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
	(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
	(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
	(410, 'LV', 'LV-KR', 'Krāslavas novads'),
	(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
	(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
	(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
	(414, 'LV', 'LV-LM', 'Limbažu novads'),
	(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
	(416, 'LV', 'LV-LU', 'Ludzas novads'),
	(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
	(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
	(419, 'LV', 'LV-MA', 'Madonas novads'),
	(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
	(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
	(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
	(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
	(424, 'LV', 'Neretas novads', 'Neretas novads'),
	(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
	(426, 'LV', 'LV-OG', 'Ogres novads'),
	(427, 'LV', 'Olaines novads', 'Olaines novads'),
	(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
	(429, 'LV', 'LV-PR', 'Preiļu novads'),
	(430, 'LV', 'Priekules novads', 'Priekules novads'),
	(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
	(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
	(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
	(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
	(435, 'LV', 'Raunas novads', 'Raunas novads'),
	(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
	(437, 'LV', 'Rojas novads', 'Rojas novads'),
	(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
	(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
	(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
	(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
	(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
	(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
	(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
	(445, 'LV', 'Salas novads', 'Salas novads'),
	(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
	(447, 'LV', 'LV-SA', 'Saldus novads'),
	(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
	(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
	(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
	(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
	(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
	(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
	(454, 'LV', 'Strenču novads', 'Strenču novads'),
	(455, 'LV', 'Sējas novads', 'Sējas novads'),
	(456, 'LV', 'LV-TA', 'Talsu novads'),
	(457, 'LV', 'LV-TU', 'Tukuma novads'),
	(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
	(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
	(460, 'LV', 'LV-VK', 'Valkas novads'),
	(461, 'LV', 'LV-VM', 'Valmieras novads'),
	(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
	(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
	(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
	(465, 'LV', 'LV-VE', 'Ventspils novads'),
	(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
	(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
	(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
	(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
	(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
	(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
	(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
	(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
	(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
	(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
	(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
	(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
	(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
	(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
	(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
	(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
	(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
	(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
	(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');
/*!40000 ALTER TABLE `directory_country_region` ENABLE KEYS */;

-- Dumping structure for table magento.directory_country_region_name
CREATE TABLE IF NOT EXISTS `directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `IDX_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`),
  CONSTRAINT `FK_D7CFDEB379F775328EB6F62695E2B3E1` FOREIGN KEY (`region_id`) REFERENCES `directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

-- Dumping data for table magento.directory_country_region_name: ~484 rows (approximately)
/*!40000 ALTER TABLE `directory_country_region_name` DISABLE KEYS */;
INSERT INTO `directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
	('en_US', 1, 'Alabama'),
	('en_US', 2, 'Alaska'),
	('en_US', 3, 'American Samoa'),
	('en_US', 4, 'Arizona'),
	('en_US', 5, 'Arkansas'),
	('en_US', 6, 'Armed Forces Africa'),
	('en_US', 7, 'Armed Forces Americas'),
	('en_US', 8, 'Armed Forces Canada'),
	('en_US', 9, 'Armed Forces Europe'),
	('en_US', 10, 'Armed Forces Middle East'),
	('en_US', 11, 'Armed Forces Pacific'),
	('en_US', 12, 'California'),
	('en_US', 13, 'Colorado'),
	('en_US', 14, 'Connecticut'),
	('en_US', 15, 'Delaware'),
	('en_US', 16, 'District of Columbia'),
	('en_US', 17, 'Federated States Of Micronesia'),
	('en_US', 18, 'Florida'),
	('en_US', 19, 'Georgia'),
	('en_US', 20, 'Guam'),
	('en_US', 21, 'Hawaii'),
	('en_US', 22, 'Idaho'),
	('en_US', 23, 'Illinois'),
	('en_US', 24, 'Indiana'),
	('en_US', 25, 'Iowa'),
	('en_US', 26, 'Kansas'),
	('en_US', 27, 'Kentucky'),
	('en_US', 28, 'Louisiana'),
	('en_US', 29, 'Maine'),
	('en_US', 30, 'Marshall Islands'),
	('en_US', 31, 'Maryland'),
	('en_US', 32, 'Massachusetts'),
	('en_US', 33, 'Michigan'),
	('en_US', 34, 'Minnesota'),
	('en_US', 35, 'Mississippi'),
	('en_US', 36, 'Missouri'),
	('en_US', 37, 'Montana'),
	('en_US', 38, 'Nebraska'),
	('en_US', 39, 'Nevada'),
	('en_US', 40, 'New Hampshire'),
	('en_US', 41, 'New Jersey'),
	('en_US', 42, 'New Mexico'),
	('en_US', 43, 'New York'),
	('en_US', 44, 'North Carolina'),
	('en_US', 45, 'North Dakota'),
	('en_US', 46, 'Northern Mariana Islands'),
	('en_US', 47, 'Ohio'),
	('en_US', 48, 'Oklahoma'),
	('en_US', 49, 'Oregon'),
	('en_US', 50, 'Palau'),
	('en_US', 51, 'Pennsylvania'),
	('en_US', 52, 'Puerto Rico'),
	('en_US', 53, 'Rhode Island'),
	('en_US', 54, 'South Carolina'),
	('en_US', 55, 'South Dakota'),
	('en_US', 56, 'Tennessee'),
	('en_US', 57, 'Texas'),
	('en_US', 58, 'Utah'),
	('en_US', 59, 'Vermont'),
	('en_US', 60, 'Virgin Islands'),
	('en_US', 61, 'Virginia'),
	('en_US', 62, 'Washington'),
	('en_US', 63, 'West Virginia'),
	('en_US', 64, 'Wisconsin'),
	('en_US', 65, 'Wyoming'),
	('en_US', 66, 'Alberta'),
	('en_US', 67, 'British Columbia'),
	('en_US', 68, 'Manitoba'),
	('en_US', 69, 'Newfoundland and Labrador'),
	('en_US', 70, 'New Brunswick'),
	('en_US', 71, 'Nova Scotia'),
	('en_US', 72, 'Northwest Territories'),
	('en_US', 73, 'Nunavut'),
	('en_US', 74, 'Ontario'),
	('en_US', 75, 'Prince Edward Island'),
	('en_US', 76, 'Quebec'),
	('en_US', 77, 'Saskatchewan'),
	('en_US', 78, 'Yukon Territory'),
	('en_US', 79, 'Niedersachsen'),
	('en_US', 80, 'Baden-Württemberg'),
	('en_US', 81, 'Bayern'),
	('en_US', 82, 'Berlin'),
	('en_US', 83, 'Brandenburg'),
	('en_US', 84, 'Bremen'),
	('en_US', 85, 'Hamburg'),
	('en_US', 86, 'Hessen'),
	('en_US', 87, 'Mecklenburg-Vorpommern'),
	('en_US', 88, 'Nordrhein-Westfalen'),
	('en_US', 89, 'Rheinland-Pfalz'),
	('en_US', 90, 'Saarland'),
	('en_US', 91, 'Sachsen'),
	('en_US', 92, 'Sachsen-Anhalt'),
	('en_US', 93, 'Schleswig-Holstein'),
	('en_US', 94, 'Thüringen'),
	('en_US', 95, 'Wien'),
	('en_US', 96, 'Niederösterreich'),
	('en_US', 97, 'Oberösterreich'),
	('en_US', 98, 'Salzburg'),
	('en_US', 99, 'Kärnten'),
	('en_US', 100, 'Steiermark'),
	('en_US', 101, 'Tirol'),
	('en_US', 102, 'Burgenland'),
	('en_US', 103, 'Vorarlberg'),
	('en_US', 104, 'Aargau'),
	('en_US', 105, 'Appenzell Innerrhoden'),
	('en_US', 106, 'Appenzell Ausserrhoden'),
	('en_US', 107, 'Bern'),
	('en_US', 108, 'Basel-Landschaft'),
	('en_US', 109, 'Basel-Stadt'),
	('en_US', 110, 'Freiburg'),
	('en_US', 111, 'Genf'),
	('en_US', 112, 'Glarus'),
	('en_US', 113, 'Graubünden'),
	('en_US', 114, 'Jura'),
	('en_US', 115, 'Luzern'),
	('en_US', 116, 'Neuenburg'),
	('en_US', 117, 'Nidwalden'),
	('en_US', 118, 'Obwalden'),
	('en_US', 119, 'St. Gallen'),
	('en_US', 120, 'Schaffhausen'),
	('en_US', 121, 'Solothurn'),
	('en_US', 122, 'Schwyz'),
	('en_US', 123, 'Thurgau'),
	('en_US', 124, 'Tessin'),
	('en_US', 125, 'Uri'),
	('en_US', 126, 'Waadt'),
	('en_US', 127, 'Wallis'),
	('en_US', 128, 'Zug'),
	('en_US', 129, 'Zürich'),
	('en_US', 130, 'A Coruña'),
	('en_US', 131, 'Alava'),
	('en_US', 132, 'Albacete'),
	('en_US', 133, 'Alicante'),
	('en_US', 134, 'Almeria'),
	('en_US', 135, 'Asturias'),
	('en_US', 136, 'Avila'),
	('en_US', 137, 'Badajoz'),
	('en_US', 138, 'Baleares'),
	('en_US', 139, 'Barcelona'),
	('en_US', 140, 'Burgos'),
	('en_US', 141, 'Caceres'),
	('en_US', 142, 'Cadiz'),
	('en_US', 143, 'Cantabria'),
	('en_US', 144, 'Castellon'),
	('en_US', 145, 'Ceuta'),
	('en_US', 146, 'Ciudad Real'),
	('en_US', 147, 'Cordoba'),
	('en_US', 148, 'Cuenca'),
	('en_US', 149, 'Girona'),
	('en_US', 150, 'Granada'),
	('en_US', 151, 'Guadalajara'),
	('en_US', 152, 'Guipuzcoa'),
	('en_US', 153, 'Huelva'),
	('en_US', 154, 'Huesca'),
	('en_US', 155, 'Jaen'),
	('en_US', 156, 'La Rioja'),
	('en_US', 157, 'Las Palmas'),
	('en_US', 158, 'Leon'),
	('en_US', 159, 'Lleida'),
	('en_US', 160, 'Lugo'),
	('en_US', 161, 'Madrid'),
	('en_US', 162, 'Malaga'),
	('en_US', 163, 'Melilla'),
	('en_US', 164, 'Murcia'),
	('en_US', 165, 'Navarra'),
	('en_US', 166, 'Ourense'),
	('en_US', 167, 'Palencia'),
	('en_US', 168, 'Pontevedra'),
	('en_US', 169, 'Salamanca'),
	('en_US', 170, 'Santa Cruz de Tenerife'),
	('en_US', 171, 'Segovia'),
	('en_US', 172, 'Sevilla'),
	('en_US', 173, 'Soria'),
	('en_US', 174, 'Tarragona'),
	('en_US', 175, 'Teruel'),
	('en_US', 176, 'Toledo'),
	('en_US', 177, 'Valencia'),
	('en_US', 178, 'Valladolid'),
	('en_US', 179, 'Vizcaya'),
	('en_US', 180, 'Zamora'),
	('en_US', 181, 'Zaragoza'),
	('en_US', 182, 'Ain'),
	('en_US', 183, 'Aisne'),
	('en_US', 184, 'Allier'),
	('en_US', 185, 'Alpes-de-Haute-Provence'),
	('en_US', 186, 'Hautes-Alpes'),
	('en_US', 187, 'Alpes-Maritimes'),
	('en_US', 188, 'Ardèche'),
	('en_US', 189, 'Ardennes'),
	('en_US', 190, 'Ariège'),
	('en_US', 191, 'Aube'),
	('en_US', 192, 'Aude'),
	('en_US', 193, 'Aveyron'),
	('en_US', 194, 'Bouches-du-Rhône'),
	('en_US', 195, 'Calvados'),
	('en_US', 196, 'Cantal'),
	('en_US', 197, 'Charente'),
	('en_US', 198, 'Charente-Maritime'),
	('en_US', 199, 'Cher'),
	('en_US', 200, 'Corrèze'),
	('en_US', 201, 'Corse-du-Sud'),
	('en_US', 202, 'Haute-Corse'),
	('en_US', 203, 'Côte-d\'Or'),
	('en_US', 204, 'Côtes-d\'Armor'),
	('en_US', 205, 'Creuse'),
	('en_US', 206, 'Dordogne'),
	('en_US', 207, 'Doubs'),
	('en_US', 208, 'Drôme'),
	('en_US', 209, 'Eure'),
	('en_US', 210, 'Eure-et-Loir'),
	('en_US', 211, 'Finistère'),
	('en_US', 212, 'Gard'),
	('en_US', 213, 'Haute-Garonne'),
	('en_US', 214, 'Gers'),
	('en_US', 215, 'Gironde'),
	('en_US', 216, 'Hérault'),
	('en_US', 217, 'Ille-et-Vilaine'),
	('en_US', 218, 'Indre'),
	('en_US', 219, 'Indre-et-Loire'),
	('en_US', 220, 'Isère'),
	('en_US', 221, 'Jura'),
	('en_US', 222, 'Landes'),
	('en_US', 223, 'Loir-et-Cher'),
	('en_US', 224, 'Loire'),
	('en_US', 225, 'Haute-Loire'),
	('en_US', 226, 'Loire-Atlantique'),
	('en_US', 227, 'Loiret'),
	('en_US', 228, 'Lot'),
	('en_US', 229, 'Lot-et-Garonne'),
	('en_US', 230, 'Lozère'),
	('en_US', 231, 'Maine-et-Loire'),
	('en_US', 232, 'Manche'),
	('en_US', 233, 'Marne'),
	('en_US', 234, 'Haute-Marne'),
	('en_US', 235, 'Mayenne'),
	('en_US', 236, 'Meurthe-et-Moselle'),
	('en_US', 237, 'Meuse'),
	('en_US', 238, 'Morbihan'),
	('en_US', 239, 'Moselle'),
	('en_US', 240, 'Nièvre'),
	('en_US', 241, 'Nord'),
	('en_US', 242, 'Oise'),
	('en_US', 243, 'Orne'),
	('en_US', 244, 'Pas-de-Calais'),
	('en_US', 245, 'Puy-de-Dôme'),
	('en_US', 246, 'Pyrénées-Atlantiques'),
	('en_US', 247, 'Hautes-Pyrénées'),
	('en_US', 248, 'Pyrénées-Orientales'),
	('en_US', 249, 'Bas-Rhin'),
	('en_US', 250, 'Haut-Rhin'),
	('en_US', 251, 'Rhône'),
	('en_US', 252, 'Haute-Saône'),
	('en_US', 253, 'Saône-et-Loire'),
	('en_US', 254, 'Sarthe'),
	('en_US', 255, 'Savoie'),
	('en_US', 256, 'Haute-Savoie'),
	('en_US', 257, 'Paris'),
	('en_US', 258, 'Seine-Maritime'),
	('en_US', 259, 'Seine-et-Marne'),
	('en_US', 260, 'Yvelines'),
	('en_US', 261, 'Deux-Sèvres'),
	('en_US', 262, 'Somme'),
	('en_US', 263, 'Tarn'),
	('en_US', 264, 'Tarn-et-Garonne'),
	('en_US', 265, 'Var'),
	('en_US', 266, 'Vaucluse'),
	('en_US', 267, 'Vendée'),
	('en_US', 268, 'Vienne'),
	('en_US', 269, 'Haute-Vienne'),
	('en_US', 270, 'Vosges'),
	('en_US', 271, 'Yonne'),
	('en_US', 272, 'Territoire-de-Belfort'),
	('en_US', 273, 'Essonne'),
	('en_US', 274, 'Hauts-de-Seine'),
	('en_US', 275, 'Seine-Saint-Denis'),
	('en_US', 276, 'Val-de-Marne'),
	('en_US', 277, 'Val-d\'Oise'),
	('en_US', 278, 'Alba'),
	('en_US', 279, 'Arad'),
	('en_US', 280, 'Argeş'),
	('en_US', 281, 'Bacău'),
	('en_US', 282, 'Bihor'),
	('en_US', 283, 'Bistriţa-Năsăud'),
	('en_US', 284, 'Botoşani'),
	('en_US', 285, 'Braşov'),
	('en_US', 286, 'Brăila'),
	('en_US', 287, 'Bucureşti'),
	('en_US', 288, 'Buzău'),
	('en_US', 289, 'Caraş-Severin'),
	('en_US', 290, 'Călăraşi'),
	('en_US', 291, 'Cluj'),
	('en_US', 292, 'Constanţa'),
	('en_US', 293, 'Covasna'),
	('en_US', 294, 'Dâmboviţa'),
	('en_US', 295, 'Dolj'),
	('en_US', 296, 'Galaţi'),
	('en_US', 297, 'Giurgiu'),
	('en_US', 298, 'Gorj'),
	('en_US', 299, 'Harghita'),
	('en_US', 300, 'Hunedoara'),
	('en_US', 301, 'Ialomiţa'),
	('en_US', 302, 'Iaşi'),
	('en_US', 303, 'Ilfov'),
	('en_US', 304, 'Maramureş'),
	('en_US', 305, 'Mehedinţi'),
	('en_US', 306, 'Mureş'),
	('en_US', 307, 'Neamţ'),
	('en_US', 308, 'Olt'),
	('en_US', 309, 'Prahova'),
	('en_US', 310, 'Satu-Mare'),
	('en_US', 311, 'Sălaj'),
	('en_US', 312, 'Sibiu'),
	('en_US', 313, 'Suceava'),
	('en_US', 314, 'Teleorman'),
	('en_US', 315, 'Timiş'),
	('en_US', 316, 'Tulcea'),
	('en_US', 317, 'Vaslui'),
	('en_US', 318, 'Vâlcea'),
	('en_US', 319, 'Vrancea'),
	('en_US', 320, 'Lappi'),
	('en_US', 321, 'Pohjois-Pohjanmaa'),
	('en_US', 322, 'Kainuu'),
	('en_US', 323, 'Pohjois-Karjala'),
	('en_US', 324, 'Pohjois-Savo'),
	('en_US', 325, 'Etelä-Savo'),
	('en_US', 326, 'Etelä-Pohjanmaa'),
	('en_US', 327, 'Pohjanmaa'),
	('en_US', 328, 'Pirkanmaa'),
	('en_US', 329, 'Satakunta'),
	('en_US', 330, 'Keski-Pohjanmaa'),
	('en_US', 331, 'Keski-Suomi'),
	('en_US', 332, 'Varsinais-Suomi'),
	('en_US', 333, 'Etelä-Karjala'),
	('en_US', 334, 'Päijät-Häme'),
	('en_US', 335, 'Kanta-Häme'),
	('en_US', 336, 'Uusimaa'),
	('en_US', 337, 'Itä-Uusimaa'),
	('en_US', 338, 'Kymenlaakso'),
	('en_US', 339, 'Ahvenanmaa'),
	('en_US', 340, 'Harjumaa'),
	('en_US', 341, 'Hiiumaa'),
	('en_US', 342, 'Ida-Virumaa'),
	('en_US', 343, 'Jõgevamaa'),
	('en_US', 344, 'Järvamaa'),
	('en_US', 345, 'Läänemaa'),
	('en_US', 346, 'Lääne-Virumaa'),
	('en_US', 347, 'Põlvamaa'),
	('en_US', 348, 'Pärnumaa'),
	('en_US', 349, 'Raplamaa'),
	('en_US', 350, 'Saaremaa'),
	('en_US', 351, 'Tartumaa'),
	('en_US', 352, 'Valgamaa'),
	('en_US', 353, 'Viljandimaa'),
	('en_US', 354, 'Võrumaa'),
	('en_US', 355, 'Daugavpils'),
	('en_US', 356, 'Jelgava'),
	('en_US', 357, 'Jēkabpils'),
	('en_US', 358, 'Jūrmala'),
	('en_US', 359, 'Liepāja'),
	('en_US', 360, 'Liepājas novads'),
	('en_US', 361, 'Rēzekne'),
	('en_US', 362, 'Rīga'),
	('en_US', 363, 'Rīgas novads'),
	('en_US', 364, 'Valmiera'),
	('en_US', 365, 'Ventspils'),
	('en_US', 366, 'Aglonas novads'),
	('en_US', 367, 'Aizkraukles novads'),
	('en_US', 368, 'Aizputes novads'),
	('en_US', 369, 'Aknīstes novads'),
	('en_US', 370, 'Alojas novads'),
	('en_US', 371, 'Alsungas novads'),
	('en_US', 372, 'Alūksnes novads'),
	('en_US', 373, 'Amatas novads'),
	('en_US', 374, 'Apes novads'),
	('en_US', 375, 'Auces novads'),
	('en_US', 376, 'Babītes novads'),
	('en_US', 377, 'Baldones novads'),
	('en_US', 378, 'Baltinavas novads'),
	('en_US', 379, 'Balvu novads'),
	('en_US', 380, 'Bauskas novads'),
	('en_US', 381, 'Beverīnas novads'),
	('en_US', 382, 'Brocēnu novads'),
	('en_US', 383, 'Burtnieku novads'),
	('en_US', 384, 'Carnikavas novads'),
	('en_US', 385, 'Cesvaines novads'),
	('en_US', 386, 'Ciblas novads'),
	('en_US', 387, 'Cēsu novads'),
	('en_US', 388, 'Dagdas novads'),
	('en_US', 389, 'Daugavpils novads'),
	('en_US', 390, 'Dobeles novads'),
	('en_US', 391, 'Dundagas novads'),
	('en_US', 392, 'Durbes novads'),
	('en_US', 393, 'Engures novads'),
	('en_US', 394, 'Garkalnes novads'),
	('en_US', 395, 'Grobiņas novads'),
	('en_US', 396, 'Gulbenes novads'),
	('en_US', 397, 'Iecavas novads'),
	('en_US', 398, 'Ikšķiles novads'),
	('en_US', 399, 'Ilūkstes novads'),
	('en_US', 400, 'Inčukalna novads'),
	('en_US', 401, 'Jaunjelgavas novads'),
	('en_US', 402, 'Jaunpiebalgas novads'),
	('en_US', 403, 'Jaunpils novads'),
	('en_US', 404, 'Jelgavas novads'),
	('en_US', 405, 'Jēkabpils novads'),
	('en_US', 406, 'Kandavas novads'),
	('en_US', 407, 'Kokneses novads'),
	('en_US', 408, 'Krimuldas novads'),
	('en_US', 409, 'Krustpils novads'),
	('en_US', 410, 'Krāslavas novads'),
	('en_US', 411, 'Kuldīgas novads'),
	('en_US', 412, 'Kārsavas novads'),
	('en_US', 413, 'Lielvārdes novads'),
	('en_US', 414, 'Limbažu novads'),
	('en_US', 415, 'Lubānas novads'),
	('en_US', 416, 'Ludzas novads'),
	('en_US', 417, 'Līgatnes novads'),
	('en_US', 418, 'Līvānu novads'),
	('en_US', 419, 'Madonas novads'),
	('en_US', 420, 'Mazsalacas novads'),
	('en_US', 421, 'Mālpils novads'),
	('en_US', 422, 'Mārupes novads'),
	('en_US', 423, 'Naukšēnu novads'),
	('en_US', 424, 'Neretas novads'),
	('en_US', 425, 'Nīcas novads'),
	('en_US', 426, 'Ogres novads'),
	('en_US', 427, 'Olaines novads'),
	('en_US', 428, 'Ozolnieku novads'),
	('en_US', 429, 'Preiļu novads'),
	('en_US', 430, 'Priekules novads'),
	('en_US', 431, 'Priekuļu novads'),
	('en_US', 432, 'Pārgaujas novads'),
	('en_US', 433, 'Pāvilostas novads'),
	('en_US', 434, 'Pļaviņu novads'),
	('en_US', 435, 'Raunas novads'),
	('en_US', 436, 'Riebiņu novads'),
	('en_US', 437, 'Rojas novads'),
	('en_US', 438, 'Ropažu novads'),
	('en_US', 439, 'Rucavas novads'),
	('en_US', 440, 'Rugāju novads'),
	('en_US', 441, 'Rundāles novads'),
	('en_US', 442, 'Rēzeknes novads'),
	('en_US', 443, 'Rūjienas novads'),
	('en_US', 444, 'Salacgrīvas novads'),
	('en_US', 445, 'Salas novads'),
	('en_US', 446, 'Salaspils novads'),
	('en_US', 447, 'Saldus novads'),
	('en_US', 448, 'Saulkrastu novads'),
	('en_US', 449, 'Siguldas novads'),
	('en_US', 450, 'Skrundas novads'),
	('en_US', 451, 'Skrīveru novads'),
	('en_US', 452, 'Smiltenes novads'),
	('en_US', 453, 'Stopiņu novads'),
	('en_US', 454, 'Strenču novads'),
	('en_US', 455, 'Sējas novads'),
	('en_US', 456, 'Talsu novads'),
	('en_US', 457, 'Tukuma novads'),
	('en_US', 458, 'Tērvetes novads'),
	('en_US', 459, 'Vaiņodes novads'),
	('en_US', 460, 'Valkas novads'),
	('en_US', 461, 'Valmieras novads'),
	('en_US', 462, 'Varakļānu novads'),
	('en_US', 463, 'Vecpiebalgas novads'),
	('en_US', 464, 'Vecumnieku novads'),
	('en_US', 465, 'Ventspils novads'),
	('en_US', 466, 'Viesītes novads'),
	('en_US', 467, 'Viļakas novads'),
	('en_US', 468, 'Viļānu novads'),
	('en_US', 469, 'Vārkavas novads'),
	('en_US', 470, 'Zilupes novads'),
	('en_US', 471, 'Ādažu novads'),
	('en_US', 472, 'Ērgļu novads'),
	('en_US', 473, 'Ķeguma novads'),
	('en_US', 474, 'Ķekavas novads'),
	('en_US', 475, 'Alytaus Apskritis'),
	('en_US', 476, 'Kauno Apskritis'),
	('en_US', 477, 'Klaipėdos Apskritis'),
	('en_US', 478, 'Marijampolės Apskritis'),
	('en_US', 479, 'Panevėžio Apskritis'),
	('en_US', 480, 'Šiaulių Apskritis'),
	('en_US', 481, 'Tauragės Apskritis'),
	('en_US', 482, 'Telšių Apskritis'),
	('en_US', 483, 'Utenos Apskritis'),
	('en_US', 484, 'Vilniaus Apskritis');
/*!40000 ALTER TABLE `directory_country_region_name` ENABLE KEYS */;

-- Dumping structure for table magento.directory_currency_rate
CREATE TABLE IF NOT EXISTS `directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `IDX_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

-- Dumping data for table magento.directory_currency_rate: ~4 rows (approximately)
/*!40000 ALTER TABLE `directory_currency_rate` DISABLE KEYS */;
INSERT INTO `directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
	('EUR', 'EUR', 1.000000000000),
	('EUR', 'USD', 1.415000000000),
	('USD', 'EUR', 0.706700000000),
	('USD', 'USD', 1.000000000000);
/*!40000 ALTER TABLE `directory_currency_rate` ENABLE KEYS */;

-- Dumping structure for table magento.downloadable_link
CREATE TABLE IF NOT EXISTS `downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`),
  CONSTRAINT `FK_DOWNLOADABLE_LINK_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table';

-- Dumping data for table magento.downloadable_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link` ENABLE KEYS */;

-- Dumping structure for table magento.downloadable_link_price
CREATE TABLE IF NOT EXISTS `downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table';

-- Dumping data for table magento.downloadable_link_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link_price` ENABLE KEYS */;

-- Dumping structure for table magento.downloadable_link_purchased
CREATE TABLE IF NOT EXISTS `downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `FK_DL_LNK_PURCHASED_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_DL_LNK_PURCHASED_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table';

-- Dumping data for table magento.downloadable_link_purchased: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link_purchased` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link_purchased` ENABLE KEYS */;

-- Dumping structure for table magento.downloadable_link_purchased_item
CREATE TABLE IF NOT EXISTS `downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`),
  CONSTRAINT `FK_46CC8E252307CE62F00A8F1887512A39` FOREIGN KEY (`purchased_id`) REFERENCES `downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_B219BF25756700DEE44550B21220ECCE` FOREIGN KEY (`order_item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table';

-- Dumping data for table magento.downloadable_link_purchased_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link_purchased_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link_purchased_item` ENABLE KEYS */;

-- Dumping structure for table magento.downloadable_link_title
CREATE TABLE IF NOT EXISTS `downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`),
  KEY `IDX_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_LINK_ID_DOWNLOADABLE_LINK_LINK_ID` FOREIGN KEY (`link_id`) REFERENCES `downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOWNLOADABLE_LINK_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table';

-- Dumping data for table magento.downloadable_link_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_link_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_link_title` ENABLE KEYS */;

-- Dumping structure for table magento.downloadable_sample
CREATE TABLE IF NOT EXISTS `downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_DL_SAMPLE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table';

-- Dumping data for table magento.downloadable_sample: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_sample` ENABLE KEYS */;

-- Dumping structure for table magento.downloadable_sample_title
CREATE TABLE IF NOT EXISTS `downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`),
  KEY `IDX_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_DL_SAMPLE_TTL_SAMPLE_ID_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table';

-- Dumping data for table magento.downloadable_sample_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `downloadable_sample_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `downloadable_sample_title` ENABLE KEYS */;

-- Dumping structure for table magento.ds_news_entities
CREATE TABLE IF NOT EXISTS `ds_news_entities` (
  `news_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table magento.ds_news_entities: ~0 rows (approximately)
/*!40000 ALTER TABLE `ds_news_entities` DISABLE KEYS */;
/*!40000 ALTER TABLE `ds_news_entities` ENABLE KEYS */;

-- Dumping structure for table magento.eav_attribute
CREATE TABLE IF NOT EXISTS `eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `IDX_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`),
  CONSTRAINT `FK_EAV_ATTRIBUTE_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute';

-- Dumping data for table magento.eav_attribute: ~131 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute` DISABLE KEYS */;
INSERT INTO `eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
	(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
	(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
	(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
	(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
	(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
	(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
	(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
	(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
	(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
	(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
	(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
	(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
	(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
	(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'datetime', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
	(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
	(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
	(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
	(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
	(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
	(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
	(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
	(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
	(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
	(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
	(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
	(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
	(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
	(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
	(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
	(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
	(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
	(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
	(41, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(42, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
	(43, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
	(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
	(45, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
	(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
	(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
	(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
	(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
	(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
	(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
	(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
	(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
	(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(57, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(58, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
	(59, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
	(60, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
	(61, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
	(62, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
	(63, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
	(64, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
	(65, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
	(66, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
	(67, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
	(68, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
	(69, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
	(70, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
	(71, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
	(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
	(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
	(74, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
	(75, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
	(76, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, 'The Special Price is active only when lower than the Actual Price'),
	(77, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate_specialprice', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(78, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(79, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
	(80, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
	(81, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
	(82, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
	(83, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
	(84, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
	(85, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
	(86, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
	(87, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
	(88, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
	(89, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(90, 4, 'group_price', NULL, 'catalog/product_attribute_backend_groupprice', 'decimal', NULL, NULL, 'text', 'Group Price', NULL, NULL, 0, 0, NULL, 0, NULL),
	(91, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
	(92, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
	(93, 4, 'news_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(94, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
	(95, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
	(96, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
	(97, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
	(98, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(99, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
	(100, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
	(101, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
	(102, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
	(103, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
	(104, 4, 'custom_design_from', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
	(105, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
	(106, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
	(107, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
	(108, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(109, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container1', 0, NULL),
	(110, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(111, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
	(112, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
	(113, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
	(114, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
	(115, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(116, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(117, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
	(118, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
	(119, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
	(120, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer\'s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
	(121, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
	(122, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
	(123, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(124, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(125, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
	(126, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
	(127, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
	(128, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
	(129, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
	(130, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
	(131, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL);
/*!40000 ALTER TABLE `eav_attribute` ENABLE KEYS */;

-- Dumping structure for table magento.eav_attribute_group
CREATE TABLE IF NOT EXISTS `eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_ATTRIBUTE_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  CONSTRAINT `FK_EAV_ATTR_GROUP_ATTR_SET_ID_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group';

-- Dumping data for table magento.eav_attribute_group: ~17 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_group` DISABLE KEYS */;
INSERT INTO `eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
	(1, 1, 'General', 1, 1),
	(2, 2, 'General', 1, 1),
	(3, 3, 'General', 10, 1),
	(4, 3, 'General Information', 2, 0),
	(5, 3, 'Display Settings', 20, 0),
	(6, 3, 'Custom Design', 30, 0),
	(7, 4, 'General', 1, 1),
	(8, 4, 'Prices', 2, 0),
	(9, 4, 'Meta Information', 3, 0),
	(10, 4, 'Images', 4, 0),
	(11, 4, 'Recurring Profile', 5, 0),
	(12, 4, 'Design', 6, 0),
	(13, 5, 'General', 1, 1),
	(14, 6, 'General', 1, 1),
	(15, 7, 'General', 1, 1),
	(16, 8, 'General', 1, 1),
	(17, 4, 'Gift Options', 7, 0);
/*!40000 ALTER TABLE `eav_attribute_group` ENABLE KEYS */;

-- Dumping structure for table magento.eav_attribute_label
CREATE TABLE IF NOT EXISTS `eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`),
  CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ATTRIBUTE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label';

-- Dumping data for table magento.eav_attribute_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_attribute_label` ENABLE KEYS */;

-- Dumping structure for table magento.eav_attribute_option
CREATE TABLE IF NOT EXISTS `eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option';

-- Dumping data for table magento.eav_attribute_option: ~2 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_option` DISABLE KEYS */;
INSERT INTO `eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
	(1, 18, 0),
	(2, 18, 1);
/*!40000 ALTER TABLE `eav_attribute_option` ENABLE KEYS */;

-- Dumping structure for table magento.eav_attribute_option_value
CREATE TABLE IF NOT EXISTS `eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `IDX_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ATTR_OPT_VAL_OPT_ID_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value';

-- Dumping data for table magento.eav_attribute_option_value: ~2 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_option_value` DISABLE KEYS */;
INSERT INTO `eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
	(1, 1, 0, 'Male'),
	(2, 2, 0, 'Female');
/*!40000 ALTER TABLE `eav_attribute_option_value` ENABLE KEYS */;

-- Dumping structure for table magento.eav_attribute_set
CREATE TABLE IF NOT EXISTS `eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `UNQ_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `IDX_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`),
  CONSTRAINT `FK_EAV_ATTR_SET_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set';

-- Dumping data for table magento.eav_attribute_set: ~8 rows (approximately)
/*!40000 ALTER TABLE `eav_attribute_set` DISABLE KEYS */;
INSERT INTO `eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
	(1, 1, 'Default', 1),
	(2, 2, 'Default', 1),
	(3, 3, 'Default', 1),
	(4, 4, 'Default', 1),
	(5, 5, 'Default', 1),
	(6, 6, 'Default', 1),
	(7, 7, 'Default', 1),
	(8, 8, 'Default', 1);
/*!40000 ALTER TABLE `eav_attribute_set` ENABLE KEYS */;

-- Dumping structure for table magento.eav_entity
CREATE TABLE IF NOT EXISTS `eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_ENTITY_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity';

-- Dumping data for table magento.eav_entity: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity` ENABLE KEYS */;

-- Dumping structure for table magento.eav_entity_attribute
CREATE TABLE IF NOT EXISTS `eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `IDX_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_ATTR_ATTR_GROUP_ID_EAV_ATTR_GROUP_ATTR_GROUP_ID` FOREIGN KEY (`attribute_group_id`) REFERENCES `eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes';

-- Dumping data for table magento.eav_entity_attribute: ~129 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_attribute` DISABLE KEYS */;
INSERT INTO `eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
	(1, 1, 1, 1, 1, 10),
	(2, 1, 1, 1, 2, 0),
	(3, 1, 1, 1, 3, 20),
	(4, 1, 1, 1, 4, 30),
	(5, 1, 1, 1, 5, 40),
	(6, 1, 1, 1, 6, 50),
	(7, 1, 1, 1, 7, 60),
	(8, 1, 1, 1, 8, 70),
	(9, 1, 1, 1, 9, 80),
	(10, 1, 1, 1, 10, 25),
	(11, 1, 1, 1, 11, 90),
	(12, 1, 1, 1, 12, 0),
	(13, 1, 1, 1, 13, 0),
	(14, 1, 1, 1, 14, 0),
	(15, 1, 1, 1, 15, 100),
	(16, 1, 1, 1, 16, 0),
	(17, 1, 1, 1, 17, 86),
	(18, 1, 1, 1, 18, 110),
	(19, 2, 2, 2, 19, 10),
	(20, 2, 2, 2, 20, 20),
	(21, 2, 2, 2, 21, 30),
	(22, 2, 2, 2, 22, 40),
	(23, 2, 2, 2, 23, 50),
	(24, 2, 2, 2, 24, 60),
	(25, 2, 2, 2, 25, 70),
	(26, 2, 2, 2, 26, 80),
	(27, 2, 2, 2, 27, 90),
	(28, 2, 2, 2, 28, 100),
	(29, 2, 2, 2, 29, 100),
	(30, 2, 2, 2, 30, 110),
	(31, 2, 2, 2, 31, 120),
	(32, 2, 2, 2, 32, 130),
	(33, 1, 1, 1, 33, 111),
	(34, 1, 1, 1, 34, 112),
	(35, 1, 1, 1, 35, 28),
	(36, 2, 2, 2, 36, 140),
	(37, 2, 2, 2, 37, 132),
	(38, 2, 2, 2, 38, 133),
	(39, 2, 2, 2, 39, 134),
	(40, 2, 2, 2, 40, 135),
	(41, 3, 3, 4, 41, 1),
	(42, 3, 3, 4, 42, 2),
	(43, 3, 3, 4, 43, 3),
	(44, 3, 3, 4, 44, 4),
	(45, 3, 3, 4, 45, 5),
	(46, 3, 3, 4, 46, 6),
	(47, 3, 3, 4, 47, 7),
	(48, 3, 3, 4, 48, 8),
	(49, 3, 3, 5, 49, 10),
	(50, 3, 3, 5, 50, 20),
	(51, 3, 3, 5, 51, 30),
	(52, 3, 3, 4, 52, 12),
	(53, 3, 3, 4, 53, 13),
	(54, 3, 3, 4, 54, 14),
	(55, 3, 3, 4, 55, 15),
	(56, 3, 3, 4, 56, 16),
	(57, 3, 3, 4, 57, 17),
	(58, 3, 3, 6, 58, 10),
	(59, 3, 3, 6, 59, 30),
	(60, 3, 3, 6, 60, 40),
	(61, 3, 3, 6, 61, 50),
	(62, 3, 3, 6, 62, 60),
	(63, 3, 3, 4, 63, 24),
	(64, 3, 3, 4, 64, 25),
	(65, 3, 3, 5, 65, 40),
	(66, 3, 3, 5, 66, 50),
	(67, 3, 3, 4, 67, 10),
	(68, 3, 3, 6, 68, 5),
	(69, 3, 3, 6, 69, 6),
	(70, 3, 3, 5, 70, 51),
	(71, 4, 4, 7, 71, 1),
	(72, 4, 4, 7, 72, 2),
	(73, 4, 4, 7, 73, 3),
	(74, 4, 4, 7, 74, 4),
	(75, 4, 4, 8, 75, 1),
	(76, 4, 4, 8, 76, 3),
	(77, 4, 4, 8, 77, 4),
	(78, 4, 4, 8, 78, 5),
	(79, 4, 4, 8, 79, 6),
	(80, 4, 4, 7, 80, 5),
	(81, 4, 4, 9, 82, 1),
	(82, 4, 4, 9, 83, 2),
	(83, 4, 4, 9, 84, 3),
	(84, 4, 4, 10, 85, 1),
	(85, 4, 4, 10, 86, 2),
	(86, 4, 4, 10, 87, 3),
	(87, 4, 4, 10, 88, 4),
	(88, 4, 4, 7, 89, 6),
	(89, 4, 4, 8, 90, 2),
	(90, 4, 4, 8, 91, 7),
	(91, 4, 4, 7, 93, 7),
	(92, 4, 4, 7, 94, 8),
	(93, 4, 4, 10, 95, 5),
	(94, 4, 4, 7, 96, 9),
	(95, 4, 4, 7, 97, 10),
	(96, 4, 4, 7, 98, 11),
	(97, 4, 4, 8, 99, 8),
	(98, 4, 4, 11, 100, 1),
	(99, 4, 4, 11, 101, 2),
	(100, 4, 4, 7, 102, 12),
	(101, 4, 4, 12, 103, 1),
	(102, 4, 4, 12, 104, 2),
	(103, 4, 4, 12, 105, 3),
	(104, 4, 4, 12, 106, 4),
	(105, 4, 4, 12, 107, 5),
	(106, 4, 4, 7, 108, 13),
	(107, 4, 4, 12, 109, 6),
	(108, 4, 4, 7, 110, 14),
	(109, 4, 4, 7, 111, 15),
	(110, 4, 4, 7, 112, 16),
	(111, 4, 4, 7, 113, 17),
	(112, 4, 4, 7, 114, 18),
	(113, 4, 4, 7, 115, 19),
	(114, 4, 4, 7, 116, 20),
	(115, 4, 4, 7, 117, 21),
	(116, 4, 4, 8, 118, 9),
	(117, 4, 4, 8, 119, 10),
	(118, 4, 4, 8, 120, 11),
	(119, 4, 4, 8, 121, 12),
	(120, 4, 4, 17, 122, 1),
	(121, 4, 4, 7, 123, 22),
	(122, 4, 4, 7, 124, 23),
	(123, 4, 4, 7, 125, 24),
	(124, 4, 4, 8, 126, 13),
	(125, 4, 4, 7, 127, 25),
	(126, 4, 4, 7, 128, 26),
	(127, 4, 4, 7, 129, 27),
	(128, 4, 4, 7, 130, 28),
	(129, 4, 4, 7, 131, 29);
/*!40000 ALTER TABLE `eav_entity_attribute` ENABLE KEYS */;

-- Dumping structure for table magento.eav_entity_datetime
CREATE TABLE IF NOT EXISTS `eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `FK_EAV_ENTITY_DATETIME_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_DATETIME_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_DTIME_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table magento.eav_entity_datetime: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_datetime` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_datetime` ENABLE KEYS */;

-- Dumping structure for table magento.eav_entity_decimal
CREATE TABLE IF NOT EXISTS `eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `FK_EAV_ENTITY_DECIMAL_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_DECIMAL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_DEC_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table magento.eav_entity_decimal: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_decimal` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_decimal` ENABLE KEYS */;

-- Dumping structure for table magento.eav_entity_int
CREATE TABLE IF NOT EXISTS `eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_INT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_INT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table magento.eav_entity_int: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_int` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_int` ENABLE KEYS */;

-- Dumping structure for table magento.eav_entity_store
CREATE TABLE IF NOT EXISTS `eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `IDX_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_ENTITY_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_STORE_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store';

-- Dumping data for table magento.eav_entity_store: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_store` DISABLE KEYS */;
INSERT INTO `eav_entity_store` (`entity_store_id`, `entity_type_id`, `store_id`, `increment_prefix`, `increment_last_id`) VALUES
	(1, 5, 1, '1', '100000011');
/*!40000 ALTER TABLE `eav_entity_store` ENABLE KEYS */;

-- Dumping structure for table magento.eav_entity_text
CREATE TABLE IF NOT EXISTS `eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_TEXT_ENTITY_TYPE_ID_EAV_ENTITY_TYPE_ENTITY_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_TEXT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table magento.eav_entity_text: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_text` ENABLE KEYS */;

-- Dumping structure for table magento.eav_entity_type
CREATE TABLE IF NOT EXISTS `eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type';

-- Dumping data for table magento.eav_entity_type: ~8 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_type` DISABLE KEYS */;
INSERT INTO `eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
	(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
	(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
	(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
	(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
	(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
	(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
	(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
	(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL);
/*!40000 ALTER TABLE `eav_entity_type` ENABLE KEYS */;

-- Dumping structure for table magento.eav_entity_varchar
CREATE TABLE IF NOT EXISTS `eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`),
  CONSTRAINT `FK_EAV_ENTITY_VARCHAR_ENTITY_ID_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTITY_VARCHAR_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_ENTT_VCHR_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix';

-- Dumping data for table magento.eav_entity_varchar: ~0 rows (approximately)
/*!40000 ALTER TABLE `eav_entity_varchar` DISABLE KEYS */;
/*!40000 ALTER TABLE `eav_entity_varchar` ENABLE KEYS */;

-- Dumping structure for table magento.eav_form_element
CREATE TABLE IF NOT EXISTS `eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `IDX_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  KEY `IDX_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_EAV_FORM_ELEMENT_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_FORM_ELEMENT_FIELDSET_ID_EAV_FORM_FIELDSET_FIELDSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_FORM_ELEMENT_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='Eav Form Element';

-- Dumping data for table magento.eav_form_element: ~57 rows (approximately)
/*!40000 ALTER TABLE `eav_form_element` DISABLE KEYS */;
INSERT INTO `eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
	(1, 1, NULL, 20, 0),
	(2, 1, NULL, 21, 1),
	(3, 1, NULL, 22, 2),
	(4, 1, NULL, 24, 3),
	(5, 1, NULL, 9, 4),
	(6, 1, NULL, 25, 5),
	(7, 1, NULL, 26, 6),
	(8, 1, NULL, 28, 7),
	(9, 1, NULL, 30, 8),
	(10, 1, NULL, 27, 9),
	(11, 1, NULL, 31, 10),
	(12, 1, NULL, 32, 11),
	(13, 2, NULL, 20, 0),
	(14, 2, NULL, 21, 1),
	(15, 2, NULL, 22, 2),
	(16, 2, NULL, 24, 3),
	(17, 2, NULL, 9, 4),
	(18, 2, NULL, 25, 5),
	(19, 2, NULL, 26, 6),
	(20, 2, NULL, 28, 7),
	(21, 2, NULL, 30, 8),
	(22, 2, NULL, 27, 9),
	(23, 2, NULL, 31, 10),
	(24, 2, NULL, 32, 11),
	(25, 3, NULL, 20, 0),
	(26, 3, NULL, 21, 1),
	(27, 3, NULL, 22, 2),
	(28, 3, NULL, 24, 3),
	(29, 3, NULL, 25, 4),
	(30, 3, NULL, 26, 5),
	(31, 3, NULL, 28, 6),
	(32, 3, NULL, 30, 7),
	(33, 3, NULL, 27, 8),
	(34, 3, NULL, 31, 9),
	(35, 3, NULL, 32, 10),
	(36, 4, NULL, 20, 0),
	(37, 4, NULL, 21, 1),
	(38, 4, NULL, 22, 2),
	(39, 4, NULL, 24, 3),
	(40, 4, NULL, 25, 4),
	(41, 4, NULL, 26, 5),
	(42, 4, NULL, 28, 6),
	(43, 4, NULL, 30, 7),
	(44, 4, NULL, 27, 8),
	(45, 4, NULL, 31, 9),
	(46, 4, NULL, 32, 10),
	(47, 5, 1, 5, 0),
	(48, 5, 1, 6, 1),
	(49, 5, 1, 7, 2),
	(50, 5, 1, 9, 3),
	(51, 5, 2, 24, 0),
	(52, 5, 2, 31, 1),
	(53, 5, 2, 25, 2),
	(54, 5, 2, 26, 3),
	(55, 5, 2, 28, 4),
	(56, 5, 2, 30, 5),
	(57, 5, 2, 27, 6);
/*!40000 ALTER TABLE `eav_form_element` ENABLE KEYS */;

-- Dumping structure for table magento.eav_form_fieldset
CREATE TABLE IF NOT EXISTS `eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  KEY `IDX_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`),
  CONSTRAINT `FK_EAV_FORM_FIELDSET_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset';

-- Dumping data for table magento.eav_form_fieldset: ~2 rows (approximately)
/*!40000 ALTER TABLE `eav_form_fieldset` DISABLE KEYS */;
INSERT INTO `eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
	(1, 5, 'general', 1),
	(2, 5, 'address', 2);
/*!40000 ALTER TABLE `eav_form_fieldset` ENABLE KEYS */;

-- Dumping structure for table magento.eav_form_fieldset_label
CREATE TABLE IF NOT EXISTS `eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_FORM_FIELDSET_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_FORM_FSET_LBL_FSET_ID_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

-- Dumping data for table magento.eav_form_fieldset_label: ~2 rows (approximately)
/*!40000 ALTER TABLE `eav_form_fieldset_label` DISABLE KEYS */;
INSERT INTO `eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
	(1, 0, 'Personal Information'),
	(2, 0, 'Address Information');
/*!40000 ALTER TABLE `eav_form_fieldset_label` ENABLE KEYS */;

-- Dumping structure for table magento.eav_form_type
CREATE TABLE IF NOT EXISTS `eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `IDX_EAV_FORM_TYPE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_EAV_FORM_TYPE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Eav Form Type';

-- Dumping data for table magento.eav_form_type: ~5 rows (approximately)
/*!40000 ALTER TABLE `eav_form_type` DISABLE KEYS */;
INSERT INTO `eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
	(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
	(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
	(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
	(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
	(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);
/*!40000 ALTER TABLE `eav_form_type` ENABLE KEYS */;

-- Dumping structure for table magento.eav_form_type_entity
CREATE TABLE IF NOT EXISTS `eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  CONSTRAINT `FK_EAV_FORM_TYPE_ENTITY_TYPE_ID_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_EAV_FORM_TYPE_ENTT_ENTT_TYPE_ID_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

-- Dumping data for table magento.eav_form_type_entity: ~8 rows (approximately)
/*!40000 ALTER TABLE `eav_form_type_entity` DISABLE KEYS */;
INSERT INTO `eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
	(1, 1),
	(2, 1),
	(5, 1),
	(1, 2),
	(2, 2),
	(3, 2),
	(4, 2),
	(5, 2);
/*!40000 ALTER TABLE `eav_form_type_entity` ENABLE KEYS */;

-- Dumping structure for table magento.gift_message
CREATE TABLE IF NOT EXISTS `gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message';

-- Dumping data for table magento.gift_message: ~0 rows (approximately)
/*!40000 ALTER TABLE `gift_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `gift_message` ENABLE KEYS */;

-- Dumping structure for table magento.importexport_importdata
CREATE TABLE IF NOT EXISTS `importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table';

-- Dumping data for table magento.importexport_importdata: ~0 rows (approximately)
/*!40000 ALTER TABLE `importexport_importdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `importexport_importdata` ENABLE KEYS */;

-- Dumping structure for table magento.index_event
CREATE TABLE IF NOT EXISTS `index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `UNQ_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Index Event';

-- Dumping data for table magento.index_event: ~12 rows (approximately)
/*!40000 ALTER TABLE `index_event` DISABLE KEYS */;
INSERT INTO `index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
	(1, 'save', 'catalog_category', 1, '2017-11-28 10:55:54', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(2, 'save', 'catalog_category', 2, '2017-11-28 10:55:54', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(3, 'save', 'catalog_category', 3, '2017-12-04 12:20:53', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(4, 'save', 'cataloginventory_stock_item', 1, '2017-12-04 12:23:50', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(5, 'catalog_reindex_price', 'catalog_product', 1, '2017-12-04 12:23:50', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(6, 'save', 'catalog_product', 1, '2017-12-04 12:23:51', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(7, 'save', 'cataloginventory_stock_item', 2, '2017-12-04 12:25:39', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";a:3:{s:35:"cataloginventory_stock_match_result";b:1;s:13:"reindex_stock";i:1;s:10:"product_id";s:1:"2";}s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(8, 'catalog_reindex_price', 'catalog_product', 2, '2017-12-04 12:25:40', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";a:2:{s:34:"catalog_product_price_match_result";b:1;s:2:"id";s:1:"2";}s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(9, 'save', 'catalog_product', 2, '2017-12-04 12:25:40', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
	(10, 'save', 'cataloginventory_stock_item', 3, '2017-12-04 12:26:55', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:1;s:41:"Mage_CatalogInventory_Model_Indexer_Stock";a:3:{s:35:"cataloginventory_stock_match_result";b:1;s:13:"reindex_stock";i:1;s:10:"product_id";s:1:"3";}s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(11, 'catalog_reindex_price', 'catalog_product', 3, '2017-12-04 12:26:55', NULL, 'a:6:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:1;s:40:"Mage_Catalog_Model_Product_Indexer_Price";a:2:{s:34:"catalog_product_price_match_result";b:1;s:2:"id";s:1:"3";}s:24:"catalog_url_match_result";b:0;s:37:"catalog_category_product_match_result";b:0;s:35:"catalogsearch_fulltext_match_result";b:0;}'),
	(12, 'save', 'catalog_product', 3, '2017-12-04 12:26:55', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:1;s:34:"catalog_product_price_match_result";b:1;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}');
/*!40000 ALTER TABLE `index_event` ENABLE KEYS */;

-- Dumping structure for table magento.index_process
CREATE TABLE IF NOT EXISTS `index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `UNQ_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Index Process';

-- Dumping data for table magento.index_process: ~9 rows (approximately)
/*!40000 ALTER TABLE `index_process` DISABLE KEYS */;
INSERT INTO `index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
	(1, 'catalog_product_attribute', 'pending', '2017-12-27 10:20:56', '2017-12-27 10:20:56', 'real_time'),
	(2, 'catalog_product_price', 'pending', '2017-12-27 10:20:56', '2017-12-27 10:20:56', 'real_time'),
	(3, 'catalog_url', 'pending', '2017-12-27 10:20:56', '2017-12-27 10:20:56', 'real_time'),
	(4, 'catalog_product_flat', 'pending', '2017-11-30 15:46:16', '2017-11-30 15:46:16', 'real_time'),
	(5, 'catalog_category_flat', 'pending', '2017-11-30 15:46:16', '2017-11-30 15:46:16', 'real_time'),
	(6, 'catalog_category_product', 'pending', '2017-12-27 10:20:56', '2017-12-27 10:20:56', 'real_time'),
	(7, 'catalogsearch_fulltext', 'pending', '2017-12-27 10:20:56', '2017-12-27 10:20:56', 'real_time'),
	(8, 'cataloginventory_stock', 'pending', '2017-12-27 10:20:56', '2017-12-27 10:20:56', 'real_time'),
	(9, 'tag_summary', 'pending', '2017-12-27 10:20:56', '2017-12-27 10:20:56', 'real_time');
/*!40000 ALTER TABLE `index_process` ENABLE KEYS */;

-- Dumping structure for table magento.index_process_event
CREATE TABLE IF NOT EXISTS `index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `IDX_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`),
  CONSTRAINT `FK_INDEX_PROCESS_EVENT_EVENT_ID_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_INDEX_PROCESS_EVENT_PROCESS_ID_INDEX_PROCESS_PROCESS_ID` FOREIGN KEY (`process_id`) REFERENCES `index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- Dumping data for table magento.index_process_event: ~4 rows (approximately)
/*!40000 ALTER TABLE `index_process_event` DISABLE KEYS */;
INSERT INTO `index_process_event` (`process_id`, `event_id`, `status`) VALUES
	(2, 8, 'done'),
	(2, 11, 'done'),
	(8, 7, 'done'),
	(8, 10, 'done');
/*!40000 ALTER TABLE `index_process_event` ENABLE KEYS */;

-- Dumping structure for table magento.log_customer
CREATE TABLE IF NOT EXISTS `log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Customers Table';

-- Dumping data for table magento.log_customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_customer` ENABLE KEYS */;

-- Dumping structure for table magento.log_quote
CREATE TABLE IF NOT EXISTS `log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time',
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

-- Dumping data for table magento.log_quote: ~5 rows (approximately)
/*!40000 ALTER TABLE `log_quote` DISABLE KEYS */;
INSERT INTO `log_quote` (`quote_id`, `visitor_id`, `created_at`, `deleted_at`) VALUES
	(1, 52, '2017-12-04 12:43:45', NULL),
	(2, 175, '2017-12-21 14:05:19', NULL),
	(3, 177, '2017-12-22 14:13:56', NULL),
	(10, 185, '2017-12-27 14:03:14', NULL),
	(11, 182, '2017-12-27 14:26:01', NULL),
	(12, 186, '2017-12-27 15:16:20', NULL),
	(15, 189, '2018-01-04 07:49:37', NULL);
/*!40000 ALTER TABLE `log_quote` ENABLE KEYS */;

-- Dumping structure for table magento.log_summary
CREATE TABLE IF NOT EXISTS `log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table';

-- Dumping data for table magento.log_summary: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_summary` ENABLE KEYS */;

-- Dumping structure for table magento.log_summary_type
CREATE TABLE IF NOT EXISTS `log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table';

-- Dumping data for table magento.log_summary_type: ~2 rows (approximately)
/*!40000 ALTER TABLE `log_summary_type` DISABLE KEYS */;
INSERT INTO `log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
	(1, 'hour', 1, 'HOUR'),
	(2, 'day', 1, 'DAY');
/*!40000 ALTER TABLE `log_summary_type` ENABLE KEYS */;

-- Dumping structure for table magento.log_url
CREATE TABLE IF NOT EXISTS `log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time',
  KEY `IDX_LOG_URL_VISITOR_ID` (`visitor_id`),
  KEY `url_id` (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

-- Dumping data for table magento.log_url: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_url` ENABLE KEYS */;

-- Dumping structure for table magento.log_url_info
CREATE TABLE IF NOT EXISTS `log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table';

-- Dumping data for table magento.log_url_info: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_url_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_url_info` ENABLE KEYS */;

-- Dumping structure for table magento.log_visitor
CREATE TABLE IF NOT EXISTS `log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table';

-- Dumping data for table magento.log_visitor: ~157 rows (approximately)
/*!40000 ALTER TABLE `log_visitor` DISABLE KEYS */;
INSERT INTO `log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
	(1, 'ajg3ga6f04gbfopej017q3s1i5', '2017-11-28 10:57:06', '2017-11-28 10:57:07', 0, 1),
	(2, 'algmuukrj58lj3159lvf1gio70', '2017-11-28 12:17:59', '2017-11-28 12:17:59', 0, 1),
	(3, 'gn047ls2iaqidimao1undi2903', '2017-11-29 08:53:03', '2017-11-29 09:38:25', 0, 1),
	(4, 'h6i0pl18j844d47ivcm0qb3m95', '2017-11-29 09:59:04', '2017-11-29 09:59:04', 0, 1),
	(5, '25cihpnvoj0gchainvkcfn5hl0', '2017-11-29 10:16:04', '2017-11-29 10:16:04', 0, 1),
	(6, 'ucmcch9g5qn773e1i61flpvjn2', '2017-11-29 10:21:04', '2017-11-29 10:21:04', 0, 1),
	(7, 'vb9vgd5eqpqdmhro741mrnk4d0', '2017-11-29 10:22:04', '2017-11-29 10:22:04', 0, 1),
	(8, 't7q29v5gteeqseul3ie1g0n453', '2017-11-29 10:44:00', '2017-11-29 10:44:01', 0, 1),
	(9, '7f14mthvf7d0m0u807960dqqa1', '2017-11-29 10:59:59', '2017-11-29 10:59:59', 0, 1),
	(10, 'uunifvh0svvnrol5d5q2bo3ho4', '2017-11-29 12:21:40', '2017-11-29 12:21:40', 0, 1),
	(11, 'mja75p59010thg5qu25no8ke72', '2017-11-29 15:20:13', '2017-11-29 15:55:27', 0, 1),
	(12, 'ggtcbn3bk4epbqjt3eirfft6j0', '2017-11-29 15:20:13', '2017-11-29 15:20:13', 0, 1),
	(13, 'ilcjcmn4voqm6l5k3gk2t3vil0', '2017-11-29 09:19:14', '2017-11-30 07:27:13', 0, 1),
	(14, '2098r7nlt23q08frareiosbhh0', '2017-11-30 07:33:09', '2017-11-30 07:33:12', 0, 1),
	(15, '6v72tges7iq4q1hqjb56vhc8e6', '2017-11-30 07:34:07', '2017-11-30 07:34:08', 0, 1),
	(16, '35ua1vp9d609dlb72efq8m8t93', '2017-11-30 07:35:07', '2017-11-30 07:35:08', 0, 1),
	(17, 'gtbj9l8nudibftqusu926ce2k4', '2017-11-30 07:36:07', '2017-11-30 07:36:08', 0, 1),
	(18, '1vnejpik8si7lscnu6tuikkjs1', '2017-11-30 07:38:07', '2017-11-30 07:38:08', 0, 1),
	(19, 'e2jkimcej4i17ba3m4rcr04dr5', '2017-11-30 07:39:07', '2017-11-30 07:39:08', 0, 1),
	(20, '1s15kh15olerqd7dtvcgsc4us7', '2017-11-30 07:40:07', '2017-11-30 07:40:07', 0, 1),
	(21, 'fhnracl7u2hofmv697qgdu3os4', '2017-11-30 07:41:07', '2017-11-30 07:41:08', 0, 1),
	(22, 'nr1gg4vesiut1kcmiebatpm311', '2017-11-30 07:42:07', '2017-11-30 07:42:08', 0, 1),
	(23, 'a3qgjh5ijuekhpt2r1m5su3bl1', '2017-11-30 07:43:07', '2017-11-30 07:43:08', 0, 1),
	(24, 'd233461nno3mhbvu8j0h70hm64', '2017-11-30 07:44:07', '2017-11-30 07:44:08', 0, 1),
	(25, 'e45j6kkcd6lro08d22q19dkek6', '2017-11-30 08:49:09', '2017-11-30 08:49:11', 0, 1),
	(26, '3k2f049c5immnplqo49qp17hr4', '2017-11-30 08:49:11', '2017-11-30 08:49:11', 0, 1),
	(27, '1mgfsdqf274pkrjdikrugp82d4', '2017-11-30 08:52:07', '2017-11-30 08:52:08', 0, 1),
	(28, '35p7avtljhn40jqilcrhjk57v4', '2017-11-30 08:52:08', '2017-11-30 08:52:08', 0, 1),
	(29, '0dm95p3oul20p7u3lp9798tf57', '2017-11-30 12:31:02', '2017-11-30 12:31:32', 0, 1),
	(30, '0dm95p3oul20p7u3lp9798tf57', '2017-11-30 12:48:00', '2017-11-30 12:48:01', 0, 1),
	(31, '0dm95p3oul20p7u3lp9798tf57', '2017-11-30 12:52:36', '2017-11-30 12:52:37', 0, 1),
	(32, '0dm95p3oul20p7u3lp9798tf57', '2017-11-30 12:53:54', '2017-11-30 12:53:55', 0, 1),
	(33, '0dm95p3oul20p7u3lp9798tf57', '2017-11-30 12:57:09', '2017-11-30 12:57:10', 0, 1),
	(34, '0dm95p3oul20p7u3lp9798tf57', '2017-11-30 12:59:03', '2017-11-30 12:59:04', 0, 1),
	(35, '0dm95p3oul20p7u3lp9798tf57', '2017-11-30 13:01:33', '2017-11-30 13:01:33', 0, 1),
	(36, '0dm95p3oul20p7u3lp9798tf57', '2017-11-30 13:07:51', '2017-11-30 13:07:52', 0, 1),
	(37, 'liudk37nprrql2q3g38h46g980', '2017-11-30 13:42:20', '2017-11-30 13:42:20', 0, 1),
	(38, '0dm95p3oul20p7u3lp9798tf57', '2017-11-30 13:46:03', '2017-11-30 13:46:08', 0, 1),
	(39, 'lforprull9qfdqp0ksdphpoak0', '2017-11-30 14:17:20', '2017-11-30 14:17:20', 0, 1),
	(40, 'vcfo0d0rca99o19r4it0s80g71', '2017-11-30 15:44:04', '2017-11-30 15:44:04', 0, 1),
	(41, 'vcfo0d0rca99o19r4it0s80g71', '2017-11-30 15:44:05', '2017-11-30 15:44:05', 0, 1),
	(42, 'injt31juad1t6o2qkk966qilj6', '2017-12-01 13:51:31', '2017-12-01 13:51:35', 0, 1),
	(43, '0fd3ll1oeahabibhl7pgct2ek7', '2017-12-01 15:20:56', '2017-12-01 15:20:56', 0, 1),
	(44, 'oa22f81h01f2rk16us8ae64iv0', '2017-12-01 15:27:52', '2017-12-01 15:35:51', 0, 1),
	(45, 'v2skg334eg5bnc8cg3r43pop52', '2017-12-04 07:41:27', '2017-12-04 10:39:24', 0, 1),
	(46, 'u663ufms759ugdu5ecii06hdg5', '2017-12-04 09:12:34', '2017-12-04 09:12:35', 0, 1),
	(47, 'pl6njlfbtbglia1rhek3p7gv91', '2017-12-04 10:08:34', '2017-12-04 10:08:35', 0, 1),
	(48, 'o1g2670g7baueijhak4d5l05a6', '2017-12-04 10:08:35', '2017-12-04 10:08:35', 0, 1),
	(49, 'v2skg334eg5bnc8cg3r43pop52', '2017-12-04 10:41:03', '2017-12-04 10:54:34', 0, 1),
	(50, 'tfgn3eca4gn4ag1k49pbmjena1', '2017-12-04 11:54:35', '2017-12-04 11:54:35', 0, 1),
	(51, 'ljrubtv9a2en0kdqcnfk9th0q3', '2017-12-04 12:00:35', '2017-12-04 12:00:35', 0, 1),
	(52, '2lc0op67cq99805bva9v2pmdk3', '2017-12-04 12:01:18', '2017-12-04 15:38:17', 0, 1),
	(53, 'msfnv7gcn024gnqlhonu974h93', '2017-12-04 13:07:35', '2017-12-04 13:07:35', 0, 1),
	(54, 'a55uadrhfatdfjdc9a3vi36217', '2017-12-04 13:12:35', '2017-12-04 13:12:35', 0, 1),
	(55, 'oj1bt5msrln41iokvs9v3mj2s7', '2017-12-04 13:13:35', '2017-12-04 13:13:35', 0, 1),
	(56, 'rvskt6ni9negop2sssgcd9a752', '2017-12-04 13:27:35', '2017-12-04 13:27:35', 0, 1),
	(57, 'nu1657fc6fhjcdd3h8p3q429m4', '2017-12-04 13:27:35', '2017-12-04 13:27:35', 0, 1),
	(58, 'rlbkp0hal2nr9vvgh4btnglsm4', '2017-12-04 13:48:35', '2017-12-04 13:48:35', 0, 1),
	(59, 'vv5lhbbn3rc74vhr6hrfmsc633', '2017-12-04 13:48:36', '2017-12-04 13:48:36', 0, 1),
	(60, '1442p0onab8lfbkoovrmeqdas4', '2017-12-04 13:55:35', '2017-12-04 13:55:35', 0, 1),
	(61, '1o7vmi6k513k443ourhjv64220', '2017-12-04 13:55:35', '2017-12-04 13:55:35', 0, 1),
	(62, 'inub77ddaug0fenmspm626hv35', '2017-12-04 13:56:35', '2017-12-04 13:56:35', 0, 1),
	(63, 'o6tvn9gns5dhqrkqkmio94f2v0', '2017-12-04 13:56:35', '2017-12-04 13:56:35', 0, 1),
	(64, 'p05imc5tqmkoqgu4ao6tvrhb60', '2017-12-04 13:59:36', '2017-12-04 13:59:36', 0, 1),
	(65, 't2tnilbuiv2dicblk98bn1mbc2', '2017-12-04 14:33:35', '2017-12-04 14:33:37', 0, 1),
	(66, '8lvab31iat77iqgbd5d0120cs0', '2017-12-04 15:12:35', '2017-12-04 15:12:35', 0, 1),
	(67, 'o21b3kvgik8kr7bh7pdi858rb6', '2017-12-04 15:19:35', '2017-12-04 15:19:35', 0, 1),
	(68, 'hv8lk5udu9p3gp2blkojs77u67', '2017-12-04 15:36:35', '2017-12-04 15:36:35', 0, 1),
	(69, 'sndqqn025p2dibci8t76id5s34', '2017-12-04 15:37:35', '2017-12-04 15:37:35', 0, 1),
	(70, 'gnjcda966nos4vd1gv5k4rrdn4', '2017-12-05 07:30:05', '2017-12-05 07:30:05', 0, 1),
	(71, 'ego9k7afqusg03q6f3fcs7roj0', '2017-12-05 07:30:05', '2017-12-05 07:30:05', 0, 1),
	(72, 'gnjcda966nos4vd1gv5k4rrdn4', '2017-12-05 07:30:06', '2017-12-05 08:50:42', 0, 1),
	(73, 'goe1ufuvt9pq1bop9aiebh60j6', '2017-12-05 07:30:31', '2017-12-05 07:30:31', 0, 1),
	(74, 'emq6q1b7qavokps7fqriqrinj0', '2017-12-05 07:31:31', '2017-12-05 07:31:34', 0, 1),
	(75, 'iv3gdo81f20674sde4fpr827h4', '2017-12-05 07:31:34', '2017-12-05 07:31:34', 0, 1),
	(76, 'duc7boa844ljf9nj3vgl81oea1', '2017-12-05 07:32:31', '2017-12-05 07:32:31', 0, 1),
	(77, 'd773faot49v162p48k2a3ojv30', '2017-12-05 07:32:32', '2017-12-05 07:32:32', 0, 1),
	(78, 'v05qca1nlhqmu6h4ug8sah4oc2', '2017-12-05 08:50:31', '2017-12-05 08:50:31', 0, 1),
	(79, '2clj4acfdjlrg1ejbtgoubn870', '2017-12-05 08:51:31', '2017-12-05 08:51:31', 0, 1),
	(80, 'irkr3489fo4qkv8esf9k95hp54', '2017-12-05 09:35:31', '2017-12-05 09:35:32', 0, 1),
	(81, 'knss0dus6boa9fucb73uk25eu0', '2017-12-05 09:58:56', '2017-12-05 09:58:56', 0, 1),
	(82, 'knss0dus6boa9fucb73uk25eu0', '2017-12-05 10:00:05', '2017-12-05 10:00:05', 0, 1),
	(83, 'knss0dus6boa9fucb73uk25eu0', '2017-12-05 10:01:20', '2017-12-05 11:52:28', 0, 1),
	(84, 'duc9796ksapdobuhhc11uf4dl0', '2017-12-05 11:54:31', '2017-12-05 11:54:31', 0, 1),
	(85, 'mbsroqvr4i407lrsl97ga7d1o3', '2017-12-05 11:54:32', '2017-12-05 11:54:32', 0, 1),
	(86, 'ga4o68ua40fq67af183b7g9tq6', '2017-12-05 12:52:31', '2017-12-05 12:52:32', 0, 1),
	(87, 'jqa4kgrtorn1u4cuke55kjsl93', '2017-12-05 12:55:31', '2017-12-05 12:55:31', 0, 1),
	(88, '15u4f47iaogjuin49buc4v02e3', '2017-12-05 13:01:31', '2017-12-05 13:01:32', 0, 1),
	(89, 't4bh5nlmeldjfhph3mm0op29h6', '2017-12-05 13:03:31', '2017-12-05 13:03:31', 0, 1),
	(90, '6svcd37phd9p43j8qh3up5anj5', '2017-12-05 13:04:31', '2017-12-05 13:04:31', 0, 1),
	(91, 'odna90h750uru3fcbhhcc2ba67', '2017-12-05 13:05:18', '2017-12-05 15:16:35', 0, 1),
	(92, 'efk0dbpqgkd4r86kbjba7v2q35', '2017-12-05 14:18:33', '2017-12-05 14:18:35', 0, 1),
	(93, 'gl4ena0c8de1useg6an8l8ig00', '2017-12-05 14:27:31', '2017-12-05 14:27:32', 0, 1),
	(94, 'moi0idqn33p7u96hpi2jhj9i82', '2017-12-05 14:27:32', '2017-12-05 14:27:32', 0, 1),
	(95, 'qufj3rc691su6sul08h530a0o1', '2017-12-05 14:50:31', '2017-12-05 14:50:32', 0, 1),
	(96, 'j7nq3m4n8h2e08f40ijjgnn955', '2017-12-05 14:50:32', '2017-12-05 14:50:32', 0, 1),
	(97, 't7qaa69mrn0nbnvujgrpu4rdk6', '2017-12-05 15:37:31', '2017-12-05 15:37:31', 0, 1),
	(98, '4gviv1k9l15gimpf0vplai16f4', '2017-12-05 15:37:32', '2017-12-05 15:37:32', 0, 1),
	(99, 'kqunvq09tb09bbd2082n3a0cb2', '2017-12-05 15:38:31', '2017-12-05 15:38:31', 0, 1),
	(100, 'de6oh1s0pjvur7ujanf1sau8q6', '2017-12-05 15:38:32', '2017-12-05 15:38:32', 0, 1),
	(101, '8qar7lb8t1i3cd6ch6c1h9chr7', '2017-12-06 07:23:38', '2017-12-06 07:23:41', 0, 1),
	(102, 'sntsttll5cl2vief91kd6ggaq6', '2017-12-06 07:23:41', '2017-12-06 09:38:26', 0, 1),
	(103, 'qjq91vos10lo81kco45oiqqq62', '2017-12-06 08:59:24', '2017-12-06 08:59:25', 0, 1),
	(104, '3ttfs5hll7rnngev3o2rps5jp2', '2017-12-06 08:59:25', '2017-12-06 08:59:25', 0, 1),
	(105, 'igipuju6s0tt3qb2mtc7bj86e4', '2017-12-06 08:59:25', '2017-12-06 08:59:25', 0, 1),
	(106, '7m18snl7qq60bbs1m0t0675e95', '2017-12-06 09:51:24', '2017-12-06 09:51:24', 0, 1),
	(107, 'fbush8ij0trc6radtb5895v6a0', '2017-12-06 09:54:24', '2017-12-06 09:54:24', 0, 1),
	(108, 'pve9hap2s4lhbitmpb6f5je690', '2017-12-06 10:37:24', '2017-12-06 10:37:24', 0, 1),
	(109, 'h6ngik3b934mplte4tfg0vi380', '2017-12-06 10:37:24', '2017-12-06 10:37:24', 0, 1),
	(110, '3dfbncvktoerntg5gket3frad3', '2017-12-06 10:37:25', '2017-12-06 10:37:25', 0, 1),
	(111, 'h0o67akog5vr7go302g5212md7', '2017-12-06 10:38:24', '2017-12-06 10:38:24', 0, 1),
	(112, 'a45ocaoc4debkislf3thcp4br2', '2017-12-06 10:38:24', '2017-12-06 10:38:25', 0, 1),
	(113, '6utv6c2n155s2295k02naoeu03', '2017-12-06 10:44:24', '2017-12-06 10:44:24', 0, 1),
	(114, 'vgkhfil4ov4dbfo4gden3rbqq5', '2017-12-06 10:44:24', '2017-12-06 10:44:24', 0, 1),
	(115, '2socoghhc793irl4pkihfqki41', '2017-12-06 10:45:24', '2017-12-06 10:45:24', 0, 1),
	(116, 'kl043rocjc0rh57foi7c812td0', '2017-12-06 10:45:24', '2017-12-06 10:45:25', 0, 1),
	(117, 'k18m0n1agv0a90pfisefov8736', '2017-12-06 10:59:24', '2017-12-06 10:59:24', 0, 1),
	(118, 'hqmib39ono3jv32dqekjd91ic7', '2017-12-06 10:59:24', '2017-12-06 10:59:24', 0, 1),
	(119, 'gvcr0b9v3gcvoujgl4bqgsp697', '2017-12-07 12:57:11', '2017-12-07 13:38:29', 0, 1),
	(120, 't1mtq30dpnttiqt2pe7cnidho6', '2017-12-07 13:58:08', '2017-12-07 13:58:09', 0, 1),
	(121, 'heo9jsddrir4fe358uoca376g7', '2017-12-08 09:34:23', '2017-12-08 11:05:57', 0, 1),
	(122, 'j7sao6qqd5ht9ksbetd32o4p22', '2017-12-08 10:34:47', '2017-12-08 10:34:47', 0, 1),
	(123, '45tvvuenie8i6sqr9n1cse9ns5', '2017-12-08 11:20:47', '2017-12-08 11:20:47', 0, 1),
	(124, 'ts2qegjmb4h172p4fb2293jbt5', '2017-12-08 11:20:47', '2017-12-08 11:20:47', 0, 1),
	(125, 'arbb3ucrb1ha7umfsk1gdqo5f5', '2017-12-08 11:20:48', '2017-12-08 11:20:48', 0, 1),
	(126, 'se9uonkap3cvm9shudq8pi5od1', '2017-12-08 11:48:47', '2017-12-08 11:48:48', 0, 1),
	(127, 'v2u0amrgrmbk14jjeh2nebrrn4', '2017-12-08 11:54:47', '2017-12-08 11:54:47', 0, 1),
	(128, 'vrfekjg79567has1veg4r4ft42', '2017-12-08 11:55:47', '2017-12-08 11:55:47', 0, 1),
	(129, 'evr0336gqdb3rr4fihl9h2gqg2', '2017-12-08 11:57:47', '2017-12-08 11:57:47', 0, 1),
	(130, 'suc1hfgomor492gil4jjv8pbm6', '2017-12-08 12:00:47', '2017-12-08 12:00:48', 0, 1),
	(131, '8u4o0hi3i04pgr6126fldmc7f2', '2017-12-08 12:01:47', '2017-12-08 12:01:47', 0, 1),
	(132, 'p8s5nedf17237o8gstlrq1g0c7', '2017-12-08 12:01:47', '2017-12-08 12:01:48', 0, 1),
	(133, '53p8l3fa8hndtqnv5ac451a1o0', '2017-12-08 12:02:47', '2017-12-08 12:02:47', 0, 1),
	(134, 'j1moued7u9ecvc41en2rsuqh75', '2017-12-08 12:03:47', '2017-12-08 12:03:47', 0, 1),
	(135, 'djjifelo8u1d4npud2pc0as0b3', '2017-12-08 12:30:46', '2017-12-08 13:09:15', 0, 1),
	(136, 'aipoqib1rpk5j5ddr1p418e4b4', '2017-12-08 13:31:47', '2017-12-08 13:31:47', 0, 1),
	(137, 'u8k4eijqrhjeosfrgh6440mm66', '2017-12-08 13:33:47', '2017-12-08 13:33:47', 0, 1),
	(138, '3618crehed31jc66k101503vp1', '2017-12-11 08:41:48', '2017-12-11 09:14:19', 0, 1),
	(139, 'difdhdtsum3lflq7nn5at2sdr6', '2017-12-11 09:42:24', '2017-12-11 09:42:24', 0, 1),
	(140, 'erp4aov2m1gl1op2s49spmdgu7', '2017-12-11 12:01:34', '2017-12-11 12:07:06', 0, 1),
	(141, 'nqp6auuch9bq8vibfcua1t9p54', '2017-12-11 13:02:49', '2017-12-11 13:02:50', 0, 1),
	(142, 'dof4ji8ttubbpfrc8satjncq80', '2017-12-11 13:06:49', '2017-12-11 13:06:50', 0, 1),
	(143, '59luu7igtuqvji4mp9eblnk8o6', '2017-12-11 13:16:24', '2017-12-11 13:56:28', 0, 1),
	(144, '8c4a6n69cq48gs9cu5br83bs50', '2017-12-11 14:16:49', '2017-12-11 14:16:50', 0, 1),
	(145, 'tpiouv5fob36cpo3u0hrnljpr0', '2017-12-11 15:46:24', '2017-12-11 15:46:25', 0, 1),
	(146, 's2eli96t31qdokrt0t2ecdbep6', '2017-12-11 19:30:52', '2017-12-11 19:30:53', 0, 1),
	(147, '8qol2igidtg8dgcqce7kqrhaj4', '2017-12-12 07:31:30', '2017-12-12 08:37:08', 0, 1),
	(148, 'd60rpu5qmt33aka82b4qmkr580', '2017-12-12 09:33:53', '2017-12-12 09:33:53', 0, 1),
	(149, 'neudva73444pteq7cdugi86is5', '2017-12-12 10:50:18', '2017-12-12 10:54:46', 0, 1),
	(150, '3ves8lvd66te67sm57kthogtk2', '2017-12-12 12:24:31', '2017-12-12 12:24:34', 0, 1),
	(151, 'sp2qebd00qjjuvkq3k8crcis51', '2017-12-12 15:14:43', '2017-12-12 15:41:25', 0, 1),
	(152, 'qlqv0rchfvc8qc3i0hnon59bp3', '2017-12-13 08:50:20', '2017-12-13 08:50:23', 0, 1),
	(153, '51d7li9uc3buk03gfrimbkfd83', '2017-12-13 12:32:00', '2017-12-13 12:32:18', 0, 1),
	(154, 'qd82qn22nmpm21eibvnijimd36', '2017-12-18 08:25:24', '2017-12-18 08:25:30', 0, 1),
	(155, '900h8n03pq85sgrj91nv2o15o4', '2017-12-18 09:26:42', '2017-12-18 10:36:47', 0, 1),
	(156, 'o901ntf1qvfi3em45k95k64702', '2017-12-18 10:27:40', '2017-12-18 10:27:44', 0, 1),
	(157, 'kpap4atojete1s2t6rsvp0k9t6', '2017-12-18 10:41:31', '2017-12-18 10:57:06', 0, 1),
	(158, 'lp3ducv3ad1lf2c5cnpaj4u4q4', '2017-12-18 12:08:54', '2017-12-18 12:09:00', 0, 1),
	(159, '0jkgqv3egnh0c1lkoo9pcugv86', '2017-12-18 12:08:57', '2017-12-18 12:09:00', 0, 1),
	(160, 'lib5hlguga7o9f1121542mjt66', '2017-12-18 12:08:58', '2017-12-18 12:09:00', 0, 1),
	(161, '4gvmofj1i966dimu9mhl3esb02', '2017-12-18 13:21:10', '2017-12-18 15:49:37', 0, 1),
	(162, 'hi8bn3vf2r3k6htt3qa6c4q8t7', '2017-12-19 07:37:52', '2017-12-19 07:37:52', 0, 1),
	(163, 'll29cuv1h49ii7k9tjds2f8mh7', '2017-12-19 12:28:15', '2017-12-19 12:59:40', 0, 1),
	(164, 'g69nr0ekja7995blt9e2mnujk4', '2017-12-19 13:33:49', '2017-12-19 13:33:50', 0, 1),
	(165, 'm5nhnk9kn7m26kqhj6ug2disl5', '2017-12-19 14:16:05', '2017-12-19 15:44:43', 0, 1),
	(166, 'pdlmc0vk7gprs43kuti8on6bt2', '2017-12-20 08:08:48', '2017-12-20 08:08:55', 0, 1),
	(167, '1eboicnkloqaodt4g6r9hvcea5', '2017-12-20 09:12:06', '2017-12-20 09:12:06', 0, 1),
	(168, '1eboicnkloqaodt4g6r9hvcea5', '2017-12-20 09:12:27', '2017-12-20 09:53:20', 0, 1),
	(169, 'gail5habbh066r1qtv2vnfbnc0', '2017-12-20 11:35:15', '2017-12-20 11:35:15', 0, 1),
	(170, 'gail5habbh066r1qtv2vnfbnc0', '2017-12-20 11:35:27', '2017-12-20 11:35:27', 0, 1),
	(171, 'gail5habbh066r1qtv2vnfbnc0', '2017-12-20 11:36:29', '2017-12-20 15:32:57', 0, 1),
	(172, 'hs9kd1hl7r78k7vqteaosrrjp7', '2017-12-20 11:47:03', '2017-12-20 12:40:42', 0, 1),
	(173, '1ts4j40g4vdg2o0qa9mibdj2t2', '2017-12-21 08:20:28', '2017-12-21 08:20:32', 0, 1),
	(174, '6one78reh1e8882h0g035ovtm1', '2017-12-21 08:20:33', '2017-12-21 08:53:14', 0, 1),
	(175, 'spdtjf4mcnaelkrr99q5h06na2', '2017-12-21 14:05:01', '2017-12-21 14:52:47', 0, 1),
	(176, 'mi0udd1bnlued5j15h918clav6', '2017-12-22 08:06:20', '2017-12-22 08:06:26', 0, 1),
	(177, '1sm1d0l2qbchisjbk4pqnfksn2', '2017-12-22 13:17:29', '2017-12-22 14:41:02', 0, 1),
	(178, 'r59bn48jon6u5t9bdfe69rdh76', '2017-12-26 07:47:33', '2017-12-26 08:30:47', 0, 1),
	(179, 'o7ulltsgkr19i88ituocc75j60', '2017-12-26 12:17:45', '2017-12-26 12:17:45', 0, 1),
	(180, 'qp4l4m2j9mjtainiaeq8s3lrc7', '2017-12-26 12:58:40', '2017-12-26 16:00:44', 0, 1),
	(181, 'rsbru3f4tqtmolevccb7qfb0i3', '2017-12-27 08:37:41', '2017-12-27 10:21:06', 0, 1),
	(182, 'mkbun8om81unp99gtjmhch7e71', '2017-12-27 13:14:29', '2017-12-27 15:31:51', 0, 1),
	(183, '5b7ot8452v7cidpfq8j087s7h2', '2017-12-27 13:29:17', '2017-12-27 14:02:47', 0, 1),
	(184, '08sfj8vm0pfgdslr31advg9k51', '2017-12-27 14:03:03', '2017-12-27 14:03:03', 0, 1),
	(185, '08sfj8vm0pfgdslr31advg9k51', '2017-12-27 14:03:04', '2017-12-27 14:04:58', 0, 1),
	(186, 'n7c1om9ps3cdgsudgmhh197db0', '2017-12-27 15:16:01', '2017-12-27 16:07:29', 0, 1),
	(187, 'gmm3asng98fp884o8fvhpkdmv1', '2017-12-28 10:22:09', '2017-12-28 16:03:34', 0, 1),
	(188, '4ie9dbaed7gqf24m3d167imp77', '2017-12-29 07:47:16', '2017-12-29 10:01:51', 0, 1),
	(189, '4ea521nf0c1f7h4r6cp8k27752', '2018-01-04 07:47:39', '2018-01-04 08:18:56', 0, 1),
	(190, 'n332uj4s0rbahsb00uitnqu3a0', '2018-01-04 10:00:36', '2018-01-04 10:00:36', 0, 1),
	(191, 'n332uj4s0rbahsb00uitnqu3a0', '2018-01-04 10:00:36', '2018-01-04 10:54:07', 0, 1),
	(192, 'b1hfjlqsdc3ir9ia52uj3crbi4', '2018-01-04 12:11:38', '2018-01-04 12:11:38', 0, 1),
	(193, '5hbimvem7do0ljc9rafb98fj42', '2018-01-04 14:13:23', '2018-01-04 15:37:58', 0, 1),
	(194, 'cjm485usilkfmji17bnfg74bo0', '2018-01-05 09:25:14', '2018-01-05 09:25:17', 0, 1);
/*!40000 ALTER TABLE `log_visitor` ENABLE KEYS */;

-- Dumping structure for table magento.log_visitor_info
CREATE TABLE IF NOT EXISTS `log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` varbinary(16) DEFAULT NULL,
  `remote_addr` varbinary(16) DEFAULT NULL,
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

-- Dumping data for table magento.log_visitor_info: ~157 rows (approximately)
/*!40000 ALTER TABLE `log_visitor_info` DISABLE KEYS */;
INSERT INTO `log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
	(1, 'http://mag.dev/index.php/install/wizard/end/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(2, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(3, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(4, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(5, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(6, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(7, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(8, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(9, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(10, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(11, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(12, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(13, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(14, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(15, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(16, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(17, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(18, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(19, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(20, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(21, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(22, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(23, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(24, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(25, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(26, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(27, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(28, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(29, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(30, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(31, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(32, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(33, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(34, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(35, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(36, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(37, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(38, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(39, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(40, 'http://mag.dev/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(41, 'http://mag.dev/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(42, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(43, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(44, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(45, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(46, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(47, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(48, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(49, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(50, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(51, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(52, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(53, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(54, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(55, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(56, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(57, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(58, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(59, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(60, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(61, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(62, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(63, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(64, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(65, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(66, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(67, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(68, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(69, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(70, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(71, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(72, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(73, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(74, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(75, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(76, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(77, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(78, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(79, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(80, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(81, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(82, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(83, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(84, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(85, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(86, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(87, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(88, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(89, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(90, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(91, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(92, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(93, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(94, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(95, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(96, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(97, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(98, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(99, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(100, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(101, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(102, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(103, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(104, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(105, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(106, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(107, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(108, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(109, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(110, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(111, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(112, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(113, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(114, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(115, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(116, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(117, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(118, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(119, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(120, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(121, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(122, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(123, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(124, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(125, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(126, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(127, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(128, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(129, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(130, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(131, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(132, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(133, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(134, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(135, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(136, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(137, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(138, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(139, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(140, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(141, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(142, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(143, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(144, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(145, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(146, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(147, 'http://mag.dev/index.php/admin/dashboard/index/key/8ea86b09c99b6fe4b19530929239707c/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(148, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(149, 'http://mag.dev/index.php/admin/catalog_product/index/key/c490f7a2fb29fb733fb865e0f171c89c/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(150, 'http://mag.dev/index.php/admin/csv/upload/key/57d8dad0b8d3b696ace2df3a0e7fd837/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(151, 'http://mag.dev/index.php/admin/csv/upload/key/b0d076debac20e3749fe875836a80885/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(152, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(153, 'http://mag.dev/index.php/admin/catalog_product/edit/id/3/key/2d359f0b6129f41bd528671a5ceb5db7/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36', NULL, 'uk,ru;q=0.9,en;q=0.8', '\0\0', '\0\0'),
	(154, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.56', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(155, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.56', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(156, NULL, 'Fiddler', NULL, NULL, '\0\0', '\0\0'),
	(157, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.86 Safari/537.36', NULL, 'en-US,en;q=0.8', '\0\0', '\0\0'),
	(158, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.56', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(159, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.56', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(160, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.56', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(161, 'http://mag.dev/index.php/admin/csv/upload/key/c8d733cf3cba60f288849d8346f0a78a/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.56', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(162, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.56', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(163, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.56', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(164, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.56', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(165, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(166, 'http://mag.dev/index.php/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(167, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(168, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(169, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(170, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(171, 'http://mag.dev/index.php/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(172, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.64', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(173, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(174, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(175, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(176, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(177, 'http://mag.dev/index.php/checkout/onepage/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(178, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(179, 'http://mag.dev/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.64', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(180, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(181, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(182, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36 OPR/49.0.2725.64', NULL, 'en-US,en;q=0.9', '\0\0', '\0\0'),
	(183, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(184, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(185, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(186, 'http://mag.dev/index.php/checkout/onepage/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(187, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(188, 'http://mag.dev/index.php/checkout/cart/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(189, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(190, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(191, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(192, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(193, NULL, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0'),
	(194, 'http://mag.dev/index.php/admin/banner/index/key/7002952223afb27054f7474d116fd54d/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.96 Safari/537.36', NULL, 'uk,ru;q=0.8,en;q=0.6', '\0\0', '\0\0');
/*!40000 ALTER TABLE `log_visitor_info` ENABLE KEYS */;

-- Dumping structure for table magento.log_visitor_online
CREATE TABLE IF NOT EXISTS `log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` varbinary(16) DEFAULT NULL,
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL',
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table';

-- Dumping data for table magento.log_visitor_online: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_visitor_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_visitor_online` ENABLE KEYS */;

-- Dumping structure for table magento.newsletter_problem
CREATE TABLE IF NOT EXISTS `newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`),
  CONSTRAINT `FK_NEWSLETTER_PROBLEM_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_NLTTR_PROBLEM_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems';

-- Dumping data for table magento.newsletter_problem: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_problem` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_problem` ENABLE KEYS */;

-- Dumping structure for table magento.newsletter_queue
CREATE TABLE IF NOT EXISTS `newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`),
  CONSTRAINT `FK_NEWSLETTER_QUEUE_TEMPLATE_ID_NEWSLETTER_TEMPLATE_TEMPLATE_ID` FOREIGN KEY (`template_id`) REFERENCES `newsletter_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue';

-- Dumping data for table magento.newsletter_queue: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_queue` ENABLE KEYS */;

-- Dumping structure for table magento.newsletter_queue_link
CREATE TABLE IF NOT EXISTS `newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`),
  KEY `IDX_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`),
  CONSTRAINT `FK_NEWSLETTER_QUEUE_LINK_QUEUE_ID_NEWSLETTER_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_NLTTR_QUEUE_LNK_SUBSCRIBER_ID_NLTTR_SUBSCRIBER_SUBSCRIBER_ID` FOREIGN KEY (`subscriber_id`) REFERENCES `newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link';

-- Dumping data for table magento.newsletter_queue_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_queue_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_queue_link` ENABLE KEYS */;

-- Dumping structure for table magento.newsletter_queue_store_link
CREATE TABLE IF NOT EXISTS `newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `IDX_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`),
  CONSTRAINT `FK_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_NLTTR_QUEUE_STORE_LNK_QUEUE_ID_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- Dumping data for table magento.newsletter_queue_store_link: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_queue_store_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletter_queue_store_link` ENABLE KEYS */;

-- Dumping structure for table magento.newsletter_subscriber
CREATE TABLE IF NOT EXISTS `newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`),
  CONSTRAINT `FK_NEWSLETTER_SUBSCRIBER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber';

-- Dumping data for table magento.newsletter_subscriber: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_subscriber` DISABLE KEYS */;
INSERT INTO `newsletter_subscriber` (`subscriber_id`, `store_id`, `change_status_at`, `customer_id`, `subscriber_email`, `subscriber_status`, `subscriber_confirm_code`) VALUES
	(1, 1, NULL, 1, 'user@gmail.com', 1, 'vzj3lhet6u1kxwf311gghyiz14tsrw2q');
/*!40000 ALTER TABLE `newsletter_subscriber` ENABLE KEYS */;

-- Dumping structure for table magento.newsletter_template
CREATE TABLE IF NOT EXISTS `newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `IDX_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `IDX_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Newsletter Template';

-- Dumping data for table magento.newsletter_template: ~0 rows (approximately)
/*!40000 ALTER TABLE `newsletter_template` DISABLE KEYS */;
INSERT INTO `newsletter_template` (`template_id`, `template_code`, `template_text`, `template_text_preprocessed`, `template_styles`, `template_type`, `template_subject`, `template_sender_name`, `template_sender_email`, `template_actual`, `added_at`, `modified_at`) VALUES
	(1, 'Example Newsletter Template', '{{template config_path="design/email/header"}}\n{{inlinecss file="email-inline.css"}}\n\n<table cellpadding="0" cellspacing="0" border="0">\n<tr>\n    <td class="full">\n        <table class="columns">\n            <tr>\n                <td class="email-heading">\n                    <h1>Welcome</h1>\n                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n                    sed do eiusmod tempor incididunt ut labore et.</p>\n                </td>\n                <td class="store-info">\n                    <h4>Contact Us</h4>\n                    <p>\n                        {{depend store_phone}}\n                        <b>Call Us:</b>\n                        <a href="tel:{{var phone}}">{{var store_phone}}</a><br>\n                        {{/depend}}\n                        {{depend store_hours}}\n                        <span class="no-link">{{var store_hours}}</span><br>\n                        {{/depend}}\n                        {{depend store_email}}\n                        <b>Email:</b> <a href="mailto:{{var store_email}}">{{var store_email}}</a>\n                        {{/depend}}\n                    </p>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td class="full">\n        <table class="columns">\n            <tr>\n                <td>\n                    <img width="600" src="http://placehold.it/600x200" class="main-image">\n                </td>\n                <td class="expander"></td>\n            </tr>\n        </table>\n        <table class="columns">\n            <tr>\n                <td class="panel">\n                    <p>Phasellus dictum sapien a neque luctus cursus. Pellentesque sem dolor, fringilla et pharetra\n                    vitae. <a href="#">Click it! &raquo;</a></p>\n                </td>\n                <td class="expander"></td>\n            </tr>\n        </table>\n    </td>\n</tr>\n<tr>\n    <td>\n        <table class="row">\n            <tr>\n                <td class="half left wrapper">\n                    <table class="columns">\n                        <tr>\n                            <td>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\n                                incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit,\n                                sed do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet.</p>\n                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor\n                                incididunt ut labore et. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed\n                                do eiusmod tempor incididunt ut labore et. Lorem ipsum dolor sit amet.</p>\n                                <table class="button">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Click Me!</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                </td>\n                <td class="half right wrapper last">\n                    <table class="columns">\n                        <tr>\n                            <td class="panel sidebar-links">\n                                <h6>Header Thing</h6>\n                                <p>Sub-head or something</p>\n                                <table>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <hr/>\n                                        </td>\n                                    </tr>\n                                    <tr>\n                                        <td>\n                                            <p><a href="#">Just a Plain Link &raquo;</a></p>\n                                        </td>\n                                    </tr>\n                                    <tr><td>&nbsp;</td></tr>\n                                </table>\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                    <br>\n                    <table class="columns">\n                        <tr>\n                            <td class="panel">\n                                <h6>Connect With Us:</h6>\n                                <table class="social-button facebook">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Facebook</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <hr>\n                                <table class="social-button twitter">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Twitter</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <hr>\n                                <table class="social-button google-plus">\n                                    <tr>\n                                        <td>\n                                            <a href="#">Google +</a>\n                                        </td>\n                                    </tr>\n                                </table>\n                                <br>\n                                <h6>Contact Info:</h6>\n                                {{depend store_phone}}\n                                <p>\n                                    <b>Call Us:</b>\n                                    <a href="tel:{{var phone}}">{{var store_phone}}</a>\n                                </p>\n                                {{/depend}}\n                                {{depend store_hours}}\n                                <p><span class="no-link">{{var store_hours}}</span><br></p>\n                                {{/depend}}\n                                {{depend store_email}}\n                                <p><b>Email:</b> <a href="mailto:{{var store_email}}">{{var store_email}}</a></p>\n                                {{/depend}}\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n        </table>\n        <table class="row">\n            <tr>\n                <td class="full wrapper">\n                    {{block type="catalog/product_new" template="email/catalog/product/new.phtml" products_count="4"\n                    column_count="4" }}\n                </td>\n            </tr>\n        </table>\n        <table class="row">\n            <tr>\n                <td class="full wrapper last">\n                    <table class="columns">\n                        <tr>\n                            <td align="center">\n                                <center>\n                                    <p><a href="#">Terms</a> | <a href="#">Privacy</a> | <a href="#">Unsubscribe</a></p>\n                                </center>\n                            </td>\n                            <td class="expander"></td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n        </table>\n    </td>\n</tr>\n</table>\n\n{{template config_path="design/email/footer"}}', NULL, NULL, 2, 'Example Subject', 'Owner', 'owner@example.com', 1, '2017-11-28 10:55:54', '2017-11-28 10:55:54');
/*!40000 ALTER TABLE `newsletter_template` ENABLE KEYS */;

-- Dumping structure for table magento.oauth_consumer
CREATE TABLE IF NOT EXISTS `oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `UNQ_OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `IDX_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `IDX_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers';

-- Dumping data for table magento.oauth_consumer: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;

-- Dumping structure for table magento.oauth_nonce
CREATE TABLE IF NOT EXISTS `oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  UNIQUE KEY `UNQ_OAUTH_NONCE_NONCE` (`nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='oauth_nonce';

-- Dumping data for table magento.oauth_nonce: 0 rows
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;

-- Dumping structure for table magento.oauth_token
CREATE TABLE IF NOT EXISTS `oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_OAUTH_TOKEN_TOKEN` (`token`),
  KEY `IDX_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`customer_id`),
  CONSTRAINT `FK_OAUTH_TOKEN_ADMIN_ID_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_OAUTH_TOKEN_CONSUMER_ID_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `oauth_consumer` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_OAUTH_TOKEN_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens';

-- Dumping data for table magento.oauth_token: ~0 rows (approximately)
/*!40000 ALTER TABLE `oauth_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_token` ENABLE KEYS */;

-- Dumping structure for table magento.paypal_cert
CREATE TABLE IF NOT EXISTS `paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `IDX_PAYPAL_CERT_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_PAYPAL_CERT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table';

-- Dumping data for table magento.paypal_cert: ~0 rows (approximately)
/*!40000 ALTER TABLE `paypal_cert` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_cert` ENABLE KEYS */;

-- Dumping structure for table magento.paypal_payment_transaction
CREATE TABLE IF NOT EXISTS `paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction';

-- Dumping data for table magento.paypal_payment_transaction: ~0 rows (approximately)
/*!40000 ALTER TABLE `paypal_payment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_payment_transaction` ENABLE KEYS */;

-- Dumping structure for table magento.paypal_settlement_report
CREATE TABLE IF NOT EXISTS `paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table';

-- Dumping data for table magento.paypal_settlement_report: ~0 rows (approximately)
/*!40000 ALTER TABLE `paypal_settlement_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_settlement_report` ENABLE KEYS */;

-- Dumping structure for table magento.paypal_settlement_report_row
CREATE TABLE IF NOT EXISTS `paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `IDX_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`),
  CONSTRAINT `FK_E183E488F593E0DE10C6EBFFEBAC9B55` FOREIGN KEY (`report_id`) REFERENCES `paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table';

-- Dumping data for table magento.paypal_settlement_report_row: ~0 rows (approximately)
/*!40000 ALTER TABLE `paypal_settlement_report_row` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_settlement_report_row` ENABLE KEYS */;

-- Dumping structure for table magento.permission_block
CREATE TABLE IF NOT EXISTS `permission_block` (
  `block_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `block_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Block Name',
  `is_allowed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Mark that block can be processed by filters',
  PRIMARY KEY (`block_id`),
  UNIQUE KEY `UNQ_PERMISSION_BLOCK_BLOCK_NAME` (`block_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='System blocks that can be processed via content filter';

-- Dumping data for table magento.permission_block: ~2 rows (approximately)
/*!40000 ALTER TABLE `permission_block` DISABLE KEYS */;
INSERT INTO `permission_block` (`block_id`, `block_name`, `is_allowed`) VALUES
	(1, 'core/template', 1),
	(2, 'catalog/product_new', 1),
	(3, 'catalog/product_list', 1);
/*!40000 ALTER TABLE `permission_block` ENABLE KEYS */;

-- Dumping structure for table magento.permission_variable
CREATE TABLE IF NOT EXISTS `permission_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable ID',
  `variable_name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Config Path',
  `is_allowed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Mark that config can be processed by filters',
  PRIMARY KEY (`variable_id`,`variable_name`),
  UNIQUE KEY `UNQ_PERMISSION_VARIABLE_VARIABLE_NAME` (`variable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='System variables that can be processed via content filter';

-- Dumping data for table magento.permission_variable: ~15 rows (approximately)
/*!40000 ALTER TABLE `permission_variable` DISABLE KEYS */;
INSERT INTO `permission_variable` (`variable_id`, `variable_name`, `is_allowed`) VALUES
	(1, 'trans_email/ident_support/name', 1),
	(2, 'trans_email/ident_support/email', 1),
	(3, 'web/unsecure/base_url', 1),
	(4, 'web/secure/base_url', 1),
	(5, 'trans_email/ident_general/name', 1),
	(6, 'trans_email/ident_general/email', 1),
	(7, 'trans_email/ident_sales/name', 1),
	(8, 'trans_email/ident_sales/email', 1),
	(9, 'trans_email/ident_custom1/name', 1),
	(10, 'trans_email/ident_custom1/email', 1),
	(11, 'trans_email/ident_custom2/name', 1),
	(12, 'trans_email/ident_custom2/email', 1),
	(13, 'general/store_information/name', 1),
	(14, 'general/store_information/phone', 1),
	(15, 'general/store_information/address', 1);
/*!40000 ALTER TABLE `permission_variable` ENABLE KEYS */;

-- Dumping structure for table magento.persistent_session
CREATE TABLE IF NOT EXISTS `persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `IDX_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_PERSISTENT_SESSION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_PERSISTENT_SESSION_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session';

-- Dumping data for table magento.persistent_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `persistent_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_session` ENABLE KEYS */;

-- Dumping structure for table magento.poll
CREATE TABLE IF NOT EXISTS `poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display',
  PRIMARY KEY (`poll_id`),
  KEY `IDX_POLL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_POLL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Poll';

-- Dumping data for table magento.poll: ~0 rows (approximately)
/*!40000 ALTER TABLE `poll` DISABLE KEYS */;
INSERT INTO `poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
	(1, 'What is your favorite color', 7, 0, '2017-11-28 10:55:54', NULL, 1, 0, NULL);
/*!40000 ALTER TABLE `poll` ENABLE KEYS */;

-- Dumping structure for table magento.poll_answer
CREATE TABLE IF NOT EXISTS `poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display',
  PRIMARY KEY (`answer_id`),
  KEY `IDX_POLL_ANSWER_POLL_ID` (`poll_id`),
  CONSTRAINT `FK_POLL_ANSWER_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Poll Answers';

-- Dumping data for table magento.poll_answer: ~4 rows (approximately)
/*!40000 ALTER TABLE `poll_answer` DISABLE KEYS */;
INSERT INTO `poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
	(1, 1, 'Green', 4, 0),
	(2, 1, 'Red', 1, 0),
	(3, 1, 'Black', 0, 0),
	(4, 1, 'Magenta', 2, 0);
/*!40000 ALTER TABLE `poll_answer` ENABLE KEYS */;

-- Dumping structure for table magento.poll_store
CREATE TABLE IF NOT EXISTS `poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `IDX_POLL_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_POLL_STORE_POLL_ID_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_POLL_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

-- Dumping data for table magento.poll_store: ~0 rows (approximately)
/*!40000 ALTER TABLE `poll_store` DISABLE KEYS */;
INSERT INTO `poll_store` (`poll_id`, `store_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `poll_store` ENABLE KEYS */;

-- Dumping structure for table magento.poll_vote
CREATE TABLE IF NOT EXISTS `poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` varbinary(16) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`),
  CONSTRAINT `FK_POLL_VOTE_POLL_ANSWER_ID_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote';

-- Dumping data for table magento.poll_vote: ~0 rows (approximately)
/*!40000 ALTER TABLE `poll_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_vote` ENABLE KEYS */;

-- Dumping structure for table magento.product_alert_price
CREATE TABLE IF NOT EXISTS `product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_PRD_ALERT_PRICE_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODUCT_ALERT_PRICE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODUCT_ALERT_PRICE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price';

-- Dumping data for table magento.product_alert_price: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_alert_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_alert_price` ENABLE KEYS */;

-- Dumping structure for table magento.product_alert_stock
CREATE TABLE IF NOT EXISTS `product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `IDX_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_PRD_ALERT_STOCK_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODUCT_ALERT_STOCK_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_PRODUCT_ALERT_STOCK_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock';

-- Dumping data for table magento.product_alert_stock: ~0 rows (approximately)
/*!40000 ALTER TABLE `product_alert_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_alert_stock` ENABLE KEYS */;

-- Dumping structure for table magento.rating
CREATE TABLE IF NOT EXISTS `rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `UNQ_RATING_RATING_CODE` (`rating_code`),
  KEY `IDX_RATING_ENTITY_ID` (`entity_id`),
  CONSTRAINT `FK_RATING_ENTITY_ID_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Ratings';

-- Dumping data for table magento.rating: ~3 rows (approximately)
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
INSERT INTO `rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
	(1, 1, 'Quality', 0),
	(2, 1, 'Value', 0),
	(3, 1, 'Price', 0);
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;

-- Dumping structure for table magento.rating_entity
CREATE TABLE IF NOT EXISTS `rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Rating entities';

-- Dumping data for table magento.rating_entity: ~3 rows (approximately)
/*!40000 ALTER TABLE `rating_entity` DISABLE KEYS */;
INSERT INTO `rating_entity` (`entity_id`, `entity_code`) VALUES
	(1, 'product'),
	(2, 'product_review'),
	(3, 'review');
/*!40000 ALTER TABLE `rating_entity` ENABLE KEYS */;

-- Dumping structure for table magento.rating_option
CREATE TABLE IF NOT EXISTS `rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend',
  PRIMARY KEY (`option_id`),
  KEY `IDX_RATING_OPTION_RATING_ID` (`rating_id`),
  CONSTRAINT `FK_RATING_OPTION_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Rating options';

-- Dumping data for table magento.rating_option: ~15 rows (approximately)
/*!40000 ALTER TABLE `rating_option` DISABLE KEYS */;
INSERT INTO `rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
	(1, 1, '1', 1, 1),
	(2, 1, '2', 2, 2),
	(3, 1, '3', 3, 3),
	(4, 1, '4', 4, 4),
	(5, 1, '5', 5, 5),
	(6, 2, '1', 1, 1),
	(7, 2, '2', 2, 2),
	(8, 2, '3', 3, 3),
	(9, 2, '4', 4, 4),
	(10, 2, '5', 5, 5),
	(11, 3, '1', 1, 1),
	(12, 3, '2', 2, 2),
	(13, 3, '3', 3, 3),
	(14, 3, '4', 4, 4),
	(15, 3, '5', 5, 5);
/*!40000 ALTER TABLE `rating_option` ENABLE KEYS */;

-- Dumping structure for table magento.rating_option_vote
CREATE TABLE IF NOT EXISTS `rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(50) DEFAULT NULL,
  `remote_ip_long` varbinary(16) DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` (`review_id`),
  CONSTRAINT `FK_RATING_OPTION_VOTE_OPTION_ID_RATING_OPTION_OPTION_ID` FOREIGN KEY (`option_id`) REFERENCES `rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_RATING_OPTION_VOTE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values';

-- Dumping data for table magento.rating_option_vote: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating_option_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_option_vote` ENABLE KEYS */;

-- Dumping structure for table magento.rating_option_vote_aggregated
CREATE TABLE IF NOT EXISTS `rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `IDX_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_RATING_OPTION_VOTE_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated';

-- Dumping data for table magento.rating_option_vote_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating_option_vote_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_option_vote_aggregated` ENABLE KEYS */;

-- Dumping structure for table magento.rating_store
CREATE TABLE IF NOT EXISTS `rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_RATING_STORE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_RATING_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- Dumping data for table magento.rating_store: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_store` ENABLE KEYS */;

-- Dumping structure for table magento.rating_title
CREATE TABLE IF NOT EXISTS `rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_RATING_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_RATING_TITLE_RATING_ID_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_RATING_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- Dumping data for table magento.rating_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating_title` ENABLE KEYS */;

-- Dumping structure for table magento.report_compared_product_index
CREATE TABLE IF NOT EXISTS `report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_CMPD_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table';

-- Dumping data for table magento.report_compared_product_index: ~0 rows (approximately)
/*!40000 ALTER TABLE `report_compared_product_index` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_compared_product_index` ENABLE KEYS */;

-- Dumping structure for table magento.report_event
CREATE TABLE IF NOT EXISTS `report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `IDX_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `IDX_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `IDX_REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `IDX_REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `IDX_REPORT_EVENT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_REPORT_EVENT_EVENT_TYPE_ID_REPORT_EVENT_TYPES_EVENT_TYPE_ID` FOREIGN KEY (`event_type_id`) REFERENCES `report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_EVENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='Reports Event Table';

-- Dumping data for table magento.report_event: ~79 rows (approximately)
/*!40000 ALTER TABLE `report_event` DISABLE KEYS */;
INSERT INTO `report_event` (`event_id`, `logged_at`, `event_type_id`, `object_id`, `subject_id`, `subtype`, `store_id`) VALUES
	(1, '2017-12-04 12:38:17', 1, 3, 52, 1, 1),
	(2, '2017-12-04 12:38:25', 1, 3, 52, 1, 1),
	(3, '2017-12-04 12:42:04', 1, 3, 52, 1, 1),
	(4, '2017-12-04 12:43:45', 4, 3, 52, 1, 1),
	(5, '2017-12-04 12:43:54', 1, 3, 52, 1, 1),
	(6, '2017-12-04 12:49:22', 1, 3, 52, 1, 1),
	(7, '2017-12-04 13:05:46', 1, 3, 52, 1, 1),
	(8, '2017-12-04 13:07:27', 1, 3, 52, 1, 1),
	(9, '2017-12-04 13:08:10', 1, 3, 52, 1, 1),
	(10, '2017-12-04 13:12:33', 1, 3, 52, 1, 1),
	(11, '2017-12-04 13:12:42', 1, 1, 52, 1, 1),
	(12, '2017-12-04 13:18:24', 1, 1, 52, 1, 1),
	(13, '2017-12-04 13:18:25', 1, 1, 52, 1, 1),
	(14, '2017-12-04 13:18:26', 1, 3, 52, 1, 1),
	(15, '2017-12-04 13:32:04', 1, 3, 52, 1, 1),
	(16, '2017-12-04 13:38:51', 1, 1, 52, 1, 1),
	(17, '2017-12-04 13:39:20', 1, 1, 52, 1, 1),
	(18, '2017-12-04 13:54:47', 1, 1, 52, 1, 1),
	(19, '2017-12-04 14:03:07', 1, 1, 52, 1, 1),
	(20, '2017-12-04 14:13:28', 1, 1, 52, 1, 1),
	(21, '2017-12-04 14:33:35', 1, 3, 65, 1, 1),
	(22, '2017-12-04 15:19:35', 1, 1, 67, 1, 1),
	(23, '2017-12-20 11:48:43', 1, 2, 172, 1, 1),
	(24, '2017-12-20 12:37:25', 1, 2, 172, 1, 1),
	(25, '2017-12-20 12:40:42', 1, 2, 172, 1, 1),
	(26, '2017-12-21 14:05:06', 1, 1, 175, 1, 1),
	(27, '2017-12-21 14:05:19', 4, 1, 175, 1, 1),
	(28, '2017-12-21 14:17:29', 1, 2, 1, 0, 1),
	(29, '2017-12-21 14:18:03', 1, 3, 1, 0, 1),
	(30, '2017-12-21 14:18:12', 1, 1, 1, 0, 1),
	(31, '2017-12-21 14:18:21', 1, 3, 1, 0, 1),
	(32, '2017-12-21 14:18:37', 4, 1, 1, 0, 1),
	(33, '2017-12-22 14:13:56', 4, 1, 177, 1, 1),
	(34, '2017-12-22 14:15:17', 4, 1, 1, 0, 1),
	(35, '2017-12-22 14:15:54', 4, 1, 1, 0, 1),
	(36, '2017-12-22 14:18:54', 4, 1, 1, 0, 1),
	(37, '2017-12-26 08:30:45', 1, 1, 178, 1, 1),
	(38, '2017-12-26 12:17:45', 1, 2, 179, 1, 1),
	(39, '2017-12-26 12:58:45', 1, 2, 180, 1, 1),
	(40, '2017-12-26 12:59:05', 1, 1, 180, 1, 1),
	(41, '2017-12-26 12:59:06', 4, 2, 180, 1, 1),
	(42, '2017-12-26 12:59:10', 4, 1, 180, 1, 1),
	(43, '2017-12-26 12:59:59', 4, 2, 1, 0, 1),
	(44, '2017-12-26 12:59:59', 4, 1, 1, 0, 1),
	(45, '2017-12-26 13:10:13', 1, 2, 1, 0, 1),
	(46, '2017-12-26 14:27:21', 4, 2, 1, 0, 1),
	(47, '2017-12-26 15:56:53', 1, 2, 1, 0, 1),
	(48, '2017-12-27 09:32:45', 4, 2, 1, 0, 1),
	(49, '2017-12-27 09:36:35', 1, 1, 1, 0, 1),
	(50, '2017-12-27 09:36:42', 4, 1, 1, 0, 1),
	(51, '2017-12-27 09:43:46', 1, 3, 1, 0, 1),
	(52, '2017-12-27 09:43:54', 4, 3, 1, 0, 1),
	(53, '2017-12-27 09:52:42', 1, 2, 1, 0, 1),
	(54, '2017-12-27 09:52:46', 4, 2, 1, 0, 1),
	(55, '2017-12-27 09:53:54', 4, 2, 1, 0, 1),
	(56, '2017-12-27 10:02:45', 1, 3, 1, 0, 1),
	(57, '2017-12-27 10:02:50', 4, 3, 1, 0, 1),
	(58, '2017-12-27 10:13:51', 1, 1, 1, 0, 1),
	(59, '2017-12-27 10:13:56', 4, 1, 1, 0, 1),
	(60, '2017-12-27 13:35:47', 1, 1, 1, 0, 1),
	(61, '2017-12-27 13:59:44', 1, 1, 1, 0, 1),
	(62, '2017-12-27 14:03:10', 1, 3, 185, 1, 1),
	(63, '2017-12-27 14:03:14', 4, 3, 185, 1, 1),
	(64, '2017-12-27 14:05:24', 1, 1, 182, 1, 1),
	(65, '2017-12-27 14:26:01', 4, 1, 182, 1, 1),
	(66, '2017-12-27 15:16:11', 1, 2, 186, 1, 1),
	(67, '2017-12-27 15:16:20', 4, 2, 186, 1, 1),
	(68, '2017-12-27 15:31:53', 1, 2, 186, 1, 1),
	(69, '2017-12-27 15:31:55', 1, 2, 186, 1, 1),
	(70, '2017-12-27 15:32:41', 4, 2, 1, 0, 1),
	(71, '2017-12-28 10:22:25', 1, 1, 187, 1, 1),
	(72, '2017-12-28 12:16:48', 1, 2, 1, 0, 1),
	(73, '2017-12-28 12:16:50', 4, 2, 1, 0, 1),
	(74, '2017-12-28 14:54:50', 1, 1, 1, 0, 1),
	(75, '2017-12-28 14:54:53', 4, 1, 1, 0, 1),
	(76, '2017-12-28 15:54:28', 4, 1, 1, 0, 1),
	(77, '2017-12-29 07:48:06', 1, 2, 1, 0, 1),
	(78, '2017-12-29 07:48:09', 4, 2, 1, 0, 1),
	(79, '2017-12-29 08:53:11', 4, 1, 1, 0, 1),
	(80, '2017-12-29 08:53:11', 4, 2, 1, 0, 1),
	(81, '2018-01-04 07:48:51', 1, 1, 189, 1, 1),
	(82, '2018-01-04 07:49:37', 4, 1, 189, 1, 1),
	(83, '2018-01-04 07:50:34', 4, 1, 1, 0, 1);
/*!40000 ALTER TABLE `report_event` ENABLE KEYS */;

-- Dumping structure for table magento.report_event_types
CREATE TABLE IF NOT EXISTS `report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table';

-- Dumping data for table magento.report_event_types: ~6 rows (approximately)
/*!40000 ALTER TABLE `report_event_types` DISABLE KEYS */;
INSERT INTO `report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
	(1, 'catalog_product_view', 0),
	(2, 'sendfriend_product', 0),
	(3, 'catalog_product_compare_add_product', 0),
	(4, 'checkout_cart_add_product', 0),
	(5, 'wishlist_add_product', 0),
	(6, 'wishlist_share', 0);
/*!40000 ALTER TABLE `report_event_types` ENABLE KEYS */;

-- Dumping structure for table magento.report_viewed_product_aggregated_daily
CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily';

-- Dumping data for table magento.report_viewed_product_aggregated_daily: ~0 rows (approximately)
/*!40000 ALTER TABLE `report_viewed_product_aggregated_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_viewed_product_aggregated_daily` ENABLE KEYS */;

-- Dumping structure for table magento.report_viewed_product_aggregated_monthly
CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly';

-- Dumping data for table magento.report_viewed_product_aggregated_monthly: ~0 rows (approximately)
/*!40000 ALTER TABLE `report_viewed_product_aggregated_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_viewed_product_aggregated_monthly` ENABLE KEYS */;

-- Dumping structure for table magento.report_viewed_product_aggregated_yearly
CREATE TABLE IF NOT EXISTS `report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRD_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly';

-- Dumping data for table magento.report_viewed_product_aggregated_yearly: ~0 rows (approximately)
/*!40000 ALTER TABLE `report_viewed_product_aggregated_yearly` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_viewed_product_aggregated_yearly` ENABLE KEYS */;

-- Dumping structure for table magento.report_viewed_product_index
CREATE TABLE IF NOT EXISTS `report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_CSTR_ID_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRD_IDX_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table';

-- Dumping data for table magento.report_viewed_product_index: ~12 rows (approximately)
/*!40000 ALTER TABLE `report_viewed_product_index` DISABLE KEYS */;
INSERT INTO `report_viewed_product_index` (`index_id`, `visitor_id`, `customer_id`, `product_id`, `store_id`, `added_at`) VALUES
	(1, 52, NULL, 3, 1, '2017-12-04 13:32:04'),
	(10, 52, NULL, 1, 1, '2017-12-04 14:13:28'),
	(20, 65, NULL, 3, 1, '2017-12-04 14:33:35'),
	(21, 67, NULL, 1, 1, '2017-12-04 15:19:35'),
	(22, 172, NULL, 2, 1, '2017-12-20 12:40:42'),
	(25, 189, 1, 1, 1, '2018-01-04 07:50:34'),
	(26, 188, 1, 2, 1, '2017-12-29 07:48:06'),
	(27, NULL, 1, 3, 1, '2017-12-27 10:02:45'),
	(28, 178, NULL, 1, 1, '2017-12-26 08:30:45'),
	(29, 179, NULL, 2, 1, '2017-12-26 12:17:45'),
	(41, 185, NULL, 3, 1, '2017-12-27 14:03:10'),
	(42, 182, NULL, 1, 1, '2017-12-27 14:05:24');
/*!40000 ALTER TABLE `report_viewed_product_index` ENABLE KEYS */;

-- Dumping structure for table magento.review
CREATE TABLE IF NOT EXISTS `review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `IDX_REVIEW_ENTITY_ID` (`entity_id`),
  KEY `IDX_REVIEW_STATUS_ID` (`status_id`),
  KEY `IDX_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`),
  CONSTRAINT `FK_REVIEW_ENTITY_ID_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REVIEW_STATUS_ID_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `review_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information';

-- Dumping data for table magento.review: ~0 rows (approximately)
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

-- Dumping structure for table magento.review_detail
CREATE TABLE IF NOT EXISTS `review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `IDX_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `IDX_REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `IDX_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `FK_REVIEW_DETAIL_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_REVIEW_DETAIL_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REVIEW_DETAIL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information';

-- Dumping data for table magento.review_detail: ~0 rows (approximately)
/*!40000 ALTER TABLE `review_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_detail` ENABLE KEYS */;

-- Dumping structure for table magento.review_entity
CREATE TABLE IF NOT EXISTS `review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review entities';

-- Dumping data for table magento.review_entity: ~3 rows (approximately)
/*!40000 ALTER TABLE `review_entity` DISABLE KEYS */;
INSERT INTO `review_entity` (`entity_id`, `entity_code`) VALUES
	(1, 'product'),
	(2, 'customer'),
	(3, 'category');
/*!40000 ALTER TABLE `review_entity` ENABLE KEYS */;

-- Dumping structure for table magento.review_entity_summary
CREATE TABLE IF NOT EXISTS `review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`),
  CONSTRAINT `FK_REVIEW_ENTITY_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates';

-- Dumping data for table magento.review_entity_summary: ~0 rows (approximately)
/*!40000 ALTER TABLE `review_entity_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_entity_summary` ENABLE KEYS */;

-- Dumping structure for table magento.review_status
CREATE TABLE IF NOT EXISTS `review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Review statuses';

-- Dumping data for table magento.review_status: ~3 rows (approximately)
/*!40000 ALTER TABLE `review_status` DISABLE KEYS */;
INSERT INTO `review_status` (`status_id`, `status_code`) VALUES
	(1, 'Approved'),
	(2, 'Pending'),
	(3, 'Not Approved');
/*!40000 ALTER TABLE `review_status` ENABLE KEYS */;

-- Dumping structure for table magento.review_store
CREATE TABLE IF NOT EXISTS `review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `IDX_REVIEW_STORE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_REVIEW_STORE_REVIEW_ID_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_REVIEW_STORE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- Dumping data for table magento.review_store: ~0 rows (approximately)
/*!40000 ALTER TABLE `review_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_store` ENABLE KEYS */;

-- Dumping structure for table magento.salesrule
CREATE TABLE IF NOT EXISTS `salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Coupon',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Salesrule';

-- Dumping data for table magento.salesrule: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule` DISABLE KEYS */;
INSERT INTO `salesrule` (`rule_id`, `name`, `description`, `from_date`, `to_date`, `uses_per_customer`, `is_active`, `conditions_serialized`, `actions_serialized`, `stop_rules_processing`, `is_advanced`, `product_ids`, `sort_order`, `simple_action`, `discount_amount`, `discount_qty`, `discount_step`, `simple_free_shipping`, `apply_to_shipping`, `times_used`, `is_rss`, `coupon_type`, `use_auto_generation`, `uses_per_coupon`) VALUES
	(1, 'bla bla discount 10', NULL, NULL, NULL, 10000, 1, 'a:6:{s:4:"type";s:32:"salesrule/rule_condition_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";}', 'a:6:{s:4:"type";s:40:"salesrule/rule_condition_product_combine";s:9:"attribute";N;s:8:"operator";N;s:5:"value";s:1:"1";s:18:"is_value_processed";N;s:10:"aggregator";s:3:"all";}', 1, 1, NULL, 0, 'by_percent', 10.0000, NULL, 0, 0, 0, 3, 1, 1, 0, 0);
/*!40000 ALTER TABLE `salesrule` ENABLE KEYS */;

-- Dumping structure for table magento.salesrule_coupon
CREATE TABLE IF NOT EXISTS `salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `IDX_SALESRULE_COUPON_RULE_ID` (`rule_id`),
  CONSTRAINT `FK_SALESRULE_COUPON_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon';

-- Dumping data for table magento.salesrule_coupon: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_coupon` ENABLE KEYS */;

-- Dumping structure for table magento.salesrule_coupon_usage
CREATE TABLE IF NOT EXISTS `salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
  KEY `IDX_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`),
  CONSTRAINT `FK_SALESRULE_COUPON_USAGE_COUPON_ID_SALESRULE_COUPON_COUPON_ID` FOREIGN KEY (`coupon_id`) REFERENCES `salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_COUPON_USAGE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- Dumping data for table magento.salesrule_coupon_usage: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_coupon_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_coupon_usage` ENABLE KEYS */;

-- Dumping structure for table magento.salesrule_customer
CREATE TABLE IF NOT EXISTS `salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `IDX_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`),
  CONSTRAINT `FK_SALESRULE_CUSTOMER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_CUSTOMER_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer';

-- Dumping data for table magento.salesrule_customer: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_customer` DISABLE KEYS */;
INSERT INTO `salesrule_customer` (`rule_customer_id`, `rule_id`, `customer_id`, `times_used`) VALUES
	(1, 1, 1, 3);
/*!40000 ALTER TABLE `salesrule_customer` ENABLE KEYS */;

-- Dumping structure for table magento.salesrule_customer_group
CREATE TABLE IF NOT EXISTS `salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_SALESRULE_CSTR_GROUP_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_CUSTOMER_GROUP_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

-- Dumping data for table magento.salesrule_customer_group: ~4 rows (approximately)
/*!40000 ALTER TABLE `salesrule_customer_group` DISABLE KEYS */;
INSERT INTO `salesrule_customer_group` (`rule_id`, `customer_group_id`) VALUES
	(1, 0),
	(1, 1),
	(1, 2),
	(1, 3);
/*!40000 ALTER TABLE `salesrule_customer_group` ENABLE KEYS */;

-- Dumping structure for table magento.salesrule_label
CREATE TABLE IF NOT EXISTS `salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `UNQ_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `IDX_SALESRULE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_SALESRULE_LABEL_RULE_ID` (`rule_id`),
  CONSTRAINT `FK_SALESRULE_LABEL_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label';

-- Dumping data for table magento.salesrule_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_label` ENABLE KEYS */;

-- Dumping structure for table magento.salesrule_product_attribute
CREATE TABLE IF NOT EXISTS `salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_SALESRULE_PRD_ATTR_ATTR_ID_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_SALESRULE_PRD_ATTR_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_SALESRULE_PRD_ATTR_WS_ID_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK_SALESRULE_PRODUCT_ATTRIBUTE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- Dumping data for table magento.salesrule_product_attribute: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesrule_product_attribute` ENABLE KEYS */;

-- Dumping structure for table magento.salesrule_website
CREATE TABLE IF NOT EXISTS `salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_SALESRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`),
  CONSTRAINT `FK_SALESRULE_WEBSITE_RULE_ID_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALESRULE_WEBSITE_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

-- Dumping data for table magento.salesrule_website: ~0 rows (approximately)
/*!40000 ALTER TABLE `salesrule_website` DISABLE KEYS */;
INSERT INTO `salesrule_website` (`rule_id`, `website_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `salesrule_website` ENABLE KEYS */;

-- Dumping structure for table magento.sales_bestsellers_aggregated_daily
CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_DAILY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily';

-- Dumping data for table magento.sales_bestsellers_aggregated_daily: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_daily` ENABLE KEYS */;

-- Dumping structure for table magento.sales_bestsellers_aggregated_monthly
CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_MONTHLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_MONTHLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly';

-- Dumping data for table magento.sales_bestsellers_aggregated_monthly: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_monthly` ENABLE KEYS */;

-- Dumping structure for table magento.sales_bestsellers_aggregated_yearly
CREATE TABLE IF NOT EXISTS `sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`),
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BESTSELLERS_AGGRED_YEARLY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly';

-- Dumping data for table magento.sales_bestsellers_aggregated_yearly: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_yearly` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_bestsellers_aggregated_yearly` ENABLE KEYS */;

-- Dumping structure for table magento.sales_billing_agreement
CREATE TABLE IF NOT EXISTS `sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_BILLING_AGREEMENT_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BILLING_AGREEMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement';

-- Dumping data for table magento.sales_billing_agreement: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_billing_agreement` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_billing_agreement` ENABLE KEYS */;

-- Dumping structure for table magento.sales_billing_agreement_order
CREATE TABLE IF NOT EXISTS `sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `IDX_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`),
  CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_AGRT_ID_SALES_BILLING_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_BILLING_AGRT_ORDER_ORDER_ID_SALES_FLAT_ORDER_ENTT_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- Dumping data for table magento.sales_billing_agreement_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_billing_agreement_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_billing_agreement_order` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_creditmemo
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo';

-- Dumping data for table magento.sales_flat_creditmemo: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_creditmemo` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_creditmemo` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_creditmemo_comment
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_B0FCB0B5467075BE63D474F2CD5F7804` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment';

-- Dumping data for table magento.sales_flat_creditmemo_comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_creditmemo_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_creditmemo_comment` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_creditmemo_grid
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`),
  CONSTRAINT `FK_78C711B225167A11CC077B03D1C8E1CC` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_CREDITMEMO_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- Dumping data for table magento.sales_flat_creditmemo_grid: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_creditmemo_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_creditmemo_grid` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_creditmemo_item
CREATE TABLE IF NOT EXISTS `sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_306DAC836C699F0B5E13BE486557AC8A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item';

-- Dumping data for table magento.sales_flat_creditmemo_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_creditmemo_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_creditmemo_item` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_invoice
CREATE TABLE IF NOT EXISTS `sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_SALES_FLAT_INVOICE_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_INVOICE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice';

-- Dumping data for table magento.sales_flat_invoice: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_invoice` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_invoice_comment
CREATE TABLE IF NOT EXISTS `sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_5C4B36BBE5231A76AB8018B281ED50BC` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment';

-- Dumping data for table magento.sales_flat_invoice_comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_invoice_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_invoice_comment` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_invoice_grid
CREATE TABLE IF NOT EXISTS `sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_STATE` (`state`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`),
  CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_ENTT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_INVOICE_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- Dumping data for table magento.sales_flat_invoice_grid: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_invoice_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_invoice_grid` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_invoice_item
CREATE TABLE IF NOT EXISTS `sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_SALES_FLAT_INVOICE_ITEM_PARENT_ID_SALES_FLAT_INVOICE_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item';

-- Dumping data for table magento.sales_flat_invoice_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_invoice_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_invoice_item` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_order
CREATE TABLE IF NOT EXISTS `sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `base_kasa_percent` decimal(12,4) DEFAULT NULL,
  `kasa_percent` decimal(12,4) DEFAULT NULL,
  `base_looted_coins` decimal(12,4) DEFAULT NULL,
  `looted_coins` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_STATE` (`state`),
  KEY `IDX_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order';

-- Dumping data for table magento.sales_flat_order: ~9 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order` DISABLE KEYS */;
INSERT INTO `sales_flat_order` (`entity_id`, `state`, `status`, `coupon_code`, `protect_code`, `shipping_description`, `is_virtual`, `store_id`, `customer_id`, `base_discount_amount`, `base_discount_canceled`, `base_discount_invoiced`, `base_discount_refunded`, `base_grand_total`, `base_shipping_amount`, `base_shipping_canceled`, `base_shipping_invoiced`, `base_shipping_refunded`, `base_shipping_tax_amount`, `base_shipping_tax_refunded`, `base_subtotal`, `base_subtotal_canceled`, `base_subtotal_invoiced`, `base_subtotal_refunded`, `base_tax_amount`, `base_tax_canceled`, `base_tax_invoiced`, `base_tax_refunded`, `base_to_global_rate`, `base_to_order_rate`, `base_total_canceled`, `base_total_invoiced`, `base_total_invoiced_cost`, `base_total_offline_refunded`, `base_total_online_refunded`, `base_total_paid`, `base_total_qty_ordered`, `base_total_refunded`, `discount_amount`, `discount_canceled`, `discount_invoiced`, `discount_refunded`, `grand_total`, `shipping_amount`, `shipping_canceled`, `shipping_invoiced`, `shipping_refunded`, `shipping_tax_amount`, `shipping_tax_refunded`, `store_to_base_rate`, `store_to_order_rate`, `subtotal`, `subtotal_canceled`, `subtotal_invoiced`, `subtotal_refunded`, `tax_amount`, `tax_canceled`, `tax_invoiced`, `tax_refunded`, `total_canceled`, `total_invoiced`, `total_offline_refunded`, `total_online_refunded`, `total_paid`, `total_qty_ordered`, `total_refunded`, `can_ship_partially`, `can_ship_partially_item`, `customer_is_guest`, `customer_note_notify`, `billing_address_id`, `customer_group_id`, `edit_increment`, `email_sent`, `forced_shipment_with_invoice`, `payment_auth_expiration`, `quote_address_id`, `quote_id`, `shipping_address_id`, `adjustment_negative`, `adjustment_positive`, `base_adjustment_negative`, `base_adjustment_positive`, `base_shipping_discount_amount`, `base_subtotal_incl_tax`, `base_total_due`, `payment_authorization_amount`, `shipping_discount_amount`, `subtotal_incl_tax`, `total_due`, `weight`, `customer_dob`, `increment_id`, `applied_rule_ids`, `base_currency_code`, `customer_email`, `customer_firstname`, `customer_lastname`, `customer_middlename`, `customer_prefix`, `customer_suffix`, `customer_taxvat`, `discount_description`, `ext_customer_id`, `ext_order_id`, `global_currency_code`, `hold_before_state`, `hold_before_status`, `order_currency_code`, `original_increment_id`, `relation_child_id`, `relation_child_real_id`, `relation_parent_id`, `relation_parent_real_id`, `remote_ip`, `shipping_method`, `store_currency_code`, `store_name`, `x_forwarded_for`, `customer_note`, `created_at`, `updated_at`, `total_item_count`, `customer_gender`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `hidden_tax_invoiced`, `base_hidden_tax_invoiced`, `hidden_tax_refunded`, `base_hidden_tax_refunded`, `shipping_incl_tax`, `base_shipping_incl_tax`, `coupon_rule_name`, `paypal_ipn_customer_notified`, `gift_message_id`, `base_kasa_percent`, `kasa_percent`, `base_looted_coins`, `looted_coins`) VALUES
	(1, 'processing', 'pending', NULL, '5a0aed', 'Зіркова доставка - "Телепорт" (до 1 дня)', 0, 1, 1, 0.0000, NULL, NULL, NULL, 545.0000, 10.0000, NULL, NULL, NULL, 0.0000, NULL, 35.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 545.0000, 10.0000, NULL, NULL, NULL, 0.0000, NULL, 1.0000, 1.0000, 35.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.0000, NULL, NULL, NULL, 0, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL, NULL, NULL, 0.0000, 35.0000, NULL, NULL, 0.0000, 35.0000, NULL, 5.0000, NULL, '100000001', NULL, 'USD', 'user@gmail.com', 'Mike', 'Last', 'Middle', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'asgstar_third_star_method', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2017-12-27 09:32:17', '2017-12-27 09:32:18', 1, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 10.0000, 10.0000, NULL, 0, NULL, NULL, NULL, NULL, NULL),
	(2, 'processing', 'pending', NULL, '57de8e', 'Зіркова доставка - "Занадто довго" (5 - 10 днів)', 0, 1, 1, 0.0000, NULL, NULL, NULL, 540.0000, 10.0000, NULL, NULL, NULL, 0.0000, NULL, 30.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 540.0000, 10.0000, NULL, NULL, NULL, 0.0000, NULL, 1.0000, 1.0000, 30.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.0000, NULL, NULL, NULL, 0, 1, 3, 1, NULL, NULL, NULL, NULL, NULL, 4, 4, NULL, NULL, NULL, NULL, 0.0000, 30.0000, NULL, NULL, 0.0000, 30.0000, NULL, 3.0000, NULL, '100000002', NULL, 'USD', 'user@gmail.com', 'Mike', 'Last', 'Middle', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'asgstar_first_star_method', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2017-12-27 09:37:08', '2017-12-27 09:37:08', 1, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 10.0000, 10.0000, NULL, 0, NULL, NULL, NULL, NULL, NULL),
	(3, 'processing', 'pending', NULL, '85cecb', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 0, 1, 1, 0.0000, NULL, NULL, NULL, 528.8900, 1.8900, NULL, NULL, NULL, 0.0000, NULL, 27.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 528.8900, 1.8900, NULL, NULL, NULL, 0.0000, NULL, 1.0000, 1.0000, 27.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.0000, NULL, NULL, NULL, 0, 1, 5, 1, NULL, NULL, NULL, NULL, NULL, 5, 6, NULL, NULL, NULL, NULL, 0.0000, 27.0000, NULL, NULL, 0.0000, 27.0000, NULL, 3.0000, NULL, '100000003', NULL, 'USD', 'user@gmail.com', 'Mike', 'Last', 'Middle', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'asgstar_second_star_method', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2017-12-27 09:44:24', '2017-12-27 09:44:25', 1, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 1.8900, 1.8900, NULL, 0, NULL, NULL, NULL, NULL, NULL),
	(4, 'processing', 'pending', NULL, '7d7289', 'Зіркова доставка - "Телепорт" (до 1 дня)', 0, 1, 1, 0.0000, NULL, NULL, NULL, 517.0000, 10.0000, NULL, NULL, NULL, 0.0000, NULL, 7.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 517.0000, 10.0000, NULL, NULL, NULL, 0.0000, NULL, 1.0000, 1.0000, 7.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, 0, 1, 7, 1, NULL, NULL, NULL, NULL, NULL, 6, 8, NULL, NULL, NULL, NULL, 0.0000, 7.0000, NULL, NULL, 0.0000, 7.0000, NULL, 1.0000, NULL, '100000004', NULL, 'USD', 'user@gmail.com', 'Mike', 'Last', 'Middle', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'asgstar_third_star_method', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2017-12-27 09:53:14', '2017-12-27 09:53:14', 1, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 10.0000, 10.0000, NULL, 0, NULL, NULL, NULL, NULL, NULL),
	(5, 'processing', 'pending', NULL, '1fb41d', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 0, 1, 1, 0.0000, NULL, NULL, NULL, 507.3500, 0.3500, NULL, NULL, NULL, 0.0000, NULL, 7.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 507.3500, 0.3500, NULL, NULL, NULL, 0.0000, NULL, 1.0000, 1.0000, 7.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, 0, 1, 9, 1, NULL, NULL, NULL, NULL, NULL, 7, 10, NULL, NULL, NULL, NULL, 0.0000, 7.0000, NULL, NULL, 0.0000, 7.0000, NULL, 1.0000, NULL, '100000007', NULL, 'USD', 'user@gmail.com', 'Mike', 'Last', 'Middle', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'asgstar_second_star_method', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2017-12-27 10:02:13', '2017-12-27 10:02:13', 1, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.3500, 0.3500, NULL, 0, NULL, NULL, NULL, NULL, NULL),
	(6, 'processing', 'pending', NULL, '819ba6', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 0, 1, 1, 0.0000, NULL, NULL, NULL, 509.4500, 0.4500, NULL, NULL, NULL, 0.0000, NULL, 9.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 509.4500, 0.4500, NULL, NULL, NULL, 0.0000, NULL, 1.0000, 1.0000, 9.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, 0, 1, 11, 1, NULL, NULL, NULL, NULL, NULL, 8, 12, NULL, NULL, NULL, NULL, 0.0000, 9.0000, NULL, NULL, 0.0000, 9.0000, NULL, 1.0000, NULL, '100000008', NULL, 'USD', 'user@gmail.com', 'Mike', 'Last', 'Middle', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'asgstar_second_star_method', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2017-12-27 10:03:18', '2017-12-27 10:03:18', 1, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.4500, 0.4500, NULL, 0, NULL, NULL, NULL, NULL, NULL),
	(7, 'processing', 'pending', NULL, '434189', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 0, 1, 1, -0.7000, NULL, NULL, NULL, 7.6500, 0.3500, NULL, NULL, NULL, 0.0000, NULL, 7.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -0.7000, NULL, NULL, NULL, 7.6500, 0.3500, NULL, NULL, NULL, 0.0000, NULL, 1.0000, 1.0000, 7.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.0000, NULL, NULL, NULL, 0, 1, 13, 1, NULL, NULL, NULL, NULL, NULL, 9, 14, NULL, NULL, NULL, NULL, 0.0000, 7.0000, NULL, NULL, 0.0000, 7.0000, NULL, 1.0000, NULL, '100000009', '1', 'USD', 'user@gmail.com', 'Mike', 'Last', 'Middle', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'asg_star_second_star_method', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2017-12-28 11:56:24', '2017-12-28 11:56:24', 1, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.3500, 0.3500, NULL, 0, NULL, NULL, NULL, NULL, NULL),
	(8, 'processing', 'pending', NULL, '1b8cd0', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 0, 1, 1, -1.7000, NULL, NULL, NULL, 17.1500, 0.8500, NULL, NULL, NULL, 0.0000, NULL, 17.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1.7000, NULL, NULL, NULL, 17.1500, 0.8500, NULL, NULL, NULL, 0.0000, NULL, 1.0000, 1.0000, 17.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.0000, NULL, NULL, NULL, 0, 1, 15, 1, NULL, NULL, NULL, NULL, NULL, 12, 16, NULL, NULL, NULL, NULL, 0.0000, 17.0000, NULL, NULL, 0.0000, 17.0000, NULL, 2.0000, NULL, '100000010', '1', 'USD', 'user@gmail.com', 'Mike', 'Last', 'Middle', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'asg_star_second_star_method', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2017-12-28 14:56:55', '2017-12-28 14:56:55', 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.8500, 0.8500, NULL, 0, NULL, 1.0000, 1.0000, 0.5410, 0.5410),
	(9, 'processing', 'pending', NULL, '905f1b', 'Зіркова доставка - Швидше ніж Довго (до 5 днів)', 0, 1, 1, -1.7000, NULL, NULL, NULL, 17.1500, 0.8500, NULL, NULL, NULL, 0.0000, NULL, 17.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, 1.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1.7000, NULL, NULL, NULL, 17.1500, 0.8500, NULL, NULL, NULL, 0.0000, NULL, 1.0000, 1.0000, 17.0000, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2.0000, NULL, NULL, NULL, 0, 1, 17, 1, NULL, 1, NULL, NULL, NULL, 13, 18, NULL, NULL, NULL, NULL, 0.0000, 17.0000, NULL, NULL, 0.0000, 17.0000, NULL, 2.0000, NULL, '100000011', '1', 'USD', 'user@gmail.com', 'Mike', 'Last', 'Middle', NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, 'USD', NULL, NULL, NULL, NULL, NULL, '127.0.0.1', 'asg_star_second_star_method', 'USD', 'Main Website\nMain Website Store\nDefault Store View', NULL, NULL, '2017-12-29 08:52:13', '2017-12-29 08:52:13', 2, NULL, 0.0000, 0.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0.8500, 0.8500, NULL, 0, NULL, 1.0000, 1.0000, 0.5410, 0.5410);
/*!40000 ALTER TABLE `sales_flat_order` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_order_address
CREATE TABLE IF NOT EXISTS `sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_ADDRESS_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address';

-- Dumping data for table magento.sales_flat_order_address: ~18 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_address` DISABLE KEYS */;
INSERT INTO `sales_flat_order_address` (`entity_id`, `parent_id`, `customer_address_id`, `quote_address_id`, `region_id`, `customer_id`, `fax`, `region`, `postcode`, `lastname`, `street`, `city`, `email`, `telephone`, `country_id`, `firstname`, `address_type`, `prefix`, `middlename`, `suffix`, `company`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`) VALUES
	(1, 1, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'billing', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(2, 1, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'shipping', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(3, 2, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'billing', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(4, 2, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'shipping', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(5, 3, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'billing', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(6, 3, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'shipping', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(7, 4, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'billing', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(8, 4, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'shipping', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(9, 5, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'billing', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(10, 5, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'shipping', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(11, 6, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'billing', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(12, 6, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'shipping', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(13, 7, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'billing', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(14, 7, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'shipping', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(15, 8, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'billing', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(16, 8, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'shipping', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(17, 9, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'billing', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL),
	(18, 9, 1, NULL, 9, 1, NULL, 'Armed Forces Europe', '7777', 'Last', 'Street', 'uzh', 'user@gmail.com', '+380851122333', 'US', 'Mike', 'shipping', NULL, 'Middle', NULL, 'TSG', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `sales_flat_order_address` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_order_grid
CREATE TABLE IF NOT EXISTS `sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STATUS` (`status`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_ENTITY_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_ORDER_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

-- Dumping data for table magento.sales_flat_order_grid: ~8 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_grid` DISABLE KEYS */;
INSERT INTO `sales_flat_order_grid` (`entity_id`, `status`, `store_id`, `store_name`, `customer_id`, `base_grand_total`, `base_total_paid`, `grand_total`, `total_paid`, `increment_id`, `base_currency_code`, `order_currency_code`, `shipping_name`, `billing_name`, `created_at`, `updated_at`) VALUES
	(1, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, 545.0000, NULL, 545.0000, NULL, '100000001', 'USD', 'USD', 'Mike Middle Last', 'Mike Middle Last', '2017-12-27 09:32:17', '2017-12-27 09:32:18'),
	(2, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, 540.0000, NULL, 540.0000, NULL, '100000002', 'USD', 'USD', 'Mike Middle Last', 'Mike Middle Last', '2017-12-27 09:37:08', '2017-12-27 09:37:08'),
	(3, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, 528.8900, NULL, 528.8900, NULL, '100000003', 'USD', 'USD', 'Mike Middle Last', 'Mike Middle Last', '2017-12-27 09:44:24', '2017-12-27 09:44:25'),
	(4, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, 517.0000, NULL, 517.0000, NULL, '100000004', 'USD', 'USD', 'Mike Middle Last', 'Mike Middle Last', '2017-12-27 09:53:14', '2017-12-27 09:53:14'),
	(5, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, 507.3500, NULL, 507.3500, NULL, '100000007', 'USD', 'USD', 'Mike Middle Last', 'Mike Middle Last', '2017-12-27 10:02:13', '2017-12-27 10:02:13'),
	(6, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, 509.4500, NULL, 509.4500, NULL, '100000008', 'USD', 'USD', 'Mike Middle Last', 'Mike Middle Last', '2017-12-27 10:03:18', '2017-12-27 10:03:18'),
	(7, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, 7.6500, NULL, 7.6500, NULL, '100000009', 'USD', 'USD', 'Mike Middle Last', 'Mike Middle Last', '2017-12-28 11:56:24', '2017-12-28 11:56:24'),
	(8, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, 17.1500, NULL, 17.1500, NULL, '100000010', 'USD', 'USD', 'Mike Middle Last', 'Mike Middle Last', '2017-12-28 14:56:55', '2017-12-28 14:56:55'),
	(9, 'pending', 1, 'Main Website\nMain Website Store\nDefault Store View', 1, 17.1500, NULL, 17.1500, NULL, '100000011', 'USD', 'USD', 'Mike Middle Last', 'Mike Middle Last', '2017-12-29 08:52:13', '2017-12-29 08:52:13');
/*!40000 ALTER TABLE `sales_flat_order_grid` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_order_item
CREATE TABLE IF NOT EXISTS `sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_ORDER_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item';

-- Dumping data for table magento.sales_flat_order_item: ~11 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_item` DISABLE KEYS */;
INSERT INTO `sales_flat_order_item` (`item_id`, `order_id`, `parent_item_id`, `quote_item_id`, `store_id`, `created_at`, `updated_at`, `product_id`, `product_type`, `product_options`, `weight`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `qty_backordered`, `qty_canceled`, `qty_invoiced`, `qty_ordered`, `qty_refunded`, `qty_shipped`, `base_cost`, `price`, `base_price`, `original_price`, `base_original_price`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_invoiced`, `base_tax_invoiced`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `amount_refunded`, `base_amount_refunded`, `row_total`, `base_row_total`, `row_invoiced`, `base_row_invoiced`, `row_weight`, `base_tax_before_discount`, `tax_before_discount`, `ext_order_item_id`, `locked_do_invoice`, `locked_do_ship`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `hidden_tax_invoiced`, `base_hidden_tax_invoiced`, `hidden_tax_refunded`, `base_hidden_tax_refunded`, `is_nominal`, `tax_canceled`, `hidden_tax_canceled`, `tax_refunded`, `base_tax_refunded`, `discount_refunded`, `base_discount_refunded`, `gift_message_id`, `gift_message_available`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `weee_tax_applied`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`) VALUES
	(1, 1, NULL, 12, 1, '2017-12-27 09:32:17', '2017-12-27 09:32:17', 2, 'simple', 'a:1:{s:15:"info_buyRequest";a:7:{s:2:"id";s:2:"12";s:8:"form_key";s:16:"2Xqkp8EKhReVtYNA";s:7:"product";s:1:"2";s:15:"related_product";s:0:"";s:3:"qty";s:1:"5";s:7:"options";a:0:{}s:11:"reset_count";b:1;}}', 1.0000, 0, 'tea', 'Чай', NULL, NULL, NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 5.0000, 0.0000, 0.0000, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 35.0000, 35.0000, 0.0000, 0.0000, 5.0000, NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 35.0000, 35.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(2, 2, NULL, 14, 1, '2017-12-27 09:37:08', '2017-12-27 09:37:08', 1, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4va2F2YS5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:1:"3";}}', 1.0000, 0, 'drink', 'Кава', NULL, NULL, NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 3.0000, 0.0000, 0.0000, NULL, 10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 30.0000, 30.0000, 0.0000, 0.0000, 3.0000, NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, 30.0000, 30.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(3, 3, NULL, 15, 1, '2017-12-27 09:44:24', '2017-12-27 09:44:24', 3, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vc2lrLmh0bWw,";s:7:"product";s:1:"3";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:1:"3";}}', 1.0000, 0, 'advertising', 'Сік', NULL, NULL, NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 3.0000, 0.0000, 0.0000, NULL, 9.0000, 9.0000, 9.0000, 9.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 27.0000, 27.0000, 0.0000, 0.0000, 3.0000, NULL, NULL, NULL, NULL, NULL, 9.0000, 9.0000, 27.0000, 27.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(4, 4, NULL, 16, 1, '2017-12-27 09:53:14', '2017-12-27 09:53:14', 2, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1s";s:7:"product";s:1:"2";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}}', 1.0000, 0, 'tea', 'Чай', NULL, NULL, NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 0.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(5, 5, NULL, 17, 1, '2017-12-27 10:02:13', '2017-12-27 10:02:13', 2, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1s";s:7:"product";s:1:"2";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:6:"1.0000";}}', 1.0000, 0, 'tea', 'Чай', NULL, NULL, NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 0.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(6, 6, NULL, 18, 1, '2017-12-27 10:03:18', '2017-12-27 10:03:18', 3, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:44:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL3Npay5odG1s";s:7:"product";s:1:"3";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}}', 1.0000, 0, 'advertising', 'Сік', NULL, NULL, NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, NULL, 9.0000, 9.0000, 9.0000, 9.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9.0000, 9.0000, 0.0000, 0.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, 9.0000, 9.0000, 9.0000, 9.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(7, 7, NULL, 23, 1, '2017-12-28 11:56:24', '2017-12-28 11:56:24', 2, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1s";s:7:"product";s:1:"2";s:8:"form_key";s:16:"RJbfF60VCSDJ3aV5";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}}', 1.0000, 0, 'tea', 'Чай', NULL, '1', NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 0.7000, 0.7000, 0.0000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 0.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(8, 8, NULL, 24, 1, '2017-12-28 14:56:55', '2017-12-28 14:56:55', 2, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:64:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1sP19fX1NJRD1V";s:7:"product";s:1:"2";s:8:"form_key";s:16:"gqELxSUEY9jRxM0Y";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}}', 1.0000, 0, 'tea', 'Чай', NULL, '1', NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 0.7000, 0.7000, 0.0000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 0.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(9, 8, NULL, 25, 1, '2017-12-28 14:56:55', '2017-12-28 14:56:55', 1, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:64:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4va2F2YS5odG1sP19fX1NJRD1V";s:7:"product";s:1:"1";s:8:"form_key";s:16:"gqELxSUEY9jRxM0Y";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}}', 1.0000, 0, 'drink', 'Кава', NULL, '1', NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, NULL, 10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 1.0000, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, 0.0000, 0.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(10, 9, NULL, 26, 1, '2017-12-29 08:52:13', '2017-12-29 08:52:13', 1, 'simple', 'a:1:{s:15:"info_buyRequest";a:4:{s:4:"uenc";s:36:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwLw,,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"gqELxSUEY9jRxM0Y";s:3:"qty";i:1;}}', 1.0000, 0, 'drink', 'Кава', NULL, '1', NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, NULL, 10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 1.0000, 1.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, 0.0000, 0.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000),
	(11, 9, NULL, 27, 1, '2017-12-29 08:52:13', '2017-12-29 08:52:13', 2, 'simple', 'a:1:{s:15:"info_buyRequest";a:5:{s:4:"uenc";s:64:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1sP19fX1NJRD1V";s:7:"product";s:1:"2";s:8:"form_key";s:16:"XC2okUSMjTqpuuGi";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}}', 1.0000, 0, 'tea', 'Чай', NULL, '1', NULL, 0, 0, 0, NULL, 0.0000, 0.0000, 1.0000, 0.0000, 0.0000, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 0.7000, 0.7000, 0.0000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 0.0000, 1.0000, NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, 0.0000);
/*!40000 ALTER TABLE `sales_flat_order_item` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_order_payment
CREATE TABLE IF NOT EXISTS `sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_SALES_FLAT_ORDER_PAYMENT_PARENT_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment';

-- Dumping data for table magento.sales_flat_order_payment: ~8 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_payment` DISABLE KEYS */;
INSERT INTO `sales_flat_order_payment` (`entity_id`, `parent_id`, `base_shipping_captured`, `shipping_captured`, `amount_refunded`, `base_amount_paid`, `amount_canceled`, `base_amount_authorized`, `base_amount_paid_online`, `base_amount_refunded_online`, `base_shipping_amount`, `shipping_amount`, `amount_paid`, `amount_authorized`, `base_amount_ordered`, `base_shipping_refunded`, `shipping_refunded`, `base_amount_refunded`, `amount_ordered`, `base_amount_canceled`, `quote_payment_id`, `additional_data`, `cc_exp_month`, `cc_ss_start_year`, `echeck_bank_name`, `method`, `cc_debug_request_body`, `cc_secure_verify`, `protection_eligibility`, `cc_approval`, `cc_last4`, `cc_status_description`, `echeck_type`, `cc_debug_response_serialized`, `cc_ss_start_month`, `echeck_account_type`, `last_trans_id`, `cc_cid_status`, `cc_owner`, `cc_type`, `po_number`, `cc_exp_year`, `cc_status`, `echeck_routing_number`, `account_status`, `anet_trans_method`, `cc_debug_response_body`, `cc_ss_issue`, `echeck_account_name`, `cc_avs_status`, `cc_number_enc`, `cc_trans_id`, `paybox_request_number`, `address_status`, `additional_information`) VALUES
	(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, NULL, NULL, 545.0000, NULL, NULL, NULL, 545.0000, NULL, NULL, NULL, '0', '0', NULL, 'asg_kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, NULL, NULL, 540.0000, NULL, NULL, NULL, 540.0000, NULL, NULL, NULL, '0', '0', NULL, 'asg_kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1.8900, 1.8900, NULL, NULL, 528.8900, NULL, NULL, NULL, 528.8900, NULL, NULL, NULL, '0', '0', NULL, 'asg_kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, NULL, NULL, 517.0000, NULL, NULL, NULL, 517.0000, NULL, NULL, NULL, '0', '0', NULL, 'asg_kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.3500, 0.3500, NULL, NULL, 507.3500, NULL, NULL, NULL, 507.3500, NULL, NULL, NULL, '0', '0', NULL, 'asg_kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.4500, 0.4500, NULL, NULL, 509.4500, NULL, NULL, NULL, 509.4500, NULL, NULL, NULL, '0', '0', NULL, 'asg_kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.3500, 0.3500, NULL, NULL, 7.6500, NULL, NULL, NULL, 7.6500, NULL, NULL, NULL, '0', '0', NULL, 'asg_kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.8500, 0.8500, NULL, NULL, 17.1500, NULL, NULL, NULL, 17.1500, NULL, NULL, NULL, '0', '0', NULL, 'asg_kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.8500, 0.8500, NULL, NULL, 17.1500, NULL, NULL, NULL, 17.1500, NULL, NULL, NULL, '0', '0', NULL, 'asg_kasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `sales_flat_order_payment` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_order_status_history
CREATE TABLE IF NOT EXISTS `sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_CE7C71E74CB74DDACED337CEE6753D5E` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History';

-- Dumping data for table magento.sales_flat_order_status_history: ~8 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_order_status_history` DISABLE KEYS */;
INSERT INTO `sales_flat_order_status_history` (`entity_id`, `parent_id`, `is_customer_notified`, `is_visible_on_front`, `comment`, `status`, `created_at`, `entity_name`) VALUES
	(1, 1, 1, 0, NULL, 'pending', '2017-12-27 09:32:18', 'order'),
	(2, 2, 1, 0, NULL, 'pending', '2017-12-27 09:37:08', 'order'),
	(3, 3, 1, 0, NULL, 'pending', '2017-12-27 09:44:25', 'order'),
	(4, 4, 1, 0, NULL, 'pending', '2017-12-27 09:53:14', 'order'),
	(5, 5, 1, 0, NULL, 'pending', '2017-12-27 10:02:13', 'order'),
	(6, 6, 1, 0, NULL, 'pending', '2017-12-27 10:03:18', 'order'),
	(7, 7, 1, 0, NULL, 'pending', '2017-12-28 11:56:24', 'order'),
	(8, 8, 1, 0, NULL, 'pending', '2017-12-28 14:56:55', 'order'),
	(9, 9, 1, 0, NULL, 'pending', '2017-12-29 08:52:13', 'order');
/*!40000 ALTER TABLE `sales_flat_order_status_history` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_quote
CREATE TABLE IF NOT EXISTS `sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  `base_kasa_percent` decimal(12,4) DEFAULT NULL,
  `kasa_percent` decimal(12,4) DEFAULT NULL,
  `base_looted_coins` decimal(12,4) DEFAULT NULL,
  `looted_coins` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `IDX_SALES_FLAT_QUOTE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_FLAT_QUOTE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote';

-- Dumping data for table magento.sales_flat_quote: ~13 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote` DISABLE KEYS */;
INSERT INTO `sales_flat_quote` (`entity_id`, `store_id`, `created_at`, `updated_at`, `converted_at`, `is_active`, `is_virtual`, `is_multi_shipping`, `items_count`, `items_qty`, `orig_order_id`, `store_to_base_rate`, `store_to_quote_rate`, `base_currency_code`, `store_currency_code`, `quote_currency_code`, `grand_total`, `base_grand_total`, `checkout_method`, `customer_id`, `customer_tax_class_id`, `customer_group_id`, `customer_email`, `customer_prefix`, `customer_firstname`, `customer_middlename`, `customer_lastname`, `customer_suffix`, `customer_dob`, `customer_note`, `customer_note_notify`, `customer_is_guest`, `remote_ip`, `applied_rule_ids`, `reserved_order_id`, `password_hash`, `coupon_code`, `global_currency_code`, `base_to_global_rate`, `base_to_quote_rate`, `customer_taxvat`, `customer_gender`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `is_changed`, `trigger_recollect`, `ext_shipping_info`, `gift_message_id`, `is_persistent`, `base_kasa_percent`, `kasa_percent`, `base_looted_coins`, `looted_coins`) VALUES
	(1, 1, '2017-12-04 12:43:44', '2017-12-04 12:43:46', NULL, 1, 0, 0, 1, 1.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 9.0000, 9.0000, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, NULL, NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 9.0000, 9.0000, 9.0000, 9.0000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(2, 1, '2017-12-21 14:05:18', '2017-12-27 09:32:18', NULL, 0, 0, 0, 1, 5.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 545.0000, 545.0000, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, '100000001', NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 35.0000, 35.0000, 35.0000, 35.0000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(4, 1, '2017-12-27 09:32:45', '2017-12-27 09:37:08', NULL, 0, 0, 0, 1, 3.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 540.0000, 540.0000, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, '100000002', NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 30.0000, 30.0000, 30.0000, 30.0000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(5, 1, '2017-12-27 09:43:54', '2017-12-27 09:44:25', NULL, 0, 0, 0, 1, 3.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 528.8900, 528.8900, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, '100000003', NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 27.0000, 27.0000, 27.0000, 27.0000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(6, 1, '2017-12-27 09:52:46', '2017-12-27 09:53:14', NULL, 0, 0, 0, 1, 1.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 517.0000, 517.0000, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, '100000004', NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(7, 1, '2017-12-27 09:53:53', '2017-12-27 10:02:13', NULL, 0, 0, 0, 1, 1.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 507.3500, 507.3500, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, '100000007', NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(8, 1, '2017-12-27 10:02:50', '2017-12-27 10:03:18', NULL, 0, 0, 0, 1, 1.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 509.4500, 509.4500, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', NULL, '100000008', NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 9.0000, 9.0000, 9.0000, 9.0000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(9, 1, '2017-12-27 10:13:56', '2017-12-28 11:56:24', NULL, 0, 0, 0, 1, 1.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 7.6500, 7.6500, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', '1', '100000009', NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 7.0000, 7.0000, 6.3000, 6.3000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(10, 1, '2017-12-27 14:03:14', '2017-12-27 14:04:58', NULL, 1, 0, 0, 1, 1.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 8.1000, 8.1000, NULL, NULL, 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '127.0.0.1', '1', NULL, NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 9.0000, 9.0000, 8.1000, 8.1000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(11, 1, '2017-12-27 14:26:00', '2017-12-27 15:31:50', NULL, 1, 0, 0, 1, 1.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 9.7400, 9.7400, NULL, NULL, 3, 0, 'ship@gmail.com', NULL, 'Test Mike', NULL, 'sdfgsdgf', NULL, NULL, NULL, 1, 0, '127.0.0.1', '1', NULL, NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 10.0000, 10.0000, 9.0000, 9.0000, 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL),
	(12, 1, '2017-12-28 12:16:50', '2017-12-28 14:56:55', NULL, 0, 0, 0, 2, 2.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 17.1500, 17.1500, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', '1', '100000010', NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 17.0000, 17.0000, 15.3000, 15.3000, 1, 0, NULL, NULL, 0, 1.0000, NULL, 0.5410, NULL),
	(13, 1, '2017-12-28 15:54:27', '2017-12-29 08:52:15', NULL, 0, 0, 0, 2, 2.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 17.1500, 17.1500, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', '1', '100000011', NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 17.0000, 17.0000, 15.3000, 15.3000, 1, 0, NULL, NULL, 0, 1.0000, NULL, 0.5410, NULL),
	(14, 1, '2017-12-29 08:53:10', '2018-01-04 07:56:25', NULL, 1, 0, 0, 3, 22.0000, 0, 1.0000, 1.0000, 'USD', 'USD', 'USD', 206.1500, 206.1500, NULL, 1, 3, 1, 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, NULL, NULL, 1, 0, '127.0.0.1', '1', NULL, NULL, NULL, 'USD', 1.0000, 1.0000, NULL, NULL, 217.0000, 217.0000, 195.3000, 195.3000, 1, 0, NULL, NULL, 0, 6.0000, 6.0000, 0.1410, 0.1410);
/*!40000 ALTER TABLE `sales_flat_quote` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_quote_address
CREATE TABLE IF NOT EXISTS `sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`),
  CONSTRAINT `FK_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address';

-- Dumping data for table magento.sales_flat_quote_address: ~26 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_address` DISABLE KEYS */;
INSERT INTO `sales_flat_quote_address` (`address_id`, `quote_id`, `created_at`, `updated_at`, `customer_id`, `save_in_address_book`, `customer_address_id`, `address_type`, `email`, `prefix`, `firstname`, `middlename`, `lastname`, `suffix`, `company`, `street`, `city`, `region`, `region_id`, `postcode`, `country_id`, `telephone`, `fax`, `same_as_billing`, `free_shipping`, `collect_shipping_rates`, `shipping_method`, `shipping_description`, `weight`, `subtotal`, `base_subtotal`, `subtotal_with_discount`, `base_subtotal_with_discount`, `tax_amount`, `base_tax_amount`, `shipping_amount`, `base_shipping_amount`, `shipping_tax_amount`, `base_shipping_tax_amount`, `discount_amount`, `base_discount_amount`, `grand_total`, `base_grand_total`, `customer_notes`, `applied_taxes`, `discount_description`, `shipping_discount_amount`, `base_shipping_discount_amount`, `subtotal_incl_tax`, `base_subtotal_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `shipping_hidden_tax_amount`, `base_shipping_hidden_tax_amnt`, `shipping_incl_tax`, `base_shipping_incl_tax`, `vat_id`, `vat_is_valid`, `vat_request_id`, `vat_request_date`, `vat_request_success`, `gift_message_id`) VALUES
	(1, 1, '2017-12-04 12:43:45', '2017-12-04 12:43:46', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 1, '2017-12-04 12:43:45', '2017-12-04 12:43:46', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 1.0000, 9.0000, 9.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9.0000, 9.0000, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 9.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 2, '2017-12-21 14:05:19', '2017-12-27 09:32:17', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 2, '2017-12-21 14:05:19', '2017-12-27 09:32:17', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asgstar_third_star_method', 'Зіркова доставка - "Телепорт" (до 1 дня)', 5.0000, 35.0000, 35.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, 545.0000, 545.0000, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 35.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 10.0000, 10.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 4, '2017-12-27 09:32:45', '2017-12-27 09:37:08', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 4, '2017-12-27 09:32:45', '2017-12-27 09:37:08', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asgstar_first_star_method', 'Зіркова доставка - "Занадто довго" (5 - 10 днів)', 3.0000, 30.0000, 30.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, 540.0000, 540.0000, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 30.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 10.0000, 10.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 5, '2017-12-27 09:43:54', '2017-12-27 09:44:24', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 5, '2017-12-27 09:43:54', '2017-12-27 09:44:24', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asgstar_second_star_method', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 3.0000, 27.0000, 27.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1.8900, 1.8900, 0.0000, 0.0000, 0.0000, 0.0000, 528.8900, 528.8900, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 27.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 1.8900, 1.8900, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 6, '2017-12-27 09:52:46', '2017-12-27 09:53:14', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 6, '2017-12-27 09:52:46', '2017-12-27 09:53:14', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asgstar_third_star_method', 'Зіркова доставка - "Телепорт" (до 1 дня)', 1.0000, 7.0000, 7.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, 0.0000, 0.0000, 0.0000, 0.0000, 517.0000, 517.0000, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 7.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 10.0000, 10.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 7, '2017-12-27 09:53:54', '2017-12-27 10:02:13', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 7, '2017-12-27 09:53:54', '2017-12-27 10:02:13', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asgstar_second_star_method', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 1.0000, 7.0000, 7.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.3500, 0.3500, 0.0000, 0.0000, 0.0000, 0.0000, 507.3500, 507.3500, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 7.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.3500, 0.3500, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 8, '2017-12-27 10:02:50', '2017-12-27 10:03:18', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 8, '2017-12-27 10:02:50', '2017-12-27 10:03:18', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asgstar_second_star_method', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 1.0000, 9.0000, 9.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.4500, 0.4500, 0.0000, 0.0000, 0.0000, 0.0000, 509.4500, 509.4500, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 9.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.4500, 0.4500, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 9, '2017-12-27 10:13:56', '2017-12-28 11:56:24', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 9, '2017-12-27 10:13:56', '2017-12-28 11:56:24', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asg_star_second_star_method', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 1.0000, 7.0000, 7.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.3500, 0.3500, 0.0000, 0.0000, -0.7000, -0.7000, 7.6500, 7.6500, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 7.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.3500, 0.3500, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 10, '2017-12-27 14:03:14', '2017-12-27 14:04:58', NULL, 0, NULL, 'billing', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 10, '2017-12-27 14:03:14', '2017-12-27 14:04:58', NULL, 0, NULL, 'shipping', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, NULL, 1.0000, 9.0000, 9.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, -0.9000, -0.9000, 8.1000, 8.1000, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 9.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 11, '2017-12-27 14:26:01', '2017-12-27 15:31:50', NULL, 1, NULL, 'billing', 'ship@gmail.com', NULL, 'Test Mike', NULL, 'sdfgsdgf', NULL, NULL, 'Tetst Test', 'uuuuuu', 'California', 12, '12312', 'US', '111 22 33', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 11, '2017-12-27 14:26:01', '2017-12-27 15:31:50', NULL, 0, NULL, 'shipping', 'ship@gmail.com', NULL, 'Test Mike', NULL, 'sdfgsdgf', NULL, NULL, 'Tetst Test', 'uuuuuu', 'California', 12, '12312', 'US', '111 22 33', NULL, 1, 0, 0, NULL, NULL, 1.0000, 10.0000, 10.0000, 0.0000, 0.0000, 0.7400, 0.7400, 0.0000, 0.0000, 0.0000, 0.0000, -1.0000, -1.0000, 9.7400, 9.7400, NULL, 'a:1:{s:14:"US-CA-*-Rate 1";a:6:{s:5:"rates";a:1:{i:0;a:6:{s:4:"code";s:14:"US-CA-*-Rate 1";s:5:"title";s:14:"US-CA-*-Rate 1";s:7:"percent";d:8.25;s:8:"position";s:1:"1";s:8:"priority";s:1:"1";s:7:"rule_id";s:1:"1";}}s:7:"percent";d:8.25;s:2:"id";s:14:"US-CA-*-Rate 1";s:7:"process";i:0;s:6:"amount";d:0.73999999999999999;s:11:"base_amount";d:0.73999999999999999;}}', NULL, 0.0000, 0.0000, 10.8300, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 12, '2017-12-28 12:16:50', '2017-12-28 14:56:55', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 12, '2017-12-28 12:16:50', '2017-12-28 14:56:55', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asg_star_second_star_method', 'Зіркова доставка - "Швидше ніж Довго"  (до 5 днів)', 2.0000, 17.0000, 17.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.8500, 0.8500, 0.0000, 0.0000, -1.7000, -1.7000, 17.1500, 17.1500, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 17.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.8500, 0.8500, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 13, '2017-12-28 15:54:28', '2017-12-29 08:52:13', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, 13, '2017-12-28 15:54:28', '2017-12-29 08:52:13', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asg_star_second_star_method', 'Зіркова доставка - Швидше ніж Довго (до 5 днів)', 2.0000, 17.0000, 17.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.8500, 0.8500, 0.0000, 0.0000, -1.7000, -1.7000, 17.1500, 17.1500, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 17.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 0.8500, 0.8500, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, 14, '2017-12-29 08:53:21', '2018-01-04 07:56:25', 1, 0, 1, 'shipping', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 1, 0, 0, 'asg_star_third_star_method', 'Зіркова доставка - Телепорт (до 1 дня)', 22.0000, 217.0000, 217.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10.8500, 10.8500, 0.0000, 0.0000, -21.7000, -21.7000, 206.1500, 206.1500, NULL, 'a:0:{}', NULL, 0.0000, 0.0000, 217.0000, NULL, 0.0000, 0.0000, 0.0000, NULL, 10.8500, 10.8500, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, 14, '2017-12-29 08:53:21', '2018-01-04 07:56:25', 1, 0, 1, 'billing', 'user@gmail.com', NULL, 'Mike', 'Middle', 'Last', NULL, 'TSG', 'Street', 'uzh', 'Armed Forces Europe', 9, '7777', 'US', '+380851122333', NULL, 0, 0, 0, NULL, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 'a:0:{}', NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `sales_flat_quote_address` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_quote_address_item
CREATE TABLE IF NOT EXISTS `sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`),
  CONSTRAINT `FK_2EF8E28181D666D94D4E30DC2B0F80BF` FOREIGN KEY (`quote_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_A345FC758F20C314169CE27DCE53477F` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_B521389746C00700D1B2B76EBBE53854` FOREIGN KEY (`quote_address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item';

-- Dumping data for table magento.sales_flat_quote_address_item: ~2 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_address_item` DISABLE KEYS */;
INSERT INTO `sales_flat_quote_address_item` (`address_item_id`, `parent_item_id`, `quote_address_id`, `quote_item_id`, `created_at`, `updated_at`, `applied_rule_ids`, `additional_data`, `weight`, `qty`, `discount_amount`, `tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `base_discount_amount`, `base_tax_amount`, `row_weight`, `product_id`, `super_product_id`, `parent_product_id`, `sku`, `image`, `name`, `description`, `free_shipping`, `is_qty_decimal`, `price`, `discount_percent`, `no_discount`, `tax_percent`, `base_price`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `gift_message_id`) VALUES
	(1, NULL, 29, 28, '2017-12-29 08:53:21', '2018-01-04 07:56:25', '1', NULL, 1.0000, 1.0000, 1.0000, 0.0000, 10.0000, 10.0000, 0.0000, 1.0000, 0.0000, 1.0000, 1, NULL, NULL, 'drink', NULL, 'Кава', NULL, 0, 0, 10.0000, 10.0000, NULL, 0.0000, 10.0000, NULL, 10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000, NULL),
	(2, NULL, 29, 29, '2017-12-29 08:53:21', '2018-01-04 07:56:25', '1', NULL, 1.0000, 1.0000, 0.7000, 0.0000, 7.0000, 7.0000, 0.0000, 0.7000, 0.0000, 1.0000, 2, NULL, NULL, 'tea', NULL, 'Чай', NULL, 0, 0, 7.0000, 10.0000, NULL, 0.0000, 7.0000, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL);
/*!40000 ALTER TABLE `sales_flat_quote_address_item` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_quote_item
CREATE TABLE IF NOT EXISTS `sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  PRIMARY KEY (`item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `FK_B201DEB5DE51B791AF5C5BF87053C5A7` FOREIGN KEY (`parent_item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_PRD_ID_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_QUOTE_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item';

-- Dumping data for table magento.sales_flat_quote_item: ~17 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_item` DISABLE KEYS */;
INSERT INTO `sales_flat_quote_item` (`item_id`, `quote_id`, `created_at`, `updated_at`, `product_id`, `store_id`, `parent_item_id`, `is_virtual`, `sku`, `name`, `description`, `applied_rule_ids`, `additional_data`, `free_shipping`, `is_qty_decimal`, `no_discount`, `weight`, `qty`, `price`, `base_price`, `custom_price`, `discount_percent`, `discount_amount`, `base_discount_amount`, `tax_percent`, `tax_amount`, `base_tax_amount`, `row_total`, `base_row_total`, `row_total_with_discount`, `row_weight`, `product_type`, `base_tax_before_discount`, `tax_before_discount`, `original_custom_price`, `redirect_url`, `base_cost`, `price_incl_tax`, `base_price_incl_tax`, `row_total_incl_tax`, `base_row_total_incl_tax`, `hidden_tax_amount`, `base_hidden_tax_amount`, `gift_message_id`, `weee_tax_disposition`, `weee_tax_row_disposition`, `base_weee_tax_disposition`, `base_weee_tax_row_disposition`, `weee_tax_applied`, `weee_tax_applied_amount`, `weee_tax_applied_row_amount`, `base_weee_tax_applied_amount`, `base_weee_tax_applied_row_amnt`) VALUES
	(1, 1, '2017-12-04 12:43:45', '2017-12-04 12:43:45', 3, 1, NULL, 0, 'advertising', 'Сік', NULL, NULL, NULL, 0, 0, 0, 1.0000, 1.0000, 9.0000, 9.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9.0000, 9.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 9.0000, 9.0000, 9.0000, 9.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(12, 2, '2017-12-26 14:27:21', '2017-12-26 15:57:00', 2, 1, NULL, 0, 'tea', 'Чай', NULL, NULL, NULL, 0, 0, 0, 1.0000, 5.0000, 7.0000, 7.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 35.0000, 35.0000, 0.0000, 5.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 35.0000, 35.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(14, 4, '2017-12-27 09:36:42', '2017-12-27 09:36:42', 1, 1, NULL, 0, 'drink', 'Кава', NULL, NULL, NULL, 0, 0, 0, 1.0000, 3.0000, 10.0000, 10.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 30.0000, 30.0000, 0.0000, 3.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, 30.0000, 30.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(15, 5, '2017-12-27 09:43:54', '2017-12-27 09:43:54', 3, 1, NULL, 0, 'advertising', 'Сік', NULL, NULL, NULL, 0, 0, 0, 1.0000, 3.0000, 9.0000, 9.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 27.0000, 27.0000, 0.0000, 3.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 9.0000, 9.0000, 27.0000, 27.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(16, 6, '2017-12-27 09:52:46', '2017-12-27 09:52:46', 2, 1, NULL, 0, 'tea', 'Чай', NULL, NULL, NULL, 0, 0, 0, 1.0000, 1.0000, 7.0000, 7.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(17, 7, '2017-12-27 09:53:54', '2017-12-27 09:53:54', 2, 1, NULL, 0, 'tea', 'Чай', NULL, NULL, NULL, 0, 0, 0, 1.0000, 1.0000, 7.0000, 7.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(18, 8, '2017-12-27 10:02:50', '2017-12-27 10:02:50', 3, 1, NULL, 0, 'advertising', 'Сік', NULL, NULL, NULL, 0, 0, 0, 1.0000, 1.0000, 9.0000, 9.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9.0000, 9.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 9.0000, 9.0000, 9.0000, 9.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(20, 10, '2017-12-27 14:03:14', '2017-12-27 14:03:14', 3, 1, NULL, 0, 'advertising', 'Сік', NULL, '1', NULL, 0, 0, 0, 1.0000, 1.0000, 9.0000, 9.0000, NULL, 10.0000, 0.9000, 0.9000, 0.0000, 0.0000, 0.0000, 9.0000, 9.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 9.0000, 9.0000, 9.0000, 9.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(21, 11, '2017-12-27 14:26:01', '2017-12-27 14:31:00', 1, 1, NULL, 0, 'drink', 'Кава', NULL, '1', NULL, 0, 0, 0, 1.0000, 1.0000, 10.0000, 10.0000, NULL, 10.0000, 1.0000, 1.0000, 8.2500, 0.7400, 0.7400, 10.0000, 10.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 10.8300, 10.8300, 10.8300, 10.8300, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(23, 9, '2017-12-27 15:16:20', '2017-12-27 15:32:41', 2, 1, NULL, 0, 'tea', 'Чай', NULL, '1', NULL, 0, 0, 0, 1.0000, 1.0000, 7.0000, 7.0000, NULL, 10.0000, 0.7000, 0.7000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(24, 12, '2017-12-28 12:16:50', '2017-12-28 12:16:50', 2, 1, NULL, 0, 'tea', 'Чай', NULL, '1', NULL, 0, 0, 0, 1.0000, 1.0000, 7.0000, 7.0000, NULL, 10.0000, 0.7000, 0.7000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(25, 12, '2017-12-28 14:54:53', '2017-12-28 14:54:53', 1, 1, NULL, 0, 'drink', 'Кава', NULL, '1', NULL, 0, 0, 0, 1.0000, 1.0000, 10.0000, 10.0000, NULL, 10.0000, 1.0000, 1.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(26, 13, '2017-12-28 15:54:28', '2017-12-28 15:54:28', 1, 1, NULL, 0, 'drink', 'Кава', NULL, '1', NULL, 0, 0, 0, 1.0000, 1.0000, 10.0000, 10.0000, NULL, 10.0000, 1.0000, 1.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(27, 13, '2017-12-29 07:48:09', '2017-12-29 07:48:09', 2, 1, NULL, 0, 'tea', 'Чай', NULL, '1', NULL, 0, 0, 0, 1.0000, 1.0000, 7.0000, 7.0000, NULL, 10.0000, 0.7000, 0.7000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(28, 14, '2017-12-29 08:53:11', '2017-12-29 08:53:11', 1, 1, NULL, 0, 'drink', 'Кава', NULL, '1', NULL, 0, 0, 0, 1.0000, 1.0000, 10.0000, 10.0000, NULL, 10.0000, 1.0000, 1.0000, 0.0000, 0.0000, 0.0000, 10.0000, 10.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, 10.0000, 10.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(29, 14, '2017-12-29 08:53:11', '2017-12-29 08:53:11', 2, 1, NULL, 0, 'tea', 'Чай', NULL, '1', NULL, 0, 0, 0, 1.0000, 1.0000, 7.0000, 7.0000, NULL, 10.0000, 0.7000, 0.7000, 0.0000, 0.0000, 0.0000, 7.0000, 7.0000, 0.0000, 1.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 7.0000, 7.0000, 7.0000, 7.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL),
	(31, 14, '2018-01-04 07:49:37', '2018-01-04 07:50:34', 1, 1, NULL, 0, 'drink', 'Кава', NULL, '1', NULL, 0, 0, 0, 1.0000, 20.0000, 10.0000, 10.0000, NULL, 10.0000, 20.0000, 20.0000, 0.0000, 0.0000, 0.0000, 200.0000, 200.0000, 0.0000, 20.0000, 'simple', NULL, NULL, NULL, NULL, NULL, 10.0000, 10.0000, 200.0000, 200.0000, 0.0000, 0.0000, NULL, 0.0000, 0.0000, 0.0000, 0.0000, 'a:0:{}', 0.0000, 0.0000, 0.0000, NULL);
/*!40000 ALTER TABLE `sales_flat_quote_item` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_quote_item_option
CREATE TABLE IF NOT EXISTS `sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `IDX_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`),
  CONSTRAINT `FK_5F20E478CA64B6891EA8A9D6C2735739` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option';

-- Dumping data for table magento.sales_flat_quote_item_option: ~17 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_item_option` DISABLE KEYS */;
INSERT INTO `sales_flat_quote_item_option` (`option_id`, `item_id`, `product_id`, `code`, `value`) VALUES
	(1, 1, 3, 'info_buyRequest', 'a:4:{s:4:"uenc";s:200:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL2NhdGFsb2dzZWFyY2gvYWR2YW5jZWQvcmVzdWx0Lz9uYW1lPSVEMCVBMSVEMSU5NiVEMCVCQSZkZXNjcmlwdGlvbj0mc2hvcnRfZGVzY3JpcHRpb249JnNrdT0mcHJpY2UlNUJmcm9tJTVEPSZwcmljZSU1QnRvJTVEPQ,,";s:7:"product";s:1:"3";s:8:"form_key";s:16:"xiWex6B1mDi6cg42";s:3:"qty";i:1;}'),
	(12, 12, 2, 'info_buyRequest', 'a:7:{s:2:"id";s:2:"12";s:8:"form_key";s:16:"2Xqkp8EKhReVtYNA";s:7:"product";s:1:"2";s:15:"related_product";s:0:"";s:3:"qty";s:1:"5";s:7:"options";a:0:{}s:11:"reset_count";b:1;}'),
	(14, 14, 1, 'info_buyRequest', 'a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4va2F2YS5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:1:"3";}'),
	(15, 15, 3, 'info_buyRequest', 'a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vc2lrLmh0bWw,";s:7:"product";s:1:"3";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:1:"3";}'),
	(16, 16, 2, 'info_buyRequest', 'a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1s";s:7:"product";s:1:"2";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
	(17, 17, 2, 'info_buyRequest', 'a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1s";s:7:"product";s:1:"2";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:6:"1.0000";}'),
	(18, 18, 3, 'info_buyRequest', 'a:5:{s:4:"uenc";s:44:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL3Npay5odG1s";s:7:"product";s:1:"3";s:8:"form_key";s:16:"hzhdYQGDNkbn7gHh";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
	(20, 20, 3, 'info_buyRequest', 'a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vc2lrLmh0bWw,";s:7:"product";s:1:"3";s:8:"form_key";s:16:"65RnLqNmAk8qBCY7";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
	(21, 21, 1, 'info_buyRequest', 'a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4va2F2YS5odG1s";s:7:"product";s:1:"1";s:8:"form_key";s:16:"8UkphnplYFRY8hey";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
	(23, 23, 2, 'info_buyRequest', 'a:5:{s:4:"uenc";s:52:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1s";s:7:"product";s:1:"2";s:8:"form_key";s:16:"RJbfF60VCSDJ3aV5";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
	(24, 24, 2, 'info_buyRequest', 'a:5:{s:4:"uenc";s:64:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1sP19fX1NJRD1V";s:7:"product";s:1:"2";s:8:"form_key";s:16:"gqELxSUEY9jRxM0Y";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
	(25, 25, 1, 'info_buyRequest', 'a:5:{s:4:"uenc";s:64:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4va2F2YS5odG1sP19fX1NJRD1V";s:7:"product";s:1:"1";s:8:"form_key";s:16:"gqELxSUEY9jRxM0Y";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
	(26, 26, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:36:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwLw,,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"gqELxSUEY9jRxM0Y";s:3:"qty";i:1;}'),
	(27, 27, 2, 'info_buyRequest', 'a:5:{s:4:"uenc";s:64:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1sP19fX1NJRD1V";s:7:"product";s:1:"2";s:8:"form_key";s:16:"XC2okUSMjTqpuuGi";s:15:"related_product";s:0:"";s:3:"qty";s:1:"1";}'),
	(28, 28, 1, 'info_buyRequest', 'a:4:{s:4:"uenc";s:36:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwLw,,";s:7:"product";s:1:"1";s:8:"form_key";s:16:"gqELxSUEY9jRxM0Y";s:3:"qty";s:6:"1.0000";}'),
	(29, 29, 2, 'info_buyRequest', 'a:5:{s:4:"uenc";s:64:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4vY2hhai5odG1sP19fX1NJRD1V";s:7:"product";s:1:"2";s:8:"form_key";s:16:"XC2okUSMjTqpuuGi";s:15:"related_product";s:0:"";s:3:"qty";s:6:"1.0000";}'),
	(31, 31, 1, 'info_buyRequest', 'a:5:{s:4:"uenc";s:64:"aHR0cDovL21hZy5kZXYvaW5kZXgucGhwL21haW4va2F2YS5odG1sP19fX1NJRD1V";s:7:"product";s:1:"1";s:8:"form_key";s:16:"RGw3MJvoJ9z8Mhcy";s:15:"related_product";s:0:"";s:3:"qty";s:2:"20";}');
/*!40000 ALTER TABLE `sales_flat_quote_item_option` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_quote_payment
CREATE TABLE IF NOT EXISTS `sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `IDX_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`),
  CONSTRAINT `FK_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID_SALES_FLAT_QUOTE_ENTITY_ID` FOREIGN KEY (`quote_id`) REFERENCES `sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment';

-- Dumping data for table magento.sales_flat_quote_payment: ~10 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_payment` DISABLE KEYS */;
INSERT INTO `sales_flat_quote_payment` (`payment_id`, `quote_id`, `created_at`, `updated_at`, `method`, `cc_type`, `cc_number_enc`, `cc_last4`, `cc_cid_enc`, `cc_owner`, `cc_exp_month`, `cc_exp_year`, `cc_ss_owner`, `cc_ss_start_month`, `cc_ss_start_year`, `po_number`, `additional_data`, `cc_ss_issue`, `additional_information`, `paypal_payer_id`, `paypal_payer_status`, `paypal_correlation_id`) VALUES
	(1, 2, '2017-12-21 14:05:41', '2017-12-27 09:32:17', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 4, '2017-12-27 09:36:47', '2017-12-27 09:37:08', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 5, '2017-12-27 09:44:02', '2017-12-27 09:44:24', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 6, '2017-12-27 09:52:53', '2017-12-27 09:53:14', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 7, '2017-12-27 09:56:07', '2017-12-27 10:02:13', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 8, '2017-12-27 10:03:00', '2017-12-27 10:03:18', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 10, '2017-12-27 14:03:15', '2017-12-27 14:04:58', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 11, '2017-12-27 14:29:28', '2017-12-27 15:31:50', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 9, '2017-12-28 10:29:24', '2017-12-28 11:56:24', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 12, '2017-12-28 12:16:55', '2017-12-28 14:56:55', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 13, '2017-12-29 07:48:29', '2017-12-29 08:52:13', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 14, '2017-12-29 08:53:24', '2018-01-04 07:56:25', 'asg_kasa', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `sales_flat_quote_payment` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_quote_shipping_rate
CREATE TABLE IF NOT EXISTS `sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `IDX_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`),
  CONSTRAINT `FK_B1F177EFB73D3EDF5322BA64AC48D150` FOREIGN KEY (`address_id`) REFERENCES `sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=758 DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate';

-- Dumping data for table magento.sales_flat_quote_shipping_rate: ~44 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_quote_shipping_rate` DISABLE KEYS */;
INSERT INTO `sales_flat_quote_shipping_rate` (`rate_id`, `address_id`, `created_at`, `updated_at`, `carrier`, `carrier_title`, `code`, `method`, `method_description`, `price`, `error_message`, `method_title`) VALUES
	(382, 4, '2017-12-27 09:32:09', '2017-12-27 09:32:17', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 25.0000, NULL, 'Fixed'),
	(383, 4, '2017-12-27 09:32:09', '2017-12-27 09:32:17', 'asgstar', 'Зіркова доставка', 'asgstar_second_star_method', 'second_star_method', NULL, 2.4500, NULL, '"Швидше ніж Довго"  (до 5 днів)'),
	(384, 4, '2017-12-27 09:32:09', '2017-12-27 09:32:17', 'asgstar', 'Зіркова доставка', 'asgstar_third_star_method', 'third_star_method', NULL, 10.0000, NULL, '"Телепорт" (до 1 дня)'),
	(385, 4, '2017-12-27 09:32:09', '2017-12-27 09:32:17', 'asgstar', 'Зіркова доставка', 'asgstar_first_star_method', 'first_star_method', NULL, 10.0000, NULL, '"Занадто довго" (5 - 10 днів)'),
	(394, 8, '2017-12-27 09:37:03', '2017-12-27 09:37:08', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 15.0000, NULL, 'Fixed'),
	(395, 8, '2017-12-27 09:37:03', '2017-12-27 09:37:08', 'asgstar', 'Зіркова доставка', 'asgstar_second_star_method', 'second_star_method', NULL, 2.1000, NULL, '"Швидше ніж Довго"  (до 5 днів)'),
	(396, 8, '2017-12-27 09:37:03', '2017-12-27 09:37:08', 'asgstar', 'Зіркова доставка', 'asgstar_third_star_method', 'third_star_method', NULL, 10.0000, NULL, '"Телепорт" (до 1 дня)'),
	(397, 8, '2017-12-27 09:37:03', '2017-12-27 09:37:08', 'asgstar', 'Зіркова доставка', 'asgstar_first_star_method', 'first_star_method', NULL, 10.0000, NULL, '"Занадто довго" (5 - 10 днів)'),
	(406, 10, '2017-12-27 09:44:21', '2017-12-27 09:44:24', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 15.0000, NULL, 'Fixed'),
	(407, 10, '2017-12-27 09:44:21', '2017-12-27 09:44:24', 'asgstar', 'Зіркова доставка', 'asgstar_second_star_method', 'second_star_method', NULL, 1.8900, NULL, '"Швидше ніж Довго"  (до 5 днів)'),
	(408, 10, '2017-12-27 09:44:21', '2017-12-27 09:44:24', 'asgstar', 'Зіркова доставка', 'asgstar_third_star_method', 'third_star_method', NULL, 10.0000, NULL, '"Телепорт" (до 1 дня)'),
	(409, 10, '2017-12-27 09:44:21', '2017-12-27 09:44:24', 'asgstar', 'Зіркова доставка', 'asgstar_first_star_method', 'first_star_method', NULL, 10.0000, NULL, '"Занадто довго" (5 - 10 днів)'),
	(418, 12, '2017-12-27 09:53:10', '2017-12-27 09:53:14', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 5.0000, NULL, 'Fixed'),
	(419, 12, '2017-12-27 09:53:10', '2017-12-27 09:53:14', 'asgstar', 'Зіркова доставка', 'asgstar_second_star_method', 'second_star_method', NULL, 0.3500, NULL, '"Швидше ніж Довго"  (до 5 днів)'),
	(420, 12, '2017-12-27 09:53:10', '2017-12-27 09:53:14', 'asgstar', 'Зіркова доставка', 'asgstar_third_star_method', 'third_star_method', NULL, 10.0000, NULL, '"Телепорт" (до 1 дня)'),
	(421, 12, '2017-12-27 09:53:10', '2017-12-27 09:53:14', 'asgstar', 'Зіркова доставка', 'asgstar_first_star_method', 'first_star_method', NULL, 10.0000, NULL, '"Занадто довго" (5 - 10 днів)'),
	(430, 14, '2017-12-27 09:56:22', '2017-12-27 10:02:13', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 5.0000, NULL, 'Fixed'),
	(431, 14, '2017-12-27 09:56:22', '2017-12-27 10:02:13', 'asgstar', 'Зіркова доставка', 'asgstar_second_star_method', 'second_star_method', NULL, 0.3500, NULL, '"Швидше ніж Довго"  (до 5 днів)'),
	(432, 14, '2017-12-27 09:56:22', '2017-12-27 10:02:13', 'asgstar', 'Зіркова доставка', 'asgstar_third_star_method', 'third_star_method', NULL, 10.0000, NULL, '"Телепорт" (до 1 дня)'),
	(433, 14, '2017-12-27 09:56:22', '2017-12-27 10:02:13', 'asgstar', 'Зіркова доставка', 'asgstar_first_star_method', 'first_star_method', NULL, 10.0000, NULL, '"Занадто довго" (5 - 10 днів)'),
	(442, 16, '2017-12-27 10:03:14', '2017-12-27 10:03:18', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 5.0000, NULL, 'Fixed'),
	(443, 16, '2017-12-27 10:03:14', '2017-12-27 10:03:18', 'asgstar', 'Зіркова доставка', 'asgstar_second_star_method', 'second_star_method', NULL, 0.4500, NULL, '"Швидше ніж Довго"  (до 5 днів)'),
	(444, 16, '2017-12-27 10:03:14', '2017-12-27 10:03:18', 'asgstar', 'Зіркова доставка', 'asgstar_third_star_method', 'third_star_method', NULL, 10.0000, NULL, '"Телепорт" (до 1 дня)'),
	(445, 16, '2017-12-27 10:03:14', '2017-12-27 10:03:18', 'asgstar', 'Зіркова доставка', 'asgstar_first_star_method', 'first_star_method', NULL, 10.0000, NULL, '"Занадто довго" (5 - 10 днів)'),
	(534, 22, '2017-12-27 15:31:50', '2017-12-27 15:31:50', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 5.0000, NULL, 'Fixed'),
	(535, 22, '2017-12-27 15:31:50', '2017-12-27 15:31:50', 'asg_star', NULL, 'asg_star_second_star_method', 'second_star_method', NULL, 0.5000, NULL, '"Швидше ніж Довго"  (до 5 днів)'),
	(536, 22, '2017-12-27 15:31:50', '2017-12-27 15:31:50', 'asg_star', NULL, 'asg_star_third_star_method', 'third_star_method', NULL, 10.0000, NULL, '"Телепорт" (до 1 дня)'),
	(537, 22, '2017-12-27 15:31:50', '2017-12-27 15:31:50', 'asg_star', NULL, 'asg_star_first_star_method', 'first_star_method', NULL, 10.0000, NULL, '"Занадто довго" (5 - 10 днів)'),
	(606, 18, '2017-12-28 11:52:54', '2017-12-28 11:56:24', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 5.0000, NULL, 'Fixed'),
	(607, 18, '2017-12-28 11:52:54', '2017-12-28 11:56:24', 'asg_star', 'Зіркова доставка', 'asg_star_second_star_method', 'second_star_method', NULL, 0.3500, NULL, '"Швидше ніж Довго"  (до 5 днів)'),
	(608, 18, '2017-12-28 11:52:54', '2017-12-28 11:56:24', 'asg_star', 'Зіркова доставка', 'asg_star_third_star_method', 'third_star_method', NULL, 10.0000, NULL, '"Телепорт" (до 1 дня)'),
	(609, 18, '2017-12-28 11:52:54', '2017-12-28 11:56:24', 'asg_star', 'Зіркова доставка', 'asg_star_first_star_method', 'first_star_method', NULL, 10.0000, NULL, '"Занадто довго" (5 - 10 днів)'),
	(654, 24, '2017-12-28 14:56:33', '2017-12-28 14:56:55', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 10.0000, NULL, 'Fixed'),
	(655, 24, '2017-12-28 14:56:33', '2017-12-28 14:56:55', 'asg_star', 'Зіркова доставка', 'asg_star_second_star_method', 'second_star_method', NULL, 0.8500, NULL, '"Швидше ніж Довго"  (до 5 днів)'),
	(656, 24, '2017-12-28 14:56:33', '2017-12-28 14:56:55', 'asg_star', 'Зіркова доставка', 'asg_star_third_star_method', 'third_star_method', NULL, 10.0000, NULL, '"Телепорт" (до 1 дня)'),
	(657, 24, '2017-12-28 14:56:33', '2017-12-28 14:56:55', 'asg_star', 'Зіркова доставка', 'asg_star_first_star_method', 'first_star_method', NULL, 10.0000, NULL, '"Занадто довго" (5 - 10 днів)'),
	(726, 26, '2017-12-29 08:52:03', '2017-12-29 08:52:13', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 10.0000, NULL, 'Fixed'),
	(727, 26, '2017-12-29 08:52:03', '2017-12-29 08:52:13', 'asg_star', 'Зіркова доставка', 'asg_star_second_star_method', 'second_star_method', NULL, 0.8500, NULL, 'Швидше ніж Довго (до 5 днів)'),
	(728, 26, '2017-12-29 08:52:03', '2017-12-29 08:52:13', 'asg_star', 'Зіркова доставка', 'asg_star_third_star_method', 'third_star_method', NULL, 10.0000, NULL, 'Телепорт (до 1 дня)'),
	(729, 26, '2017-12-29 08:52:03', '2017-12-29 08:52:13', 'asg_star', 'Зіркова доставка', 'asg_star_first_star_method', 'first_star_method', NULL, 10.0000, NULL, 'Занадто довго (5 - 10 днів)'),
	(754, 29, '2018-01-04 07:53:35', '2018-01-04 07:56:25', 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'flatrate', NULL, 110.0000, NULL, 'Fixed'),
	(755, 29, '2018-01-04 07:53:35', '2018-01-04 07:56:25', 'asg_star', 'Зіркова доставка', 'asg_star_first_star_method', 'first_star_method', NULL, 10.0000, NULL, 'Занадто довго (5 - 10 днів)'),
	(756, 29, '2018-01-04 07:53:35', '2018-01-04 07:56:25', 'asg_star', 'Зіркова доставка', 'asg_star_third_star_method', 'third_star_method', NULL, 10.8500, NULL, 'Телепорт (до 1 дня)'),
	(757, 29, '2018-01-04 07:53:35', '2018-01-04 07:56:25', 'asg_star', 'Зіркова доставка', 'asg_star_second_star_method', 'second_star_method', NULL, 15.1900, NULL, 'Швидше ніж Довго (до 5 днів)');
/*!40000 ALTER TABLE `sales_flat_quote_shipping_rate` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_shipment
CREATE TABLE IF NOT EXISTS `sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`),
  CONSTRAINT `FK_SALES_FLAT_SHIPMENT_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_SHIPMENT_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment';

-- Dumping data for table magento.sales_flat_shipment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_shipment_comment
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_C2D69CC1FB03D2B2B794B0439F6650CF` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment';

-- Dumping data for table magento.sales_flat_shipment_comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment_comment` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_shipment_grid
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`),
  CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_ENTT_ID_SALES_FLAT_SHIPMENT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_FLAT_SHIPMENT_GRID_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- Dumping data for table magento.sales_flat_shipment_grid: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment_grid` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment_grid` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_shipment_item
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`),
  CONSTRAINT `FK_3AECE5007D18F159231B87E8306FC02A` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item';

-- Dumping data for table magento.sales_flat_shipment_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment_item` ENABLE KEYS */;

-- Dumping structure for table magento.sales_flat_shipment_track
CREATE TABLE IF NOT EXISTS `sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`),
  CONSTRAINT `FK_BCD2FA28717D29F37E10A153E6F2F841` FOREIGN KEY (`parent_id`) REFERENCES `sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track';

-- Dumping data for table magento.sales_flat_shipment_track: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_flat_shipment_track` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_flat_shipment_track` ENABLE KEYS */;

-- Dumping structure for table magento.sales_invoiced_aggregated
CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated';

-- Dumping data for table magento.sales_invoiced_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_invoiced_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_invoiced_aggregated` ENABLE KEYS */;

-- Dumping structure for table magento.sales_invoiced_aggregated_order
CREATE TABLE IF NOT EXISTS `sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_INVOICED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order';

-- Dumping data for table magento.sales_invoiced_aggregated_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_invoiced_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_invoiced_aggregated_order` ENABLE KEYS */;

-- Dumping structure for table magento.sales_order_aggregated_created
CREATE TABLE IF NOT EXISTS `sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_CREATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created';

-- Dumping data for table magento.sales_order_aggregated_created: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_aggregated_created` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_aggregated_created` ENABLE KEYS */;

-- Dumping structure for table magento.sales_order_aggregated_updated
CREATE TABLE IF NOT EXISTS `sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_ORDER_AGGREGATED_UPDATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Updated';

-- Dumping data for table magento.sales_order_aggregated_updated: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_aggregated_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_aggregated_updated` ENABLE KEYS */;

-- Dumping structure for table magento.sales_order_status
CREATE TABLE IF NOT EXISTS `sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

-- Dumping data for table magento.sales_order_status: ~12 rows (approximately)
/*!40000 ALTER TABLE `sales_order_status` DISABLE KEYS */;
INSERT INTO `sales_order_status` (`status`, `label`) VALUES
	('canceled', 'Canceled'),
	('closed', 'Closed'),
	('complete', 'Complete'),
	('fraud', 'Suspected Fraud'),
	('holded', 'On Hold'),
	('payment_review', 'Payment Review'),
	('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
	('paypal_reversed', 'PayPal Reversed'),
	('pending', 'Pending'),
	('pending_payment', 'Pending Payment'),
	('pending_paypal', 'Pending PayPal'),
	('processing', 'Processing');
/*!40000 ALTER TABLE `sales_order_status` ENABLE KEYS */;

-- Dumping structure for table magento.sales_order_status_label
CREATE TABLE IF NOT EXISTS `sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `IDX_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_ORDER_STATUS_LABEL_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- Dumping data for table magento.sales_order_status_label: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_status_label` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_status_label` ENABLE KEYS */;

-- Dumping structure for table magento.sales_order_status_state
CREATE TABLE IF NOT EXISTS `sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  PRIMARY KEY (`status`,`state`),
  CONSTRAINT `FK_SALES_ORDER_STATUS_STATE_STATUS_SALES_ORDER_STATUS_STATUS` FOREIGN KEY (`status`) REFERENCES `sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

-- Dumping data for table magento.sales_order_status_state: ~9 rows (approximately)
/*!40000 ALTER TABLE `sales_order_status_state` DISABLE KEYS */;
INSERT INTO `sales_order_status_state` (`status`, `state`, `is_default`) VALUES
	('canceled', 'canceled', 1),
	('closed', 'closed', 1),
	('complete', 'complete', 1),
	('fraud', 'payment_review', 0),
	('holded', 'holded', 1),
	('payment_review', 'payment_review', 1),
	('pending', 'new', 1),
	('pending_payment', 'pending_payment', 1),
	('processing', 'processing', 1);
/*!40000 ALTER TABLE `sales_order_status_state` ENABLE KEYS */;

-- Dumping structure for table magento.sales_order_tax
CREATE TABLE IF NOT EXISTS `sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Hidden',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table';

-- Dumping data for table magento.sales_order_tax: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_tax` ENABLE KEYS */;

-- Dumping structure for table magento.sales_order_tax_item
CREATE TABLE IF NOT EXISTS `sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `UNQ_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`),
  KEY `IDX_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`),
  CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_ITEM_ID_SALES_FLAT_ORDER_ITEM_ITEM_ID` FOREIGN KEY (`item_id`) REFERENCES `sales_flat_order_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_ORDER_TAX_ITEM_TAX_ID_SALES_ORDER_TAX_TAX_ID` FOREIGN KEY (`tax_id`) REFERENCES `sales_order_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item';

-- Dumping data for table magento.sales_order_tax_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_order_tax_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_order_tax_item` ENABLE KEYS */;

-- Dumping structure for table magento.sales_payment_transaction
CREATE TABLE IF NOT EXISTS `sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `IDX_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`),
  CONSTRAINT `FK_B99FF1A06402D725EBDB0F3A7ECD47A2` FOREIGN KEY (`parent_id`) REFERENCES `sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_DA51A10B2405B64A4DAEF77A64F0DAAD` FOREIGN KEY (`payment_id`) REFERENCES `sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_PAYMENT_TRANSACTION_ORDER_ID_SALES_FLAT_ORDER_ENTITY_ID` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction';

-- Dumping data for table magento.sales_payment_transaction: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_payment_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_payment_transaction` ENABLE KEYS */;

-- Dumping structure for table magento.sales_recurring_profile
CREATE TABLE IF NOT EXISTS `sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) unsigned DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_RECURRING_PROFILE_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_SALES_RECURRING_PROFILE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile';

-- Dumping data for table magento.sales_recurring_profile: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_recurring_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_recurring_profile` ENABLE KEYS */;

-- Dumping structure for table magento.sales_recurring_profile_order
CREATE TABLE IF NOT EXISTS `sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`),
  KEY `IDX_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`),
  CONSTRAINT `FK_7FF85741C66DCD37A4FBE3E3255A5A01` FOREIGN KEY (`order_id`) REFERENCES `sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_B8A7A5397B67455786E55461748C59F4` FOREIGN KEY (`profile_id`) REFERENCES `sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order';

-- Dumping data for table magento.sales_recurring_profile_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_recurring_profile_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_recurring_profile_order` ENABLE KEYS */;

-- Dumping structure for table magento.sales_refunded_aggregated
CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated';

-- Dumping data for table magento.sales_refunded_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_refunded_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_refunded_aggregated` ENABLE KEYS */;

-- Dumping structure for table magento.sales_refunded_aggregated_order
CREATE TABLE IF NOT EXISTS `sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_REFUNDED_AGGREGATED_ORDER_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order';

-- Dumping data for table magento.sales_refunded_aggregated_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_refunded_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_refunded_aggregated_order` ENABLE KEYS */;

-- Dumping structure for table magento.sales_shipping_aggregated
CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_SALES_SHPP_AGGRED_PERIOD_STORE_ID_ORDER_STS_SHPP_DESCRIPTION` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated';

-- Dumping data for table magento.sales_shipping_aggregated: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_shipping_aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_shipping_aggregated` ENABLE KEYS */;

-- Dumping structure for table magento.sales_shipping_aggregated_order
CREATE TABLE IF NOT EXISTS `sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `C05FAE47282EEA68654D0924E946761F` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order';

-- Dumping data for table magento.sales_shipping_aggregated_order: ~0 rows (approximately)
/*!40000 ALTER TABLE `sales_shipping_aggregated_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_shipping_aggregated_order` ENABLE KEYS */;

-- Dumping structure for table magento.sendfriend_log
CREATE TABLE IF NOT EXISTS `sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` varbinary(16) DEFAULT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_SENDFRIEND_LOG_IP` (`ip`),
  KEY `IDX_SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table';

-- Dumping data for table magento.sendfriend_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `sendfriend_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sendfriend_log` ENABLE KEYS */;

-- Dumping structure for table magento.shipping_tablerate
CREATE TABLE IF NOT EXISTS `shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `D60821CDB2AFACEE1566CFC02D0D4CAA` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate';

-- Dumping data for table magento.shipping_tablerate: ~0 rows (approximately)
/*!40000 ALTER TABLE `shipping_tablerate` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_tablerate` ENABLE KEYS */;

-- Dumping structure for table magento.sitemap
CREATE TABLE IF NOT EXISTS `sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `IDX_SITEMAP_STORE_ID` (`store_id`),
  CONSTRAINT `FK_SITEMAP_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap';

-- Dumping data for table magento.sitemap: ~0 rows (approximately)
/*!40000 ALTER TABLE `sitemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `sitemap` ENABLE KEYS */;

-- Dumping structure for table magento.tag
CREATE TABLE IF NOT EXISTS `tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id',
  PRIMARY KEY (`tag_id`),
  KEY `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  KEY `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` (`first_store_id`),
  CONSTRAINT `FK_TAG_FIRST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  CONSTRAINT `FK_TAG_FIRST_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag';

-- Dumping data for table magento.tag: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;

-- Dumping structure for table magento.tag_properties
CREATE TABLE IF NOT EXISTS `tag_properties` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_PROPERTIES_STORE_ID` (`store_id`),
  CONSTRAINT `FK_TAG_PROPERTIES_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_PROPERTIES_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- Dumping data for table magento.tag_properties: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_properties` ENABLE KEYS */;

-- Dumping structure for table magento.tag_relation
CREATE TABLE IF NOT EXISTS `tag_relation` (
  `tag_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`tag_relation_id`),
  UNIQUE KEY `UNQ_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_TAG_RELATION_PRODUCT_ID` (`product_id`),
  KEY `IDX_TAG_RELATION_TAG_ID` (`tag_id`),
  KEY `IDX_TAG_RELATION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_TAG_RELATION_STORE_ID` (`store_id`),
  CONSTRAINT `FK_TAG_RELATION_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_RELATION_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_RELATION_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_RELATION_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation';

-- Dumping data for table magento.tag_relation: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_relation` ENABLE KEYS */;

-- Dumping structure for table magento.tag_summary
CREATE TABLE IF NOT EXISTS `tag_summary` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_TAG_SUMMARY_STORE_ID` (`store_id`),
  KEY `IDX_TAG_SUMMARY_TAG_ID` (`tag_id`),
  CONSTRAINT `FK_TAG_SUMMARY_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAG_SUMMARY_TAG_ID_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- Dumping data for table magento.tag_summary: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_summary` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_summary` ENABLE KEYS */;

-- Dumping structure for table magento.tax_calculation
CREATE TABLE IF NOT EXISTS `tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `IDX_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `IDX_TAX_CALC_TAX_CALC_RATE_ID_CSTR_TAX_CLASS_ID_PRD_TAX_CLASS_ID` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`),
  CONSTRAINT `FK_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAX_CALC_TAX_CALC_RATE_ID_TAX_CALC_RATE_TAX_CALC_RATE_ID` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAX_CALC_TAX_CALC_RULE_ID_TAX_CALC_RULE_TAX_CALC_RULE_ID` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation';

-- Dumping data for table magento.tax_calculation: ~2 rows (approximately)
/*!40000 ALTER TABLE `tax_calculation` DISABLE KEYS */;
INSERT INTO `tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
	(1, 1, 1, 3, 2),
	(2, 2, 1, 3, 2);
/*!40000 ALTER TABLE `tax_calculation` ENABLE KEYS */;

-- Dumping structure for table magento.tax_calculation_rate
CREATE TABLE IF NOT EXISTS `tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALC_RATE_TAX_COUNTRY_ID_TAX_REGION_ID_TAX_POSTCODE` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `CA799F1E2CB843495F601E56C84A626D` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate';

-- Dumping data for table magento.tax_calculation_rate: ~2 rows (approximately)
/*!40000 ALTER TABLE `tax_calculation_rate` DISABLE KEYS */;
INSERT INTO `tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
	(1, 'US', 12, '*', 'US-CA-*-Rate 1', 8.2500, NULL, NULL, NULL),
	(2, 'US', 43, '*', 'US-NY-*-Rate 1', 8.3750, NULL, NULL, NULL);
/*!40000 ALTER TABLE `tax_calculation_rate` ENABLE KEYS */;

-- Dumping structure for table magento.tax_calculation_rate_title
CREATE TABLE IF NOT EXISTS `tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`),
  CONSTRAINT `FK_37FB965F786AD5897BB3AE90470C42AB` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_TAX_CALCULATION_RATE_TITLE_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title';

-- Dumping data for table magento.tax_calculation_rate_title: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_calculation_rate_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_calculation_rate_title` ENABLE KEYS */;

-- Dumping structure for table magento.tax_calculation_rule
CREATE TABLE IF NOT EXISTS `tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule';

-- Dumping data for table magento.tax_calculation_rule: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_calculation_rule` DISABLE KEYS */;
INSERT INTO `tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
	(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1, 0);
/*!40000 ALTER TABLE `tax_calculation_rule` ENABLE KEYS */;

-- Dumping structure for table magento.tax_class
CREATE TABLE IF NOT EXISTS `tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Tax Class';

-- Dumping data for table magento.tax_class: ~3 rows (approximately)
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` (`class_id`, `class_name`, `class_type`) VALUES
	(2, 'Taxable Goods', 'PRODUCT'),
	(3, 'Retail Customer', 'CUSTOMER'),
	(4, 'Shipping', 'PRODUCT');
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;

-- Dumping structure for table magento.tax_order_aggregated_created
CREATE TABLE IF NOT EXISTS `tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `FCA5E2C02689EB2641B30580D7AACF12` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_TAX_ORDER_AGGREGATED_CREATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation';

-- Dumping data for table magento.tax_order_aggregated_created: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_order_aggregated_created` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_order_aggregated_created` ENABLE KEYS */;

-- Dumping structure for table magento.tax_order_aggregated_updated
CREATE TABLE IF NOT EXISTS `tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `DB0AF14011199AA6CD31D5078B90AA8D` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  CONSTRAINT `FK_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregated Updated';

-- Dumping data for table magento.tax_order_aggregated_updated: ~0 rows (approximately)
/*!40000 ALTER TABLE `tax_order_aggregated_updated` DISABLE KEYS */;
/*!40000 ALTER TABLE `tax_order_aggregated_updated` ENABLE KEYS */;

-- Dumping structure for table magento.tsg_quotes
CREATE TABLE IF NOT EXISTS `tsg_quotes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dscr` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table magento.tsg_quotes: ~0 rows (approximately)
/*!40000 ALTER TABLE `tsg_quotes` DISABLE KEYS */;
INSERT INTO `tsg_quotes` (`id`, `name`, `dscr`) VALUES
	(1, 'Test', 'Ok, Google');
/*!40000 ALTER TABLE `tsg_quotes` ENABLE KEYS */;

-- Dumping structure for table magento.weee_discount
CREATE TABLE IF NOT EXISTS `weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  KEY `IDX_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  CONSTRAINT `FK_WEEE_DISCOUNT_CSTR_GROUP_ID_CSTR_GROUP_CSTR_GROUP_ID` FOREIGN KEY (`customer_group_id`) REFERENCES `customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_DISCOUNT_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_DISCOUNT_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- Dumping data for table magento.weee_discount: ~0 rows (approximately)
/*!40000 ALTER TABLE `weee_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `weee_discount` ENABLE KEYS */;

-- Dumping structure for table magento.weee_tax
CREATE TABLE IF NOT EXISTS `weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`value_id`),
  KEY `IDX_WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `IDX_WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `IDX_WEEE_TAX_COUNTRY` (`country`),
  KEY `IDX_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`),
  CONSTRAINT `FK_WEEE_TAX_ATTRIBUTE_ID_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_TAX_COUNTRY_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_TAX_ENTITY_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WEEE_TAX_WEBSITE_ID_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax';

-- Dumping data for table magento.weee_tax: ~0 rows (approximately)
/*!40000 ALTER TABLE `weee_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `weee_tax` ENABLE KEYS */;

-- Dumping structure for table magento.widget
CREATE TABLE IF NOT EXISTS `widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `IDX_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets';

-- Dumping data for table magento.widget: ~0 rows (approximately)
/*!40000 ALTER TABLE `widget` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget` ENABLE KEYS */;

-- Dumping structure for table magento.widget_instance
CREATE TABLE IF NOT EXISTS `widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme';

-- Dumping data for table magento.widget_instance: ~0 rows (approximately)
/*!40000 ALTER TABLE `widget_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_instance` ENABLE KEYS */;

-- Dumping structure for table magento.widget_instance_page
CREATE TABLE IF NOT EXISTS `widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`),
  CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_INSTANCE_ID_WIDGET_INSTANCE_INSTANCE_ID` FOREIGN KEY (`instance_id`) REFERENCES `widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page';

-- Dumping data for table magento.widget_instance_page: ~0 rows (approximately)
/*!40000 ALTER TABLE `widget_instance_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_instance_page` ENABLE KEYS */;

-- Dumping structure for table magento.widget_instance_page_layout
CREATE TABLE IF NOT EXISTS `widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `UNQ_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  KEY `IDX_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`),
  CONSTRAINT `FK_0A5D06DCEC6A6845F50E5FAAC5A1C96D` FOREIGN KEY (`layout_update_id`) REFERENCES `core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WIDGET_INSTANCE_PAGE_LYT_PAGE_ID_WIDGET_INSTANCE_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- Dumping data for table magento.widget_instance_page_layout: ~0 rows (approximately)
/*!40000 ALTER TABLE `widget_instance_page_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_instance_page_layout` ENABLE KEYS */;

-- Dumping structure for table magento.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_WISHLIST_SHARED` (`shared`),
  CONSTRAINT `FK_WISHLIST_CUSTOMER_ID_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table';

-- Dumping data for table magento.wishlist: ~0 rows (approximately)
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `shared`, `sharing_code`, `updated_at`) VALUES
	(1, 1, 0, 'd8e9d73541469e82d2208c75454aa082', '2017-12-26 14:28:37');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

-- Dumping structure for table magento.wishlist_item
CREATE TABLE IF NOT EXISTS `wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `IDX_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_WISHLIST_ITEM_STORE_ID` (`store_id`),
  CONSTRAINT `FK_WISHLIST_ITEM_PRODUCT_ID_CATALOG_PRODUCT_ENTITY_ENTITY_ID` FOREIGN KEY (`product_id`) REFERENCES `catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_WISHLIST_ITEM_STORE_ID_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK_WISHLIST_ITEM_WISHLIST_ID_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items';

-- Dumping data for table magento.wishlist_item: ~0 rows (approximately)
/*!40000 ALTER TABLE `wishlist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist_item` ENABLE KEYS */;

-- Dumping structure for table magento.wishlist_item_option
CREATE TABLE IF NOT EXISTS `wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_A014B30B04B72DD0EAB3EECD779728D6` (`wishlist_item_id`),
  CONSTRAINT `FK_A014B30B04B72DD0EAB3EECD779728D6` FOREIGN KEY (`wishlist_item_id`) REFERENCES `wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table';

-- Dumping data for table magento.wishlist_item_option: ~0 rows (approximately)
/*!40000 ALTER TABLE `wishlist_item_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist_item_option` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
