/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : immediatechoice

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2017-03-01 16:30:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for conversation
-- ----------------------------
DROP TABLE IF EXISTS `conversation`;
CREATE TABLE `conversation` (
  `id` int(255) NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `portraiturl` varchar(255) default NULL,
  `addresser` varchar(255) default NULL,
  `addressee` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `id` int(11) NOT NULL auto_increment,
  `student` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `imageurl` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `id` int(11) NOT NULL auto_increment,
  `question_content` varchar(255) default NULL,
  `image_left` varchar(255) default NULL,
  `image_right` varchar(255) default NULL,
  `quizzer_name` varchar(255) default NULL,
  `share_count` int(11) default '0',
  `comment_count` int(11) default '0',
  `comment` varchar(255) default '',
  `locations` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '你更喜欢冬天还是夏天？', 'http://172.16.101.51:8080/Server/img/2.jpg', 'http://172.16.101.51:8080/Server/img/14.jpg', '不语', '12', '65', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('2', '你更喜欢白天还是黑夜？', 'http://172.16.101.51:8080/Server/img/5.jpg', 'http://172.16.101.51:8080/Server/img/3.jpg', '不眼', '12', '654', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('3', '你更喜欢冬天还是夏天？', 'http://172.16.101.51:8080/Server/img/2.jpg', 'http://172.16.101.51:8080/Server/img/14.jpg', '不严', '15', '65', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('4', '你更喜欢冬天还是夏天？', 'http://172.16.101.51:8080/Server/img/2.jpg', 'http://172.16.101.51:8080/Server/img/14.jpg', '不请', '20', '78', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('5', '你更喜欢冬天还是夏天？', 'http://172.16.101.51:8080/Server/img/15.jpg', 'http://172.16.101.51:8080/Server/img/33.jpg', '不来', '12', '13', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('6', '你更喜欢冬天还是夏天？', 'http://172.16.101.51:8080/Server/img/2.jpg', 'http://172.16.101.51:8080/Server/img/14.jpg', '我如果', '30', '89', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('7', '你更喜欢冬天还是夏天？', 'http://172.16.101.51:8080/Server/img/2.jpg', 'http://172.16.101.51:8080/Server/img/14.jpg', '不语', '12', '65', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('8', '你更喜欢冬天还是夏天？', 'http://172.16.101.51:8080/Server/img/2.jpg', 'http://172.16.101.51:8080/Server/img/14.jpg', '苏东坡', '12', '65', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('9', '你更喜欢冬天', 'http://172.16.101.51:8080/Server/img/2.jpg', 'http://172.16.101.51:8080/Server/img/14.jpg', '不语', '12', '50', '当然是冬天才能领略北国风光啦!', '');
INSERT INTO `question` VALUES ('10', '特惠价', '/storage/sdcard0/Mihome/ShotScreen/小米桌面第1屏.jpg', '/storage/sdcard0/Mihome/ShotScreen/小米桌面第2屏.jpg', 'USERNAME', '15', '87', '51', '');
INSERT INTO `question` VALUES ('11', '左边好还是右边呢？', '/storage/sdcard0/MIUI/wallpaper/default_wallpaper.jpg', '/storage/sdcard0/letv/share/letv_icon.png', 'USERNAME', '156', '56', '45', '');
INSERT INTO `question` VALUES ('12', '关于', '/storage/sdcard0/UCDownloads/Screenshot/tmp/TMPSNAPSHOT1487127810809.jpg', '', 'USERNAME', '0', '0', '', '');
INSERT INTO `question` VALUES ('13', '发奖金', '/storage/sdcard0/MIUI/wallpaper/default_wallpaper.jpg', '/storage/sdcard0/UCDownloads/Screenshot/tmp/TMPSNAPSHOT1487127810591.jpg', 'USERNAME', '0', '0', '', '');
INSERT INTO `question` VALUES ('14', '高洪波', '/storage/sdcard0/MIUI/wallpaper/default_wallpaper.jpg', '/storage/sdcard0/letv/share/letv_icon.png', 'USERNAME', '0', '0', '', '');
INSERT INTO `question` VALUES ('15', '度很尴', '/storage/sdcard0/MIUI/wallpaper/default_wallpaper.jpg', '/storage/sdcard0/yymobile/config/tz0M9VWt6QYAAAAAAABJIDYDNug155.gif', 'USERNAME', '0', '0', '', '');
INSERT INTO `question` VALUES ('20', 'Yes or no ?', '/storage/emulated/0/openstack/tooopen_sy_123108612862.jpg', '/storage/emulated/0/Download/tooopen_sy_123108612862.jpg', 'USERNAME', '0', '0', '', '');
INSERT INTO `question` VALUES ('23', '', '/storage/sdcard0/Mihome/ShotScreen/小米桌面第1屏.jpg', '/storage/sdcard0/letv/share/letv_icon.png', 'USERNAME', '0', '0', '', '在衢州市职业技术学院滨江校区附近');
INSERT INTO `question` VALUES ('24', '你好', '/storage/sdcard0/Mihome/ShotScreen/小米桌面第1屏.jpg', '/storage/sdcard0/Mihome/ShotScreen/小米桌面第2屏.jpg', 'NAME', '0', '0', '', '在衢州市职业技术学院滨江校区附近');
INSERT INTO `question` VALUES ('36', '嗨千浅', '/storage/sdcard0/Mihome/ShotScreen/?????1?.jpg', '/storage/sdcard0/letv/share/letv_icon.png', 'NAME', '0', '0', '', null);
INSERT INTO `question` VALUES ('37', '骨灰级', '/storage/sdcard0/yymobile/config/tz0M9VXC-oIAAAAAAABZ5j-fHzY204.gif', '/storage/sdcard0/yymobile/config/tz0M9VWt6QYAAAAAAABJIDYDNug155.gif', 'NAME', '0', '0', '', '????????????????');
INSERT INTO `question` VALUES ('38', '体育', '/storage/sdcard0/Mihome/ShotScreen/小米桌面第1屏.jpg', '/storage/sdcard0/UCDownloads/Screenshot/tmp/TMPSNAPSHOT1487127810591.jpg', 'NAME', '0', '0', '', '在衢州市职业技术学院滨江校区附近');
INSERT INTO `question` VALUES ('39', '', 'http://172.16.101.51:8080/Server/img/小米桌面第1屏.jpg', 'http://172.16.101.51:8080/Server/img/tz0M9VWt6QYAAAAAAABJIDYDNug155.gif', 'NAME', '0', '0', '', '在衢州职业技术学院继续教育学院附近');
INSERT INTO `question` VALUES ('40', '该喝喝', 'http://172.16.101.51:8080/Server/img/default_wallpaper.jpg', 'http://172.16.101.51:8080/Server/img/tz0M9VXC-oIAAAAAAABZ5j-fHzY204.gif', 'NAME', '0', '0', '', '在衢州职业技术学院继续教育学院附近');
INSERT INTO `question` VALUES ('41', '体育', 'http://172.16.101.51:8080/Server/img/tz0M9VXC-oIAAAAAAABZ5j-fHzY204.gif', 'http://172.16.101.51:8080/Server/img/letv_icon.png', 'NAME', '0', '0', '', '在衢州职业技术学院继续教育学院附近');
INSERT INTO `question` VALUES ('42', '地方', 'http://172.16.101.51:8080/Server/img/小米桌面第1屏.jpg', 'http://172.16.101.51:8080/Server/img/letv_icon.png', 'NAME', '0', '0', '', '在衢州职业技术学院继续教育学院附近');
INSERT INTO `question` VALUES ('43', '该喝喝的', 'http://172.16.101.51:8080/Server/img/小米桌面第1屏.jpg', 'http://172.16.101.51:8080/Server/img/小米桌面第2屏.jpg', 'NAME', '0', '0', '', '在衢州职业技术学院继续教育学院附近');
INSERT INTO `question` VALUES ('44', '估计要', 'http://172.16.101.51:8080/Server/img/TMPSNAPSHOT1487127810591.jpg', 'http://172.16.101.51:8080/Server/img/TMPSNAPSHOT1487127810809.jpg', 'NAME', '0', '0', '', '在衢州职业技术学院继续教育学院附近');
INSERT INTO `question` VALUES ('45', '要回家', 'http://172.16.101.51:8080/Server/img/小米桌面第1屏.jpg', 'http://172.16.101.51:8080/Server/img/TMPSNAPSHOT1487127810591.jpg', 'NAME', '0', '0', '', '在衢州市职业技术学院滨江校区附近');
INSERT INTO `question` VALUES ('46', '测试', 'http://172.16.101.51:8080/Server/img/letv_icon.png', 'http://172.16.101.51:8080/Server/img/tz0M9VWt6QYAAAAAAABJIDYDNug155.gif', 'NAME', '0', '0', '', '在衢州市职业技术学院滨江校区附近');
INSERT INTO `question` VALUES ('47', 'sdgfsdsdfsdfsf', 'http://172.16.101.51:8080/Server/img/tooopen_sy_123108612862.jpg', 'http://172.16.101.51:8080/Server/img/tooopen_sy_123108612862.jpg', '小梨子', '0', '0', '', '在衢州市职业技术学院滨江校区附近');

-- ----------------------------
-- Table structure for userin
-- ----------------------------
DROP TABLE IF EXISTS `userin`;
CREATE TABLE `userin` (
  `id` int(30) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `portrait_path` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userin
-- ----------------------------
INSERT INTO `userin` VALUES ('1', '小梨子', '123456', '15158442585', '男', 'http://172.16.101.51:8080/Server/img/159.jpg');
INSERT INTO `userin` VALUES ('2', 'qin', '123456', '15158442585', '', null);
INSERT INTO `userin` VALUES ('3', 'Qin1', '123456', '15158442585', '男', null);
INSERT INTO `userin` VALUES ('4', 'girl', '123456', '15158442585', '女', null);
INSERT INTO `userin` VALUES ('5', '0003', '456d', '123345', '女', null);
INSERT INTO `userin` VALUES ('6', 'WU', '123456', '15336714288', '男', null);
INSERT INTO `userin` VALUES ('7', 'QIN_1', '123456', '15336714238', '男', null);
INSERT INTO `userin` VALUES ('8', '嗨', '123456', '15154256398', '女', null);
INSERT INTO `userin` VALUES ('9', '123', '456', '123456', '男', null);
INSERT INTO `userin` VALUES ('10', '789', '123', '123456', '女', null);
INSERT INTO `userin` VALUES ('11', '159', '951', '', '男', 'http://172.16.101.51:8080/Server/img/159.jpg');
INSERT INTO `userin` VALUES ('12', 'qin_7', '123456', '15358424568', '女', 'http://172.16.101.51:8080/Server/img/qin_715358424568.jpg');
