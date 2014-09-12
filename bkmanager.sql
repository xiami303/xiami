-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.25a - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for bkmanager
CREATE DATABASE IF NOT EXISTS `bkmanager` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bkmanager`;


-- Dumping structure for table bkmanager.bookmark
CREATE TABLE IF NOT EXISTS `bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` tinytext NOT NULL,
  `url` text,
  `category` int(11) DEFAULT NULL,
  `hash` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8;

-- Dumping data for table bkmanager.bookmark: ~60 rows (approximately)
/*!40000 ALTER TABLE `bookmark` DISABLE KEYS */;
INSERT INTO `bookmark` (`id`, `text`, `url`, `category`, `hash`) VALUES
	(189, 'Agilefant', 'http://2kgsghwww1:8080/agilefant/login.jsp;jsessionid=8C60C8C816C0255D12BA0C2BDDB8A546', 0, 968042000),
	(190, 'PythonBooks - PythonInfo Wiki', 'http://wiki.python.org/moin/PythonBooks', 0, 103551000),
	(191, 'JSON', 'http://www.json.org/', 0, 331070000),
	(192, 'Django | Built-in template tags and filters | Django documentation', 'https://docs.djangoproject.com/en/1.4/ref/templates/builtins/#in-operator', 0, -2133630000),
	(193, 'Django | Django documentation | Django documentation', 'https://docs.djangoproject.com/en/1.4/', 0, 137012000),
	(194, 'The Django Book: Version 2.0 (English)', 'http://www.djangobook.com/en/2.0/', 0, -192531000),
	(195, 'Chapter 4: The Django template system', 'http://www.djangobook.com/en/beta/chapter04/', 0, -3195810000),
	(196, 'welcome to Mako!', 'http://www.makotemplates.org/', 0, 754188000),
	(197, 'Pylons Project : Home', 'http://www.pylonsproject.org/', 0, 645990000),
	(198, 'Fiddler - The Free Web Debugging Proxy by Telerik', 'http://fiddler2.com/', 0, -3607700000),
	(199, 'Clouda', 'http://cloudajs.org/', 0, 1619650000),
	(200, 'OAuth Core 1.0', 'http://oauth.net/core/1.0/', 0, 3468920000),
	(201, 'Welcome to Jenkins CI! | Jenkins CI', 'http://jenkins-ci.org/', 0, 2389530000),
	(202, 'p4 edit // Perforce 2014.1: Command Reference', 'http://www.perforce.com/perforce/doc.current/manuals/cmdref/p4_edit.html', 0, 2120110000),
	(203, 'PHP Tutorial', 'http://www.w3schools.com/php/default.asp', 0, 2471000000),
	(204, 'PHP IDE :: JetBrains PhpStorm', 'http://www.jetbrains.com/phpstorm/', 0, -1615800000),
	(205, 'Underscore.js', 'http://underscorejs.org/', 0, 2925710000),
	(206, 'Kronos WORKFORCE CENTRAL(R)', 'http://kronoscn/wfc/applications/suitenav/navigation.do', 0, -1533750000),
	(207, 'Unity - Scripting API: EditorGUILayout', 'http://docs.unity3d.com/ScriptReference/EditorGUILayout.html', 0, 704377000),
	(208, 'app01 v1 - RightScale Server Info', 'https://my.rightscale.com/acct/56150/servers/364755001', 0, 1854620000),
	(209, 'Nagios Core', 'http://10.30.48.153/nagios/', 0, -1582500000),
	(210, 'Agilefant', 'http://2kgsghwww1:8080/agilefant/listTeams.action', 0, 962266000),
	(211, 'Aspera Faspex', 'https://share.2kchina.com/aspera/faspex/send/new#', 0, -491197000),
	(212, 'Source \'messages\' :: Adiscon LogAnalyzer :: All Syslogmessages', 'http://157.7.146.239:10080/loganalyzer/', 0, -1285450000),
	(213, '157.7.146.239:10080 / 127.0.0.1 | phpMyAdmin 3.5.4', 'http://157.7.146.239:10080/phpmyadmin/index.php?token=01da345c87cbdb88335204169aa743c4', 0, -1865440000),
	(214, 'Couchbase Console (1.8.1)', 'http://157.7.146.239:10082/index.html#sec=monitor_servers', 0, -1559980000),
	(215, 'Admin Site', 'http://157.7.146.239:10080/', 0, -2440210000),
	(216, 'Monitor', 'http://157.7.146.239:10081/index/', 0, 1045550000),
	(217, 'GMO Apps Cloud Control Panel', 'https://cp.app-sys.jp/System/Default.aspx', 0, -412052000),
	(218, 'Graphs -> Tree Mode', 'http://157.7.146.236:10080/cacti/graph_view.php?action=tree&tree_id=1&leaf_id=7&select_first=true', 0, -797781000),
	(219, 'Nagios', 'http://157.7.146.236:10080/nagios/', 0, 215502000),
	(220, 'Game Analytics - Game Analytics Blog - Visualizing data: How we do it', 'http://blog.gameanalytics.com/blog/visualizing-data-how-we-do-it.html', 0, 1368780000),
	(221, 'Highcharts - How To Use', 'http://www.highcharts.com/documentation/how-to-use', 0, 232557000),
	(222, 'Wu Hong Xia (2K China) - Outlook Web App', 'https://mail.2kgames.com/owa/#', 0, 400429000),
	(223, 'JIRA System Dashboard - 2K China', 'http://2kgsghwww1:8081/secure/Dashboard.jspa', 0, -2150520000),
	(224, 'Tech  WIKI', 'http://2kgsghsps1/SiteDirectory/Borderland_Online/Tech/Forms/AllItems.aspx?RootFolder=http%3a%2f%2f2kgsghsps1%2fSiteDirectory%2fBorderland_Online%2fTech%2fTools&FolderCTID=0x01200048CF7BFE438BAD4B88E797FB9AA9CE34', 0, 471567000),
	(225, 'Lighttpd', 'http://www.ha97.com/category/web-server/lighttpd', 0, 2590940000),
	(226, 'Unity - Learn - Modules', 'http://unity3d.com/learn/tutorials/modules/', 0, -635684000),
	(227, 'Steam Community', 'https://steamcommunity.com/', 0, -627233000),
	(228, ' GameAnalytics Blog', 'http://blog.gameanalytics.com/blog/what-is-game-telemetry.html', 0, -573946000),
	(229, 'Common Python Tools: Using virtualenv, Installing with Pip, and Managing Packages | DigitalOcean', 'https://www.digitalocean.com/community/articles/common-python-tools-using-virtualenv-installing-with-pip-and-managing-packages', 0, 627233000),
	(230, 'Practicing at the Cutting Edge', 'http://www.infoq.com/presentations/java-evolution-c-c-plus-plus?utm_source=infoq&utm_medium=videos_homepage&utm_campaign=videos_row3', 0, 376422000),
	(231, 'nodeJS', 'http://nodejs.org/api/fs.html#fs_fs_writefile_filename_data_options_callback', 0, 73132100),
	(232, 'World Wide Web Consortium (W3C)', 'http://www.w3.org/', 0, -2038080000),
	(233, 'W3Schools Online Web Tutorials', 'http://www.w3schools.com/', 0, -3447070000),
	(234, 'ORACLE', 'http://www.oracle.com/technetwork/java/javase/downloads/index.html', 0, 1977150000),
	(235, 'New Links | Hacker News', 'https://news.ycombinator.com/newest', 0, -1243680000),
	(236, 'ChinaUnix.net', 'http://www.chinaunix.net/ops/', 0, -2184000000),
	(237, 'Coursera', 'https://www.coursera.org/', 0, 230414000),
	(238, 'How to use the Windows command line (DOS).', 'http://www.computerhope.com/issues/chusedos.htm', 0, 2531230000),
	(239, 'InfoQ: Software Development News, Videos & Books', 'http://www.infoq.com/', 0, 2395040000),
	(240, 'p4 sync // Perforce 2014.1: Command Reference', 'http://www.perforce.com/perforce/doc.current/manuals/cmdref/p4_sync.html', 0, 244630000),
	(241, 'JavaScript Tutorial', 'http://www.w3schools.com/js/', 0, 594887000),
	(242, 'AJAX - MDN', 'https://developer.mozilla.org/en/AJAX', 0, -1036500000),
	(243, 'jQuery Cookbook > jQuery Utilities > Detecting Features with jQuery.support - Pg. : Safari Books Online', 'http://my.safaribooksonline.com/book/web-development/jquery/9780596806941/jquery-utilities/feature_detection_with_jquery.support', 0, 341481000),
	(244, 'Fancybox - Fancy jQuery lightbox alternative| API & Options', 'http://fancybox.net/api', 0, -405863000),
	(245, 'DataTables (table plug-in for jQuery)', 'http://www.datatables.net/', 0, 956959000),
	(246, 'DataTables (table plug-in for jQuery)', 'http://datatables.net/', 0, 172085000),
	(247, 'Twitter Bootstrap', 'http://twitter.github.com/bootstrap/', 0, 2022180000),
	(248, 'DataTables example', 'http://datatables.net/release-datatables/examples/data_sources/ajax.html', 0, 525506000);
/*!40000 ALTER TABLE `bookmark` ENABLE KEYS */;


-- Dumping structure for table bkmanager.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` tinytext NOT NULL,
  `level` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `hash` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Dumping data for table bkmanager.category: ~22 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `text`, `level`, `parent`, `hash`) VALUES
	(2, 'python', 1, 1, -3612240000),
	(3, 'python web', 1, 1, -797496000),
	(4, 'JSON', 1, 1, -512772000),
	(5, 'django', 1, 1, -3034290000),
	(6, 'mako', 1, 1, -2181660000),
	(7, 'pylons', 1, 1, -771196000),
	(8, 'OAuth', 1, 1, -385423000),
	(9, 'Jenkins', 1, 1, -3785610000),
	(10, 'PHP', 1, 1, -3152850000),
	(11, 'joomla', 1, 1, -2829740000),
	(12, 'ecshop', 1, 1, -3252380000),
	(13, 'Linux', 1, 1, -676506000),
	(14, '2k', 1, 1, -89723400),
	(15, 'metrics', 1, 1, -1503160000),
	(16, 'Game Related', 1, 1, -616145000),
	(17, 'unity', 1, 1, -1925020000),
	(18, 'nodeJs', 1, 1, -3666240000),
	(19, 'job', 1, 1, -2152350000),
	(20, 'windows command line', 1, 1, -1714060000),
	(21, 'html', 1, 1, -1672030000),
	(22, 'javascript', 1, 1, -4147670000),
	(23, 'jquery', 1, 1, -2180010000);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
