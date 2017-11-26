/*
Navicat MySQL Data Transfer

Source Server         : Server
Source Server Version : 50549
Source Host           : 123.207.31.213:3306
Source Database       : immediatechoice

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2017-11-23 13:18:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `question_id` int(11) NOT NULL,
  `comment_content` varchar(255) DEFAULT NULL,
  `commenter_date` varchar(255) DEFAULT NULL,
  `commenter_name` varchar(255) DEFAULT NULL,
  `commenter_portrait_url` varchar(255) DEFAULT NULL
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
INSERT INTO `comment` VALUES ('67', '对对对', '2017年11月22日 上午11:40:43', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png');
INSERT INTO `comment` VALUES ('72', 'AAA', '2017年11月22日 20:54:56', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');
INSERT INTO `comment` VALUES ('72', 'as', '2017年11月22日 20:55:48', '游客', 'android.resource://com.qzct.immediatechoice/mipmap/default_portrait');

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `user_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL
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
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned zerofill DEFAULT NULL,
  `topic_id` int(11) unsigned zerofill DEFAULT NULL,
  `question_content` varchar(255) DEFAULT NULL,
  `left_url` varchar(255) DEFAULT NULL,
  `right_url` varchar(255) DEFAULT NULL,
  `quizzer_name` varchar(255) DEFAULT NULL,
  `portrait_url` varchar(255) DEFAULT '',
  `share_count` int(11) DEFAULT '0',
  `comment_count` int(11) DEFAULT '0',
  `comment` varchar(255) DEFAULT '',
  `location` varchar(255) DEFAULT NULL,
  `choice_left_ids` varchar(255) DEFAULT '',
  `choice_right_ids` varchar(255) DEFAULT '',
  `post_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('6', '00000000001', '00000000001', '高考失利该不该复读？', 'http://123.207.31.213/ImmediateChoice_service/image/(42).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(41).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '30', '89', '当然是冬天才能领略北国风光啦!', '', ',1,,1,,1,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,2,,0,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-19 02:08:48');
INSERT INTO `question` VALUES ('8', '00000000001', '00000000000', '哪张可以？', 'http://123.207.31.213/ImmediateChoice_service/image/(38).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(37).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '12', '65', '当然是冬天才能领略北国风光啦!', '', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',2,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-19 02:08:45');
INSERT INTO `question` VALUES ('11', '00000000002', '00000000000', '不管黑猫白猫。。。。', 'http://123.207.31.213/ImmediateChoice_service/image/(32).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(31).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,2,', ',1,,1,,1,,1,,0,', '2017-04-19 02:08:39');
INSERT INTO `question` VALUES ('12', '00000000002', '00000000000', '帮我看看呗？', 'http://123.207.31.213/ImmediateChoice_service/image/(30).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(29).jpg', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,2,,0,', '2017-04-19 02:08:37');
INSERT INTO `question` VALUES ('13', '00000000003', '00000000000', '左边还是右边更让你心旷神怡？', 'http://123.207.31.213/ImmediateChoice_service/image/(28).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(27).jpg', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,0,,1,,1,,1,,1,,1,,1,,2,', ',1,,1,,1,,1,,1,,1,,0,', '2017-04-19 02:08:30');
INSERT INTO `question` VALUES ('14', '00000000002', '00000000000', '听妈妈的话。。', 'http://123.207.31.213/ImmediateChoice_service/image/(26).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(25).jpg', '小芳', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,0,,0,', '2017-04-19 02:09:24');
INSERT INTO `question` VALUES ('15', '00000000002', '00000000000', '大红花怎么样？', 'http://123.207.31.213/ImmediateChoice_service/image/(24).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(23).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,0,,0,', '2017-04-19 02:09:21');
INSERT INTO `question` VALUES ('20', '00000000000', '00000000000', '冬天还是春天好？', 'http://123.207.31.213/ImmediateChoice_service/image/(14).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(13).jpg', '小红', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,', ',1,,1,,1,,1,,2,,0,,0,,1,,2,', '2017-04-19 02:09:13');
INSERT INTO `question` VALUES ('21', '00000000000', '00000000000', '选择困难啊，哪件比较好看？？？', 'http://123.207.31.213/ImmediateChoice_service/image/(12).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(11).jpg', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,1,,1,,1,,0,,1,,1,', ',1,,1,,1,,1,,1,,1,,2,,0,,1,,1,', '2017-04-19 02:09:11');
INSERT INTO `question` VALUES ('22', '00000000001', '00000000000', '我想买只狗，帮我选选', 'http://123.207.31.213/ImmediateChoice_service/image/(10).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(9).jpg', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,2,,2,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,2,,2,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-19 02:09:10');
INSERT INTO `question` VALUES ('23', '00000000000', '00000000002', '左边壁纸还是右边壁纸好看？', 'http://123.207.31.213/ImmediateChoice_service/image/(8).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(7).jpg', '小红', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,2,,2,,2,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,', '2017-04-19 02:09:08');
INSERT INTO `question` VALUES ('24', '00000000000', '00000000000', '帮我选一下', 'http://123.207.31.213/ImmediateChoice_service/image/(6).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(5).jpg', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,', '2017-04-15 16:04:27');
INSERT INTO `question` VALUES ('26', '00000000000', '00000000003', 'lol皮肤比比看', 'http://123.207.31.213/ImmediateChoice_service/image/(4).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(3).jpg', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,2,,2,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,,1,,1,,0,', '2017-04-19 02:08:58');
INSERT INTO `question` VALUES ('27', '00000000000', '00000000000', '哪个皮肤比较好看？', 'http://123.207.31.213/ImmediateChoice_service/image/(2).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(1).jpg', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', '0', '0', '', '在衢州职业技术学院继续教育学院附近', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,2,,2,,1,,0,,0,,2,,1,,0,', ',1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,2,,2,,1,,0,,1,,1,,1,,1,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,', '2017-04-19 02:08:56');
INSERT INTO `question` VALUES ('61', '00000000000', '00000000000', '金秋VS... 哈哈', 'http://123.207.31.213/ImmediateChoice_service/image/(40).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(39).jpg', '小芳', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png', '12', '65', '当然是冬天才能领略北国风光啦!', '', ',1,,2,,2,,2,,0,', ',1,,0,,2,,0,,0,,0,,2,,1,,1,,0,,9,,9,,9,,9,', '2017-04-19 02:08:47');
INSERT INTO `question` VALUES ('62', '00000000000', '00000000001', '哪只更能震撼你？', 'http://123.207.31.213/ImmediateChoice_service/image/(36).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(35).jpg', '小微', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '12', '50', '当然是冬天才能领略北国风光啦!', '', ',1,,0,,1,,1,,1,,0,,1,,2,,2,,2,,1,,1,,0,,1,', ',1,,0,,1,,1,,1,,0,,0,,2,,0,,0,,2,,2,,2,,1,,1,,1,,1,,1,,0,', '2017-04-19 02:08:44');
INSERT INTO `question` VALUES ('63', '00000000000', '00000000001', '喵...喵。。。', 'http://123.207.31.213/ImmediateChoice_service/image/(34).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(33).jpg', '小远', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,2,,2,,1,,1,,1,,1,,1,,1,', ',1,,1,,1,,1,,1,,1,,2,,0,,2,,0,,0,,0,,1,,12,,12,', '2017-04-19 02:08:42');
INSERT INTO `question` VALUES ('64', '00000000000', '00000000000', '喜欢我的侧颜吗？', 'http://123.207.31.213/ImmediateChoice_service/image/(22).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(21).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '', ',,,,,,,,,,,1,,1,,1,,1,,1,,2,,2,,0,,1,,1,,0,,1,,1,', ',1,,1,,1,,1,,0,,0,,0,,0,,1,,1,', '2017-04-19 02:09:18');
INSERT INTO `question` VALUES ('65', '00000000000', '00000000002', '你们喜欢那种阳光？', 'http://123.207.31.213/ImmediateChoice_service/image/(20).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(19).jpg', '小霞', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',,,,,,,1,,1,,1,,2,,0,,0,,1,,1,,1,,1,,1,,1,,0,,1,', ',1,,0,,1,,1,,2,,0,,0,,0,,1,,1,,1,,1,,0,,0,,0,,2,,1,,1,,9,,9,', '2017-04-19 02:09:16');
INSERT INTO `question` VALUES ('66', '00000000000', '00000000000', '我要买岛！帮我看看', 'http://123.207.31.213/ImmediateChoice_service/image/(18).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(17).jpg', '小进', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,2,,2,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,1,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,', ',1,,0,,0,,1,,1,,1,,1,,0,,1,,1,,1,,1,,1,,0,,0,,1,,0,,0,,0,,1,,4,,1,,1,,1,,1,,0,,12,,12,', '2017-04-19 02:09:15');
INSERT INTO `question` VALUES ('67', '00000000000', '00000000002', '哪个好吃？急！！！', 'http://123.207.31.213/ImmediateChoice_service/image/(16).jpg', 'http://123.207.31.213/ImmediateChoice_service/image/(15).jpg', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,,0,,0,,0,,0,,0,,1,,0,,0,,1,,1,,1,,1,,1,,0,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,1,,12,,12,,12,', ',1,,1,,1,,2,,0,,0,,1,,0,,0,,1,,1,,1,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,1,,4,,2,,2,,1,,1,,1,,1,,0,,12,', '2017-04-19 02:09:14');
INSERT INTO `question` VALUES ('68', '00000000000', '00000000002', '这风景', 'http://123.207.31.213/ImmediateChoice_service/video/1.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/2.mp4', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,12,,12,,12,', ',1,,1,,1,,2,,0,,0,,1,,4,,12,', '2017-04-19 02:09:14');
INSERT INTO `question` VALUES ('69', '00000000000', '00000000002', '星空的感觉', 'http://123.207.31.213/ImmediateChoice_service/video/3.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/4.mp4', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,0,', ',1,,1,,1,,2,,0,,0,,1,,1,', '2017-04-19 02:09:14');
INSERT INTO `question` VALUES ('70', '00000000000', '00000000002', '那个比较好？', 'http://123.207.31.213/ImmediateChoice_service/video/5.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/6.mp4', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,1,,1,,0,,12,', ',1,,1,,1,,2,,0,,0,,1,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,0,,12,', '2017-04-19 02:09:14');
INSERT INTO `question` VALUES ('71', '00000000000', '00000000002', '哪个不错？', 'http://123.207.31.213/ImmediateChoice_service/video/7.mp4', 'http://123.207.31.213/ImmediateChoice_service/video/8.mp4', '小青', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',1,,1,,1,,1,,1,,0,,0,,0,,1,,1,,0,,1,,1,,1,,0,,1,,1,,1,,1,,1,,1,,1,,1,,1,,0,,1,,1,', ',1,,1,,1,,2,,0,,0,,1,,0,,0,,1,,1,,1,,1,,1,,1,,1,,1,,0,,0,,0,,0,,1,,1,,1,,1,,0,', '2017-04-19 02:09:14');
INSERT INTO `question` VALUES ('72', '00000000000', null, '用哪个做头像比较可爱', 'http://123.207.31.213/ImmediateChoice_service/image/1466863268733.jpg', 'http://123.207.31.213/ImmediateChoice_service/image/1002239011BF49FB034ADCE0261497F0B8A302EEA8.jpg', '镜默', 'http://123.207.31.213/ImmediateChoice_service/image/637b127725e0efad.png', '0', '0', '', '在衢州市职业技术学院滨江校区附近', ',12,,0,,12,', ',12,,12,,13,,0,,0,,0,,12,,12,', '2017-11-22 13:24:58');

-- ----------------------------
-- Table structure for questionnaire_choice
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_choice`;
CREATE TABLE `questionnaire_choice` (
  `choice_id` int(11) NOT NULL AUTO_INCREMENT,
  `questionnaire_question_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `num` varchar(255) NOT NULL,
  PRIMARY KEY (`choice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

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
INSERT INTO `questionnaire_choice` VALUES ('58', '1', '12', '1');
INSERT INTO `questionnaire_choice` VALUES ('59', '2', '12', '1');
INSERT INTO `questionnaire_choice` VALUES ('60', '3', '12', '1');
INSERT INTO `questionnaire_choice` VALUES ('61', '4', '12', '3');
INSERT INTO `questionnaire_choice` VALUES ('62', '5', '12', '3');
INSERT INTO `questionnaire_choice` VALUES ('63', '6', '12', '5');
INSERT INTO `questionnaire_choice` VALUES ('64', '7', '12', '1');
INSERT INTO `questionnaire_choice` VALUES ('65', '8', '12', '1');
INSERT INTO `questionnaire_choice` VALUES ('66', '9', '12', '1');
INSERT INTO `questionnaire_choice` VALUES ('67', '10', '12', '2');
INSERT INTO `questionnaire_choice` VALUES ('68', '11', '12', '3');
INSERT INTO `questionnaire_choice` VALUES ('69', '12', '12', '1');
INSERT INTO `questionnaire_choice` VALUES ('70', '13', '12', '2');
INSERT INTO `questionnaire_choice` VALUES ('71', '14', '12', 'A');
INSERT INTO `questionnaire_choice` VALUES ('72', '15', '12', 'A');
INSERT INTO `questionnaire_choice` VALUES ('73', '1', '12', '1');
INSERT INTO `questionnaire_choice` VALUES ('74', '2', '12', '1');
INSERT INTO `questionnaire_choice` VALUES ('75', '3', '12', '3');
INSERT INTO `questionnaire_choice` VALUES ('76', '4', '12', '4');
INSERT INTO `questionnaire_choice` VALUES ('77', '5', '12', '2');
INSERT INTO `questionnaire_choice` VALUES ('78', '6', '12', '5');
INSERT INTO `questionnaire_choice` VALUES ('79', '7', '12', '2');
INSERT INTO `questionnaire_choice` VALUES ('80', '8', '12', '3');
INSERT INTO `questionnaire_choice` VALUES ('81', '9', '12', '2');
INSERT INTO `questionnaire_choice` VALUES ('82', '10', '12', '2');
INSERT INTO `questionnaire_choice` VALUES ('83', '11', '12', '2');
INSERT INTO `questionnaire_choice` VALUES ('84', '12', '12', '3');
INSERT INTO `questionnaire_choice` VALUES ('85', '13', '12', '2');
INSERT INTO `questionnaire_choice` VALUES ('86', '14', '12', 'A');
INSERT INTO `questionnaire_choice` VALUES ('87', '15', '12', 'D');
INSERT INTO `questionnaire_choice` VALUES ('88', '17', '12', '');
INSERT INTO `questionnaire_choice` VALUES ('89', '17', '12', '');

-- ----------------------------
-- Table structure for questionnaire_info
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_info`;
CREATE TABLE `questionnaire_info` (
  `questionnaire_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `hint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`questionnaire_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire_info
-- ----------------------------
INSERT INTO `questionnaire_info` VALUES ('1', '9', '关于水果店的调查问卷', '本问卷中的问题并无对或错，所以同学们可依据您最真实的状况和意见来填写，回答结果保密。问卷采取无记名方式，且仅供研究分析，不会做其它用途，敬请放心作答。谢谢你参加调查');
INSERT INTO `questionnaire_info` VALUES ('2', '13', '软件市场问卷调查', '首先，十分感谢您抽出时间填写这份问卷调查。');
INSERT INTO `questionnaire_info` VALUES ('3', '13', '还好吧', 'CVC');
INSERT INTO `questionnaire_info` VALUES ('4', '13', '非常', '');

-- ----------------------------
-- Table structure for questionnaire_question
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_question`;
CREATE TABLE `questionnaire_question` (
  `questionnaire_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `questionnaire_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`questionnaire_question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

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
INSERT INTO `questionnaire_question` VALUES ('14', '2', '您的性别');
INSERT INTO `questionnaire_question` VALUES ('15', '2', '您的年龄阶段是');
INSERT INTO `questionnaire_question` VALUES ('16', '3', '刚刚');
INSERT INTO `questionnaire_question` VALUES ('17', '4', '刚刚');

-- ----------------------------
-- Table structure for questionnaire_question_options
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire_question_options`;
CREATE TABLE `questionnaire_question_options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `questionnaire_question_id` int(11) DEFAULT NULL,
  `num` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

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
INSERT INTO `questionnaire_question_options` VALUES ('46', '14', 'A', '男');
INSERT INTO `questionnaire_question_options` VALUES ('47', '14', 'B', '女');
INSERT INTO `questionnaire_question_options` VALUES ('48', '15', 'A', '25岁以下');
INSERT INTO `questionnaire_question_options` VALUES ('49', '15', 'B', '25∽30');
INSERT INTO `questionnaire_question_options` VALUES ('50', '15', 'C', '31∽40');
INSERT INTO `questionnaire_question_options` VALUES ('51', '15', 'D', '41∽50');
INSERT INTO `questionnaire_question_options` VALUES ('52', '15', 'E', '50以上');
INSERT INTO `questionnaire_question_options` VALUES ('53', '16', '发', '发广告');
INSERT INTO `questionnaire_question_options` VALUES ('54', '17', '', '');

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_title` varchar(255) DEFAULT NULL,
  `topic_img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`topic_id`,`user_id`)
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
  `user_id` int(30) NOT NULL AUTO_INCREMENT,
  `user_type` int(11) unsigned zerofill DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `portrait_url` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userin
-- ----------------------------
INSERT INTO `userin` VALUES ('1', '00000000001', '小青', '123456', '12345678954', '男', 'http://123.207.31.213/ImmediateChoice_service/image/portrait1.png', '18LyaY+7DAct9px+BRJxCl3lOgyfFg2AjkViYtqQca3pbaogcPqTnfcI34AD9x2wXSWqwKWhvYM=');
INSERT INTO `userin` VALUES ('2', '00000000001', '小红', '123456', '12365689845', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait2.png', 'G/i7WKl49H6dWLJIf31wg5K2kJJ49pN8xrdowMMx5ayEtxy460ZKgAMWNe5rqcc8kGacuUXe1r87hDlHGJQzBg==');
INSERT INTO `userin` VALUES ('3', '00000000001', '小微', '123456', '12378754588', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait3.png', '');
INSERT INTO `userin` VALUES ('4', '00000000001', 'text_user', '123456', '12386740456', '男', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', 'ElK5OCSKHzSz6/MmKMGAU2bUJQJ0YiPxyCLMxPZZi6yBSXXy/NdJJufpm/NrZa8zNMxwvczUZeUvYFNJjTyqqg==');
INSERT INTO `userin` VALUES ('5', '00000000001', '小霞', '123456', '12356897545', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait5.png', 'DdZZs6Ye9vUn5leJd8519V3lOgyfFg2AjkViYtqQca2yBGNeFUCOLt6o6VcJyFpM+7RI88NDWsw=');
INSERT INTO `userin` VALUES ('6', '00000000001', '小进', '123456', '12296865457', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait6.png', 'Jv+tmEI8haZVk+0iCvZ3PpK2kJJ49pN8xrdowMMx5ayEtxy460ZKgMvKyZt8ZTaQE22XM40P6bc7hDlHGJQzBg==');
INSERT INTO `userin` VALUES ('7', '00000000001', '小芳', '123456', '13457879754', '女', 'http://123.207.31.213/ImmediateChoice_service/image/portrait7.png', null);
INSERT INTO `userin` VALUES ('9', '00000000000', '小商', '123456', '12387542458', '男', 'http://123.207.31.213/ImmediateChoice_service/image/portrait4.png', '+9/ZabUKLzErzR2q+l0+eWbUJQJ0YiPxyCLMxPZZi6wkJWaHcDk2r7Q2JMKCs7w9wpYcqhLTztkvYFNJjTyqqg==');
INSERT INTO `userin` VALUES ('10', '00000000001', '暗墨影', '353823187', '暗墨影', '男', 'http://123.207.31.213/ImmediateChoice_service/image/637b127725e0efad.png', null);
INSERT INTO `userin` VALUES ('11', '00000000001', '暗墨夜', '353823187', '暗墨夜', '男', 'http://123.207.31.213/ImmediateChoice_service/image/637b127725e0efad.png', null);
INSERT INTO `userin` VALUES ('12', '00000000001', '镜默', '353823187', '镜默', '男', 'http://123.207.31.213/ImmediateChoice_service/image/637b127725e0efad.png', '09nTBG8h0T0wtMTdyb6c8F3lOgyfFg2AjkViYtqQca1QxoSq6RKg4A39YMyZEf1fiPYFCVfiP5c=');
INSERT INTO `userin` VALUES ('13', '00000000000', '七秒回忆', '353823187', '七秒回忆', '男', 'http://123.207.31.213/ImmediateChoice_service/image/1467039159685.jpg', 'QdXbpbcmxkuggf6h4oLrcGbUJQJ0YiPxyCLMxPZZi6zNLqQdrh9ke4fOBbitDZheLFUGA8cKBiIvYFNJjTyqqg==');
