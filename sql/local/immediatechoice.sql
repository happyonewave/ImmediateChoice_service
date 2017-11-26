/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : immediatechoice

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-11-23 13:17:41
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
INSERT INTO `comment` VALUES ('26', '不知道呀', '2017年4月26日 20:29:42', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');
INSERT INTO `comment` VALUES ('65', '右边的更美', '2017年4月26日 20:34:06', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');
INSERT INTO `comment` VALUES ('26', '你好', '2017年4月26日 下午11:59:05', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('65', '左边的更好看。', '2017年4月27日 上午2:41:28', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('67', '你好', '2017年4月27日 上午4:20:59', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');
INSERT INTO `comment` VALUES ('67', '你好！', '2017年4月27日 上午4:34:14', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');
INSERT INTO `comment` VALUES ('6', '都可以', '2017年11月16日 下午5:28:00', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');
INSERT INTO `comment` VALUES ('67', '太过分', '2017年11月18日 下午7:34:28', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('67', '都还好呃', '2017年11月22日 下午6:55:01', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('65', '右边的', '2017年11月22日 下午6:56:02', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');
INSERT INTO `comment` VALUES ('67', '额', '2017年11月22日 下午7:41:11', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('67', '呃', '2017年11月22日 下午7:43:00', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('67', '对', '2017年11月22日 下午8:19:36', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('63', '啊', '2017年11月22日 下午8:20:03', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('63', '哈哈', '2017年11月22日 下午8:20:40', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('65', '杜v话费的多少', '2017年11月22日 下午8:33:03', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('65', '还会反复', '2017年11月22日 下午8:33:23', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('67', 'add', '2017年11月22日 20:59:34', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('67', 'sdsd', '2017年11月22日 20:59:43', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('71', 'JH', '2017年11月22日 20:59:57', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('71', 'dbdbdb', '2017年11月22日 21:03:02', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('71', 'a', '2017年11月22日 21:03:11', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('71', 'gvjhyvy', '2017年11月22日 21:06:07', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('67', 'do', '2017年11月22日 21:06:19', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('70', 'fd', '2017年11月22日 21:06:34', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('71', 'JH', '2017年11月22日 21:11:08', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('71', 'fug', '2017年11月22日 21:11:29', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('68', 'do', '2017年11月22日 21:12:35', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('6', '加油吧', '2017年11月23日 下午12:37:02', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');

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
INSERT INTO `friend` VALUES ('1', '5', '2');
INSERT INTO `friend` VALUES ('1', '2', '2');
INSERT INTO `friend` VALUES ('2', '3', '1');
INSERT INTO `friend` VALUES ('3', '2', '2');
INSERT INTO `friend` VALUES ('6', '1', '1');
INSERT INTO `friend` VALUES ('1', '4', '0');
INSERT INTO `friend` VALUES ('1', '6', '0');
INSERT INTO `friend` VALUES ('1', '7', '0');
INSERT INTO `friend` VALUES ('1', '3', '0');

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
INSERT INTO `question` VALUES ('6', '00000000001', '00000000001', '高考失利该不该复读？', 'http://123.207.31.213/ImmediateChoice_service/image/(42).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(41).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '30', '90', '当然是冬天才能领略北国风光啦!', '', ',1,,1,,1,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,2,,0,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-19 02:08:48');
INSERT INTO `question` VALUES ('8', '00000000001', '00000000000', '哪张可以？', 'http://123.207.31.213/ImmediateChoice_service/image/(38).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(37).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '12', '65', '当然是冬天才能领略北国风光啦!', '', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',2,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-19 02:08:45');
INSERT INTO `question` VALUES ('11', '00000000002', '00000000000', '不管黑猫白猫。。。。', 'http://123.207.31.213/ImmediateChoice_service/image/(32).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(31).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,2,', ',1,,1,,1,,1,,0,', '2017-04-19 02:08:39');
INSERT INTO `question` VALUES ('12', '00000000002', '00000000000', '帮我看看呗？', 'http://123.207.31.213/ImmediateChoice_service/image/(30).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(29).jpg', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,2,,0,', '2017-04-19 02:08:37');
INSERT INTO `question` VALUES ('13', '00000000003', '00000000000', '左边还是右边更让你心旷神怡？', 'http://123.207.31.213/ImmediateChoice_service/image/(28).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(27).jpg', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,0,,1,,1,,1,,1,,1,,1,,2,', ',1,,1,,1,,1,,1,,1,,0,', '2017-04-19 02:08:30');
INSERT INTO `question` VALUES ('14', '00000000002', '00000000000', '听妈妈的话。。', 'http://123.207.31.213/ImmediateChoice_service/image/(26).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(25).jpg', '小芳', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,0,,0,', '2017-04-19 02:09:24');
INSERT INTO `question` VALUES ('15', '00000000002', '00000000000', '大红花怎么样？', 'http://123.207.31.213/ImmediateChoice_service/image/(24).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(23).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,0,,0,', '2017-04-19 02:09:21');
INSERT INTO `question` VALUES ('20', '00000000000', '00000000000', '冬天还是春天好？', 'http://123.207.31.213/ImmediateChoice_service/image/(14).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(13).jpg', '小红', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,', ',1,,1,,1,,1,,2,,0,,0,,1,,2,', '2017-04-19 02:09:13');
INSERT INTO `question` VALUES ('21', '00000000000', '00000000000', '选择困难啊，哪件比较好看？？？', 'http://123.207.31.213/ImmediateChoice_service/image/(12).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(11).jpg', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,1,,1,,1,,0,,1,,1,', ',1,,1,,1,,1,,1,,1,,2,,0,,1,,1,', '2017-04-19 02:09:11');
INSERT INTO `question` VALUES ('22', '00000000001', '00000000000', '我想买只狗，帮我选选', 'http://123.207.31.213/ImmediateChoice_service/image/(10).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(9).jpg', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,2,,2,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,2,,2,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-19 02:09:10');
INSERT INTO `question` VALUES ('23', '00000000000', '00000000002', '左边壁纸还是右边壁纸好看？', 'http://123.207.31.213/ImmediateChoice_service/image/(8).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(7).jpg', '小红', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,2,,2,,2,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,', '2017-04-19 02:09:08');
INSERT INTO `question` VALUES ('24', '00000000000', '00000000000', '帮我选一下', 'http://123.207.31.213/ImmediateChoice_service/image/(6).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(5).jpg', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('26', '00000000000', '00000000003', 'lol皮肤比比看', 'http://123.207.31.213/ImmediateChoice_service/image/(4).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(3).jpg', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,2,,2,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,,1,,1,,0,', '2017-04-19 02:08:58');
INSERT INTO `question` VALUES ('27', '00000000000', '00000000000', '哪个皮肤比较好看？', 'http://123.207.31.213/ImmediateChoice_service/image/(2).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(1).jpg', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,2,,1,,0,,0,,2,,1,,0,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,1,,0,,1,,1,,1,,1,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,', '2017-04-19 02:08:56');
INSERT INTO `question` VALUES ('61', '00000000000', '00000000000', '金秋VS... 哈哈', 'http://123.207.31.213/ImmediateChoice_service/image/(40).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(39).jpg', '小芳', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png', '12', '65', '当然是冬天才能领略北国风光啦!', '', ',1,,2,,2,,2,,0,', ',1,,0,,2,,0,,0,,0,,2,,1,,1,,0,,9,,9,,9,,9,', '2017-04-19 02:08:47');
INSERT INTO `question` VALUES ('62', '00000000000', '00000000001', '哪只更能震撼你？', 'http://123.207.31.213/ImmediateChoice_service/image/(36).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(35).jpg', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '12', '50', '当然是冬天才能领略北国风光啦!', '', ',1,,0,,1,,1,,1,,0,,1,,2,,2,,2,,1,,1,,0,,1,', ',1,,0,,1,,1,,1,,0,,0,,2,,0,,0,,2,,2,,2,,1,,1,,1,,1,,1,,0,', '2017-04-19 02:08:44');
INSERT INTO `question` VALUES ('63', '00000000000', '00000000001', '喵...喵。。。', 'http://123.207.31.213/ImmediateChoice_service/image/(34).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(33).jpg', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', '0', '2', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,2,,2,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,2,,0,,2,,0,,0,,0,,1,', '2017-04-19 02:08:42');
INSERT INTO `question` VALUES ('64', '00000000000', '00000000000', '喜欢我的侧颜吗？', 'http://123.207.31.213/ImmediateChoice_service/image/(22).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(21).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '', ',,,,,,,,,,,1,,1,,1,,1,,1,,2,,2,,0,,1,,1,,0,,1,,1,', ',1,,1,,1,,1,,0,,0,,0,,0,,1,,1,', '2017-04-19 02:09:18');
INSERT INTO `question` VALUES ('65', '00000000000', '00000000002', '你们喜欢那种阳光？', 'http://123.207.31.213/ImmediateChoice_service/image/(20).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(19).jpg', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', '0', '3', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,,1,,1,,1,,2,,0,,0,,1,,1,,1,,1,,1,,1,,0,,1,', ',1,,0,,1,,1,,2,,0,,0,,0,,1,,1,,1,,1,,0,,0,,0,,2,,1,,1,,9,,9,', '2017-04-19 02:09:16');
INSERT INTO `question` VALUES ('66', '00000000000', '00000000000', '我要买岛！帮我看看', 'http://123.207.31.213/ImmediateChoice_service/image/(18).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(17).jpg', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', '0', '568', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,2,,2,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,1,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,0,,0,,1,,1,,1,,1,,0,,1,,1,,1,,1,,1,,0,,0,,1,,0,,0,,0,,1,,4,,1,,1,,1,,1,,0,', '2017-04-19 02:09:15');
INSERT INTO `question` VALUES ('67', '00000000000', '00000000002', '哪个好吃？急！！！', 'http://123.207.31.213/ImmediateChoice_service/image/(16).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(15).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '134', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,,0,,0,,0,,0,,0,,1,,0,,0,,1,,1,,1,,1,,1,,0,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,', ',1,,1,,1,,2,,0,,0,,1,,0,,0,,1,,1,,1,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,4,,2,,2,,1,,1,,1,,1,,0,', '2017-04-19 02:09:14');
INSERT INTO `question` VALUES ('68', '00000000000', '00000000002', '这风景', 'http://123.207.31.213/ImmediateChoice_service/video/1.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/2.mp4', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '1', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,', ',1,,1,,1,,2,,0,,0,,1,,4,', '2017-04-19 02:09:14');
INSERT INTO `question` VALUES ('69', '00000000000', '00000000002', '星空的感觉', 'http://123.207.31.213/ImmediateChoice_service/video/3.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/4.mp4', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,0,', ',1,,1,,1,,2,,0,,0,,1,,1,', '2017-04-19 02:09:14');
INSERT INTO `question` VALUES ('70', '00000000000', '00000000002', '那个比较好？', 'http://123.207.31.213/ImmediateChoice_service/video/5.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/6.mp4', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '1', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,0,', ',1,,1,,1,,2,,0,,0,,1,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,', '2017-04-19 02:09:14');
INSERT INTO `question` VALUES ('71', '00000000000', '00000000002', '哪个不错？', 'http://123.207.31.213/ImmediateChoice_service/video/7.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/8.mp4', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '6', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,0,,0,,0,,1,,1,,0,,1,,1,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,,1,,1,,0,,0,,0,', ',1,,1,,1,,2,,0,,0,,1,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,,0,,1,,1,,1,,1,,0,', '2017-04-19 02:09:14');

-- ----------------------------
-- Table structure for questionnaire_choice
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_choice`;
CREATE TABLE `questionnaire_choice` (
  `choice_id` int(11) NOT NULL auto_increment,
  `questionnaire_question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `num` varchar(255) NOT NULL,
  PRIMARY KEY  (`choice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_choice
-- ----------------------------
INSERT INTO `questionnaire_choice` VALUES ('1', '1', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('2', '2', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('3', '3', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('4', '3', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('5', '4', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('6', '4', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('7', '4', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('8', '5', '0', '4');
INSERT INTO `questionnaire_choice` VALUES ('9', '6', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('10', '7', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('11', '8', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('12', '9', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('13', '10', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('14', '11', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('15', '12', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('16', '12', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('17', '13', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('18', '1', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('19', '2', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('20', '3', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('21', '4', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('22', '5', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('23', '6', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('24', '7', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('25', '8', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('26', '9', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('27', '10', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('28', '11', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('29', '12', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('30', '13', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('31', '1', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('32', '2', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('33', '3', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('34', '4', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('35', '4', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('36', '5', '0', '4');
INSERT INTO `questionnaire_choice` VALUES ('37', '6', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('38', '7', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('39', '8', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('40', '9', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('41', '10', '0', '1');
INSERT INTO `questionnaire_choice` VALUES ('42', '11', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('43', '12', '0', '3');
INSERT INTO `questionnaire_choice` VALUES ('44', '13', '0', '2');
INSERT INTO `questionnaire_choice` VALUES ('45', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('46', '2', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('47', '3', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('48', '4', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('49', '5', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('50', '6', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('51', '7', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('52', '8', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('53', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('54', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('55', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('56', '12', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('57', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('58', '1', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('59', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('60', '3', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('61', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('62', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('63', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('64', '7', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('65', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('66', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('67', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('68', '11', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('69', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('70', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('71', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('72', '2', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('73', '4', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('74', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('75', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('76', '7', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('77', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('78', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('79', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('80', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('81', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('82', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('83', '13', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('84', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('85', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('86', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('87', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('88', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('89', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('90', '7', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('91', '8', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('92', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('93', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('94', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('95', '12', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('96', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('97', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('98', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('99', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('100', '4', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('101', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('102', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('103', '7', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('104', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('105', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('106', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('107', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('108', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('109', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('110', '1', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('111', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('112', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('113', '4', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('114', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('115', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('116', '7', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('117', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('118', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('119', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('120', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('121', '12', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('122', '13', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('123', '1', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('124', '2', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('125', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('126', '4', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('127', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('128', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('129', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('130', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('131', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('132', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('133', '11', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('134', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('135', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('136', '1', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('137', '2', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('138', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('139', '4', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('140', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('141', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('142', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('143', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('144', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('145', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('146', '11', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('147', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('148', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('149', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('150', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('151', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('152', '4', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('153', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('154', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('155', '7', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('156', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('157', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('158', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('159', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('160', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('161', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('162', '14', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('163', '14', '9', '1');
INSERT INTO `questionnaire_choice` VALUES ('164', '14', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('165', '1', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('166', '2', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('167', '3', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('168', '4', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('169', '5', '9', '1');
INSERT INTO `questionnaire_choice` VALUES ('170', '6', '9', '5');
INSERT INTO `questionnaire_choice` VALUES ('171', '7', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('172', '8', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('173', '9', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('174', '10', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('175', '11', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('176', '12', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('177', '13', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('178', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('179', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('180', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('181', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('182', '5', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('183', '6', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('184', '7', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('185', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('186', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('187', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('188', '11', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('189', '12', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('190', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('191', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('192', '2', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('193', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('194', '4', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('195', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('196', '6', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('197', '7', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('198', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('199', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('200', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('201', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('202', '12', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('203', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('204', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('205', '2', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('206', '3', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('207', '4', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('208', '5', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('209', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('210', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('211', '8', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('212', '9', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('213', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('214', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('215', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('216', '13', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('217', '14', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('218', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('219', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('220', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('221', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('222', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('223', '5', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('224', '6', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('225', '7', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('226', '8', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('227', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('228', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('229', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('230', '12', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('231', '13', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('232', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('233', '12', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('234', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('235', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('236', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('237', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('238', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('239', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('240', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('241', '4', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('242', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('243', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('244', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('245', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('246', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('247', '12', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('248', '12', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('249', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('250', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('251', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('252', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('253', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('254', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('255', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('256', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('257', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('258', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('259', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('260', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('261', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('262', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('263', '4', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('264', '4', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('265', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('266', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('267', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('268', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('269', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('270', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('271', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('272', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('273', '12', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('274', '12', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('275', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('276', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('277', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('278', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('279', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('280', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('281', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('282', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('283', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('284', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('285', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('286', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('287', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('288', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('289', '4', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('290', '4', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('291', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('292', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('293', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('294', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('295', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('296', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('297', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('298', '12', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('299', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('300', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('301', '12', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('302', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('303', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('304', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('305', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('306', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('307', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('308', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('309', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('310', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('311', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('312', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('313', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('314', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('315', '4', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('316', '4', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('317', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('318', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('319', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('320', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('321', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('322', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('323', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('324', '12', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('325', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('326', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('327', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('328', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('329', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('330', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('331', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('332', '4', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('333', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('334', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('335', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('336', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('337', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('338', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('339', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('340', '14', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('341', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('342', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('343', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('344', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('345', '5', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('346', '7', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('347', '6', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('348', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('349', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('350', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('351', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('352', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('353', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('354', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('355', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('356', '1', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('357', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('358', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('359', '4', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('360', '5', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('361', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('362', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('363', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('364', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('365', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('366', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('367', '12', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('368', '13', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('369', '14', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('370', '1', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('371', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('372', '3', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('373', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('374', '5', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('375', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('376', '7', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('377', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('378', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('379', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('380', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('381', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('382', '13', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('383', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('384', '2', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('385', '3', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('386', '4', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('387', '5', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('388', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('389', '8', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('390', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('391', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('392', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('393', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('394', '12', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('395', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('396', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('397', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('398', '2', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('399', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('400', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('401', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('402', '6', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('403', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('404', '8', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('405', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('406', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('407', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('408', '12', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('409', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('410', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('411', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('412', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('413', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('414', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('415', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('416', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('417', '7', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('418', '8', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('419', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('420', '10', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('421', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('422', '12', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('423', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('424', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('425', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('426', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('427', '4', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('428', '5', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('429', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('430', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('431', '8', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('432', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('433', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('434', '11', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('435', '12', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('436', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('437', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('438', '1', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('439', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('440', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('441', '4', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('442', '5', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('443', '6', '1', '4');
INSERT INTO `questionnaire_choice` VALUES ('444', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('445', '8', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('446', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('447', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('448', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('449', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('450', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('451', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('452', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('453', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('454', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('455', '3', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('456', '4', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('457', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('458', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('459', '7', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('460', '8', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('461', '9', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('462', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('463', '11', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('464', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('465', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('466', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('467', '2', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('468', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('469', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('470', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('471', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('472', '7', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('473', '8', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('474', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('475', '11', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('476', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('477', '12', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('478', '13', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('479', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('480', '14', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('481', '1', '1', '1');
INSERT INTO `questionnaire_choice` VALUES ('482', '2', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('483', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('484', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('485', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('486', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('487', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('488', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('489', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('490', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('491', '11', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('492', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('493', '13', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('494', '1', '9', '1');
INSERT INTO `questionnaire_choice` VALUES ('495', '2', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('496', '3', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('497', '4', '9', '1');
INSERT INTO `questionnaire_choice` VALUES ('498', '5', '9', '1');
INSERT INTO `questionnaire_choice` VALUES ('499', '6', '9', '5');
INSERT INTO `questionnaire_choice` VALUES ('500', '7', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('501', '8', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('502', '9', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('503', '10', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('504', '11', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('505', '12', '9', '4');
INSERT INTO `questionnaire_choice` VALUES ('506', '13', '9', '1');
INSERT INTO `questionnaire_choice` VALUES ('507', '15', '9', '3');
INSERT INTO `questionnaire_choice` VALUES ('508', '16', '9', '2');
INSERT INTO `questionnaire_choice` VALUES ('509', '17', '9', '1');
INSERT INTO `questionnaire_choice` VALUES ('510', '15', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('511', '16', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('512', '17', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('513', '1', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('514', '2', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('515', '3', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('516', '4', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('517', '5', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('518', '6', '1', '5');
INSERT INTO `questionnaire_choice` VALUES ('519', '7', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('520', '8', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('521', '9', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('522', '11', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('523', '10', '1', '2');
INSERT INTO `questionnaire_choice` VALUES ('524', '12', '1', '3');
INSERT INTO `questionnaire_choice` VALUES ('525', '13', '1', '2');

-- ----------------------------
-- Table structure for questionnaire_info
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_info`;
CREATE TABLE `questionnaire_info` (
  `questionnaire_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `title` varchar(255) NOT NULL,
  `hint` varchar(255) default NULL,
  PRIMARY KEY  (`questionnaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_info
-- ----------------------------
INSERT INTO `questionnaire_info` VALUES ('1', '9', '关于水果店的调查问卷', '本问卷中的问题并无对或错，所以同学们可依据您最真实的状况和意见来填写，回答结果保密。问卷采取无记名方式，且仅供研究分析，不会做其它用途，敬请放心作答。谢谢你参加调查');
INSERT INTO `questionnaire_info` VALUES ('4', '9', '手机市场需求调查问卷', '您对手机有什么要求呢？为了了解目前您对手机的需求，我们希望您能协助填写这份调查问卷，谢谢！');

-- ----------------------------
-- Table structure for questionnaire_question
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_question`;
CREATE TABLE `questionnaire_question` (
  `questionnaire_question_id` int(11) NOT NULL auto_increment,
  `questionnaire_id` int(11) default NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY  (`questionnaire_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_question
-- ----------------------------
INSERT INTO `questionnaire_question` VALUES ('1', '1', '你的性别');
INSERT INTO `questionnaire_question` VALUES ('2', '1', '您每月的生活费');
INSERT INTO `questionnaire_question` VALUES ('3', '1', '您平时在哪些地方购买水果');
INSERT INTO `questionnaire_question` VALUES ('4', '1', '您选择水果店时会考虑最多的是');
INSERT INTO `questionnaire_question` VALUES ('5', '1', '您对大部分水果店的水果质量和新鲜度是否满意');
INSERT INTO `questionnaire_question` VALUES ('6', '1', '您每隔多久吃一次水果');
INSERT INTO `questionnaire_question` VALUES ('7', '1', '您平均每周花多少买水果');
INSERT INTO `questionnaire_question` VALUES ('8', '1', '您对水果店的价格怎么看');
INSERT INTO `questionnaire_question` VALUES ('9', '1', '您喜欢以什么方式吃水果');
INSERT INTO `questionnaire_question` VALUES ('10', '1', '水果店推出在网上可以购买到新鲜水果并且免费配送，您是否原意购买');
INSERT INTO `questionnaire_question` VALUES ('11', '1', '如果水果店推出提供免费送货上门服务（15起送）是否愿意');
INSERT INTO `questionnaire_question` VALUES ('12', '1', '您认为哪些促销方式更能吸引您');
INSERT INTO `questionnaire_question` VALUES ('13', '1', '您对水果店的服务态度怎么看');
INSERT INTO `questionnaire_question` VALUES ('15', '4', '您目前使用的手机品牌是什么');
INSERT INTO `questionnaire_question` VALUES ('16', '4', '您会在未来多长时间内更换手机？');
INSERT INTO `questionnaire_question` VALUES ('17', '4', '您目前使用的运营商是？');

-- ----------------------------
-- Table structure for questionnaire_question_options
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_question_options`;
CREATE TABLE `questionnaire_question_options` (
  `option_id` int(11) NOT NULL auto_increment,
  `questionnaire_question_id` int(11) default NULL,
  `num` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  PRIMARY KEY  (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_question_options
-- ----------------------------
INSERT INTO `questionnaire_question_options` VALUES ('1', '1', '1', '男');
INSERT INTO `questionnaire_question_options` VALUES ('2', '1', '2', '女');
INSERT INTO `questionnaire_question_options` VALUES ('3', '2', '1', '1000及以下');
INSERT INTO `questionnaire_question_options` VALUES ('4', '2', '2', '1000~1500');
INSERT INTO `questionnaire_question_options` VALUES ('5', '2', '3', '1500以上');
INSERT INTO `questionnaire_question_options` VALUES ('6', '3', '1', '水果店');
INSERT INTO `questionnaire_question_options` VALUES ('7', '3', '2', '网上');
INSERT INTO `questionnaire_question_options` VALUES ('8', '3', '3', '超市');
INSERT INTO `questionnaire_question_options` VALUES ('9', '4', '1', '水果的质量和新鲜度');
INSERT INTO `questionnaire_question_options` VALUES ('10', '4', '2', '距离');
INSERT INTO `questionnaire_question_options` VALUES ('11', '4', '3', '价格');
INSERT INTO `questionnaire_question_options` VALUES ('12', '4', '4', '水果品种多样');
INSERT INTO `questionnaire_question_options` VALUES ('13', '4', '5', '其它');
INSERT INTO `questionnaire_question_options` VALUES ('14', '5', '1', '喜欢');
INSERT INTO `questionnaire_question_options` VALUES ('15', '5', '2', '不喜欢');
INSERT INTO `questionnaire_question_options` VALUES ('16', '5', '1', '每天都吃');
INSERT INTO `questionnaire_question_options` VALUES ('17', '5', '2', '一周几次');
INSERT INTO `questionnaire_question_options` VALUES ('18', '5', '3', '偶尔一次');
INSERT INTO `questionnaire_question_options` VALUES ('19', '6', '4', '很少吃');
INSERT INTO `questionnaire_question_options` VALUES ('20', '6', '5', '基本不吃');
INSERT INTO `questionnaire_question_options` VALUES ('21', '7', '1', '10元以下');
INSERT INTO `questionnaire_question_options` VALUES ('22', '7', '2', '10元到30元');
INSERT INTO `questionnaire_question_options` VALUES ('23', '7', '3', '30元到60元');
INSERT INTO `questionnaire_question_options` VALUES ('24', '7', '4', '60元以上');
INSERT INTO `questionnaire_question_options` VALUES ('25', '8', '1', '便宜实惠');
INSERT INTO `questionnaire_question_options` VALUES ('26', '8', '2', '合理适中');
INSERT INTO `questionnaire_question_options` VALUES ('27', '8', '3', '较高，勉强接受');
INSERT INTO `questionnaire_question_options` VALUES ('28', '8', '4', '过高，不能接受');
INSERT INTO `questionnaire_question_options` VALUES ('29', '9', '1', '直接吃');
INSERT INTO `questionnaire_question_options` VALUES ('30', '9', '2', '水果拼盘');
INSERT INTO `questionnaire_question_options` VALUES ('31', '9', '3', '榨汁');
INSERT INTO `questionnaire_question_options` VALUES ('32', '9', '4', '其它');
INSERT INTO `questionnaire_question_options` VALUES ('33', '10', '1', '愿意');
INSERT INTO `questionnaire_question_options` VALUES ('34', '10', '2', '不愿意');
INSERT INTO `questionnaire_question_options` VALUES ('35', '11', '1', '愿意');
INSERT INTO `questionnaire_question_options` VALUES ('36', '11', '2', '可以接受');
INSERT INTO `questionnaire_question_options` VALUES ('37', '11', '3', '不愿意');
INSERT INTO `questionnaire_question_options` VALUES ('38', '12', '1', '每日特价');
INSERT INTO `questionnaire_question_options` VALUES ('39', '12', '2', '满额立减');
INSERT INTO `questionnaire_question_options` VALUES ('40', '12', '3', '会员卡打折、集积分兑换');
INSERT INTO `questionnaire_question_options` VALUES ('41', '12', '4', '其它');
INSERT INTO `questionnaire_question_options` VALUES ('42', '13', '1', '非常满意');
INSERT INTO `questionnaire_question_options` VALUES ('43', '13', '2', '满意');
INSERT INTO `questionnaire_question_options` VALUES ('44', '13', '3', '不太满意');
INSERT INTO `questionnaire_question_options` VALUES ('45', '13', '4', '很差');
INSERT INTO `questionnaire_question_options` VALUES ('48', '15', '1', '三星');
INSERT INTO `questionnaire_question_options` VALUES ('49', '15', '2', 'OPPO');
INSERT INTO `questionnaire_question_options` VALUES ('50', '15', '3', '小米');
INSERT INTO `questionnaire_question_options` VALUES ('51', '15', '4', '其他');
INSERT INTO `questionnaire_question_options` VALUES ('52', '16', '1', '半年内');
INSERT INTO `questionnaire_question_options` VALUES ('53', '16', '2', '半年-1年');
INSERT INTO `questionnaire_question_options` VALUES ('54', '16', '3', '1年以上');
INSERT INTO `questionnaire_question_options` VALUES ('55', '17', '1', '中国电信');
INSERT INTO `questionnaire_question_options` VALUES ('56', '17', '2', '中国移动');
INSERT INTO `questionnaire_question_options` VALUES ('57', '17', '3', '中国联通');

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
INSERT INTO `topic_members` VALUES ('1', '1');
INSERT INTO `topic_members` VALUES ('2', '1');
INSERT INTO `topic_members` VALUES ('2', '7');
INSERT INTO `topic_members` VALUES ('3', '1');
INSERT INTO `topic_members` VALUES ('4', '2');
INSERT INTO `topic_members` VALUES ('5', '1');
INSERT INTO `topic_members` VALUES ('6', '4');

-- ----------------------------
-- Table structure for userin
-- ----------------------------
DROP TABLE IF EXISTS `userin`;
CREATE TABLE `userin` (
  `user_id` int(30) NOT NULL auto_increment,
  `user_type` int(11) unsigned zerofill default NULL,
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
INSERT INTO `userin` VALUES ('1', '00000000001', '小青', '123456', '15158442585', '男', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '18LyaY+7DAct9px+BRJxCl3lOgyfFg2AjkViYtqQca3pbaogcPqTnfcI34AD9x2wXSWqwKWhvYM=');
INSERT INTO `userin` VALUES ('2', '00000000001', '小红', '123456', '15158442585', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png', 'G/i7WKl49H6dWLJIf31wg5K2kJJ49pN8xrdowMMx5ayEtxy460ZKgAMWNe5rqcc8kGacuUXe1r87hDlHGJQzBg==');
INSERT INTO `userin` VALUES ('3', '00000000001', '小微', '123456', '15158442585', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '');
INSERT INTO `userin` VALUES ('4', '00000000001', '小远', '123456', '15158442585', '男', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', 'ElK5OCSKHzSz6/MmKMGAU2bUJQJ0YiPxyCLMxPZZi6yBSXXy/NdJJufpm/NrZa8zNMxwvczUZeUvYFNJjTyqqg==');
INSERT INTO `userin` VALUES ('5', '00000000001', '小霞', '123456', '15158442585', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', 'DdZZs6Ye9vUn5leJd8519V3lOgyfFg2AjkViYtqQca2yBGNeFUCOLt6o6VcJyFpM+7RI88NDWsw=');
INSERT INTO `userin` VALUES ('6', '00000000001', '小进', '123456', '15336714288', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', 'Jv+tmEI8haZVk+0iCvZ3PpK2kJJ49pN8xrdowMMx5ayEtxy460ZKgMvKyZt8ZTaQE22XM40P6bc7hDlHGJQzBg==');
INSERT INTO `userin` VALUES ('7', '00000000001', '小芳', '123456', '15336714238', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png', null);
INSERT INTO `userin` VALUES ('9', '00000000000', '小商', '123456', 'q@qq.com', '男', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', '+9/ZabUKLzErzR2q+l0+eWbUJQJ0YiPxyCLMxPZZi6wkJWaHcDk2r7Q2JMKCs7w9wpYcqhLTztkvYFNJjTyqqg==');

-- ----------------------------
-- Procedure structure for test
-- ----------------------------
DROP PROCEDURE IF EXISTS `test`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test`(in name varchar(100),out oid int)
BEGIN
  insert into user(loginname) values(name);
  select max(id) from user into oid;
  select oid;
END
;;
DELIMITER ;
