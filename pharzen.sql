-- phpMyAdmin SQL Dump
-- version 4.0.10.20
-- https://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2019-06-13 13:27:29
-- 服务器版本: 5.5.54
-- PHP 版本: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `pharzen`
--

-- --------------------------------------------------------

--
-- 表的结构 `dux_admin_group`
--

CREATE TABLE IF NOT EXISTS `dux_admin_group` (
  `group_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `base_purview` text,
  `menu_purview` text,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='后台管理组' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dux_admin_group`
--

INSERT INTO `dux_admin_group` (`group_id`, `name`, `base_purview`, `menu_purview`, `status`) VALUES
(1, '管理员', 'a:2:{i:0;s:15:"Admin_AppManage";i:1;s:21:"Admin_AppManage_index";}', 'a:4:{i:0;s:19:"首页_管理首页";i:1;s:19:"内容_栏目管理";i:2;s:19:"内容_文章管理";i:3;s:22:"系统_用户组管理";}', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dux_admin_log`
--

CREATE TABLE IF NOT EXISTS `dux_admin_log` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  `ip` varchar(250) DEFAULT NULL,
  `app` varchar(250) DEFAULT '1',
  `content` text,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='后台操作记录' AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dux_admin_log`
--

INSERT INTO `dux_admin_log` (`log_id`, `user_id`, `time`, `ip`, `app`, `content`) VALUES
(1, 0, 1558492805, '101.87.210.174', 'admin', '登录系统'),
(2, 0, 1558581844, '101.87.210.174', 'admin', '登录系统'),
(3, 0, 1558756341, '101.87.210.174', 'admin', '登录系统'),
(4, 0, 1558948085, '101.87.210.174', 'admin', '登录系统'),
(5, 0, 1559013126, '101.87.210.174', 'admin', '登录系统'),
(6, 0, 1559102408, '101.87.210.174', 'admin', '登录系统'),
(7, 0, 1559367872, '101.87.210.174', 'admin', '登录系统'),
(8, 0, 1559527147, '101.87.210.174', 'admin', '登录系统'),
(9, 0, 1559620690, '101.87.210.174', 'admin', '登录系统'),
(10, 0, 1559630304, '101.87.210.174', 'admin', '登录系统'),
(11, 0, 1559719467, '101.87.210.174', 'admin', '登录系统'),
(12, 0, 1559788949, '101.87.210.174', 'admin', '登录系统'),
(13, 0, 1560144179, '101.87.210.174', 'admin', '登录系统'),
(14, 0, 1560221116, '101.87.210.174', 'admin', '登录系统'),
(15, 0, 1560246150, '101.87.210.174', 'admin', '登录系统'),
(16, 0, 1560306602, '101.87.210.174', 'admin', '登录系统'),
(17, 0, 1560332315, '101.87.210.174', 'admin', '登录系统'),
(18, 0, 1560396405, '101.87.210.174', 'admin', '登录系统');

-- --------------------------------------------------------

--
-- 表的结构 `dux_admin_user`
--

CREATE TABLE IF NOT EXISTS `dux_admin_user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户IP',
  `group_id` int(10) NOT NULL DEFAULT '1' COMMENT '用户组ID',
  `username` varchar(20) NOT NULL COMMENT '登录名',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `nicename` varchar(20) DEFAULT NULL COMMENT '昵称',
  `email` varchar(50) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态',
  `level` int(5) DEFAULT '1' COMMENT '等级',
  `reg_time` int(10) DEFAULT NULL COMMENT '注册时间',
  `last_login_time` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT '未知' COMMENT '登录IP',
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`),
  KEY `group_id` (`group_id`) USING BTREE,
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='后台管理员' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dux_admin_user`
--

INSERT INTO `dux_admin_user` (`user_id`, `group_id`, `username`, `password`, `nicename`, `email`, `status`, `level`, `reg_time`, `last_login_time`, `last_login_ip`) VALUES
(1, 1, 'admin', 'd6ca226e34d702a84d1ab65878e2bdfb', '管理员', 'admin@duxcms.com', 1, 1, 1399361747, 1560396405, '101.87.210.174');

-- --------------------------------------------------------

--
-- 表的结构 `dux_category`
--

CREATE TABLE IF NOT EXISTS `dux_category` (
  `class_id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT '0',
  `app` varchar(20) DEFAULT NULL,
  `show` tinyint(1) unsigned DEFAULT '1',
  `sequence` int(10) DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '1',
  `name` varchar(250) DEFAULT NULL,
  `urlname` varchar(250) DEFAULT NULL,
  `subname` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `class_tpl` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `upload_config` int(10) DEFAULT '1',
  `url` varchar(250) DEFAULT NULL,
  `cid` int(10) DEFAULT '0',
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `urlname` (`urlname`) USING BTREE,
  KEY `pid` (`parent_id`),
  KEY `mid` (`app`),
  KEY `sequence` (`sequence`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='栏目基础信息' AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `dux_category`
--

INSERT INTO `dux_category` (`class_id`, `parent_id`, `app`, `show`, `sequence`, `type`, `name`, `urlname`, `subname`, `image`, `class_tpl`, `keywords`, `description`, `upload_config`, `url`, `cid`) VALUES
(1, 0, 'article', 1, 1, 1, '新闻资讯', 'xinwenzixun', '', '', 'list_news', '', '', 1, '', 0),
(2, 17, 'article', 1, 1, 1, '工程总包', 'gongchengzongbao', '', '', 'list_epc', '', '', 1, '', 0),
(3, 16, 'page', 1, 1, 1, '客户展示', 'kehuzhanshi', '', '', 'page_clientGallery', '', '', 1, '', 0),
(4, 17, 'article', 1, 1, 1, '系统设备', 'xitongshebei', '', '', 'list_system', '', '', 1, '', 0),
(5, 16, 'page', 1, 1, 1, '经典案例', 'jingdiananli', '', '', 'page_case', '', '', 1, '', 0),
(6, 14, 'page', 1, 1, 1, '公司简介', 'gongsijianjie', '', '', 'page_firmIntro', '', '', 1, '', 0),
(7, 14, 'page', 1, 1, 1, '管理团队', 'guanlituandui', '', '', 'page_team', '', '', 1, '', 0),
(8, 15, 'page', 1, 1, 1, '商务合作', 'shangwuhezuo', '', '', 'page_cooperate', '', '', 1, '', 0),
(9, 17, 'article', 1, 1, 1, '技术咨询', 'jishuzixun', '', '', 'list_techSupport', '', '', 1, '', 0),
(10, 17, 'article', 1, 1, 1, '单机设备', 'danjishebei', '', '', 'list', '', '', 1, '', 0),
(11, 14, 'page', 1, 1, 1, '企业文化', 'qiyewenhua', '', '', 'page_culture', '', '', 1, '', 0),
(12, 14, 'page', 1, 1, 1, '荣誉资质', 'rongyuzizhi', '', '', 'page_honors', '', '', 1, '', 0),
(13, 15, 'page', 1, 1, 1, '招贤纳士', 'zhaoxiannashi', '', '', 'page_recruit', '', '', 1, '', 0),
(14, 0, 'page', 1, 1, 1, '关于我们', 'guanyuwomen', '', '', 'page_us', '', '', 1, '', 0),
(15, 0, 'page', 1, 1, 1, '联系我们', 'lianxiwomen', '', '', 'page_contact', '', '', 1, '', 0),
(16, 0, 'page', 1, 1, 1, '工程业绩', 'gongchengyeji', '', '', 'page_projects', '', '', 1, '', 0),
(17, 0, 'page', 1, 1, 1, '产品与服务', 'chanpinyufuwu', '', '', 'page_productService', '', '', 1, '', 0),
(18, 0, 'page', 1, 1, 1, 'LANGUAGE', 'LANGUAGE', '', '', 'page_language', '', '', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dux_category_article`
--

CREATE TABLE IF NOT EXISTS `dux_category_article` (
  `class_id` int(10) NOT NULL,
  `fieldset_id` int(10) NOT NULL,
  `content_tpl` varchar(250) NOT NULL,
  `config_upload` text NOT NULL,
  `content_order` varchar(250) NOT NULL,
  `page` int(10) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章栏目信息';

--
-- 转存表中的数据 `dux_category_article`
--

INSERT INTO `dux_category_article` (`class_id`, `fieldset_id`, `content_tpl`, `config_upload`, `content_order`, `page`) VALUES
(1, 2, 'content_news', '', 'time DESC', 10),
(2, 3, 'content_epc', '', 'time ASC', 10),
(4, 3, 'content_system', '', 'time ASC', 10),
(9, 3, 'content_techSupport', '', 'time ASC', 10),
(10, 0, 'content_offlineEquip', '', 'time DESC', 10);

-- --------------------------------------------------------

--
-- 表的结构 `dux_category_page`
--

CREATE TABLE IF NOT EXISTS `dux_category_page` (
  `class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fieldset_id` int(10) NOT NULL,
  `content` mediumtext COMMENT '内容',
  KEY `cid` (`class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单页栏目信息';

--
-- 转存表中的数据 `dux_category_page`
--

INSERT INTO `dux_category_page` (`class_id`, `fieldset_id`, `content`) VALUES
(3, 0, '客户展示'),
(5, 0, '经典案例'),
(6, 0, '公司简介'),
(7, 0, '管理团队'),
(8, 0, '商务合作'),
(11, 0, '企业文化'),
(12, 0, '荣誉资质'),
(13, 0, '招贤纳士'),
(14, 0, '关于我们'),
(15, 0, '联系我们'),
(16, 0, '工程业绩'),
(17, 0, '产品与服务'),
(18, 0, 'LANGUAGE');

-- --------------------------------------------------------

--
-- 表的结构 `dux_config`
--

CREATE TABLE IF NOT EXISTS `dux_config` (
  `name` varchar(250) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站配置';

--
-- 转存表中的数据 `dux_config`
--

INSERT INTO `dux_config` (`name`, `data`) VALUES
('site_title', '法尔森'),
('site_subtitle', '服务于全球制药业'),
('site_url', ''),
('site_keywords', '法尔森'),
('site_description', ''),
('site_email', ''),
('site_copyright', '沪ICP备19015787号-1'),
('site_statistics', ''),
('tpl_name', 'default'),
('tpl_index', 'index'),
('tpl_search', 'search'),
('tpl_tags', 'tag'),
('mobile_status', '1'),
('mobile_tpl', 'mobile'),
('mobile_domain', ''),
('ping', '');

-- --------------------------------------------------------

--
-- 表的结构 `dux_config_upload`
--

CREATE TABLE IF NOT EXISTS `dux_config_upload` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `upload_size` int(10) NOT NULL,
  `upload_exts` varchar(250) DEFAULT NULL,
  `upload_replace` tinyint(1) DEFAULT NULL,
  `thumb_status` tinyint(1) DEFAULT NULL,
  `water_status` tinyint(1) DEFAULT NULL,
  `thumb_type` tinyint(1) DEFAULT NULL,
  `thumb_width` int(10) DEFAULT NULL,
  `thumb_height` int(10) DEFAULT NULL,
  `water_image` varchar(250) DEFAULT NULL,
  `water_position` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='网站配置' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dux_config_upload`
--

INSERT INTO `dux_config_upload` (`id`, `name`, `upload_size`, `upload_exts`, `upload_replace`, `thumb_status`, `water_status`, `thumb_type`, `thumb_width`, `thumb_height`, `water_image`, `water_position`) VALUES
(1, '默认', 10, 'jpg,gif,bmp,png', 0, 0, 0, 1, 800, 800, 'logo.jpg', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dux_content`
--

CREATE TABLE IF NOT EXISTS `dux_content` (
  `content_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `class_id` int(10) DEFAULT NULL COMMENT '栏目ID',
  `title` varchar(250) DEFAULT NULL COMMENT '标题',
  `urltitle` varchar(250) DEFAULT NULL COMMENT 'URL路径',
  `font_color` varchar(250) DEFAULT NULL COMMENT '颜色',
  `font_bold` tinyint(1) DEFAULT NULL COMMENT '加粗',
  `font_em` tinyint(1) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL COMMENT '关键词',
  `description` varchar(250) DEFAULT NULL COMMENT '描述',
  `time` int(10) DEFAULT NULL COMMENT '更新时间',
  `image` varchar(250) DEFAULT NULL COMMENT '封面图',
  `url` varchar(250) DEFAULT NULL COMMENT '跳转',
  `sequence` int(10) DEFAULT NULL COMMENT '排序',
  `status` int(10) DEFAULT NULL COMMENT '状态',
  `copyfrom` varchar(250) DEFAULT NULL COMMENT '来源',
  `views` int(10) DEFAULT '0' COMMENT '浏览数',
  `taglink` int(10) DEFAULT '0' COMMENT 'TAG链接',
  `tpl` varchar(250) DEFAULT NULL,
  `site` int(10) DEFAULT '1',
  `isping` int(10) DEFAULT '0',
  PRIMARY KEY (`content_id`),
  UNIQUE KEY `urltitle` (`urltitle`) USING BTREE,
  KEY `title` (`title`) USING BTREE,
  KEY `description` (`description`) USING BTREE,
  KEY `keywords` (`keywords`),
  KEY `class_id` (`class_id`) USING BTREE,
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='内容基础' AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `dux_content`
--

INSERT INTO `dux_content` (`content_id`, `class_id`, `title`, `urltitle`, `font_color`, `font_bold`, `font_em`, `position`, `keywords`, `description`, `time`, `image`, `url`, `sequence`, `status`, `copyfrom`, `views`, `taglink`, `tpl`, `site`, `isping`) VALUES
(1, 1, '法尔森科技（上海）有限公司介绍', 'faersenkejishanghaiyouxiangong', '0', 0, 0, '', '', '法尔森科技（上海）有限公司是一家以先进科技和系统装备为核心的工程技术型企业，专业从事原料药建设项目的EPC工程总包、系统装备开发和模块化集成、技术咨询和项目管理、概念设计', 1558497060, '/upload/2019-06-12/442ec2058ab4b6cc261fbb339336c10d.png', '', 0, 1, '本站', 19, 1, '', 1, 0),
(2, 1, '法尔森科技签约康正康元药业，承接项目管理总包业务', 'faersenkejiqianyuekangzhengkan', '0', 0, 0, '', '', '安徽康正康元药业有限公司作为新一代复方抗生素的中试基地，位于安徽省安庆市大观区皇冠路8号安庆生命科技园。该项目用于生产丙磺舒原料药、丙磺舒钠原料药，我方负责提供化学合成', 1558497180, '/upload/2019-06-13/7a127c8d2cce72c73ba5f6314775368f.png', '', 0, 1, '本站', 40, 1, '', 1, 0),
(3, 2, '原料药生产线设计与搭建', 'yuanliaoyaoshengchanxianshejiy', '0', 0, 0, '', '', '对生产车间进行厂房布局、层高和功能分区设计，工艺设备和公用工程设备的配置方案和选型设计，工艺流程和自控流程设计，对厂房、设备和管线系统进行三维设计；对项目配套的设备和', 1558511040, '/assets/image/50.png', '', 0, 1, '本站', 414, 1, '', 1, 0),
(4, 2, '原料药中试平台设计与搭建', 'yuanliaoyaozhongshipingtaishej', '0', 0, 0, '', '', '根据中试车间实际情况和客观条件，进行模块化生产线的研发设计和三维模拟，包括设备布局、空间分配和功能分区；工艺设备和公用工程设备的配置方案和选型设计，工艺流程和自控流程', 1558511580, '/assets/image/51.png', '', 0, 1, '本站', 154, 1, '', 1, 0),
(5, 2, '化学合成线升级改造', 'huaxuehechengxianshengjigaizao', '0', 0, 0, '', '', '根据老车间实际情况和客观条件，进行针对性和定制化的升级方案设计，包括设备升级配置、管线和自动化系统升级、密闭化投料/转料/出料系统升级、自动化投料/转料/出料系统升级；对项', 1558511700, '/assets/image/52.png', '', 0, 1, '本站', 90, 1, '', 1, 0),
(6, 2, '原料药精干包升级改造', 'yuanliaoyaojingganbaoshengjiga', '0', 0, 0, '', '', '根据老车间实际情况和客观条件，进行针对性和定制化的升级方案设计，包括设备升级配置、管线和自动化系统升级、密闭化投料/转料/出料系统升级、自动化投料/转料/出料系统升级；对项', 1558511820, '/assets/image/53.png', '', 0, 1, '本站', 70, 1, '', 1, 0),
(7, 2, '溶剂回收装置设计与搭建', 'rongjihuishouzhuangzhishejiyud', '0', 0, 0, '', '', '根据不同项目的溶剂组分和质量指标，进行专业软件模拟和联合实验室测试，进行三维模拟设计，进行设备布局设计，工艺设备和公用工程设备的配置方案和选型设计，工艺流程和自控流程', 1558511880, '/assets/image/54.png', '', 0, 1, '本站', 85, 1, '', 1, 0),
(8, 2, '废气处理装置设计与搭建', 'feiqichulizhuangzhishejiyudaji', '0', 0, 0, '', '', '根据不同项目的废气组分和排放标准，进行专业软件模拟和联合实验室测试，进行三维模拟设计，进行设备布局设计，设备的配置方案和选型设计，工艺流程和自控流程设计；对项目配套的', 1558512060, '/assets/image/55.png', '', 0, 1, '本站', 127, 1, '', 1, 0),
(9, 4, '中试成套装备', 'zhongshichengtaozhuangbei', '0', 0, 0, '', '', '根据客户要求，为客户定制高度匹配产品需求的撬装设备，模块化设计、组装，整体发货，可实现快速安装、快速迁移。有利于实现生产的密闭性、可靠性和工艺的可重现性。', 1558518060, '/assets/image/59.png', '', 0, 1, '本站', 207, 1, '', 1, 0),
(10, 4, '原料药配液模块', 'yuanliaoyaopeiyemokuai', '0', 0, 0, '', '', '根据客户要求，为客户定制高度匹配产品需求的撬装设备，模块化设计、组装，整体发货，可实现快速安装、快速迁移。有利于实现生产的密闭性、可靠性和工艺的可重现性。配液系统可实', 1558518180, '/assets/image/19.png', '', 0, 1, '本站', 55, 1, '', 1, 0),
(11, 4, '原料药分装单元', 'yuanliaoyaofenzhuangdanyuan', '0', 0, 0, '', '', '原料药成品分为无菌无活性、无菌高活性、非无菌高活性、非无菌无活性，大批量、小批量，分装前混合、混粉等处理工艺不同，包装形式及分装精度不同，自控程度不同。相应的分装单元', 1558518240, '/assets/image/61.png', '', 0, 1, '本站', 51, 1, '', 1, 0),
(12, 4, '固体投料模块', 'gutitouliaomokuai', '0', 0, 0, '', '', '包括固体起始原料、中间体湿品/干品、粗品及晶种的称量、投料，根据物料的来源、物性、包装形式、投料量及工艺要求配套相适应的投料模块装置，重点实现过程密闭性、投料速度（一次', 1558518420, '/assets/image/62.png', '', 0, 1, '本站', 35, 1, '', 1, 0),
(13, 4, '液体加料模块', 'yetijialiaomokuai', '0', 0, 0, '', '', '包括有机溶剂、液体原料、中间溶液/固液混合物的称量、加料，根据物料的来源、物性、包装形式、投料量及工艺要求配套相适应的投料模块装置，重点实现过程密闭性、加料速度（一次性', 1558518480, '/assets/image/63.png', '', 0, 1, '本站', 32, 1, '', 1, 0),
(14, 4, '称重计量模块', 'chengzhongjiliangmokuai', '0', 0, 0, '', '', '在线称重模块、在线电子秤与不同设备进行集成，包括投料隔离器、分装隔离器、配液罐、计量罐、反应釜、单锥干燥机/混合机、三合一等设备，可实现全自动计量、记录和控制。', 1558518600, '/assets/image/64.png', '', 0, 1, '本站', 31, 1, '', 1, 0),
(15, 4, '粉体输送模块', 'fentishusongmokuai', '0', 0, 0, '', '', '固体原料、中间体、粗品、成品的转移，可实现全过程完全密闭、全自动输送，可与称重模块、投料模块集成。对于未经干燥的湿品中间体也可进行测试，对于易吸湿、强吸附性、絮状团聚', 1558518660, '/assets/image/65.png', '', 0, 1, '本站', 23, 1, '', 1, 0),
(16, 4, 'TCU温控系统', 'TCUwenkongxitong', '0', 0, 0, '', '', '本系统是传统的夹套多介质控温模式的新一代替代方案，适用于精确控温、自动控温的工况，适用于厂区无冷热媒供应的生产线；既可用于小批量、中试型生产线，也适用于大规模生产线，', 1558518720, '/assets/image/66.png', '', 0, 1, '本站', 19, 1, '', 1, 0),
(17, 4, 'CIP&amp;DIP&amp;SIP系统', 'CIPampDIPampSIPxitong', '0', 0, 0, '', '', '在线清洗/灭菌/排放系统，是生产无菌原料药必备的系统装备，本公司开发应用的CIP&DIP&SIP系统可实现全自动操作；同时，为满足更低投入的需求，也可设计成手、自动结合系统。', 1558518780, '/assets/image/67.png', '', 0, 1, '本站', 27, 1, '', 1, 0),
(18, 4, '蒸汽冷凝水回收系统', 'zhengqilengningshuihuishouxito', '0', 0, 0, '', '', '余热回收工艺、冷凝水回收工艺。可根据客户工厂工况设计、开发行之有效的回收装置，实现节能和减排。', 1558518840, '/assets/image/68.png', '', 0, 1, '本站', 29, 1, '', 1, 0),
(19, 4, '有机溶剂分配系统', 'youjirongjifenpeixitong', '0', 0, 0, '', '', '针对合成工艺复杂的产品线、多功能多产品的合成生产线，对多种溶剂的储存、分配和控制进行统一方案设计和管线集成，可与称重模块、加料模块集成。', 1558518900, '/assets/image/69.png', '', 0, 1, '本站', 19, 1, '', 1, 0),
(20, 4, '有毒物料灭活系统', 'youduwuliaomiehuoxitong', '0', 0, 0, '', '', '不同的高活性原料药产生活性物质的起始工序不同，有的产品起始原料即有活性，有的产品在某中间体阶段开始具备活性。针对高活性原料药车间，需要配套特有的灭活系统和灭活装置，分', 1558518960, '/assets/image/70.png', '', 0, 1, '本站', 38, 1, '', 1, 0),
(21, 9, '可行性研究', 'kexingxingyanjiu', '0', 0, 0, '', '', '项目启动之前的可行性研究分析。可编制可行性研究报告、项目申请报告等咨询文件。', 1558598040, '/assets/image/74.png', '', 0, 1, '本站', 102, 1, '', 1, 0),
(22, 9, '概念设计', 'gainiansheji', '0', 0, 0, '', '', '工艺技术方案、设备选型、系统概念设计。成果源于设计，设计始于概念，概念设计蕴含了项目的核心理念。', 1558598160, '/assets/image/75.png', '', 0, 1, '本站', 28, 1, '', 1, 0),
(23, 9, '技术咨询', 'jishuzixun', '0', 0, 0, '', '', '项目技术支持、技术咨询、技术开发、技术转化，法尔森依托行业资深专家团队和高校科研平台为企业提供技术咨询。', 1558598280, '/assets/image/76.png', '', 0, 1, '本站', 22, 1, '', 1, 0),
(24, 9, '项目管理', 'xiangmuguanli', '0', 0, 0, '', '', '技术管理、项目协调、试生产指导、人员培训。', 1558598280, '/assets/image/77.png', '', 0, 1, '本站', 22, 1, '', 1, 0),
(25, 9, '验证服务', 'yanzhengfuwu', '0', 0, 0, '', '', '文件系统、GMP验证。', 1558598400, '/assets/image/78.png', '', 0, 1, '本站', 21, 1, '', 1, 0),
(26, 9, '产品工艺包/产品工艺开发', 'chanpingongyibaochanpingongyik', '0', 0, 0, '', '', ' ', 1558598460, '/assets/image/79.png', '', 0, 1, '本站', 26, 1, '', 1, 0),
(27, 9, '三维系统模拟', 'sanweixitongmoni', '0', 0, 0, '', '', ' ', 1558598700, '/assets/image/80.png', '', 0, 1, '本站', 22, 1, '', 1, 0),
(28, 1, '法尔森科技与印度Pharma access公司洽谈联手，共同开拓海外第三方市场', 'faersenkejiyuyinduPharma-acces', '0', 0, 0, '', '', 'Pharma Access是一家为寻求进入中东和北非市场的制药企业提供全面集成的销售和营销解决方案的跨国公司。Pharma Access与法尔森科技联合供应工艺设备、公用设施（清洁和黑色）、暖通空调和BM', 1560414000, '/upload/2019-06-12/9801a5467d451750317f24008bb18fb9.png', '', 0, 1, '本站', 8, 1, '', 1, 0),
(29, 1, '国家药监局综合司关于药品上市许可持有人持有药品批准文号变更生产场地有关问题复函', 'guojiayaojianjuzonghesiguanyuy', '0', 0, 0, '', '', '药监综药注函〔2019〕237号浙江省药品监督管理局：  你局《关于集团公司作为药品上市许可持有人集中持有药品批准文号变更生产场地有关问题的请示》（浙药监注〔2019〕2号）收悉。经', 1557390000, '/upload/2019-06-13/bfe65846ea0b4c5fde1f1656bea2067d.png', '', 0, 1, '本站', 10, 1, '', 1, 0),
(30, 1, '关于《安全评价检测检验机构管理办法》的解读', 'touminggongchanggainianchixufa48561015', '0', 0, 0, '', '', '来源：中华人民共和国应急管理部政策法规司一、制定背景  《安全生产检测检验机构管理规定》（原安全监管总局令第12号）、《安全评价机构管理规定》（原安全监管总局令第22号）实', 1558599600, '/upload/2019-06-13/ffd4521c9b2c28a6442d0f5530720a0a.png', '', 0, 1, '本站', 41, 1, '', 1, 0),
(31, 10, '单机设备内容', 'danjishebeineirong', '0', 0, 0, '', '', '更新中', 1558601220, '/assets/image/96.png', '', 0, 1, '本站', 120, 1, '', 1, 0),
(32, 1, '一秒读懂全国工程建设项目审批制度改革', 'yimiaodudongquanguogongchengji', '0', 0, 0, '', '', '来源：中华人民共和国应急管理部政策法规司', 1560335940, '/upload/2019-06-13/783ab5eb64212ea304c9fca954c910aa.png', '', 0, 1, '本站', 1, 1, '', 1, 0),
(33, 1, '法尔森科技:防爆型TCU温控机组性能参数（-80℃~100℃）', 'faersenkejifangbaoxingTCUwenko', '0', 0, 0, '', '', '介质温度范围-80℃～100℃（水冷控制模式前馈PID，无模型自建树算法，PLC控制器温度控制选择物料温度控制与夹套温度控制可自由选择温差控制反应釜夹套温度与物料温度的温差可控制可设', 1560250020, '/upload/2019-06-13/04651e9a0a6b22e7ad719e8e00e169a6.png', '', 0, 1, '本站', 6, 1, '', 1, 0),
(34, 1, '法尔森科技： TCU温控机组专用导热油性能（-60～230℃）', 'faersenkeji-TCUwenkongjizuzhua', '0', 0, 0, '', '', '名称：Eurotherm 230 (“优热”-230)合成冷媒/热媒产品描述：具有极低倾点和运动粘度，优异的高低温流动性和热传导性的合成导热油。特别适合于超低温液相使用，作为冷媒/热媒用于冷却/加', 1560337380, '/upload/2019-06-13/f893718018456579eeeecd313efbc4be.png', '', 0, 1, '本站', 9, 1, '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dux_content_article`
--

CREATE TABLE IF NOT EXISTS `dux_content_article` (
  `content_id` int(10) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章内容信息';

--
-- 转存表中的数据 `dux_content_article`
--

INSERT INTO `dux_content_article` (`content_id`, `content`) VALUES
(1, '&lt;p&gt;\r\n	法尔森科技（上海）有限公司是一家以先进科技和系统装备为核心的工程技术型企业，专业从事原料药建设项目的EPC工程总包、系统装备开发和模块化集成、技术咨询和项目管理、概念设计和方案设计等项目。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	法尔森科技总部位于上海，另有两处制造基地分别位于上海奉贤区晨日科创园、无锡滨湖区山水西路产业园。公司由国内外专家和工程师团队联合创立，拥有雄厚的资金实力。凭借专业实力及业内口碑，创始团队自公司成立之前至今已陆续为俄罗斯Pharmasyntez制药公司、康正康元药业、威尔曼制药、昆药集团等多家知名企业提供技术咨询和工程服务。法尔森公司研发制造全自动温控机组（TCU）、全自动无菌型动态三合一（MPFD）、全自动无菌型真空上料机组（VCS）、全自动无菌型隔离系统（RABS）、无菌型不锈钢搅拌罐等制药专用设备。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	目前在国内外制药行业内，新药创新、药品监管、制药设备等领域的投入和发展颇见规模；然而对药品生产线的系统性开发、创新、集成和升级，却鲜有深究。法尔森科技着眼于药品生产线的优化升级，在专业精通制药工艺技术、生产技术、工程技术、设备技术、控制技等专业技术要求基础之上，秉承“服务于全球制药企业，为生命健康保驾护航”的使命与理念，为药企和科研机构提供专业并高度匹配客户需求的工程技术解决方案，创造优质产品，交付完美项目。\r\n&lt;/p&gt;\r\n&lt;img src=&quot;/upload/2019-06-12/442ec2058ab4b6cc261fbb339336c10d.png&quot; class=&quot;am-img-responsive am-center&quot; /&gt;'),
(2, '&lt;p&gt;\r\n	安徽康正康元药业有限公司作为新一代复方抗生素的中试基地，位于安徽省安庆市大观区皇冠路8号安庆生命科技园。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	该项目用于生产丙磺舒原料药、丙磺舒钠原料药，我方负责提供化学合成生产线、精干包生产线、公用工程装置技术方案、设备采购和项目管理等。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	项目管理内容如下：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	1、对设计单位的管理：工艺、建筑、结构、给排水、电气、仪表自控、消防、暖通、动力专业的图纸与原料药项目技术要求的匹配性、设计进度与项目总进度的协调性。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	2、对设备供应商的管理：对候选供应商进行评估把关；设备采购合同中设备设计配置与原料药项目技术要求的匹配性、设备制造用材和制造工艺和符合性、制造过程中隐蔽部位的符合性、过程质量管控、设备交付前验收、设备配套文件资料的符合性、设备制造进度和交付进度的管控、设备交付后售后服务的管理和约束。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	3、对施工方的管理：对候选施工方进行评估把关；施工进度管控；对施工问题的识别和管控；施工过程的隐蔽工程、施工用材料、工艺系统材料的管控；施工成果验收。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	法尔森科技同时提供本项目的技术支持和培训指导。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	法尔森科技提供完整完善的包括项目管理在内的六份报告书。其中项目管理报告书包括项目全周期的管理总结、项目管理文件集成；项目方案设计阶段、设计阶段、施工阶段、设备采购、安装调试及竣工验收阶段遇到问题及解决问题的方案归纳总结；包括项目进度控制、质量控制和成本控制的过程和方式。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	该项目签约于2019年4月，法尔森协同客户向设计院提供设计要求，包括项目工艺参数要求、设备配置要求、设备布置要求、设计进度要求。同时对设计过程进行跟踪和管控，包括管控设计进度、把控设计内容与技术要求匹配性，纠正设计偏差。设备安装调试期间，法尔森协同客户现场监督施工方和供应商完成设备安装确认。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	法尔森科技致力于创造优质产品，交付完美项目。\r\n&lt;/p&gt;\r\n&lt;img src=&quot;/upload/2019-06-12/d5b403328235960d9733a60fcce83aef.png&quot; class=&quot;am-img-responsive am-center&quot; /&gt; &lt;img src=&quot;/upload/2019-06-12/cdbb73870478df8028ce2cd701020101.png&quot; class=&quot;am-img-responsive am-center&quot; /&gt; &lt;img src=&quot;/upload/2019-06-12/d329effa8b63b9dd9d923884cb95f390.png&quot; class=&quot;am-img-responsive am-center&quot; /&gt; &lt;img src=&quot;/upload/2019-06-12/84ad9b59a7b1fcc075e49625a146d17d.png&quot; class=&quot;am-img-responsive am-center&quot; /&gt;'),
(3, '对生产车间进行厂房布局、层高和功能分区设计，工艺设备和公用工程设备的配置方案和选型设计，工艺流程和自控流程设计，对厂房、设备和管线系统进行三维设计；对项目配套的设备和材料进行采购制造，对系统设备和模块化生产线进行机械装配和自控集成；工程施工和系统调试；文件系统编写。'),
(4, '根据中试车间实际情况和客观条件，进行模块化生产线的研发设计和三维模拟，包括设备布局、空间分配和功能分区；工艺设备和公用工程设备的配置方案和选型设计，工艺流程和自控流程设计；对项目配套的设备和材料进行采购制造，对系统设备和模块化生产线进行机械装配和自控集成；安装调试；文件系统编写。'),
(5, '根据老车间实际情况和客观条件，进行针对性和定制化的升级方案设计，包括设备升级配置、管线和自动化系统升级、密闭化投料/转料/出料系统升级、自动化投料/转料/出料系统升级；对项目配套的设备和材料进行采购制造，对系统设备和模块化生产线进行机械装配和自控集成；安装调试；文件系统编写。'),
(6, '根据老车间实际情况和客观条件，进行针对性和定制化的升级方案设计，包括设备升级配置、管线和自动化系统升级、密闭化投料/转料/出料系统升级、自动化投料/转料/出料系统升级；对项目配套的设备和材料进行采购制造，对系统设备和模块化生产线进行机械装配和自控集成；安装调试；文件系统编写。'),
(7, '根据不同项目的溶剂组分和质量指标，进行专业软件模拟和联合实验室测试，进行三维模拟设计，进行设备布局设计，工艺设备和公用工程设备的配置方案和选型设计，工艺流程和自控流程设计；对项目配套的设备和材料进行采购制造，对系统设备和模块化生产线进行机械装配和自控集成；工程施工和系统调试；文件系统编写。'),
(8, '根据不同项目的废气组分和排放标准，进行专业软件模拟和联合实验室测试，进行三维模拟设计，进行设备布局设计，设备的配置方案和选型设计，工艺流程和自控流程设计；对项目配套的设备和材料进行采购制造，对系统设备和模块化生产线进行机械装配和自控集成；工程施工和系统调试；文件系统编写。'),
(9, '根据客户要求，为客户定制高度匹配产品需求的撬装设备，模块化设计、组装，整体发货，可实现快速安装、快速迁移。有利于实现生产的密闭性、可靠性和工艺的可重现性。'),
(10, '根据客户要求，为客户定制高度匹配产品需求的撬装设备，模块化设计、组装，整体发货，可实现快速安装、快速迁移。有利于实现生产的密闭性、可靠性和工艺的可重现性。配液系统可实现全自动化、关键工序自动化、手动（操作面板）操作等多种控制方案。'),
(11, '原料药成品分为无菌无活性、无菌高活性、非无菌高活性、非无菌无活性，大批量、小批量，分装前混合、混粉等处理工艺不同，包装形式及分装精度不同，自控程度不同。相应的分装单元则需要设计配套不同的设施和系统。'),
(12, '包括固体起始原料、中间体湿品/干品、粗品及晶种的称量、投料，根据物料的来源、物性、包装形式、投料量及工艺要求配套相适应的投料模块装置，重点实现过程密闭性、投料速度（一次性投料/分次投料/缓慢投料）、自动化/机械机构化轻作业、特殊活性防护、腐蚀性耐受性。'),
(13, '包括有机溶剂、液体原料、中间溶液/固液混合物的称量、加料，根据物料的来源、物性、包装形式、投料量及工艺要求配套相适应的投料模块装置，重点实现过程密闭性、加料速度（一次性加料/分次加料/缓慢加料）、自动化/机械机构化轻作业、特殊活性防护、腐蚀性耐受性；特别对于多功能、中试型生产线，可提供多溶剂的加料分配模块，在换产品换溶剂时可实现在线自动切换，无需二次拆装改造。'),
(14, '在线称重模块、在线电子秤与不同设备进行集成，包括投料隔离器、分装隔离器、配液罐、计量罐、反应釜、单锥干燥机/混合机、三合一等设备，可实现全自动计量、记录和控制。'),
(15, '固体原料、中间体、粗品、成品的转移，可实现全过程完全密闭、全自动输送，可与称重模块、投料模块集成。对于未经干燥的湿品中间体也可进行测试，对于易吸湿、强吸附性、絮状团聚性的物料需先完成测试评估，以确定适用的特殊方案。'),
(16, '本系统是传统的夹套多介质控温模式的新一代替代方案，适用于精确控温、自动控温的工况，适用于厂区无冷热媒供应的生产线；既可用于小批量、中试型生产线，也适用于大规模生产线，灵活、便捷、清洁、节能、高效，现场施工简单、维护简单。'),
(17, '在线清洗/灭菌/排放系统，是生产无菌原料药必备的系统装备，本公司开发应用的CIP&amp;DIP&amp;SIP系统可实现全自动操作；同时，为满足更低投入的需求，也可设计成手、自动结合系统。'),
(18, '余热回收工艺、冷凝水回收工艺。可根据客户工厂工况设计、开发行之有效的回收装置，实现节能和减排。'),
(19, '针对合成工艺复杂的产品线、多功能多产品的合成生产线，对多种溶剂的储存、分配和控制进行统一方案设计和管线集成，可与称重模块、加料模块集成。'),
(20, '不同的高活性原料药产生活性物质的起始工序不同，有的产品起始原料即有活性，有的产品在某中间体阶段开始具备活性。针对高活性原料药车间，需要配套特有的灭活系统和灭活装置，分别对废液、废气及废渣进行转移和灭活处理。根据活性物质特性不同，分别有高温灭活、碱灭活等不同的灭活工艺和装备。'),
(21, '项目启动之前的可行性研究分析。可编制可行性研究报告、项目申请报告等咨询文件。'),
(22, '工艺技术方案、设备选型、系统概念设计。成果源于设计，设计始于概念，概念设计蕴含了项目的核心理念。'),
(23, '项目技术支持、技术咨询、技术开发、技术转化，法尔森依托行业资深专家团队和高校科研平台为企业提供技术咨询。'),
(24, '技术管理、项目协调、试生产指导、人员培训。'),
(25, '文件系统、GMP验证。'),
(26, ' '),
(27, ' '),
(28, '&lt;p&gt;\r\nPharma Access是一家为寻求进入中东和北非市场的制药企业提供全面集成的销售和营销解决方案的跨国公司。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\nPharma Access与法尔森科技联合供应工艺设备、公用设施（清洁和黑色）、暖通空调和BMS系统、带附件的洁净室面板，可为客户提供符合预算要求的解决方案，提供来自中国、印度和欧洲的制药设备及系统。\r\n&lt;/p&gt;\r\n&lt;img src=&quot;/upload/2019-06-12/9801a5467d451750317f24008bb18fb9.png&quot; class=&quot;am-img-responsive am-center&quot;&gt;\r\n&lt;p&gt;\r\n目前在阿尔及尼亚项目上，法尔森科技与Pharma Access正在推进合作。双方在国际业务中将保持长期战略合作，共同发展。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n法尔森科技全力准备并期待着与Pharma Access一同在医药领域，为国内外客户提供专业的工程技术解决方案，共同助力客户长足发展。\r\n&lt;/p&gt;'),
(29, '&lt;p class=&quot;am-text-center&quot;&gt;\r\n药监综药注函〔2019〕237号\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n浙江省药品监督管理局：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  你局《关于集团公司作为药品上市许可持有人集中持有药品批准文号变更生产场地有关问题的请示》（浙药监注〔2019〕2号）收悉。经研究，现函复如下：\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  《国务院办公厅关于印发药品上市许可持有人制度试点方案的通知》（国办发〔2016〕41号）中要求受托生产企业须具备相应生产范围的药品生产质量管理规范（药品GMP）认证证书，但并未对持有人自行新建生产场地的情形进行规定。持有人自建生产场地并进行场地变更的，可按照现行《药品注册管理办法》中由国家局审批的补充申请事项18项进行申报，由药审中心按照该变更所需技术要求进行审评。在申报补充申请时，可不要求申请人提交GMP证书，但申请人必须在该补充申请获批并通过GMP认证后方可生产销售该药品。审评中如需发起现场检查，你局可按照“放管服”要求，同步组织开展药品GMP认证检查工作。\r\n&lt;/p&gt;\r\n&lt;p class=&quot;am-text-right&quot;&gt;\r\n国家药监局综合司\r\n&lt;/p&gt;\r\n&lt;p class=&quot;am-text-right&quot;&gt;\r\n2019年5月8日\r\n&lt;/p&gt;'),
(30, '&lt;p&gt;\r\n来源：中华人民共和国应急管理部政策法规司\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n一、制定背景\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  《安全生产检测检验机构管理规定》（原安全监管总局令第12号）、《安全评价机构管理规定》（原安全监管总局令第22号）实施以来，有效的规范了安全评价机构、安全生产检测检验机构（以下统称评价检测机构）从业行为，发挥了评价检测机构事故防范技术支撑作用。上述两规章实施已有十年左右，有些内容与《安全生产法》相关规定、国务院“放管服”改革要求、安全生产实际需求不相适应，总结原规章实施经验和存在问题，出台新的《安全评价检测检验机构管理办法》（以下简称《管理办法》）已十分必要。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （一）出台《管理办法》是落实党的十八届五中全会精神，改革安全评审制度的任务要求。《中共中央关于制定国民经济和社会发展第十三个五年规划的建议》提出了“改革安全评审制度，健全预警应急机制”的任务要求。《中共中央 国务院关于推进安全生产领域改革发展的意见》要求“改革完善安全生产和职业健康技术服务机构资质管理办法”“科学设置安全生产行政许可事项和办理程序”。《管理办法》顺应安全生产现实需要，对标应急管理工作大局，对评价检测机构资质认可、监督管理、检查考核等进行了系统性改革。《管理办法》对规范机构从业行为、提升机构技术保障能力、引导行业转型升级具有较强的指导意义和引领作用。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （二）出台《管理办法》是落实国务院“放管服”改革精神，推进便民服务、激发市场活力的重要举措。党的十八大以来，国务院大力推进“放管服”改革，连续出台系列重要文件，持续深化行政审批及中介服务事项改革。2019年2月27日，国务院发布《关于取消和下放一批行政许可事项的决定》（国发〔2019〕6号），将评价检测机构资质认可交由省级应急管理部门、省级煤矿安全生产监管部门（以下统称资质认可机关）实施，并对评价检测机构监管体系改革提出了新的更高要求。《管理办法》修改了原管理规定中与“放管服”改革要求不适应的内容，理顺了与安全生产社会化服务体系建设不匹配的环节，为优化便民服务、强化属地监管、推进“一网通办”、激发市场主体活力提供了法制保障和政策支持。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （三）出台《管理办法》是重塑专业机构监管体系、引领行业规范发展的现实需要。现行评价检测机构准入条件较低，已不能完全满足技术支撑需要；评价检测机构跨区域从业还存在不同程度的行政壁垒和障碍；属地安全监管监察部门对机构及其从业人员行政处罚的依据还不够充分。上述问题影响行业的规范从业、公平竞争、健康发展和有效监管。《管理办法》通过合并资质等级、压缩审批层级、精简许可范围、取消从业地域限制，推行一个准入标准许可、一个证书全国执业、一个信息平台查询，为机构执业、行业发展和监督检查提供了更为便捷高效的制度设计。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n二、起草过程\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （一）成立起草小组，评估现行管理体系。2017年初，相关职能部门组织科研院所、行业协会和部分专业机构代表等成立了《管理办法》起草小组。2017年1至6月，相关职能部门按照党中央、国务院深化安全评审制度改革的要求，通过发放调查问卷、实地调研、座谈交流等形式，系统评估原《安全生产检测检验机构管理规定》《安全评价机构管理规定》实施的经验和不足，听取有关方面的意见和建议，在此基础上起草小组形成了《管理办法》（征求意见稿）。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （二）开门制定部门规章，广泛征求社会意见。《管理办法》（征求意见稿）分别于2017年10至11月在原安全监管总局网站，2017年12月至2018年1月在原国务院法制办网站向社会公开征求意见建议，共收到各方面意见建议311条。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （三）组织专业研讨分析，不断完善条款表述。2017年12月至2018年5月，相关职能部门分别在北京、广东、浙江召开了三次专业论证会议，对条款内容逐条细化完善，形成了《管理办法》（送审稿）。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （四）协调沟通论证，按程序审议报批。2018年5月，相关职能部门就《管理办法》（送审稿）主动与有关业务司局进行沟通，形成了一致意见；之后，又向应急管理部分管领导报告了起草背景、修改原因、主要经过和重点内容，提出了提请部长办公会审议的建议。2018年6月，应急管理部第8次部长办公会审议并原则通过《管理办法》送审稿，要求进一步征求相关部委意见后，按程序发布实施。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （五）落实国务院决定，及时发布实施。按照部长办公会意见，再次征求了中央机构编制委员会办公室、国务院推进政府职能转变和“放管服”改革协调小组办公室、国家发展改革委意见后进行了完善。2019年2月，国务院发布《关于取消和下放一批行政许可事项的决定》（国发〔2019〕6号）后，应急管理部于3月20日发布《管理办法》，自2019年5月1日起施行。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n三、主要改革内容\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （一）将原两个规章合二为一。虽然安全评价、安全生产检测检验在技术方法、执业要求、过程管理等方面有所侧重和不同，但在资质条件设定、许可程序管理、执法监管等行政管理方面较为类似，且国务院公布的行政许可清单中将安全评价机构资质认可、检测检验机构资质认可归并为一项许可。鉴此，新的《管理办法》将原《安全生产检测检验机构管理规定》《安全评价机构管理规定》有关内容进行了整合，合并制定为一个部门规章。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （二）大幅归并精简许可事项。按照国务院“放管服”改革要求，主要归并精简了以下事项：一是取消评价检测机构的甲级、乙级分级设置，分别整合为安全评价资质、安全生产检测检验资质。二是取消甲级资质由应急管理部审批（机构改革前由安全监管总局审批）、乙级资质由省级安全监管监察部门审批的分级审批规定，将安全评价资质、安全生产检测检验资质统一交由省级应急管理部门、省级煤矿安全生产监管部门审批。三是取消评价检测机构从业地域限制，取得安全评价基础资质、检测检验基础资质的机构可以在全国范围内开展业务。四是取消评价检测机构计划性数量限制，不再拟定数量和区域发展规划。五是依法对《安全生产法》第二十九条、第三十四条规定的行业领域和范围（矿山、金属冶炼建设项目和用于生产、储存、装卸危险物品的建设项目；矿山井下特种设备等）实施资质认可，对法律法规依据不充分的其他行业领域不再实行资质认可管理。六是进一步简化程序、简政放权，将资质有效期由三年延长为五年。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （三）科学设置机构准入条件。按照既满足安全生产现实需要，又鼓励机构综合发展、做大做强的原则，《管理办法》规定安全评价机构的准入条件为：固定资产不少于800万元，工作场所面积不少于1000平方米，专职安全评价师配置不少于25人。《管理办法》规定安全生产检测检验机构的准入条件为：固定资产不少于1000万元，工作场所面积（含实验室）不少于1000平方米，专业技术人员不少于25人。同时按其申请业务范围的多少，每增加一个业务范围（行业领域），按专业配比增加5名专职安全评价师（检测检验机构增加5名专业技术人员）。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （四）强化事中事后监管。一是强化资质保持，《管理办法》规定资质认可机关通过制定年度监督检查计划、实施“双随机、一公开”监管等，确保每三年对本部门颁发资质证书的评价检测机构监督检查覆盖一次。二是强化属地监管，要求机构在开展现场技术服务前七个工作日内书面告知项目实施地资质认可机关，接受资质认可机关及其下级有关部门的监督检查。三是强化日常执法，要求有关部门发现机构违法违规行为的，依法实施处罚，并告知资质认可机关。四是强化联合惩戒，提高对违法违规行为的处罚力度，对失信机构和人员实行行业禁入和纳入安全生产不良记录“黑名单”管理，并依法实施联合惩戒。五是实行信息共享，以安全评价检测检验机构信息查询系统、国家企业信用信息公示系统、全国信用信息共享平台、安全评价师查询平台、注册安全工程师查询系统等为依托，及时查询、公布和共享执法检查、行政处罚、失信惩戒等信息。六是引导行业自律，发挥行业协会自律管理作用，积极推进信用评估、综合能力和专业能力评定等相关标准和体系建设，引导机构提升服务能力、质量和水平;协助开展技术仲裁，促进公平竞争，维护从业秩序。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n  （五）规范政府监管行为。一是杜绝行政干预，要求资质认可机关及其下级有关部门和工作人员不得干预机构正常活动，不得设定或变相设定机构从业准入障碍。二是杜绝“红顶中介”，要求应急管理系统、各级煤矿安全生产监管部门等所属事业单位、管理的社会组织及其举办的企业不得申请评价检测机构资质。三是明确各方责任，评价检测机构对其出具的技术服务报告负责；生产经营单位委托评价检测机构为其提供技术服务的，保障安全生产的责任仍由本单位负责；相关方采信报告内容作出许可或处罚决定的，对其决定事项承担相应法律责任。\r\n&lt;/p&gt;\r\n'),
(31, '更新中'),
(32, '&lt;p&gt;\r\n	来源：中华人民共和国应急管理部政策法规司\r\n&lt;/p&gt;\r\n&lt;img src=&quot;/upload/2019-06-12/e06d2f56bc35d24760a307008721cd1e.png&quot; alt=&quot;一秒读懂全国工程建设项目审批制度改革&quot; /&gt;'),
(33, '&lt;table class=&quot;am-table am-table-bordered&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;width:30%;&quot;&gt;\r\n				介质温度范围\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				-80℃～100℃（水冷\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				控制模式\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				前馈PID，无模型自建树算法，PLC控制器\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				温度控制选择\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				物料温度控制与夹套温度控制可自由选择\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				温差控制\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				反应釜夹套温度与物料温度的温差可控制可设定\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				可编程\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				可编制20条程序，每条程序可编制45段步骤\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				通信协议\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				MODBUS RTU协议 RS 485接口\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				温度反馈（选配）\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				设备导热介质 进口温度 出口温度 加热器温度 反应釜物料温度（外接温度传感器） 四点温度\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				物料温控精度\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				±1℃\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				加热功率\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				200kW\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				制冷量100℃\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				200kW\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				制冷量50℃\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				200kW\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				制冷量0℃\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				178kW\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				制冷量-20℃\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				153kW\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				制冷量-40℃\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				130kW\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				制冷量-60℃\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				98kW\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				循环泵流量、压力\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				Max*110L/min2bar\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				压缩机\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				艾默生谷轮100匹\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				膨胀阀\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				丹佛斯\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				蒸发器\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				板式换热器\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				操作面板\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				温控仪\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				安全防护\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				具有自我诊断，冷冻机过载保护；高压压力开关，过载继电器、热保护装置等多种安全保障功能\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				密闭循环系统\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				整个系统为全密闭系统，高温时不会有油雾、低温时不吸收空气中水分，系统在运行中不会因为高温使压力上升，低温自动补充导热介质\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				接口尺寸\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				DN25法兰\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				外形尺寸\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				1300*2000*1800mm\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				制冷剂\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				R-404A/R508A\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				电源\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				AC380V 50HZ\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				外壳材质\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				冷板喷塑\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;\r\n				净重\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				约1.5吨\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;'),
(34, '&lt;p&gt;\r\n	名称：Eurotherm 230 (“优热”-230)合成冷媒/热媒\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	产品描述：具有极低倾点和运动粘度，优异的高低温流动性和热传导性的合成导热油。特别适合于超低温液相使用，作为冷媒/热媒用于冷却/加热系统进行快速升温/降温交替转换运行，并提供良好的温度控制精度和低压操作，性价比优异的经济型合成冷媒/热媒。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	推荐使用温度： ‐60～230℃。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	产品规格及特性参数：\r\n&lt;/p&gt;\r\n&lt;table class=&quot;am-table am-table-bordered&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				序号\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				特性\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				指标\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				1\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				外观\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				无色、无味、透明液体\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				2\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				组分\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				合成烃\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				3\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				密度\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				0.734g/cm3(20℃)\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				4\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				倾点\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				＜-60℃\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				5\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				自燃点\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				365℃\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				6\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				闪点\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				70℃\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				7\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				蒸气压力\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				0.105 kPa (0.8 mm Hg), 20 ℃\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				8\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				馏程\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				175～198℃\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				9\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				水分\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				＜200ppm\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-middle am-text-center&quot;&gt;\r\n				10\r\n			&lt;/td&gt;\r\n			&lt;td class=&quot;am-text-middle&quot;&gt;\r\n				运动粘度\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				14.6 mm2/s（-50℃）&lt;br /&gt;\r\n9.76 mm2/s（-40℃）&lt;br /&gt;\r\n1.90mm2/s(25℃)&lt;br /&gt;\r\n0.99mm2/s(40℃)&lt;br /&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				11\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				允许最高主流体温度\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				230℃\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td class=&quot;am-text-center&quot;&gt;\r\n				12\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				热膨胀系数（100℃）\r\n			&lt;/td&gt;\r\n			&lt;td&gt;\r\n				7.9*10&lt;sup&gt;-4&lt;/sup&gt; （K&lt;sup&gt;-1&lt;/sup&gt;）\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `dux_ext_EPC`
--

CREATE TABLE IF NOT EXISTS `dux_ext_EPC` (
  `data_id` int(10) DEFAULT NULL,
  `focus` varchar(250) DEFAULT NULL,
  `blueFont` varchar(250) DEFAULT NULL,
  `papers` text,
  `skillDetails` varchar(250) DEFAULT NULL,
  `imgUpload` varchar(250) DEFAULT NULL,
  `productImgSlide` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dux_ext_EPC`
--

INSERT INTO `dux_ext_EPC` (`data_id`, `focus`, `blueFont`, `papers`, `skillDetails`, `imgUpload`, `productImgSlide`) VALUES
(3, '针对新上原料药生产项目', '原料药企业搬迁/新建项目、制剂企业拟自产自用原料药、新药研发企业拟独家生产新品种', '', '', '', 'a:2:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-11/3fe44a22c6c433e21a37b695705104c0.png";s:5:"title";s:33:"原料药生产线设计与搭建";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-11/825b70091d66ae5d52e86ace6843d8f1.png";s:5:"title";s:33:"原料药生产线设计与搭建";}}'),
(4, '', '', '', '', '', ''),
(5, '针对老车间内的化学合成生产线', '设备老旧待更新、系统老化/能耗高/稳定性差、老的生产模式已落后、老的车间已不符合法规要求、老的生产线已无法生产出合格的产品、产能升级、自动化升级', '', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-11/5ff477348c5072aa6c8b9c600f87c3b7.png";s:5:"title";s:27:"化学合成线升级改造";}}'),
(6, '针对老车间内的精干包生产线', '设备老旧待更新、系统老化/能耗高/稳定性差、老的生产模式已落后、老的车间已不符合法规要求、老的生产线已无法生产出合格的产品、产能升级、自动化升级', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/80d40ec3afa30d286875c4ebcb6303ff.png";s:5:"title";s:30:"原料药精干包升级改造";}}', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-11/e7f85a294c2a761e3cd3d0f2b0add542.png";s:5:"title";s:30:"原料药精干包升级改造";}}'),
(7, '针对原料药企业的有机溶剂回收项目', '乙醇、甲醇、丙酮、乙酸乙酯、二氯甲烷等双组分或多组分的粗回收及高纯度回收', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/652f1f74c189af7fb16c1b2bc01fbe26.png";s:5:"title";s:33:"溶剂回收装置设计与搭建";}}', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-11/80108a6c308dc759765a4272f1d0532f.png";s:5:"title";s:33:"溶剂回收装置设计与搭建";}}'),
(8, '针对原料药企业的工艺废气处理项目', '含卤族有机废气、酸性废气、不含卤族有机废气、活性废气、其他特殊废气', 'a:2:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/ababbbdac5d4005fc44e8aa444e4a68e.png";s:5:"title";s:33:"废气处理装置设计与搭建";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-04/819d72cb1117525165e0a94820b0d853.png";s:5:"title";s:37:"废气处理装置设计与搭建 (2)";}}', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-11/62e908f638c66b6cb238e79e7e44f822.png";s:5:"title";s:33:"废气处理装置设计与搭建";}}'),
(9, '', '', '', '', '', ''),
(10, '', '', '', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/92d79ee4688be4e307bfabfec5a967e3.png";s:5:"title";s:21:"原料药配液模块";}}'),
(11, '', '', '', '', '', 'a:2:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/d332ab2bdfa1a04a4fabefcfe720c934.png";s:5:"title";s:21:"原料药分装单元";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-12/fb6d42430ea4ec41e9a2f3bc32072e25.png";s:5:"title";s:21:"原料药分装单元";}}'),
(12, '', '', '', '', '', 'a:2:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/f137af3d26466e94f488799e581797ac.png";s:5:"title";s:18:"固体投料模块";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-12/3cd166da2a02be6b9dd976ee7e29cb71.png";s:5:"title";s:18:"固体投料模块";}}'),
(13, '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/df30559475704b27a8cb5648d4a7aec2.png";s:5:"title";s:18:"液体加料模块";}}', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/3c307359319936625b4b6cf0e4f5f20b.png";s:5:"title";s:18:"液体加料模块";}}'),
(14, '', '', '', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/57d0c4ef9e964a79c76b454921b125ca.png";s:5:"title";s:18:"称重计量模块";}}'),
(15, '', '', 'a:2:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/bf570ca100e3395a13d56843fb4e5270.png";s:5:"title";s:18:"粉体输送模块";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-04/9f089da4cec38bfbcba2bea3ddc573de.png";s:5:"title";s:22:"粉体输送模块 (2)";}}', '', '', 'a:2:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/3055258c8520497d124f62b2fee9ded2.png";s:5:"title";s:18:"粉体输送模块";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-12/9d37095d694f764f0f14a2f357da9907.png";s:5:"title";s:18:"粉体输送模块";}}'),
(16, '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/2aa05785a4fe27259f55aaab8951bcb7.png";s:5:"title";s:15:"TCU温控系统";}}', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/2f0c81131847b6e4d5864c5783cc7bc0.png";s:5:"title";s:17:"系统设备11_05";}}'),
(17, '', '', '', '', '', 'a:2:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/708a766088fc21dedc98605b1c7edb36.png";s:5:"title";s:17:"CIP&DIP&SIP系统";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-12/4586c95ea5815e6c68217e0fa3ad1197.png";s:5:"title";s:17:"CIP&DIP&SIP系统";}}'),
(18, '', '', '', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/81dda34cef5267d90601ddaf50e0cf08.png";s:5:"title";s:27:"蒸汽冷凝水回收系统";}}'),
(19, '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/b12cbb6a51a2ab8b89efd6d13849d788.png";s:5:"title";s:24:"有机溶剂分配系统";}}', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/5d42e1bb971d590a8049ab9f71b5c171.png";s:5:"title";s:24:"有机溶剂分配系统";}}'),
(20, '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/177a89fc88b6b71aee23e8ead5090696.png";s:5:"title";s:24:"有毒物料灭活系统";}}', '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-12/26d0a98cc409771384a8e998fd60cca0.png";s:5:"title";s:24:"有毒物料灭活系统";}}'),
(2, '', '', '', '', '', ''),
(21, '', '', 'a:4:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/fbb1510230fa26e8767f7eedfc8c9b96.png";s:5:"title";s:63:"可行性研究：项目启动之前的可行性研究分析(1)";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-04/bc727208a51a7513bed85010b0241f5a.png";s:5:"title";s:64:"可行性研究：项目启动之前的可行性研究分析 (2)";}i:2;a:2:{s:3:"url";s:55:"/upload/2019-06-04/8063ed94b773b25945e0a376c9d3339b.png";s:5:"title";s:64:"可行性研究：项目启动之前的可行性研究分析 (3)";}i:3;a:2:{s:3:"url";s:55:"/upload/2019-06-04/4deacaa299f3f3602130bbfcbf52b9a0.png";s:5:"title";s:64:"可行性研究：项目启动之前的可行性研究分析 (4)";}}', '', '/assets/image/6.png', NULL),
(22, '', '', 'a:2:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/a77c2820e3e237c950d771df5ffaa2cf.png";s:5:"title";s:69:"概念设计：工艺技术方案、设备选型、系统概念设计";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-04/686e2b5af27860894e660c45086ce21b.png";s:5:"title";s:73:"概念设计：工艺技术方案、设备选型、系统概念设计 (2)";}}', '', '/assets/image/7.png', NULL),
(23, '', '', 'a:1:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/87b971d3b9208729a26517e7d777a3db.png";s:5:"title";s:78:"技术咨询：项目技术支持、技术咨询、技术开发、技术转化";}}', '', '/assets/image/8.png', NULL),
(24, '', '', 'a:3:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/a234607803dd4cd5a79b5c3cf78459a9.png";s:5:"title";s:75:"项目管理：技术管理、项目协调、试生产指导、人员培训";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-04/f76e90b845ddb8d0df69d3dff8b990f1.png";s:5:"title";s:79:"项目管理：技术管理、项目协调、试生产指导、人员培训 (2)";}i:2;a:2:{s:3:"url";s:55:"/upload/2019-06-04/d43fb10752685f9b13cc9e3ee54a9c5a.png";s:5:"title";s:79:"项目管理：技术管理、项目协调、试生产指导、人员培训 (3)";}}', '', '/assets/image/9.png', NULL),
(25, '', '', 'a:3:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/83c59cdd4e8ed82dc412b14a0a4bfe24.png";s:5:"title";s:40:"验证服务：文件系统、GMP验证1";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-04/e9ca752869c2985b26907ed072df059a.png";s:5:"title";s:43:"验证服务：文件系统、GMP验证 (2)";}i:2;a:2:{s:3:"url";s:55:"/upload/2019-06-04/0e369c8cd592ef0c36e30fe1982d5cdc.png";s:5:"title";s:43:"验证服务：文件系统、GMP验证 (3)";}}', '', '/assets/image/10.png', NULL),
(26, '', '', 'a:2:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/48f4e5f7c7dd677f1c671a28d3268b5b.png";s:5:"title";s:37:"产品工艺包、产品工艺开发1";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-04/1026a678e5380a85de03553ad5a36111.png";s:5:"title";s:40:"产品工艺包、产品工艺开发 (2)";}}', '', '/assets/image/11.png', NULL),
(27, '', '', 'a:3:{i:0;a:2:{s:3:"url";s:55:"/upload/2019-06-04/af1a18b90fd767c6f7d2cb9c47feec02.png";s:5:"title";s:18:"三维系统模拟";}i:1;a:2:{s:3:"url";s:55:"/upload/2019-06-04/b6014241494bebf7884831ed68c3d6d6.png";s:5:"title";s:22:"三维系统模拟 (2)";}i:2;a:2:{s:3:"url";s:55:"/upload/2019-06-04/89f3bdc5b6e262ded0a7581fcb55e33c.png";s:5:"title";s:22:"三维系统模拟 (3)";}}', '', '/assets/image/12.png', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dux_ext_guestbook`
--

CREATE TABLE IF NOT EXISTS `dux_ext_guestbook` (
  `data_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `tel` varchar(250) DEFAULT NULL,
  `content` text,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`data_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `dux_ext_guestbook`
--

INSERT INTO `dux_ext_guestbook` (`data_id`, `name`, `tel`, `content`, `time`) VALUES
(1, '测试', '15000000000', 'ces', 1558604280),
(2, 'Lyndon', '15618068909', 'test2019-06-04', 1559640946);

-- --------------------------------------------------------

--
-- 表的结构 `dux_ext_news`
--

CREATE TABLE IF NOT EXISTS `dux_ext_news` (
  `data_id` int(10) DEFAULT NULL,
  `newsCategory` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dux_ext_news`
--

INSERT INTO `dux_ext_news` (`data_id`, `newsCategory`) VALUES
(1, '1'),
(2, '1'),
(28, '1'),
(29, '2'),
(30, '2'),
(32, '2'),
(33, '3'),
(34, '3');

-- --------------------------------------------------------

--
-- 表的结构 `dux_field`
--

CREATE TABLE IF NOT EXISTS `dux_field` (
  `field_id` int(10) NOT NULL AUTO_INCREMENT,
  `fieldset_id` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `field` varchar(250) DEFAULT NULL,
  `type` int(5) DEFAULT '1',
  `tip` varchar(250) DEFAULT NULL,
  `verify_type` varchar(250) DEFAULT NULL,
  `verify_data` text,
  `verify_data_js` text,
  `verify_condition` tinyint(1) DEFAULT NULL,
  `issearch` tinyint(1) DEFAULT NULL,
  `default` varchar(250) DEFAULT NULL,
  `sequence` int(10) DEFAULT '0',
  `errormsg` varchar(250) DEFAULT NULL,
  `config` text,
  PRIMARY KEY (`field_id`),
  KEY `field` (`field`),
  KEY `sequence` (`sequence`),
  KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='扩展字段基础' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `dux_field`
--

INSERT INTO `dux_field` (`field_id`, `fieldset_id`, `name`, `field`, `type`, `tip`, `verify_type`, `verify_data`, `verify_data_js`, `verify_condition`, `issearch`, `default`, `sequence`, `errormsg`, `config`) VALUES
(1, 1, '名字', 'name', 1, '', 'regex', 'cmVxdWlyZQ==', 'Kg==', 1, 1, '', 0, '', ''),
(2, 1, '手机号', 'tel', 1, '', 'regex', '', '', 1, 0, '1', 1, '', ''),
(3, 1, '内容', 'content', 2, '', 'regex', 'cmVxdWlyZQ==', 'Kg==', 1, 1, '', 3, '', ''),
(4, 1, '时间', 'time', 10, '', 'regex', '', '', 1, 1, '', 2, '', ''),
(5, 2, '新闻栏目', 'newsCategory', 9, '', 'regex', '', '', 1, 1, '', 1, '', '公司新闻,行业新闻,技术专栏'),
(6, 3, '针对', 'focus', 1, '针对.....', 'regex', '', '', 1, 2, '', 1, '', ''),
(7, 3, '蓝字', 'blueFont', 1, '括号里面的文字', 'regex', '', '', 1, 2, '', 2, '', ''),
(8, 3, '方案图纸', 'papers', 6, '', 'regex', '', '', 1, 2, '', 3, '', ''),
(9, 3, '技术描述', 'skillDetails', 1, '', 'regex', '', '', 1, 2, '', 5, '', ''),
(10, 3, '图片上传', 'imgUpload', 5, '需要则上传，不需要则空着', 'regex', '', '', 1, 2, '', 6, '', ''),
(11, 3, '产品轮播图', 'productImgSlide', 6, '', 'regex', '', '', 1, 2, '', 8, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `dux_fieldset`
--

CREATE TABLE IF NOT EXISTS `dux_fieldset` (
  `fieldset_id` int(10) NOT NULL AUTO_INCREMENT,
  `table` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='字段集基础' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `dux_fieldset`
--

INSERT INTO `dux_fieldset` (`fieldset_id`, `table`, `name`) VALUES
(1, 'guestbook', '留言板'),
(2, 'news', '新闻'),
(3, 'EPC', '工程总包');

-- --------------------------------------------------------

--
-- 表的结构 `dux_fieldset_expand`
--

CREATE TABLE IF NOT EXISTS `dux_fieldset_expand` (
  `fieldset_id` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段集-扩展模型';

--
-- 转存表中的数据 `dux_fieldset_expand`
--

INSERT INTO `dux_fieldset_expand` (`fieldset_id`, `status`) VALUES
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dux_fieldset_form`
--

CREATE TABLE IF NOT EXISTS `dux_fieldset_form` (
  `fieldset_id` int(10) DEFAULT NULL,
  `show_list` tinyint(1) DEFAULT NULL,
  `show_info` tinyint(1) DEFAULT NULL,
  `list_page` int(5) DEFAULT NULL,
  `list_where` varchar(250) DEFAULT NULL,
  `list_order` varchar(250) DEFAULT NULL,
  `tpl_list` varchar(250) DEFAULT NULL,
  `tpl_info` varchar(250) DEFAULT NULL,
  `post_status` tinyint(1) DEFAULT NULL,
  `post_msg` varchar(250) DEFAULT NULL,
  `post_return_url` varchar(250) DEFAULT NULL,
  UNIQUE KEY `fieldset_id` (`fieldset_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字段集-扩展表单';

--
-- 转存表中的数据 `dux_fieldset_form`
--

INSERT INTO `dux_fieldset_form` (`fieldset_id`, `show_list`, `show_info`, `list_page`, `list_where`, `list_order`, `tpl_list`, `tpl_info`, `post_status`, `post_msg`, `post_return_url`) VALUES
(1, 1, 0, 10, '', 'data_id desc', 'guestbook', 'guestbook', 1, '留言发布成功！', '');

-- --------------------------------------------------------

--
-- 表的结构 `dux_field_expand`
--

CREATE TABLE IF NOT EXISTS `dux_field_expand` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展字段-扩展模型';

--
-- 转存表中的数据 `dux_field_expand`
--

INSERT INTO `dux_field_expand` (`field_id`, `post`) VALUES
(5, NULL),
(6, NULL),
(7, NULL),
(8, NULL),
(9, NULL),
(10, NULL),
(11, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `dux_field_form`
--

CREATE TABLE IF NOT EXISTS `dux_field_form` (
  `field_id` int(10) DEFAULT NULL,
  `post` tinyint(1) DEFAULT '0',
  `show` tinyint(1) DEFAULT '0',
  `search` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='扩展字段-表单';

--
-- 转存表中的数据 `dux_field_form`
--

INSERT INTO `dux_field_form` (`field_id`, `post`, `show`, `search`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `dux_file`
--

CREATE TABLE IF NOT EXISTS `dux_file` (
  `file_id` int(10) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) DEFAULT NULL,
  `original` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `ext` varchar(250) DEFAULT NULL,
  `size` int(10) DEFAULT NULL,
  `time` int(10) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `ext` (`ext`),
  KEY `time` (`time`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='上传文件' AUTO_INCREMENT=87 ;

--
-- 转存表中的数据 `dux_file`
--

INSERT INTO `dux_file` (`file_id`, `url`, `original`, `title`, `ext`, `size`, `time`) VALUES
(1, '/upload/2019-06-04/3fe44a22c6c433e21a37b695705104c0.png', '/upload/2019-06-04/3fe44a22c6c433e21a37b695705104c0.png', '原料药生产线设计与搭建', 'png', 87236, 1559627871),
(2, '/upload/2019-06-04/825b70091d66ae5d52e86ace6843d8f1.png', '/upload/2019-06-04/825b70091d66ae5d52e86ace6843d8f1.png', '原料药生产线设计与搭建 (2)', 'png', 300747, 1559627879),
(3, '/upload/2019-06-04/34337eda8d11d4e9a4c470b5043c3b6b.png', '/upload/2019-06-04/34337eda8d11d4e9a4c470b5043c3b6b.png', '原料药中试平台设计与搭建', 'png', 418193, 1559630342),
(4, '/upload/2019-06-04/6698a6e7a97d89f816191bc09d0a5f3d.png', '/upload/2019-06-04/6698a6e7a97d89f816191bc09d0a5f3d.png', '原料药中试平台设计与搭建 (2)', 'png', 208953, 1559630348),
(5, '/upload/2019-06-04/185c2ef9891e7ede45ab268484ff2056.png', '/upload/2019-06-04/185c2ef9891e7ede45ab268484ff2056.png', '化学合成线升级改造', 'png', 509666, 1559630406),
(6, '/upload/2019-06-04/80d40ec3afa30d286875c4ebcb6303ff.png', '/upload/2019-06-04/80d40ec3afa30d286875c4ebcb6303ff.png', '原料药精干包升级改造', 'png', 124184, 1559630443),
(7, '/upload/2019-06-04/95aad75e1bc627994ed450d8a83a9574.png', '/upload/2019-06-04/95aad75e1bc627994ed450d8a83a9574.png', '原料药精干包升级改造2', 'png', 260825, 1559630446),
(8, '/upload/2019-06-04/48bb204fecb151a53c4bb1afd1effea2.png', '/upload/2019-06-04/48bb204fecb151a53c4bb1afd1effea2.png', '原料药精干包升级改造3', 'png', 224190, 1559630449),
(9, '/upload/2019-06-04/652f1f74c189af7fb16c1b2bc01fbe26.png', '/upload/2019-06-04/652f1f74c189af7fb16c1b2bc01fbe26.png', '溶剂回收装置设计与搭建', 'png', 47265, 1559630484),
(10, '/upload/2019-06-04/8054c0c1f6d0e26579c3efb5ebfdb0b4.png', '/upload/2019-06-04/8054c0c1f6d0e26579c3efb5ebfdb0b4.png', '溶剂回收装置设计与搭建 (2)', 'png', 506992, 1559630489),
(11, '/upload/2019-06-04/ababbbdac5d4005fc44e8aa444e4a68e.png', '/upload/2019-06-04/ababbbdac5d4005fc44e8aa444e4a68e.png', '废气处理装置设计与搭建', 'png', 33116, 1559630510),
(12, '/upload/2019-06-04/819d72cb1117525165e0a94820b0d853.png', '/upload/2019-06-04/819d72cb1117525165e0a94820b0d853.png', '废气处理装置设计与搭建 (2)', 'png', 32650, 1559630514),
(13, '/upload/2019-06-04/abbf09253cb9693f78325d0cac768e11.png', '/upload/2019-06-04/abbf09253cb9693f78325d0cac768e11.png', '废气处理装置设计与搭建 (3)', 'png', 186078, 1559630517),
(14, '/upload/2019-06-04/fbb1510230fa26e8767f7eedfc8c9b96.png', '/upload/2019-06-04/fbb1510230fa26e8767f7eedfc8c9b96.png', '可行性研究：项目启动之前的可行性研究分析(1)', 'png', 55999, 1559630995),
(15, '/upload/2019-06-04/bc727208a51a7513bed85010b0241f5a.png', '/upload/2019-06-04/bc727208a51a7513bed85010b0241f5a.png', '可行性研究：项目启动之前的可行性研究分析 (2)', 'png', 42968, 1559631000),
(16, '/upload/2019-06-04/8063ed94b773b25945e0a376c9d3339b.png', '/upload/2019-06-04/8063ed94b773b25945e0a376c9d3339b.png', '可行性研究：项目启动之前的可行性研究分析 (3)', 'png', 35976, 1559631004),
(17, '/upload/2019-06-04/4deacaa299f3f3602130bbfcbf52b9a0.png', '/upload/2019-06-04/4deacaa299f3f3602130bbfcbf52b9a0.png', '可行性研究：项目启动之前的可行性研究分析 (4)', 'png', 23396, 1559631010),
(18, '/upload/2019-06-04/a77c2820e3e237c950d771df5ffaa2cf.png', '/upload/2019-06-04/a77c2820e3e237c950d771df5ffaa2cf.png', '概念设计：工艺技术方案、设备选型、系统概念设计', 'png', 46590, 1559632229),
(19, '/upload/2019-06-04/686e2b5af27860894e660c45086ce21b.png', '/upload/2019-06-04/686e2b5af27860894e660c45086ce21b.png', '概念设计：工艺技术方案、设备选型、系统概念设计 (2)', 'png', 35805, 1559632233),
(20, '/upload/2019-06-04/87b971d3b9208729a26517e7d777a3db.png', '/upload/2019-06-04/87b971d3b9208729a26517e7d777a3db.png', '技术咨询：项目技术支持、技术咨询、技术开发、技术转化', 'png', 183811, 1559632321),
(21, '/upload/2019-06-04/a234607803dd4cd5a79b5c3cf78459a9.png', '/upload/2019-06-04/a234607803dd4cd5a79b5c3cf78459a9.png', '项目管理：技术管理、项目协调、试生产指导、人员培训', 'png', 293218, 1559632352),
(22, '/upload/2019-06-04/f76e90b845ddb8d0df69d3dff8b990f1.png', '/upload/2019-06-04/f76e90b845ddb8d0df69d3dff8b990f1.png', '项目管理：技术管理、项目协调、试生产指导、人员培训 (2)', 'png', 45914, 1559632356),
(23, '/upload/2019-06-04/d43fb10752685f9b13cc9e3ee54a9c5a.png', '/upload/2019-06-04/d43fb10752685f9b13cc9e3ee54a9c5a.png', '项目管理：技术管理、项目协调、试生产指导、人员培训 (3)', 'png', 43256, 1559632360),
(24, '/upload/2019-06-04/83c59cdd4e8ed82dc412b14a0a4bfe24.png', '/upload/2019-06-04/83c59cdd4e8ed82dc412b14a0a4bfe24.png', '验证服务：文件系统、GMP验证1', 'png', 22967, 1559632400),
(25, '/upload/2019-06-04/e9ca752869c2985b26907ed072df059a.png', '/upload/2019-06-04/e9ca752869c2985b26907ed072df059a.png', '验证服务：文件系统、GMP验证 (2)', 'png', 43134, 1559632411),
(26, '/upload/2019-06-04/0e369c8cd592ef0c36e30fe1982d5cdc.png', '/upload/2019-06-04/0e369c8cd592ef0c36e30fe1982d5cdc.png', '验证服务：文件系统、GMP验证 (3)', 'png', 30785, 1559632415),
(27, '/upload/2019-06-04/48f4e5f7c7dd677f1c671a28d3268b5b.png', '/upload/2019-06-04/48f4e5f7c7dd677f1c671a28d3268b5b.png', '产品工艺包、产品工艺开发1', 'png', 59422, 1559632450),
(28, '/upload/2019-06-04/1026a678e5380a85de03553ad5a36111.png', '/upload/2019-06-04/1026a678e5380a85de03553ad5a36111.png', '产品工艺包、产品工艺开发 (2)', 'png', 19335, 1559632454),
(29, '/upload/2019-06-04/af1a18b90fd767c6f7d2cb9c47feec02.png', '/upload/2019-06-04/af1a18b90fd767c6f7d2cb9c47feec02.png', '三维系统模拟', 'png', 268812, 1559632479),
(30, '/upload/2019-06-04/b6014241494bebf7884831ed68c3d6d6.png', '/upload/2019-06-04/b6014241494bebf7884831ed68c3d6d6.png', '三维系统模拟 (2)', 'png', 102026, 1559632484),
(31, '/upload/2019-06-04/89f3bdc5b6e262ded0a7581fcb55e33c.png', '/upload/2019-06-04/89f3bdc5b6e262ded0a7581fcb55e33c.png', '三维系统模拟 (3)', 'png', 69399, 1559632489),
(32, '/upload/2019-06-04/2f056021fee075e856fde0a7284f0bd9.png', '/upload/2019-06-04/2f056021fee075e856fde0a7284f0bd9.png', '中试成套装备', 'png', 200900, 1559633216),
(33, '/upload/2019-06-04/1c9b7af896659fce8e8ebcc1f3e1e2fd.png', '/upload/2019-06-04/1c9b7af896659fce8e8ebcc1f3e1e2fd.png', '原料药配液模块', 'png', 454443, 1559633333),
(34, '/upload/2019-06-04/f350c7543af4e087282799d92ff1d719.png', '/upload/2019-06-04/f350c7543af4e087282799d92ff1d719.png', '原料药分装单元', 'png', 672535, 1559633369),
(35, '/upload/2019-06-04/88b308ad219569da2f913f44eaa75e13.png', '/upload/2019-06-04/88b308ad219569da2f913f44eaa75e13.png', '原料药分装单元 (2)', 'png', 511746, 1559633380),
(36, '/upload/2019-06-04/b3a4849144ff6142c9af8035da60f838.png', '/upload/2019-06-04/b3a4849144ff6142c9af8035da60f838.png', '固体投料模块', 'png', 272263, 1559633421),
(37, '/upload/2019-06-04/2f7e55e6b6802344a9f37974a75089e1.png', '/upload/2019-06-04/2f7e55e6b6802344a9f37974a75089e1.png', '固体投料模块 (2)', 'png', 331511, 1559633426),
(38, '/upload/2019-06-04/df30559475704b27a8cb5648d4a7aec2.png', '/upload/2019-06-04/df30559475704b27a8cb5648d4a7aec2.png', '液体加料模块', 'png', 6633, 1559633456),
(39, '/upload/2019-06-04/008c19a9d7fd82500a4ca50ad43b85b6.png', '/upload/2019-06-04/008c19a9d7fd82500a4ca50ad43b85b6.png', '称重计量模块', 'png', 500579, 1559633484),
(40, '/upload/2019-06-04/bf570ca100e3395a13d56843fb4e5270.png', '/upload/2019-06-04/bf570ca100e3395a13d56843fb4e5270.png', '粉体输送模块', 'png', 40077, 1559633508),
(41, '/upload/2019-06-04/9f089da4cec38bfbcba2bea3ddc573de.png', '/upload/2019-06-04/9f089da4cec38bfbcba2bea3ddc573de.png', '粉体输送模块 (2)', 'png', 43855, 1559633511),
(42, '/upload/2019-06-04/2aa05785a4fe27259f55aaab8951bcb7.png', '/upload/2019-06-04/2aa05785a4fe27259f55aaab8951bcb7.png', 'TCU温控系统', 'png', 70773, 1559633532),
(43, '/upload/2019-06-04/2941fdd7baf1d324bc0d6938015e3ea9.png', '/upload/2019-06-04/2941fdd7baf1d324bc0d6938015e3ea9.png', 'CIP&DIP&SIP系统', 'png', 434950, 1559633554),
(44, '/upload/2019-06-04/3decb4075277bedecae63e9ba32a4357.png', '/upload/2019-06-04/3decb4075277bedecae63e9ba32a4357.png', 'CIP&DIP&SIP系统 (2)', 'png', 233571, 1559633559),
(45, '/upload/2019-06-04/fc7256d4490abe03a42c65ad9a5732ca.png', '/upload/2019-06-04/fc7256d4490abe03a42c65ad9a5732ca.png', '蒸汽冷凝水回收系统', 'png', 429417, 1559633579),
(46, '/upload/2019-06-04/b12cbb6a51a2ab8b89efd6d13849d788.png', '/upload/2019-06-04/b12cbb6a51a2ab8b89efd6d13849d788.png', '有机溶剂分配系统', 'png', 11842, 1559633593),
(47, '/upload/2019-06-04/177a89fc88b6b71aee23e8ead5090696.png', '/upload/2019-06-04/177a89fc88b6b71aee23e8ead5090696.png', '有毒物料灭活系统', 'png', 44220, 1559633605),
(48, '/upload/2019-06-11/825b70091d66ae5d52e86ace6843d8f1.png', '/upload/2019-06-11/825b70091d66ae5d52e86ace6843d8f1.png', ' (2)', 'png', 300747, 1560248080),
(49, '/upload/2019-06-11/3fe44a22c6c433e21a37b695705104c0.png', '/upload/2019-06-11/3fe44a22c6c433e21a37b695705104c0.png', '', 'png', 87236, 1560248089),
(50, '/upload/2019-06-11/1cc107b3d5671e1b4af51c18ead464d6.png', '/upload/2019-06-11/1cc107b3d5671e1b4af51c18ead464d6.png', '3_05', 'png', 89456, 1560250647),
(51, '/upload/2019-06-11/d6b46b7213a204ee569a0464b2951ed5.png', '/upload/2019-06-11/d6b46b7213a204ee569a0464b2951ed5.png', '工程总包4_05', 'png', 86974, 1560250651),
(52, '/upload/2019-06-11/5ff477348c5072aa6c8b9c600f87c3b7.png', '/upload/2019-06-11/5ff477348c5072aa6c8b9c600f87c3b7.png', '5_05', 'png', 109371, 1560250758),
(53, '/upload/2019-06-11/e7f85a294c2a761e3cd3d0f2b0add542.png', '/upload/2019-06-11/e7f85a294c2a761e3cd3d0f2b0add542.png', '7_05', 'png', 121823, 1560250890),
(54, '/upload/2019-06-11/80108a6c308dc759765a4272f1d0532f.png', '/upload/2019-06-11/80108a6c308dc759765a4272f1d0532f.png', '9_05', 'png', 126474, 1560250976),
(55, '/upload/2019-06-11/62e908f638c66b6cb238e79e7e44f822.png', '/upload/2019-06-11/62e908f638c66b6cb238e79e7e44f822.png', '工程总包12_05', 'png', 72638, 1560251030),
(56, '/upload/2019-06-12/2e85574b2743ec0f5fd9c3e1eb881d92.png', '/upload/2019-06-12/2e85574b2743ec0f5fd9c3e1eb881d92.png', '系统设备1_05', 'png', 94263, 1560307078),
(57, '/upload/2019-06-12/92d79ee4688be4e307bfabfec5a967e3.png', '/upload/2019-06-12/92d79ee4688be4e307bfabfec5a967e3.png', '2_05', 'png', 131939, 1560307266),
(58, '/upload/2019-06-12/d332ab2bdfa1a04a4fabefcfe720c934.png', '/upload/2019-06-12/d332ab2bdfa1a04a4fabefcfe720c934.png', '3_05', 'png', 84764, 1560307674),
(59, '/upload/2019-06-12/fb6d42430ea4ec41e9a2f3bc32072e25.png', '/upload/2019-06-12/fb6d42430ea4ec41e9a2f3bc32072e25.png', '4_05', 'png', 104330, 1560307678),
(60, '/upload/2019-06-12/f137af3d26466e94f488799e581797ac.png', '/upload/2019-06-12/f137af3d26466e94f488799e581797ac.png', '-5', 'png', 102441, 1560308346),
(61, '/upload/2019-06-12/3cd166da2a02be6b9dd976ee7e29cb71.png', '/upload/2019-06-12/3cd166da2a02be6b9dd976ee7e29cb71.png', '5_05', 'png', 103073, 1560308352),
(62, '/upload/2019-06-12/3c307359319936625b4b6cf0e4f5f20b.png', '/upload/2019-06-12/3c307359319936625b4b6cf0e4f5f20b.png', '6_05', 'png', 15336, 1560308837),
(63, '/upload/2019-06-12/57d0c4ef9e964a79c76b454921b125ca.png', '/upload/2019-06-12/57d0c4ef9e964a79c76b454921b125ca.png', '7_05', 'png', 123571, 1560308960),
(64, '/upload/2019-06-12/3055258c8520497d124f62b2fee9ded2.png', '/upload/2019-06-12/3055258c8520497d124f62b2fee9ded2.png', '8_05', 'png', 22064, 1560309232),
(65, '/upload/2019-06-12/9d37095d694f764f0f14a2f357da9907.png', '/upload/2019-06-12/9d37095d694f764f0f14a2f357da9907.png', '10_05', 'png', 14755, 1560309235),
(66, '/upload/2019-06-12/2f0c81131847b6e4d5864c5783cc7bc0.png', '/upload/2019-06-12/2f0c81131847b6e4d5864c5783cc7bc0.png', '系统设备11_05', 'png', 32497, 1560309324),
(67, '/upload/2019-06-12/4586c95ea5815e6c68217e0fa3ad1197.png', '/upload/2019-06-12/4586c95ea5815e6c68217e0fa3ad1197.png', '12_05', 'png', 114995, 1560309393),
(68, '/upload/2019-06-12/708a766088fc21dedc98605b1c7edb36.png', '/upload/2019-06-12/708a766088fc21dedc98605b1c7edb36.png', '13_05', 'png', 115452, 1560309393),
(69, '/upload/2019-06-12/81dda34cef5267d90601ddaf50e0cf08.png', '/upload/2019-06-12/81dda34cef5267d90601ddaf50e0cf08.png', '系统设备14_05', 'png', 98773, 1560309508),
(70, '/upload/2019-06-12/5d42e1bb971d590a8049ab9f71b5c171.png', '/upload/2019-06-12/5d42e1bb971d590a8049ab9f71b5c171.png', '15_05', 'png', 26847, 1560309630),
(71, '/upload/2019-06-12/26d0a98cc409771384a8e998fd60cca0.png', '/upload/2019-06-12/26d0a98cc409771384a8e998fd60cca0.png', '17_05', 'png', 23841, 1560309709),
(72, '/upload/2019-06-12/442ec2058ab4b6cc261fbb339336c10d.png', '/upload/2019-06-12/442ec2058ab4b6cc261fbb339336c10d.png', '图片1', 'png', 427203, 1560334152),
(73, '/upload/2019-06-12/d5b403328235960d9733a60fcce83aef.png', '/upload/2019-06-12/d5b403328235960d9733a60fcce83aef.png', '3', 'png', 208660, 1560334565),
(74, '/upload/2019-06-12/cdbb73870478df8028ce2cd701020101.png', '/upload/2019-06-12/cdbb73870478df8028ce2cd701020101.png', '4', 'png', 253107, 1560334574),
(75, '/upload/2019-06-12/d329effa8b63b9dd9d923884cb95f390.png', '/upload/2019-06-12/d329effa8b63b9dd9d923884cb95f390.png', '5', 'png', 128686, 1560334584),
(76, '/upload/2019-06-12/84ad9b59a7b1fcc075e49625a146d17d.png', '/upload/2019-06-12/84ad9b59a7b1fcc075e49625a146d17d.png', '6', 'png', 100632, 1560334603),
(77, '/upload/2019-06-12/9801a5467d451750317f24008bb18fb9.png', '/upload/2019-06-12/9801a5467d451750317f24008bb18fb9.png', '2', 'png', 27393, 1560334733),
(78, '/upload/2019-06-12/fb6c60935638999d2a99a085ac351ca3.png', '/upload/2019-06-12/fb6c60935638999d2a99a085ac351ca3.png', '标题图_0000s_0001_图片1', 'png', 50868, 1560335185),
(79, '/upload/2019-06-12/e06d2f56bc35d24760a307008721cd1e.png', '/upload/2019-06-12/e06d2f56bc35d24760a307008721cd1e.png', '1', 'png', 260063, 1560336063),
(80, '/upload/2019-06-12/cabac7f4c0d66a345af73f0ff760e654.png', '/upload/2019-06-12/cabac7f4c0d66a345af73f0ff760e654.png', '_0000s_0000_2.2', 'png', 100579, 1560337351),
(81, '/upload/2019-06-13/f893718018456579eeeecd313efbc4be.png', '/upload/2019-06-13/f893718018456579eeeecd313efbc4be.png', '1', 'png', 89268, 1560396446),
(82, '/upload/2019-06-13/04651e9a0a6b22e7ad719e8e00e169a6.png', '/upload/2019-06-13/04651e9a0a6b22e7ad719e8e00e169a6.png', '2', 'png', 80514, 1560396565),
(83, '/upload/2019-06-13/bfe65846ea0b4c5fde1f1656bea2067d.png', '/upload/2019-06-13/bfe65846ea0b4c5fde1f1656bea2067d.png', '3', 'png', 91395, 1560396611),
(84, '/upload/2019-06-13/ffd4521c9b2c28a6442d0f5530720a0a.png', '/upload/2019-06-13/ffd4521c9b2c28a6442d0f5530720a0a.png', '66', 'png', 91299, 1560396663),
(85, '/upload/2019-06-13/7a127c8d2cce72c73ba5f6314775368f.png', '/upload/2019-06-13/7a127c8d2cce72c73ba5f6314775368f.png', '_0000s_0005_法尔森科技签约康正康元药业', 'png', 84628, 1560396870),
(86, '/upload/2019-06-13/783ab5eb64212ea304c9fca954c910aa.png', '/upload/2019-06-13/783ab5eb64212ea304c9fca954c910aa.png', '_0000s_0007_图片1', 'png', 50605, 1560396901);

-- --------------------------------------------------------

--
-- 表的结构 `dux_fragment`
--

CREATE TABLE IF NOT EXISTS `dux_fragment` (
  `fragment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `label` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `type` int(10) NOT NULL COMMENT '碎片类型',
  `content` text,
  PRIMARY KEY (`fragment_id`),
  KEY `label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站碎片' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dux_position`
--

CREATE TABLE IF NOT EXISTS `dux_position` (
  `position_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `sequence` int(10) DEFAULT '0',
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='推荐位' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `dux_position`
--

INSERT INTO `dux_position` (`position_id`, `name`, `sequence`) VALUES
(1, '首页推荐', 0);

-- --------------------------------------------------------

--
-- 表的结构 `dux_tags`
--

CREATE TABLE IF NOT EXISTS `dux_tags` (
  `tag_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `urlname` varchar(200) NOT NULL,
  `click` int(10) DEFAULT '1',
  `quote` int(10) DEFAULT '1',
  PRIMARY KEY (`tag_id`),
  KEY `quote` (`quote`),
  KEY `click` (`click`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TAG标签' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dux_tags_has`
--

CREATE TABLE IF NOT EXISTS `dux_tags_has` (
  `content_id` int(10) DEFAULT NULL,
  `tag_id` int(10) DEFAULT NULL,
  KEY `aid` (`content_id`),
  KEY `tid` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TAG关系';

-- --------------------------------------------------------

--
-- 表的结构 `dux_total_spider`
--

CREATE TABLE IF NOT EXISTS `dux_total_spider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `baidu` int(10) DEFAULT '0',
  `google` int(10) DEFAULT '0',
  `soso` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='蜘蛛统计' AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `dux_total_spider`
--

INSERT INTO `dux_total_spider` (`id`, `time`, `baidu`, `google`, `soso`) VALUES
(1, 1558454400, 1, 0, 0),
(2, 1558713600, 1, 0, 0),
(3, 1558886400, 1, 0, 0),
(4, 1559059200, 1, 0, 0),
(5, 1559232000, 1, 0, 0),
(6, 1559318400, 1, 0, 0),
(7, 1559404800, 3, 0, 0),
(8, 1559577600, 1, 0, 0),
(9, 1559664000, 7, 0, 0),
(10, 1559750400, 1, 0, 0),
(11, 1559836800, 2, 0, 0),
(12, 1559923200, 3, 0, 0),
(13, 1560009600, 4, 0, 0),
(14, 1560096000, 1, 0, 0),
(15, 1560182400, 4, 0, 0),
(16, 1560268800, 1, 2, 0),
(17, 1560355200, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `dux_total_spider_info`
--

CREATE TABLE IF NOT EXISTS `dux_total_spider_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `boot` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `dux_total_spider_info`
--

INSERT INTO `dux_total_spider_info` (`id`, `boot`, `url`, `time`) VALUES
(1, 'baidu', 'http://pharzen.com/', 1558540017),
(2, 'baidu', 'http://pharzen.com/', 1558776594),
(3, 'bing', 'http://pharzen.com/robots.txt', 1558900139),
(4, 'bing', 'http://pharzen.com/robots.txt', 1558900139),
(5, 'bing', 'http://pharzen.com/', 1558900142),
(6, 'baidu', 'http://pharzen.com/', 1558957634),
(7, 'baidu', 'http://pharzen.com/', 1559113193),
(8, 'baidu', 'http://pharzen.com/', 1559238110),
(9, 'baidu', 'http://pharzen.com/', 1559343058),
(10, 'baidu', 'http://pharzen.com/robots.txt', 1559411088),
(11, 'baidu', 'http://pharzen.com/robots.txt', 1559411088),
(12, 'baidu', 'http://pharzen.com/', 1559465058),
(13, 'baidu', 'http://pharzen.com/', 1559580998),
(14, 'baidu', 'http://pharzen.com/', 1559695055),
(15, 'baidu', 'http://pharzen.com/index.php?r=duxcms/Form/verify', 1559695063),
(16, 'baidu', 'http://pharzen.com/xinwenzixun/select/newsCategory-2.html?class_id=1', 1559697055),
(17, 'baidu', 'http://pharzen.com/index.php?r=duxcms/Form/verify', 1559697058),
(18, 'baidu', 'http://pharzen.com/xinwenzixun/select/newsCategory-1.html?class_id=1', 1559699055),
(19, 'baidu', 'http://pharzen.com/index.php?r=duxcms/Form/verify', 1559699056),
(20, 'baidu', 'http://pharzen.com/xinwenzixun/select/newsCategory-3.html?class_id=1', 1559701055),
(21, 'baidu', 'http://pharzen.com/', 1559797287),
(22, 'baidu', 'http://pharzen.com/', 1559875486),
(23, 'baidu', 'http://pharzen.com/xinwenzixun/select/newsCategory-1.html?class_id=1', 1559912951),
(24, 'baidu', 'http://pharzen.com/robots.txt', 1559927185),
(25, 'baidu', 'http://pharzen.com/robots.txt', 1559927185),
(26, 'bing', 'http://pharzen.com/robots.txt', 1559928535),
(27, 'bing', 'http://pharzen.com/robots.txt', 1559928535),
(28, 'bing', 'http://pharzen.com/robots.txt', 1559928710),
(29, 'bing', 'http://pharzen.com/robots.txt', 1559928710),
(30, 'bing', 'http://pharzen.com/robots.txt', 1559928817),
(31, 'bing', 'http://pharzen.com/robots.txt', 1559928817),
(32, 'bing', 'http://pharzen.com/', 1559928819),
(33, 'baidu', 'http://pharzen.com/', 1559961526),
(34, 'baidu', 'http://pharzen.com/robots.txt', 1560012857),
(35, 'baidu', 'http://pharzen.com/robots.txt', 1560012857),
(36, 'baidu', 'http://pharzen.com/', 1560020294),
(37, 'baidu', 'http://pharzen.com/', 1560080917),
(38, 'baidu', 'http://pharzen.com/', 1560166953),
(39, 'bing', 'http://pharzen.com/robots.txt', 1560182296),
(40, 'bing', 'http://pharzen.com/robots.txt', 1560182296),
(41, 'bing', 'http://pharzen.com/', 1560182299),
(42, 'baidu', 'http://pharzen.com/robots.txt', 1560186204),
(43, 'baidu', 'http://pharzen.com/robots.txt', 1560186204),
(44, 'baidu', 'http://www.pharzen.com/', 1560237828),
(45, 'baidu', 'http://pharzen.com/', 1560243405),
(46, 'baidu', 'http://pharzen.com/', 1560334975),
(47, 'google', 'http://pharzen.com/robots.txt', 1560347628),
(48, 'google', 'http://pharzen.com/robots.txt', 1560347628),
(49, 'baidu', 'http://pharzen.com/xinwenzixun/select/newsCategory-1.html?class_id=1', 1560356615),
(50, 'google', 'http://pharzen.com/', 1560363667);

-- --------------------------------------------------------

--
-- 表的结构 `dux_total_visitor`
--

CREATE TABLE IF NOT EXISTS `dux_total_visitor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `time` int(10) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  `api` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='访客统计' AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `dux_total_visitor`
--

INSERT INTO `dux_total_visitor` (`id`, `time`, `count`, `api`) VALUES
(1, 1558368000, 190, NULL),
(2, 1558454400, 1323, NULL),
(3, 1558540800, 2363, NULL),
(4, 1558627200, 642, NULL),
(5, 1558713600, 384, NULL),
(6, 1558800000, 8, NULL),
(7, 1558886400, 499, NULL),
(8, 1558972800, 1141, NULL),
(9, 1559059200, 542, NULL),
(10, 1559145600, 10, NULL),
(11, 1559232000, 320, NULL),
(12, 1559318400, 203, NULL),
(13, 1559404800, 16, NULL),
(14, 1559491200, 1080, NULL),
(15, 1559577600, 1864, NULL),
(16, 1559664000, 1726, NULL),
(17, 1559750400, 342, NULL),
(18, 1559836800, 428, NULL),
(19, 1559923200, 63, NULL),
(20, 1560009600, 250, NULL),
(21, 1560096000, 222, NULL),
(22, 1560182400, 836, NULL),
(23, 1560268800, 1706, NULL),
(24, 1560355200, 85, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
