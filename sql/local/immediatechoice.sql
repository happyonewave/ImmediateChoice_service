/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : immediatechoice

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-04-22 01:34:21
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
INSERT INTO `comment` VALUES ('17', '评论1', '2017-0311 13:44', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');
INSERT INTO `comment` VALUES ('15', '评论1', '2017-0311 13:44', '小红', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png');
INSERT INTO `comment` VALUES ('10', '评论1', '2017-0311 13:44', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png');
INSERT INTO `comment` VALUES ('10', '评论1', '2017-0311 13:44', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png');
INSERT INTO `comment` VALUES ('12', '评论1', '2017-0311 13:44', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png');
INSERT INTO `comment` VALUES ('11', '评论1', '2017-0311 13:44', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');
INSERT INTO `comment` VALUES ('11', '评论1', '2017-0311 13:44', '小红', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png');
INSERT INTO `comment` VALUES ('11', '评论1', '2017-0311 13:44', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png');
INSERT INTO `comment` VALUES ('17', '啊', 'Mar 11, 2017 7:52:06 AM', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png');
INSERT INTO `comment` VALUES ('17', '棒', 'Mar 11, 2017 7:56:21 AM', '小芳', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png');
INSERT INTO `comment` VALUES ('17', '好', 'Mar 11, 2017 7:59:38 AM', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png');
INSERT INTO `comment` VALUES ('16', '好好', 'Mar 11, 2017 8:00:54 AM', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png');
INSERT INTO `comment` VALUES ('17', '选这个', 'Mar 11, 2017 8:03:18 AM', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png');
INSERT INTO `comment` VALUES ('17', '选哪个', 'Mar 11, 2017 8:05:08 AM', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png');
INSERT INTO `comment` VALUES ('17', '这个好', 'Mar 11, 2017 8:05:52 AM', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png');
INSERT INTO `comment` VALUES ('17', '对的', 'Mar 11, 2017 8:06:27 AM', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png');
INSERT INTO `comment` VALUES ('17', '是呀', 'Mar 11, 2017 8:07:20 AM', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png');
INSERT INTO `comment` VALUES ('17', '好的', 'Mar 11, 2017 8:13:32 AM', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png');
INSERT INTO `comment` VALUES ('17', 'ok', 'Mar 11, 2017 8:14:49 AM', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png');
INSERT INTO `comment` VALUES ('15', '这可以', 'Mar 11, 2017 8:15:13 AM', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png');
INSERT INTO `comment` VALUES ('17', '就是说呀', '2017年3月11日 下午4:20:01', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png');
INSERT INTO `comment` VALUES ('17', '嗯', '2017年3月11日 下午4:20:32', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png');
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
  `group_id` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('1', '4', '2');
INSERT INTO `friend` VALUES ('1', '5', '2');
INSERT INTO `friend` VALUES ('1', '2', '2');
INSERT INTO `friend` VALUES ('2', '3', '1');
INSERT INTO `friend` VALUES ('3', '2', '2');
INSERT INTO `friend` VALUES ('6', '1', '1');
INSERT INTO `friend` VALUES ('1', '14', '1');

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
INSERT INTO `group_info` VALUES ('3', '3', '同学');
INSERT INTO `group_info` VALUES ('4', '5', '家人');
INSERT INTO `group_info` VALUES ('5', '4', '好友');
INSERT INTO `group_info` VALUES ('6', '7', '家人');

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
INSERT INTO `group_members` VALUES ('1', '4');
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
  `post_time` timestamp NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('6', '00000000001', '00000000001', '高考失利该不该复读？', 'http://123.207.31.213/ImmediateChoice_service/image/(42).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(41).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '30', '89', '当然是冬天才能领略北国风光啦!', '', ',1,,1,,1,,1,,0,', ',1,,2,,0,,0,,0,', '2017-04-19 02:08:48');
INSERT INTO `question` VALUES ('8', '00000000001', '00000000000', '哪张可以？', 'http://123.207.31.213/ImmediateChoice_service/image/(38).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(37).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '12', '65', '当然是冬天才能领略北国风光啦!', '', ',1,,1,', ',2,,0,,0,', '2017-04-19 02:08:45');
INSERT INTO `question` VALUES ('11', '00000000002', '00000000000', '不管黑猫白猫。。。。', 'http://123.207.31.213/ImmediateChoice_service/image/(32).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(31).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,2,', ',1,,1,,1,,1,,0,', '2017-04-19 02:08:39');
INSERT INTO `question` VALUES ('12', '00000000002', '00000000000', '帮我看看呗？', 'http://123.207.31.213/ImmediateChoice_service/image/(30).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(29).jpg', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,2,,0,', '2017-04-19 02:08:37');
INSERT INTO `question` VALUES ('13', '00000000003', '00000000000', '左边还是右边更让你心旷神怡？', 'http://123.207.31.213/ImmediateChoice_service/image/(28).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(27).jpg', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,0,,1,,1,,1,,1,,1,,1,,2,', ',1,,1,,1,,1,,1,,1,,0,', '2017-04-19 02:08:30');
INSERT INTO `question` VALUES ('14', '00000000002', '00000000000', '听妈妈的话。。', 'http://123.207.31.213/ImmediateChoice_service/image/(26).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(25).jpg', '小芳', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,0,,0,', '2017-04-19 02:09:24');
INSERT INTO `question` VALUES ('15', '00000000002', '00000000000', '大红花怎么样？', 'http://123.207.31.213/ImmediateChoice_service/image/(24).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(23).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,0,,0,', '2017-04-19 02:09:21');
INSERT INTO `question` VALUES ('20', '00000000000', '00000000000', '冬天还是春天好？', 'http://123.207.31.213/ImmediateChoice_service/image/(14).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(13).jpg', '小红', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,2,,0,,0,', '2017-04-19 02:09:13');
INSERT INTO `question` VALUES ('21', '00000000000', '00000000000', '选择困难啊，哪件比较好看？？？', 'http://123.207.31.213/ImmediateChoice_service/image/(12).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(11).jpg', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,', ',1,,1,,1,,1,,1,,1,,2,,0,', '2017-04-19 02:09:11');
INSERT INTO `question` VALUES ('22', '00000000001', '00000000000', '我想买只狗，帮我选选', 'http://123.207.31.213/ImmediateChoice_service/image/(10).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(9).jpg', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,2,,2,', ',1,,2,,2,,0,', '2017-04-19 02:09:10');
INSERT INTO `question` VALUES ('23', '00000000000', '00000000002', '左边壁纸还是右边壁纸好看？', 'http://123.207.31.213/ImmediateChoice_service/image/(8).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(7).jpg', '小红', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,2,,2,,2,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,', '2017-04-19 02:09:08');
INSERT INTO `question` VALUES ('24', '00000000000', '00000000000', '帮我选一下', 'http://123.207.31.213/ImmediateChoice_service/image/(6).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(5).jpg', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('26', '00000000000', '00000000003', 'lol皮肤比比看', 'http://123.207.31.213/ImmediateChoice_service/image/(4).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(3).jpg', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,2,,2,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,', '2017-04-19 02:08:58');
INSERT INTO `question` VALUES ('27', '00000000000', '00000000000', '哪个皮肤比较好看？', 'http://123.207.31.213/ImmediateChoice_service/image/(2).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(1).jpg', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,2,,1,,0,,0,,2,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,1,,0,', '2017-04-19 02:08:56');
INSERT INTO `question` VALUES ('61', '00000000000', '00000000000', '金秋VS... 哈哈', 'http://123.207.31.213/ImmediateChoice_service/image/(40).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(39).jpg', '小芳', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png', '12', '65', '当然是冬天才能领略北国风光啦!', '', ',1,,2,,2,,2,', ',1,,0,,2,,0,,0,,0,,2,', '2017-04-19 02:08:47');
INSERT INTO `question` VALUES ('62', '00000000000', '00000000001', '哪只更能震撼你？', 'http://123.207.31.213/ImmediateChoice_service/image/(36).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(35).jpg', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '12', '50', '当然是冬天才能领略北国风光啦!', '', ',1,,0,,1,,1,,1,,0,,1,,2,,2,,2,', ',1,,0,,1,,1,,1,,0,,0,,2,,0,,0,,2,,2,,2,', '2017-04-19 02:08:44');
INSERT INTO `question` VALUES ('63', '00000000000', '00000000001', '喵...喵。。。', 'http://123.207.31.213/ImmediateChoice_service/image/(34).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(33).jpg', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,2,,2,', ',1,,1,,1,,1,,1,,1,,2,,0,,2,', '2017-04-19 02:08:42');
INSERT INTO `question` VALUES ('64', '00000000000', '00000000000', '喜欢我的侧颜吗？', 'http://123.207.31.213/ImmediateChoice_service/image/(22).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(21).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '', ',,,,,,,,,,,1,,1,,1,,1,,1,,2,,2,', ',1,,1,,1,,1,,0,,0,,0,', '2017-04-19 02:09:18');
INSERT INTO `question` VALUES ('65', '00000000000', '00000000002', '你们喜欢那种阳光？', 'http://123.207.31.213/ImmediateChoice_service/image/(20).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(19).jpg', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,,1,,1,,1,,2,', ',1,,0,,1,,1,,2,,0,,0,', '2017-04-19 02:09:16');
INSERT INTO `question` VALUES ('66', '00000000000', '00000000000', '我要买岛！帮我看看', 'http://123.207.31.213/ImmediateChoice_service/image/(18).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(17).jpg', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,2,,2,', ',1,,0,,0,', '2017-04-19 02:09:15');
INSERT INTO `question` VALUES ('67', '00000000000', '00000000002', '哪个好吃？急！！！', 'http://123.207.31.213/ImmediateChoice_service/image/(16).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(15).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,', ',1,,1,,1,,2,,0,,0,', '2017-04-19 02:09:14');

-- ----------------------------
-- Table structure for questionnaire_choice
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_choice`;
CREATE TABLE `questionnaire_choice` (
  `choice_id` int(11) NOT NULL,
  `questionnaire_id` int(11) NOT NULL,
  `questionnaire_quuestion_id` int(11) default NULL,
  `option_id` varchar(255) default NULL,
  PRIMARY KEY  (`choice_id`,`questionnaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_choice
-- ----------------------------
INSERT INTO `questionnaire_choice` VALUES ('1', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('2', '1', '2', '2');
INSERT INTO `questionnaire_choice` VALUES ('3', '1', '3', '3');

-- ----------------------------
-- Table structure for questionnaire_info
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_info`;
CREATE TABLE `questionnaire_info` (
  `questionnaire_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `hint` varchar(255) default NULL,
  PRIMARY KEY  (`questionnaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_info
-- ----------------------------
INSERT INTO `questionnaire_info` VALUES ('1', '关于学校水果店的调查问卷', '谢谢你参加调查');

-- ----------------------------
-- Table structure for questionnaire_members
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_members`;
CREATE TABLE `questionnaire_members` (
  `questionnaire_id` int(11) NOT NULL,
  `questionnaire_question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_members
-- ----------------------------
INSERT INTO `questionnaire_members` VALUES ('1', '1');
INSERT INTO `questionnaire_members` VALUES ('1', '2');
INSERT INTO `questionnaire_members` VALUES ('1', '3');

-- ----------------------------
-- Table structure for questionnaire_question
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_question`;
CREATE TABLE `questionnaire_question` (
  `questionnaire_question_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY  (`questionnaire_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_question
-- ----------------------------
INSERT INTO `questionnaire_question` VALUES ('1', '你的性别');
INSERT INTO `questionnaire_question` VALUES ('2', '您每月的生活费');
INSERT INTO `questionnaire_question` VALUES ('3', '您平时在哪些地方购买水果');

-- ----------------------------
-- Table structure for questionnaire_quuestion_options
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_quuestion_options`;
CREATE TABLE `questionnaire_quuestion_options` (
  `option_id` int(11) NOT NULL,
  `questionnaire_question_id` int(11) default NULL,
  `num` varchar(255) default NULL,
  `context` varchar(255) default NULL,
  PRIMARY KEY  (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_quuestion_options
-- ----------------------------
INSERT INTO `questionnaire_quuestion_options` VALUES ('1', '1', 'A', '男');
INSERT INTO `questionnaire_quuestion_options` VALUES ('2', '1', 'B', 'nv');
INSERT INTO `questionnaire_quuestion_options` VALUES ('3', '2', 'A', '1000及以下');
INSERT INTO `questionnaire_quuestion_options` VALUES ('4', '2', 'B', '1000~1500');
INSERT INTO `questionnaire_quuestion_options` VALUES ('5', '2', 'C', '1500以上');
INSERT INTO `questionnaire_quuestion_options` VALUES ('6', '3', 'A', '水果店');
INSERT INTO `questionnaire_quuestion_options` VALUES ('7', '3', 'B', '网上');
INSERT INTO `questionnaire_quuestion_options` VALUES ('8', '3', 'C', '超市');

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
INSERT INTO `topic_members` VALUES ('2', '7');
INSERT INTO `topic_members` VALUES ('3', '1');
INSERT INTO `topic_members` VALUES ('4', '2');
INSERT INTO `topic_members` VALUES ('5', '3');
INSERT INTO `topic_members` VALUES ('5', '5');
INSERT INTO `topic_members` VALUES ('6', '4');

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
  `portrait_url` varchar(255) default NULL,
  `token` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userin
-- ----------------------------
INSERT INTO `userin` VALUES ('1', '小青', '123456', '15158442585', '男', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '18LyaY+7DAct9px+BRJxCl3lOgyfFg2AjkViYtqQca3pbaogcPqTnfcI34AD9x2wXSWqwKWhvYM=');
INSERT INTO `userin` VALUES ('2', '小红', '123456', '15158442585', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png', 'G/i7WKl49H6dWLJIf31wg5K2kJJ49pN8xrdowMMx5ayEtxy460ZKgAMWNe5rqcc8kGacuUXe1r87hDlHGJQzBg==');
INSERT INTO `userin` VALUES ('3', '小微', '123456', '15158442585', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '');
INSERT INTO `userin` VALUES ('4', '小远', '123456', '15158442585', '男', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', 'ElK5OCSKHzSz6/MmKMGAU2bUJQJ0YiPxyCLMxPZZi6yBSXXy/NdJJufpm/NrZa8zNMxwvczUZeUvYFNJjTyqqg==');
INSERT INTO `userin` VALUES ('5', '小霞', '123456', '15158442585', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', 'DdZZs6Ye9vUn5leJd8519V3lOgyfFg2AjkViYtqQca2yBGNeFUCOLt6o6VcJyFpM+7RI88NDWsw=');
INSERT INTO `userin` VALUES ('6', '小进', '123456', '15336714288', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', 'Jv+tmEI8haZVk+0iCvZ3PpK2kJJ49pN8xrdowMMx5ayEtxy460ZKgMvKyZt8ZTaQE22XM40P6bc7hDlHGJQzBg==');
INSERT INTO `userin` VALUES ('7', '小芳', '123456', '15336714238', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png', null);
