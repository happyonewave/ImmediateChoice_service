/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : immediatechoice

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-04-15 20:44:04
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
INSERT INTO `comment` VALUES ('17', '大家大家', '2017年3月16日 下午9:49:43', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('16', '沙发上', '2017年3月16日 下午9:49:58', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('18', '吧', '2017年3月16日 下午9:59:13', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('18', '黄家驹', '2017年3月16日 下午9:59:29', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('18', '对的吧', '2017年3月16日 下午9:59:41', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('18', '吃不饱', '2017年3月17日 下午11:38:42', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('18', '对', '2017年3月18日 下午11:43:45', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('18', '谁知道呢', '2017年3月18日 下午11:49:20', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('9', '刚刚', '2017年3月18日 下午11:52:20', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('9', '谁知道呀', '2017年3月18日 下午11:52:33', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('18', '据', '2017年3月19日 上午12:13:08', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('9', '嗯', '2017年3月19日 上午12:16:11', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '对呀', '2017年3月19日 下午5:07:18', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('18', '快乐', '2017年3月19日 下午5:11:09', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '啦', '2017年3月19日 下午5:11:22', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '俺', '2017年3月19日 下午5:12:09', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '扼杀', '2017年3月19日 下午5:12:33', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '嗯嗯嗯', '2017年3月19日 下午5:15:32', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', 'fhdhdhd', '2017年3月19日 下午5:16:45', 'qin', 'http://123.207.31.213/ImmediateChoice_service/img/159.jpg');
INSERT INTO `comment` VALUES ('7', 'I', '2017年3月19日 下午6:13:00', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('17', '谁知道呀', '2017年3月22日 上午4:02:37', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('24', '1', '2017年3月22日 上午4:12:43', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('27', '嗨', '2017年3月22日 上午4:32:08', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('29', '28', '2017年3月22日 上午6:39:43', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('23', '嗯', '2017年3月22日 下午12:24:36', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('27', 'good', '2017年3月22日 下午12:31:40', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg');
INSERT INTO `comment` VALUES ('31', 'yes', '2017年3月22日 下午2:11:07', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('26', 'fh', '2017年3月22日 下午2:27:06', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('26', '谁知道呀', '2017年3月24日 下午8:39:30', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', '嗨', '2017年3月26日 上午10:56:56', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', '1', '2017年3月26日 上午10:57:18', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', '1', '2017年3月26日 上午11:07:27', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', '对', '2017年3月26日 上午11:12:45', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', '你', '2017年3月26日 上午11:13:10', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('17', '好', '2017年3月26日 下午12:17:48', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('24', '1', '2017年3月26日 下午12:52:35', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('24', '1', '2017年3月26日 下午12:52:44', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('24', '1', '2017年3月26日 下午12:52:48', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('24', '1', '2017年3月26日 下午12:52:53', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('24', '1', '2017年3月26日 下午12:52:57', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('24', '45', '2017年3月26日 下午12:53:06', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('24', '4', '2017年3月26日 下午12:53:12', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('24', '54', '2017年3月26日 下午12:53:16', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('24', 'q', '2017年3月26日 下午12:53:38', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', '·', '2017年3月26日 下午2:18:42', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', '1', '2017年3月26日 下午2:21:06', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', 'dsdv的风格的是的范德萨', '2017年3月26日 下午2:32:31', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', '嗯', '2017年3月26日 下午7:35:30', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('9', '哈哈', '2017年3月26日 下午7:36:34', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');
INSERT INTO `comment` VALUES ('40', '对', '2017年4月13日 下午11:30:40', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('21', '右边的不错', '2017年4月14日 下午9:49:18', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('16', '都不喜欢', '2017年4月15日 下午6:47:58', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `user_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', '2', '1');
INSERT INTO `friend` VALUES ('1', '4', '2');
INSERT INTO `friend` VALUES ('1', '5', '2');
INSERT INTO `friend` VALUES ('1', '6', '2');
INSERT INTO `friend` VALUES ('2', '3', '1');
INSERT INTO `friend` VALUES ('3', '1', '2');
INSERT INTO `friend` VALUES ('6', '1', '1');

-- ----------------------------
-- Table structure for group_info
-- ----------------------------
DROP TABLE IF EXISTS `group_info`;
CREATE TABLE `group_info` (
  `group_id` int(11) NOT NULL auto_increment,
  `owner_id` int(11) NOT NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_info
-- ----------------------------
INSERT INTO `group_info` VALUES ('1', '1', '同学');
INSERT INTO `group_info` VALUES ('2', '1', '家人');

-- ----------------------------
-- Table structure for group_members
-- ----------------------------
DROP TABLE IF EXISTS `group_members`;
CREATE TABLE `group_members` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of group_members
-- ----------------------------
INSERT INTO `group_members` VALUES ('1', '2');
INSERT INTO `group_members` VALUES ('1', '3');
INSERT INTO `group_members` VALUES ('2', '2');
INSERT INTO `group_members` VALUES ('2', '4');
INSERT INTO `group_members` VALUES ('2', '5');
INSERT INTO `group_members` VALUES ('2', '6');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `question_id` int(11) NOT NULL auto_increment,
  `group_id` int(11) unsigned zerofill default NULL,
  `topic_id` int(11) unsigned zerofill default NULL,
  `question_content` varchar(255) default NULL,
  `left_url` varchar(255) default NULL,
  `right_url` varchar(255) default NULL,
  `quizzer_name` varchar(255) default NULL,
  `portrait_url` varchar(255) default '',
  `share_count` int(11) default '0',
  `comment_count` int(11) default '0',
  `comment` varchar(255) default '',
  `location` varchar(255) default NULL,
  `choice_left_ids` varchar(255) default '',
  `choice_right_ids` varchar(255) default '',
  `post_time` timestamp NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '00000000000', '00000000000', '1', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不语', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '12', '65', '当然是冬天才能领略北国风光啦!', '', ',1,', ',1,', '2017-04-15 16:46:13');
INSERT INTO `question` VALUES ('2', '00000000000', '00000000000', '2', 'http://123.207.31.213/ImmediateChoice_service/image/5.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/3.jpg', '不眼', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '12', '654', '当然是冬天才能领略北国风光啦!', '', ',1,', ',1,', '2017-04-15 16:46:10');
INSERT INTO `question` VALUES ('3', '00000000000', '00000000001', '3', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不严', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '15', '65', '当然是冬天才能领略北国风光啦!', '', '', '', '2017-04-15 16:51:23');
INSERT INTO `question` VALUES ('4', '00000000000', '00000000001', '4', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(1).jpg', '不请', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '20', '78', '当然是冬天才能领略北国风光啦!', '', ',1,', ',1,', '2017-04-15 16:46:03');
INSERT INTO `question` VALUES ('5', '00000000000', '00000000000', '5', 'http://123.207.31.213/ImmediateChoice_service/image/15.jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(1).jpg', '不来', '', '12', '13', '当然是冬天才能领略北国风光啦!', '', ',1,', ',1,', '2017-04-15 16:46:17');
INSERT INTO `question` VALUES ('6', '00000000000', '00000000001', '高考失利该不该复读？', 'http://123.207.31.213/ImmediateChoice_service/image/(42).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(41).jpg', '我如果', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '30', '89', '当然是冬天才能领略北国风光啦!', '', ',1,,1,,1,,1,,0,', ',1,', '2017-04-15 16:51:23');
INSERT INTO `question` VALUES ('7', '00000000000', '00000000000', '金秋VS... 哈哈', 'http://123.207.31.213/ImmediateChoice_service/image/(40).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(39).jpg', '不语', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '12', '65', '当然是冬天才能领略北国风光啦!', '', ',1,', ',1,,0,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('8', '00000000000', '00000000000', '哪张可以？', 'http://123.207.31.213/ImmediateChoice_service/image/(38).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(37).jpg', '苏东坡', '', '12', '65', '当然是冬天才能领略北国风光啦!', '', ',1,,1,', '', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('9', '00000000000', '00000000001', '哪只更能震撼你？', 'http://123.207.31.213/ImmediateChoice_service/image/(36).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(35).jpg', '不语', '', '12', '50', '当然是冬天才能领略北国风光啦!', '', ',1,,0,,1,,1,,1,,0,,1,', ',1,,0,,1,,1,,1,,0,,0,', '2017-04-15 18:42:44');
INSERT INTO `question` VALUES ('10', '00000000000', '00000000001', '喵...喵。。。', 'http://123.207.31.213/ImmediateChoice_service/image/(34).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(33).jpg', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,', ',1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('11', '00000000000', '00000000000', '不管黑猫白猫。。。。', 'http://123.207.31.213/ImmediateChoice_service/image/(32).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(31).jpg', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,', ',1,,1,,1,,1,', '2017-04-15 18:42:37');
INSERT INTO `question` VALUES ('12', '00000000000', '00000000000', '帮我看看呗？', 'http://123.207.31.213/ImmediateChoice_service/image/(30).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(29).jpg', 'qin。', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('13', '00000000000', '00000000000', '左边还是右边更让你心旷神怡？', 'http://123.207.31.213/ImmediateChoice_service/image/(28).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(27).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,0,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,', '2017-04-15 18:42:29');
INSERT INTO `question` VALUES ('14', '00000000000', '00000000000', '听妈妈的话。。', 'http://123.207.31.213/ImmediateChoice_service/image/(26).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(25).jpg', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 18:41:53');
INSERT INTO `question` VALUES ('15', '00000000000', '00000000000', '大红花怎么样？', 'http://123.207.31.213/ImmediateChoice_service/image/(24).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(23).jpg', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('16', '00000000000', '00000000000', '喜欢我的侧颜吗？', 'http://123.207.31.213/ImmediateChoice_service/image/(22).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(21).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '0', '0', '', '', ',,,,,,,,,,,1,', ',1,,1,,1,', '2017-04-15 16:51:23');
INSERT INTO `question` VALUES ('17', '00000000000', '00000000002', '你们喜欢那种阳光？', 'http://123.207.31.213/ImmediateChoice_service/image/(20).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(19).jpg', '小梨子', '', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,,1,', ',1,,0,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('18', '00000000000', '00000000000', '我要买岛！帮我看看', 'http://123.207.31.213/ImmediateChoice_service/image/(18).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(17).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,', ',1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('19', '00000000000', '00000000002', '哪个好吃？急！！！', 'http://123.207.31.213/ImmediateChoice_service/image/(16.jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(15.jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,', ',1,', '2017-04-15 16:51:23');
INSERT INTO `question` VALUES ('20', '00000000000', '00000000000', '冬天还是春天好？', 'http://123.207.31.213/ImmediateChoice_service/image/(14).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(13).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,', ',1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('21', '00000000000', '00000000000', '选择困难啊，哪件比较好看？？？', 'http://123.207.31.213/ImmediateChoice_service/image/(12).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(11).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,', ',1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('22', '00000000000', '00000000000', '我想买只狗，帮我选选', 'http://123.207.31.213/ImmediateChoice_service/image/(10).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(9).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', '', '', '2017-04-15 16:51:23');
INSERT INTO `question` VALUES ('23', '00000000000', '00000000002', '左边壁纸还是右边壁纸好看？', 'http://123.207.31.213/ImmediateChoice_service/image/(8).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(7).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('24', '00000000000', '00000000000', '帮我选一下', 'http://123.207.31.213/ImmediateChoice_service/image/(6).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(5).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('26', '00000000000', '00000000003', 'lol皮肤比比看', 'http://123.207.31.213/ImmediateChoice_service/image/(4).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(3).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('27', '00000000000', '00000000000', '哪个皮肤比较好看？', ' http://123.207.31.213/ImmediateChoice_service/image/(2).jpg', ' http://123.207.31.213/ImmediateChoice_service/image/(1).jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('28', '00000000000', '00000000000', '28', 'http://192.168.1.11:8080/Server/video/1490119100908.mp4', 'http://192.168.1.11:8080/Server/video/1490135907112.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,6,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('29', '00000000000', '00000000000', '28', 'http://192.168.1.11:8080/Server/video/1490135907112.mp4', 'http://192.168.1.11:8080/Server/video/1490135928837.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('30', '00000000000', '00000000000', '啊', 'http://192.168.1.11:8080/Server/image/1490154997590.jpg', 'http://192.168.1.11:8080/Server/image/1490119100908.jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('31', '00000000000', '00000000004', 'yes', 'http://192.168.1.11:8080/Server/video/1490162989371.mp4', 'http://192.168.1.11:8080/Server/video/1490163004602.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,', ',1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('32', '00000000000', '00000000000', '30', 'http://192.168.1.11:8080/Server/video/1490335411296.mp4', 'http://192.168.1.11:8080/Server/video/1490335434756.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,', '', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('33', '00000000000', '00000000004', '得大奖', 'http://192.168.1.11:8080/Server/video/1490520472207.mp4', 'http://192.168.1.11:8080/Server/video/1490520496991.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('34', '00000000000', '00000000000', '嗯', 'http://192.168.1.11:8080/Server/video/1490759641617.mp4', 'http://192.168.1.11:8080/Server/video/1490759665365.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('35', '00000000000', '00000000000', '吖', 'http://123.207.31.213/ImmediateChoice_service/video/1490770974753.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/1490770986082.mp4', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait', '0', '0', '', '在衢州市职业技术学院滨江校区-图书馆附近', ',0,,2,,1,,1,,1,', ',0,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('36', '00000000000', '00000000000', '大家', 'http://123.207.31.213/ImmediateChoice_service/image/1490181523389.jpg', 'http://123.207.31.213/ImmediateChoice_service/image/1490181513837.jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('37', '00000000000', '00000000000', '推荐', 'http://123.207.31.213/ImmediateChoice_service/video/1490795014394.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/1490795025563.mp4', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',0,,1,,1,,0,', ',0,,0,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('38', '00000000000', '00000000005', '大家大家', 'http://192.168.1.200:8080/Server/image/1490795014394.jpg', 'http://192.168.1.200:8080/Server/image/1490770974753.jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,0,', '', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('39', '00000000000', '00000000000', '没上课', 'http://192.168.1.200:8080/Server/video/1515057840831.mp4', 'http://192.168.1.200:8080/Server/video/1515057853463.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州职业技术学院继续教育学院附近', '', '', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('40', '00000000000', '00000000000', '得大奖', 'http://192.168.1.200:8080/Server/video/573218f3189c4ddfa6f2420988646c5c_output.mp4', 'http://192.168.1.200:8080/Server/video/6e8eeefceef845e3b67feaa1e0feb13d_output.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', '0,1,', '0', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('41', '00000000000', '00000000005', '电视剧', 'http://192.168.1.200:8080/Server/video/cc3e862b522e4110acd5e9fa90886fde_output.mp4', 'http://192.168.1.200:8080/Server/video/1e8159d0e02d43fe96cc0857a01d48f9_output.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', '', '', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('42', '00000000000', '00000000000', '得大奖', 'http://192.168.1.200:8080/Server/video/class.mp4', 'http://192.168.1.200:8080/Server/video/cd71f23ead0340e892378138f390db2d_output.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',0,,0,,0,', ',0,,0,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('43', '00000000000', '00000000000', 'did', 'http://192.168.1.200:8080/Server/video/0d87d29a3b4b4831aa5ddc1a5c2d84ae_output.mp4', 'http://192.168.1.200:8080/Server/video/e721e9762bbd4436a039077f2ab08483_output.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', '', '', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('44', '00000000000', '00000000000', '发酒疯就我', 'http://192.168.1.200:8080/Server/video/8a64b4bb0ad74a90b8b5e7f90e9a3d15_output.mp4', 'http://192.168.1.200:8080/Server/video/558edf825a8548eea0c1f22acb9a7629_output.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', '', '', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('45', '00000000000', '00000000000', '人挤人', 'http://192.168.1.200:8080/Server/video/e68f4e65b4134bbaa180ac2ca003cec9_output.mp4', 'http://192.168.1.200:8080/Server/video/43596aaf059940f885d14b31b34b8912_output.mp4', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', '', '', '2017-04-15 19:51:38');
INSERT INTO `question` VALUES ('46', '00000000001', '00000000000', '大家都', 'http://192.168.1.200:8080/Server/image/1490770986082.jpg', 'http://192.168.1.200:8080/Server/image/1490771218505.jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', '', '', '2017-04-15 19:51:39');
INSERT INTO `question` VALUES ('47', '00000000002', '00000000000', '家人可看', 'http://192.168.1.200:8080/Server/image/1491543589697.jpg', 'http://192.168.1.200:8080/Server/image/1490770974753.jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州职业技术学院继续教育学院附近', '', '', '2017-04-15 19:51:40');
INSERT INTO `question` VALUES ('48', '00000000001', '00000000000', '同学可看', 'http://192.168.1.200:8080/Server/image/1490795014394.jpg', 'http://192.168.1.200:8080/Server/image/1490770974753.jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', '', '', '2017-04-15 19:51:40');
INSERT INTO `question` VALUES ('49', '00000000001', null, '同学可看2', 'http://192.168.1.200:8080/Server/image/1490795014394.jpg', 'http://192.168.1.200:8080/Server/image/1490770974753.jpg', '小梨子', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '0', '0', '', '在衢州市职业技术学院滨江校区附近', '', '', '2017-04-15 17:35:47');

-- ----------------------------
-- Table structure for readable_group
-- ----------------------------
DROP TABLE IF EXISTS `readable_group`;
CREATE TABLE `readable_group` (
  `question_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`question_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of readable_group
-- ----------------------------
INSERT INTO `readable_group` VALUES ('1', '1');
INSERT INTO `readable_group` VALUES ('2', '1');
INSERT INTO `readable_group` VALUES ('3', '1');
INSERT INTO `readable_group` VALUES ('35', '1');
INSERT INTO `readable_group` VALUES ('36', '1');
INSERT INTO `readable_group` VALUES ('37', '2');

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
INSERT INTO `topic` VALUES ('1', '#二月二', 'http://123.207.31.213/ImmediateChoice_service/image/topic_1.jpg');
INSERT INTO `topic` VALUES ('2', '#美食工坊', 'http://123.207.31.213/ImmediateChoice_service/image/topic_2.jpg');
INSERT INTO `topic` VALUES ('3', '#薛之谦', 'http://123.207.31.213/ImmediateChoice_service/image/topic_3.jpg');
INSERT INTO `topic` VALUES ('4', '#爱生活爱自拍', 'http://123.207.31.213/ImmediateChoice_service/image/topic_4.jpg');
INSERT INTO `topic` VALUES ('5', '#汪了个喵', 'http://123.207.31.213/ImmediateChoice_service/image/topic_5.jpg');
INSERT INTO `topic` VALUES ('6', '#二次元聚集地', 'http://123.207.31.213/ImmediateChoice_service/image/topic_6.jpg');

-- ----------------------------
-- Table structure for topic_members
-- ----------------------------
DROP TABLE IF EXISTS `topic_members`;
CREATE TABLE `topic_members` (
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY  (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic_members
-- ----------------------------
INSERT INTO `topic_members` VALUES ('2', '1');
INSERT INTO `topic_members` VALUES ('3', '1');
INSERT INTO `topic_members` VALUES ('4', '2');

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
  `token` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userin
-- ----------------------------
INSERT INTO `userin` VALUES ('1', '小梨子', '123456', '15158442585', '男', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '18LyaY+7DAct9px+BRJxCl3lOgyfFg2AjkViYtqQca3pbaogcPqTnfcI34AD9x2wXSWqwKWhvYM=');
INSERT INTO `userin` VALUES ('2', 'Qin', '123456', '15158442585', '男', 'http://123.207.31.213/ImmediateChoice_service/image/3.jpg', 'G/i7WKl49H6dWLJIf31wg5K2kJJ49pN8xrdowMMx5ayEtxy460ZKgAMWNe5rqcc8kGacuUXe1r87hDlHGJQzBg==');
INSERT INTO `userin` VALUES ('3', 'Qin1', '123456', '15158442585', '男', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', '');
INSERT INTO `userin` VALUES ('4', 'girl', '123456', '15158442585', '女', 'http://123.207.31.213/ImmediateChoice_service/image/3.jpg', 'ElK5OCSKHzSz6/MmKMGAU2bUJQJ0YiPxyCLMxPZZi6yBSXXy/NdJJufpm/NrZa8zNMxwvczUZeUvYFNJjTyqqg==');
INSERT INTO `userin` VALUES ('5', '0003', '456d', '123345', '女', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', 'DdZZs6Ye9vUn5leJd8519V3lOgyfFg2AjkViYtqQca2yBGNeFUCOLt6o6VcJyFpM+7RI88NDWsw=');
INSERT INTO `userin` VALUES ('6', 'WU', '123456', '15336714288', '男', 'http://123.207.31.213/ImmediateChoice_service/image/3.jpg', 'Jv+tmEI8haZVk+0iCvZ3PpK2kJJ49pN8xrdowMMx5ayEtxy460ZKgMvKyZt8ZTaQE22XM40P6bc7hDlHGJQzBg==');
INSERT INTO `userin` VALUES ('7', 'QIN_1', '123456', '15336714238', '男', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', null);
INSERT INTO `userin` VALUES ('8', '嗨', '123456', '15154256398', '女', 'http://123.207.31.213/ImmediateChoice_service/image/3.jpg', null);
INSERT INTO `userin` VALUES ('9', '123', '456', '123456', '男', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', null);
INSERT INTO `userin` VALUES ('10', '789', '123', '123456', '女', 'http://123.207.31.213/ImmediateChoice_service/image/3.jpg', null);
INSERT INTO `userin` VALUES ('11', '159', '951', '', '男', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', null);
INSERT INTO `userin` VALUES ('12', 'qin_7', '123456', '15358424568', '女', 'http://123.207.31.213/ImmediateChoice_service/image/3.jpg', null);
INSERT INTO `userin` VALUES ('14', 'qin。', 'qweasd', '15336714288', '女', 'http://123.207.31.213/ImmediateChoice_service/image/2.jpg', null);
