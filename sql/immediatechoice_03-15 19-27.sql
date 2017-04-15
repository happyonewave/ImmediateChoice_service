/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : immediatechoice

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-03-15 19:25:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `question_id` int(11) NOT NULL,
  `comment_content` varchar(255) default NULL,
  `commenter_date` varchar(255) default NULL,
  `commenter_name` varchar(255) default NULL,
  `commenter_portrait_url` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('17', '评论1', '2017-0311 13:44', '评论者1', 'http://192.168.1.11:8080/Server/img/2.jpg');
INSERT INTO `comment` VALUES ('15', '评论1', '2017-0311 13:44', '评论者1', 'http://192.168.1.11:8080/Server/img/2.jpg');
INSERT INTO `comment` VALUES ('10', '评论1', '2017-0311 13:44', '评论者1', 'http://192.168.1.11:8080/Server/img/2.jpg');
INSERT INTO `comment` VALUES ('10', '评论1', '2017-0311 13:44', '评论者1', 'http://192.168.1.11:8080/Server/img/2.jpg');
INSERT INTO `comment` VALUES ('12', '评论1', '2017-0311 13:44', '评论者1', 'http://192.168.1.11:8080/Server/img/2.jpg');
INSERT INTO `comment` VALUES ('11', '评论1', '2017-0311 13:44', '评论者1', 'http://192.168.1.11:8080/Server/img/2.jpg');
INSERT INTO `comment` VALUES ('11', '评论1', '2017-0311 13:44', '评论者1', 'http://192.168.1.11:8080/Server/img/2.jpg');
INSERT INTO `comment` VALUES ('11', '评论1', '2017-0311 13:44', '评论者1', 'http://192.168.1.11:8080/Server/img/2.jpg');
INSERT INTO `comment` VALUES ('17', 'comment', 'Mar 11, 2017 7:52:06 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', 'duima', 'Mar 11, 2017 7:56:21 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', 'haha', 'Mar 11, 2017 7:59:38 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('16', 'aaa', 'Mar 11, 2017 8:00:54 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', 'dfgdfg', 'Mar 11, 2017 8:03:18 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '', 'Mar 11, 2017 8:05:08 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '', 'Mar 11, 2017 8:05:52 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '23432', 'Mar 11, 2017 8:06:27 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '54846', 'Mar 11, 2017 8:07:20 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '789', 'Mar 11, 2017 8:13:32 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '4562', 'Mar 11, 2017 8:14:49 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('15', 'wo lao bang ni pinglun', 'Mar 11, 2017 8:15:13 AM', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '5478', '2017年3月11日 下午4:20:01', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', 'ghj', '2017年3月11日 下午4:20:32', 'qin', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '78963', '2017年3月11日 下午4:20:44', 'qin', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '455', '2017年3月11日 下午4:30:36', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '', '2017年3月11日 下午4:46:02', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '', '2017年3月11日 下午5:02:39', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', 'gh', '2017年3月11日 下午5:11:06', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('16', '563', '2017年3月11日 下午5:11:23', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', 'dgh', '2017年3月11日 下午6:13:30', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', 'ddjd', '2017年3月12日 下午5:16:41', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('12', '真的?', '2017年3月12日 下午5:32:47', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('16', '159', 'Mar 14, 2017 11:19:28 PM', '159', 'http://123.207.31.213/ImmediateChoice_service/img/159.jpg');
INSERT INTO `comment` VALUES ('17', '12', 'Mar 14, 2017 11:23:42 PM', '159', 'http://123.207.31.213/ImmediateChoice_service/img/159.jpg');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL auto_increment,
  `question_content` varchar(255) default NULL,
  `image_left` varchar(255) default NULL,
  `image_right` varchar(255) default NULL,
  `quizzer_name` varchar(255) default NULL,
  `quizzer_portrait` varchar(255) default '',
  `share_count` int(11) default '0',
  `comment_count` int(11) default '0',
  `comment` varchar(255) default '',
  `locations` varchar(255) default NULL,
  `choice_left_ids` varchar(255) default '',
  `choice_right_ids` varchar(255) default '',
  PRIMARY KEY  (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '1', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不语', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '12', '65', '当然是冬天才能领略北国风光啦!', '', null, null);
INSERT INTO `question` VALUES ('2', '2', 'http://123.207.31.213/ImmediateChoice_service/img/5.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/3.jpg', '不眼', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '12', '654', '当然是冬天才能领略北国风光啦!', '', null, null);
INSERT INTO `question` VALUES ('3', '3', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不严', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '15', '65', '当然是冬天才能领略北国风光啦!', '', null, null);
INSERT INTO `question` VALUES ('4', '4', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不请', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '20', '78', '当然是冬天才能领略北国风光啦!', '', null, null);
INSERT INTO `question` VALUES ('5', '5', 'http://123.207.31.213/ImmediateChoice_service/img/15.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/33.jpg', '不来', '', '12', '13', '当然是冬天才能领略北国风光啦!', '', null, null);
INSERT INTO `question` VALUES ('6', '6', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '我如果', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '30', '89', '当然是冬天才能领略北国风光啦!', '', null, null);
INSERT INTO `question` VALUES ('7', '7', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不语', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '12', '65', '当然是冬天才能领略北国风光啦!', '', null, null);
INSERT INTO `question` VALUES ('8', '8', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '苏东坡', '', '12', '65', '当然是冬天才能领略北国风光啦!', '', null, null);
INSERT INTO `question` VALUES ('9', '9', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不语', '', '12', '50', '当然是冬天才能领略北国风光啦!', '', null, null);
INSERT INTO `question` VALUES ('10', '10', 'http://123.207.31.213/ImmediateChoice_service/img/tooopen_sy_123108612862.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/tooopen_sy_123108612862.jpg', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', null, null);
INSERT INTO `question` VALUES ('11', '11', 'http://123.207.31.213/ImmediateChoice_service/img/tz0M9VXC-oIAAAAAAABZ5j-fHzY204.gif', 'http://123.207.31.213/ImmediateChoice_service/img/letv_icon.png', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', null, null);
INSERT INTO `question` VALUES ('12', '12', 'http://123.207.31.213/ImmediateChoice_service/img/letv_icon.png', 'http://123.207.31.213/ImmediateChoice_service/img/tz0M9VXC-oIAAAAAAABZ5j-fHzY204.gif', 'qin。', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', null, null);
INSERT INTO `question` VALUES ('13', '13', 'http://123.207.31.213/ImmediateChoice_service/img/64K58PIChjP_1024.gif', 'http://123.207.31.213/ImmediateChoice_service/img/64K58PIChjP_1024.gif', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', null, null);
INSERT INTO `question` VALUES ('14', '14', 'http://123.207.31.213/ImmediateChoice_service/img/小米桌面第2屏.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/letv_icon.png', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', null, null);
INSERT INTO `question` VALUES ('15', '15', 'http://123.207.31.213/ImmediateChoice_service/img/小米桌面第2屏.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/letv_icon.png', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,,', ',1,');
INSERT INTO `question` VALUES ('16', '16', '15', 'http://123.207.31.213/ImmediateChoice_service/img/小米桌面第2屏.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/letv_icon.png', '小梨子', null, '0', '0', '', ',,,,,,,,,,,1,', ',1,');
INSERT INTO `question` VALUES ('17', '17', 'http://123.207.31.213/ImmediateChoice_service/img/小米桌面第2屏.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/letv_icon.png', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,', ',1,');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL auto_increment,
  `topic_title` varchar(255) default NULL,
  `topic_img_url` varchar(255) default NULL,
  PRIMARY KEY  (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '#二月二', 'http://192.168.1.11:8080/Server/img/topic_1.jpg');
INSERT INTO `topic` VALUES ('2', '#美食工坊', 'http://192.168.1.11:8080/Server/img/topic_2.jpg');
INSERT INTO `topic` VALUES ('3', '#薛之谦', 'http://192.168.1.11:8080/Server/img/topic_3.jpg');
INSERT INTO `topic` VALUES ('4', '#爱生活爱自拍', 'http://192.168.1.11:8080/Server/img/topic_4.jpg');
INSERT INTO `topic` VALUES ('5', '#汪了个喵', 'http://192.168.1.11:8080/Server/img/topic_5.jpg');
INSERT INTO `topic` VALUES ('6', '#二次元聚集地', 'http://192.168.1.11:8080/Server/img/topic_6.jpg');

-- ----------------------------
-- Table structure for userin
-- ----------------------------
DROP TABLE IF EXISTS `userin`;
CREATE TABLE `userin` (
  `user_id` int(30) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `portrait_path` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userin
-- ----------------------------
INSERT INTO `userin` VALUES ('1', '小梨子', '123456', '15158442585', '男', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `userin` VALUES ('2', 'qin', '123456', '15158442585', '', null);
INSERT INTO `userin` VALUES ('3', 'Qin1', '123456', '15158442585', '男', null);
INSERT INTO `userin` VALUES ('4', 'girl', '123456', '15158442585', '女', null);
INSERT INTO `userin` VALUES ('5', '0003', '456d', '123345', '女', null);
INSERT INTO `userin` VALUES ('6', 'WU', '123456', '15336714288', '男', null);
INSERT INTO `userin` VALUES ('7', 'QIN_1', '123456', '15336714238', '男', null);
INSERT INTO `userin` VALUES ('8', '嗨', '123456', '15154256398', '女', null);
INSERT INTO `userin` VALUES ('9', '123', '456', '123456', '男', null);
INSERT INTO `userin` VALUES ('10', '789', '123', '123456', '女', null);
INSERT INTO `userin` VALUES ('11', '159', '951', '', '男', 'http://123.207.31.213/ImmediateChoice_service/img/159.jpg');
INSERT INTO `userin` VALUES ('12', 'qin_7', '123456', '15358424568', '女', 'http://123.207.31.213/ImmediateChoice_service/img/2.');
INSERT INTO `userin` VALUES ('14', 'qin。', 'qweasd', '15336714288', '女', 'http://123.207.31.213/ImmediateChoice_service/img/15336714288.jpg');
