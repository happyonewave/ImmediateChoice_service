/*
Navicat MySQL Data Transfer

Source Server         : service
Source Server Version : 50626
Source Host           : 123.207.31.213:3306
Source Database       : immediatechoice

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-03-02 12:23:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for conversation
-- ----------------------------
DROP TABLE IF EXISTS `conversation`;
CREATE TABLE `conversation` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `portraiturl` varchar(255) DEFAULT NULL,
  `addresser` varchar(255) DEFAULT NULL,
  `addressee` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of conversation
-- ----------------------------
INSERT INTO `conversation` VALUES ('1', '你好吗？', 'http://img.zcool.cn/community/04f2ad57b9c873000001ba90ba541c.jpg@48w_48h_2o_100sh.jpg', '娜姐', '小梨子');
INSERT INTO `conversation` VALUES ('2', '对呀', 'http://img.download.pchome.net/44/gi/logo.jpg', '英秀', '娜姐');
INSERT INTO `conversation` VALUES ('3', '这样啊', 'http://img.zcool.cn/community/04f2ad57b9c873000001ba90ba541c.jpg@48w_48h_2o_100sh.jpg', '娜姐', '小梨子');
INSERT INTO `conversation` VALUES ('4', '恩', 'http://img.download.pchome.net/44/gi/logo.jpg', '英秀', '娜姐');

-- ----------------------------
-- Table structure for info
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `imageurl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('1', '小吴', '2017-02-21', 'http://img.qqai.net/uploads/i_4_4212524660x2995382988_21.jpg');
INSERT INTO `info` VALUES ('2', '小王', '2017-02-22', 'http://img1.imgtn.bdimg.com/it/u=2685625329,3171256928&fm=21&gp=0.jpg');
INSERT INTO `info` VALUES ('3', '小刘', '2017-02-23', 'http://img.qqai.net/uploads/i_4_3198213730x3286426930_21.jpg');
INSERT INTO `info` VALUES ('4', '小吴', '2017-02-21', 'http://img.qqai.net/uploads/i_4_4212524660x2995382988_21.jpg');
INSERT INTO `info` VALUES ('5', '小王', '2017-02-22', 'http://img1.imgtn.bdimg.com/it/u=2685625329,3171256928&fm=21&gp=0.jpg');
INSERT INTO `info` VALUES ('6', '小刘', '2017-02-23', 'http://img.qqai.net/uploads/i_4_3198213730x3286426930_21.jpg');
INSERT INTO `info` VALUES ('7', '小吴', '2017-02-21', 'http://img.qqai.net/uploads/i_4_4212524660x2995382988_21.jpg');
INSERT INTO `info` VALUES ('8', '小王', '2017-02-22', 'http://img1.imgtn.bdimg.com/it/u=2685625329,3171256928&fm=21&gp=0.jpg');
INSERT INTO `info` VALUES ('9', '小刘', '2017-02-23', 'http://img.qqai.net/uploads/i_4_3198213730x3286426930_21.jpg');
INSERT INTO `info` VALUES ('10', '小吴', '2017-02-21', 'http://img.qqai.net/uploads/i_4_4212524660x2995382988_21.jpg');
INSERT INTO `info` VALUES ('11', '小王', '2017-02-22', 'http://img1.imgtn.bdimg.com/it/u=2685625329,3171256928&fm=21&gp=0.jpg');
INSERT INTO `info` VALUES ('12', '小刘', '2017-02-23', 'http://img.qqai.net/uploads/i_4_3198213730x3286426930_21.jpg');
INSERT INTO `info` VALUES ('13', '小吴', '2017-02-21', 'http://img.qqai.net/uploads/i_4_4212524660x2995382988_21.jpg');
INSERT INTO `info` VALUES ('14', '小王', '2017-02-22', 'http://img1.imgtn.bdimg.com/it/u=2685625329,3171256928&fm=21&gp=0.jpg');
INSERT INTO `info` VALUES ('15', '小刘', '2017-02-23', 'http://img.qqai.net/uploads/i_4_3198213730x3286426930_21.jpg');
INSERT INTO `info` VALUES ('16', '小吴', '2017-02-21', 'http://img.qqai.net/uploads/i_4_4212524660x2995382988_21.jpg');
INSERT INTO `info` VALUES ('17', '小王', '2017-02-22', 'http://img1.imgtn.bdimg.com/it/u=2685625329,3171256928&fm=21&gp=0.jpg');
INSERT INTO `info` VALUES ('18', '小刘', '2017-02-23', 'http://img.qqai.net/uploads/i_4_3198213730x3286426930_21.jpg');
INSERT INTO `info` VALUES ('19', '大黑', '2017-02-23', 'http://img.qqai.net/uploads/i_4_3198213730x3286426930_21.jpg');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_content` varchar(255) DEFAULT NULL,
  `image_left` varchar(255) DEFAULT NULL,
  `image_right` varchar(255) DEFAULT NULL,
  `quizzer_name` varchar(255) DEFAULT NULL,
  `share_count` int(11) DEFAULT '0',
  `comment_count` int(11) DEFAULT '0',
  `comment` varchar(255) DEFAULT '',
  `locations` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '你更喜欢冬天还是夏天？', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不语', '12', '65', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('2', '你更喜欢白天还是黑夜？', 'http://123.207.31.213/ImmediateChoice_service/img/5.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/3.jpg', '不眼', '12', '654', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('3', '你更喜欢冬天还是夏天？', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不严', '15', '65', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('4', '你更喜欢冬天还是夏天？', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不请', '20', '78', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('5', '你更喜欢冬天还是夏天？', 'http://123.207.31.213/ImmediateChoice_service/img/15.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/33.jpg', '不来', '12', '13', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('6', '你更喜欢冬天还是夏天？', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '我如果', '30', '89', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('7', '你更喜欢冬天还是夏天？', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不语', '12', '65', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('8', '你更喜欢冬天还是夏天？', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '苏东坡', '12', '65', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('9', '你更喜欢冬天', 'http://123.207.31.213/ImmediateChoice_service/img/2.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/14.jpg', '不语', '12', '50', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('47', 'sdgfsdsdfsdfsf', 'http://123.207.31.213/ImmediateChoice_service/img/tooopen_sy_123108612862.jpg', 'http://123.207.31.213/ImmediateChoice_service/img/tooopen_sy_123108612862.jpg', '小梨子', '0', '0', '', '在衢州市职业技术学院滨江校区附近');
INSERT INTO `question` VALUES ('48', '服务器测试', 'http://123.207.31.213/ImmediateChoice_service/img/tz0M9VXC-oIAAAAAAABZ5j-fHzY204.gif', 'http://123.207.31.213/ImmediateChoice_service/img/letv_icon.png', '小梨子', '0', '0', '', '在衢州市职业技术学院滨江校区附近');
INSERT INTO `question` VALUES ('49', '左边还是右边好？', 'http://123.207.31.213/ImmediateChoice_service/img/letv_icon.png', 'http://123.207.31.213/ImmediateChoice_service/img/tz0M9VXC-oIAAAAAAABZ5j-fHzY204.gif', 'qin。', '0', '0', '', '在衢州市职业技术学院滨江校区附近');

-- ----------------------------
-- Table structure for userin
-- ----------------------------
DROP TABLE IF EXISTS `userin`;
CREATE TABLE `userin` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `portrait_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
