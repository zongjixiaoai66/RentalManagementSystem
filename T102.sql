/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t102`;
CREATE DATABASE IF NOT EXISTS `t102` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t102`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot94sk3/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot94sk3/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot94sk3/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `dingdanxinxi`;
CREATE TABLE IF NOT EXISTS `dingdanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zukezhanghao` varchar(200) DEFAULT NULL COMMENT '租客账号',
  `zukexingming` varchar(200) DEFAULT NULL COMMENT '租客姓名',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwudizhi` varchar(200) DEFAULT NULL COMMENT '房屋地址',
  `zulinjiage` int DEFAULT NULL COMMENT '租赁价格',
  `ruzhuriqi` datetime DEFAULT NULL COMMENT '入住日期',
  `beizhu` longtext COMMENT '备注',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `wuzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '屋主账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='订单信息';

DELETE FROM `dingdanxinxi`;
INSERT INTO `dingdanxinxi` (`id`, `addtime`, `zukezhanghao`, `zukexingming`, `fangwubianhao`, `fangwumingcheng`, `fangwudizhi`, `zulinjiage`, `ruzhuriqi`, `beizhu`, `lianxidianhua`, `wuzhuzhanghao`, `sfsh`, `shhf`, `ispay`) VALUES
	(51, '2021-05-02 04:01:25', '租客账号1', '租客姓名1', '房屋编号1', '房屋名称1', '房屋地址1', 1, '2021-05-02 12:01:25', '备注1', '13823888881', '屋主账号1', '是', '', '未支付'),
	(52, '2021-05-02 04:01:25', '租客账号2', '租客姓名2', '房屋编号2', '房屋名称2', '房屋地址2', 2, '2021-05-02 12:01:25', '备注2', '13823888882', '屋主账号2', '是', '', '未支付'),
	(53, '2021-05-02 04:01:25', '租客账号3', '租客姓名3', '房屋编号3', '房屋名称3', '房屋地址3', 3, '2021-05-02 12:01:25', '备注3', '13823888883', '屋主账号3', '是', '', '未支付'),
	(54, '2021-05-02 04:01:25', '租客账号4', '租客姓名4', '房屋编号4', '房屋名称4', '房屋地址4', 4, '2021-05-02 12:01:25', '备注4', '13823888884', '屋主账号4', '是', '', '未支付'),
	(55, '2021-05-02 04:01:25', '租客账号5', '租客姓名5', '房屋编号5', '房屋名称5', '房屋地址5', 5, '2021-05-02 12:01:25', '备注5', '13823888885', '屋主账号5', '是', '', '未支付'),
	(56, '2021-05-02 04:01:25', '租客账号6', '租客姓名6', '房屋编号6', '房屋名称6', '房屋地址6', 6, '2021-05-02 12:01:25', '备注6', '13823888886', '屋主账号6', '是', '', '未支付');

DROP TABLE IF EXISTS `discussfangyuanxinxi`;
CREATE TABLE IF NOT EXISTS `discussfangyuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='房源信息评论表';

DELETE FROM `discussfangyuanxinxi`;
INSERT INTO `discussfangyuanxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(131, '2021-05-02 04:01:25', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(132, '2021-05-02 04:01:25', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(133, '2021-05-02 04:01:25', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(134, '2021-05-02 04:01:25', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(135, '2021-05-02 04:01:25', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(136, '2021-05-02 04:01:25', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `fangyuanxinxi`;
CREATE TABLE IF NOT EXISTS `fangyuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwudizhi` varchar(200) DEFAULT NULL COMMENT '房屋地址',
  `fangwuzhuangtai` varchar(200) DEFAULT NULL COMMENT '房屋状态',
  `fangwutedian` varchar(200) DEFAULT NULL COMMENT '房屋特点',
  `fangwujieshao` longtext COMMENT '房屋介绍',
  `chengjiaoliang` varchar(200) DEFAULT NULL COMMENT '成交量',
  `zulinjiage` int DEFAULT NULL COMMENT '租赁价格',
  `xiangqing` longtext COMMENT '详情',
  `fangwuzhaopian` varchar(200) DEFAULT NULL COMMENT '房屋照片',
  `wuzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '屋主账号',
  `wuzhuxingming` varchar(200) DEFAULT NULL COMMENT '屋主姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangwubianhao` (`fangwubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='房源信息';

DELETE FROM `fangyuanxinxi`;
INSERT INTO `fangyuanxinxi` (`id`, `addtime`, `fangwubianhao`, `fangwumingcheng`, `fangwudizhi`, `fangwuzhuangtai`, `fangwutedian`, `fangwujieshao`, `chengjiaoliang`, `zulinjiage`, `xiangqing`, `fangwuzhaopian`, `wuzhuzhanghao`, `wuzhuxingming`, `lianxidianhua`, `sfsh`, `shhf`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(31, '2021-05-02 04:01:25', '房屋编号1', '房屋名称1', '房屋地址1', '已出租', '房屋特点1', '房屋介绍1', '成交量1', 1, '详情1', 'http://localhost:8080/springboot94sk3/upload/fangyuanxinxi_fangwuzhaopian1.jpg', '屋主账号1', '屋主姓名1', '13823888881', '是', '', 1, 1, '2024-02-16 08:12:57', 2),
	(32, '2021-05-02 04:01:25', '房屋编号2', '房屋名称2', '房屋地址2', '已出租', '房屋特点2', '房屋介绍2', '成交量2', 2, '详情2', 'http://localhost:8080/springboot94sk3/upload/fangyuanxinxi_fangwuzhaopian2.jpg', '屋主账号2', '屋主姓名2', '13823888882', '是', '', 2, 2, '2021-05-02 12:01:25', 2),
	(33, '2021-05-02 04:01:25', '房屋编号3', '房屋名称3', '房屋地址3', '已出租', '房屋特点3', '房屋介绍3', '成交量3', 3, '详情3', 'http://localhost:8080/springboot94sk3/upload/fangyuanxinxi_fangwuzhaopian3.jpg', '屋主账号3', '屋主姓名3', '13823888883', '是', '', 3, 3, '2021-05-02 12:01:25', 3),
	(34, '2021-05-02 04:01:25', '房屋编号4', '房屋名称4', '房屋地址4', '已出租', '房屋特点4', '房屋介绍4', '成交量4', 4, '详情4', 'http://localhost:8080/springboot94sk3/upload/fangyuanxinxi_fangwuzhaopian4.jpg', '屋主账号4', '屋主姓名4', '13823888884', '是', '', 4, 4, '2021-05-02 12:01:25', 4),
	(35, '2021-05-02 04:01:25', '房屋编号5', '房屋名称5', '房屋地址5', '已出租', '房屋特点5', '房屋介绍5', '成交量5', 5, '详情5', 'http://localhost:8080/springboot94sk3/upload/fangyuanxinxi_fangwuzhaopian5.jpg', '屋主账号5', '屋主姓名5', '13823888885', '是', '', 5, 5, '2021-05-02 12:01:25', 5),
	(36, '2021-05-02 04:01:25', '房屋编号6', '房屋名称6', '房屋地址6', '已出租', '房屋特点6', '房屋介绍6', '成交量6', 6, '详情6', 'http://localhost:8080/springboot94sk3/upload/fangyuanxinxi_fangwuzhaopian6.jpg', '屋主账号6', '屋主姓名6', '13823888886', '是', '', 6, 6, '2024-02-16 08:14:22', 8);

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708042480384 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(121, '2021-05-02 04:01:25', 1, '用户名1', '留言内容1', '回复内容1'),
	(122, '2021-05-02 04:01:25', 2, '用户名2', '留言内容2', '回复内容2'),
	(123, '2021-05-02 04:01:25', 3, '用户名3', '留言内容3', '回复内容3'),
	(124, '2021-05-02 04:01:25', 4, '用户名4', '留言内容4', '回复内容4'),
	(125, '2021-05-02 04:01:25', 5, '用户名5', '留言内容5', '回复内容5'),
	(126, '2021-05-02 04:01:25', 6, '用户名6', '留言内容6', '回复内容6'),
	(1708042480383, '2024-02-16 00:14:40', 11, '租客1', '666', NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='房屋资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(111, '2021-05-02 04:01:25', '标题1', '简介1', 'http://localhost:8080/springboot94sk3/upload/news_picture1.jpg', '内容1'),
	(112, '2021-05-02 04:01:25', '标题2', '简介2', 'http://localhost:8080/springboot94sk3/upload/news_picture2.jpg', '内容2'),
	(113, '2021-05-02 04:01:25', '标题3', '简介3', 'http://localhost:8080/springboot94sk3/upload/news_picture3.jpg', '内容3'),
	(114, '2021-05-02 04:01:25', '标题4', '简介4', 'http://localhost:8080/springboot94sk3/upload/news_picture4.jpg', '内容4'),
	(115, '2021-05-02 04:01:25', '标题5', '简介5', 'http://localhost:8080/springboot94sk3/upload/news_picture5.jpg', '内容5'),
	(116, '2021-05-02 04:01:25', '标题6', '简介6', 'http://localhost:8080/springboot94sk3/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708042464903 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1708042464902, '2024-02-16 00:14:24', 11, 36, 'fangyuanxinxi', '房屋编号6', 'http://localhost:8080/springboot94sk3/upload/fangyuanxinxi_fangwuzhaopian6.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'a565fy6g07al0snp4t9wo23lbeto15wz', '2024-02-15 11:14:56', '2024-02-16 01:12:40'),
	(2, 11, '租客1', 'zuke', '租客', 'q90zvvantkpf81im2uce7gmxpy4df1ed', '2024-02-15 11:16:55', '2024-02-16 01:14:12'),
	(3, 21, '屋主1', 'wuzhu', '屋主', 'xrzsziuetkcmmmshi7obhmgq6x5d4id0', '2024-02-16 00:13:57', '2024-02-16 01:13:58');

DROP TABLE IF EXISTS `tongzhigonggao`;
CREATE TABLE IF NOT EXISTS `tongzhigonggao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `neirong` longtext COMMENT '内容',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='通知公告';

DELETE FROM `tongzhigonggao`;
INSERT INTO `tongzhigonggao` (`id`, `addtime`, `biaoti`, `neirong`, `faburen`, `faburiqi`, `tupian`) VALUES
	(91, '2021-05-02 04:01:25', '标题1', '内容1', '发布人1', '2021-05-02', 'http://localhost:8080/springboot94sk3/upload/tongzhigonggao_tupian1.jpg'),
	(92, '2021-05-02 04:01:25', '标题2', '内容2', '发布人2', '2021-05-02', 'http://localhost:8080/springboot94sk3/upload/tongzhigonggao_tupian2.jpg'),
	(93, '2021-05-02 04:01:25', '标题3', '内容3', '发布人3', '2021-05-02', 'http://localhost:8080/springboot94sk3/upload/tongzhigonggao_tupian3.jpg'),
	(94, '2021-05-02 04:01:25', '标题4', '内容4', '发布人4', '2021-05-02', 'http://localhost:8080/springboot94sk3/upload/tongzhigonggao_tupian4.jpg'),
	(95, '2021-05-02 04:01:25', '标题5', '内容5', '发布人5', '2021-05-02', 'http://localhost:8080/springboot94sk3/upload/tongzhigonggao_tupian5.jpg'),
	(96, '2021-05-02 04:01:25', '标题6', '内容6', '发布人6', '2021-05-02', 'http://localhost:8080/springboot94sk3/upload/tongzhigonggao_tupian6.jpg');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-02 04:01:25');

DROP TABLE IF EXISTS `wuzhu`;
CREATE TABLE IF NOT EXISTS `wuzhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzhuzhanghao` varchar(200) NOT NULL COMMENT '屋主账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `wuzhuxingming` varchar(200) NOT NULL COMMENT '屋主姓名',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuzhuzhanghao` (`wuzhuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='屋主';

DELETE FROM `wuzhu`;
INSERT INTO `wuzhu` (`id`, `addtime`, `wuzhuzhanghao`, `mima`, `wuzhuxingming`, `fangwumingcheng`, `xingbie`, `lianxidianhua`, `youxiang`, `shenfenzheng`) VALUES
	(21, '2021-05-02 04:01:25', '屋主1', '123456', '屋主姓名1', '房屋名称1', '男', '13823888881', '773890001@qq.com', '440300199101010001'),
	(22, '2021-05-02 04:01:25', '屋主2', '123456', '屋主姓名2', '房屋名称2', '男', '13823888882', '773890002@qq.com', '440300199202020002'),
	(23, '2021-05-02 04:01:25', '屋主3', '123456', '屋主姓名3', '房屋名称3', '男', '13823888883', '773890003@qq.com', '440300199303030003'),
	(24, '2021-05-02 04:01:25', '屋主4', '123456', '屋主姓名4', '房屋名称4', '男', '13823888884', '773890004@qq.com', '440300199404040004'),
	(25, '2021-05-02 04:01:25', '屋主5', '123456', '屋主姓名5', '房屋名称5', '男', '13823888885', '773890005@qq.com', '440300199505050005'),
	(26, '2021-05-02 04:01:25', '屋主6', '123456', '屋主姓名6', '房屋名称6', '男', '13823888886', '773890006@qq.com', '440300199606060006');

DROP TABLE IF EXISTS `wuzhuhuifu`;
CREATE TABLE IF NOT EXISTS `wuzhuhuifu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zukezhanghao` varchar(200) DEFAULT NULL COMMENT '租客账号',
  `zukexingming` varchar(200) DEFAULT NULL COMMENT '租客姓名',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `huifuneirong` longtext COMMENT '回复内容',
  `huifushijian` date DEFAULT NULL COMMENT '回复时间',
  `wuzhuxingming` varchar(200) DEFAULT NULL COMMENT '屋主姓名',
  `wuzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '屋主账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='屋主回复';

DELETE FROM `wuzhuhuifu`;
INSERT INTO `wuzhuhuifu` (`id`, `addtime`, `zukezhanghao`, `zukexingming`, `fangwubianhao`, `fangwumingcheng`, `huifuneirong`, `huifushijian`, `wuzhuxingming`, `wuzhuzhanghao`) VALUES
	(71, '2021-05-02 04:01:25', '租客账号1', '租客姓名1', '房屋编号1', '房屋名称1', '回复内容1', '2021-05-02', '屋主姓名1', '屋主账号1'),
	(72, '2021-05-02 04:01:25', '租客账号2', '租客姓名2', '房屋编号2', '房屋名称2', '回复内容2', '2021-05-02', '屋主姓名2', '屋主账号2'),
	(73, '2021-05-02 04:01:25', '租客账号3', '租客姓名3', '房屋编号3', '房屋名称3', '回复内容3', '2021-05-02', '屋主姓名3', '屋主账号3'),
	(74, '2021-05-02 04:01:25', '租客账号4', '租客姓名4', '房屋编号4', '房屋名称4', '回复内容4', '2021-05-02', '屋主姓名4', '屋主账号4'),
	(75, '2021-05-02 04:01:25', '租客账号5', '租客姓名5', '房屋编号5', '房屋名称5', '回复内容5', '2021-05-02', '屋主姓名5', '屋主账号5'),
	(76, '2021-05-02 04:01:25', '租客账号6', '租客姓名6', '房屋编号6', '房屋名称6', '回复内容6', '2021-05-02', '屋主姓名6', '屋主账号6');

DROP TABLE IF EXISTS `wuzhushensu`;
CREATE TABLE IF NOT EXISTS `wuzhushensu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zukezhanghao` varchar(200) DEFAULT NULL COMMENT '租客账号',
  `zukexingming` varchar(200) DEFAULT NULL COMMENT '租客姓名',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `shensuneirong` longtext COMMENT '申诉内容',
  `shensuzhuangtai` varchar(200) DEFAULT NULL COMMENT '申诉状态',
  `shensushijian` date DEFAULT NULL COMMENT '申诉时间',
  `wuzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '屋主账号',
  `wuzhuxingming` varchar(200) DEFAULT NULL COMMENT '屋主姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='屋主申诉';

DELETE FROM `wuzhushensu`;
INSERT INTO `wuzhushensu` (`id`, `addtime`, `zukezhanghao`, `zukexingming`, `fangwubianhao`, `fangwumingcheng`, `shensuneirong`, `shensuzhuangtai`, `shensushijian`, `wuzhuzhanghao`, `wuzhuxingming`, `sfsh`, `shhf`) VALUES
	(81, '2021-05-02 04:01:25', '租客账号1', '租客姓名1', '房屋编号1', '房屋名称1', '申诉内容1', '申诉中', '2021-05-02', '屋主账号1', '屋主姓名1', '是', ''),
	(82, '2021-05-02 04:01:25', '租客账号2', '租客姓名2', '房屋编号2', '房屋名称2', '申诉内容2', '申诉中', '2021-05-02', '屋主账号2', '屋主姓名2', '是', ''),
	(83, '2021-05-02 04:01:25', '租客账号3', '租客姓名3', '房屋编号3', '房屋名称3', '申诉内容3', '申诉中', '2021-05-02', '屋主账号3', '屋主姓名3', '是', ''),
	(84, '2021-05-02 04:01:25', '租客账号4', '租客姓名4', '房屋编号4', '房屋名称4', '申诉内容4', '申诉中', '2021-05-02', '屋主账号4', '屋主姓名4', '是', ''),
	(85, '2021-05-02 04:01:25', '租客账号5', '租客姓名5', '房屋编号5', '房屋名称5', '申诉内容5', '申诉中', '2021-05-02', '屋主账号5', '屋主姓名5', '是', ''),
	(86, '2021-05-02 04:01:25', '租客账号6', '租客姓名6', '房屋编号6', '房屋名称6', '申诉内容6', '申诉中', '2021-05-02', '屋主账号6', '屋主姓名6', '是', '');

DROP TABLE IF EXISTS `yuyuekanfang`;
CREATE TABLE IF NOT EXISTS `yuyuekanfang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '屋主账号',
  `wuzhuxingming` varchar(200) DEFAULT NULL COMMENT '屋主姓名',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `fangwudizhi` varchar(200) DEFAULT NULL COMMENT '房屋地址',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` longtext COMMENT '备注',
  `zukezhanghao` varchar(200) DEFAULT NULL COMMENT '租客账号',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='预约看房';

DELETE FROM `yuyuekanfang`;
INSERT INTO `yuyuekanfang` (`id`, `addtime`, `wuzhuzhanghao`, `wuzhuxingming`, `fangwubianhao`, `fangwumingcheng`, `fangwudizhi`, `yuyueshijian`, `beizhu`, `zukezhanghao`, `shouji`, `sfsh`, `shhf`) VALUES
	(41, '2021-05-02 04:01:25', '屋主账号1', '屋主姓名1', '房屋编号1', '房屋名称1', '房屋地址1', '2021-05-02 12:01:25', '备注1', '租客账号1', '手机1', '是', ''),
	(42, '2021-05-02 04:01:25', '屋主账号2', '屋主姓名2', '房屋编号2', '房屋名称2', '房屋地址2', '2021-05-02 12:01:25', '备注2', '租客账号2', '手机2', '是', ''),
	(43, '2021-05-02 04:01:25', '屋主账号3', '屋主姓名3', '房屋编号3', '房屋名称3', '房屋地址3', '2021-05-02 12:01:25', '备注3', '租客账号3', '手机3', '是', ''),
	(44, '2021-05-02 04:01:25', '屋主账号4', '屋主姓名4', '房屋编号4', '房屋名称4', '房屋地址4', '2021-05-02 12:01:25', '备注4', '租客账号4', '手机4', '是', ''),
	(45, '2021-05-02 04:01:25', '屋主账号5', '屋主姓名5', '房屋编号5', '房屋名称5', '房屋地址5', '2021-05-02 12:01:25', '备注5', '租客账号5', '手机5', '是', ''),
	(46, '2021-05-02 04:01:25', '屋主账号6', '屋主姓名6', '房屋编号6', '房屋名称6', '房屋地址6', '2021-05-02 12:01:25', '备注6', '租客账号6', '手机6', '是', '');

DROP TABLE IF EXISTS `zuke`;
CREATE TABLE IF NOT EXISTS `zuke` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zukezhanghao` varchar(200) NOT NULL COMMENT '租客账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zukexingming` varchar(200) NOT NULL COMMENT '租客姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zukezhanghao` (`zukezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='租客';

DELETE FROM `zuke`;
INSERT INTO `zuke` (`id`, `addtime`, `zukezhanghao`, `mima`, `zukexingming`, `xingbie`, `shouji`, `youxiang`, `shenfenzheng`) VALUES
	(11, '2021-05-02 04:01:25', '租客1', '123456', '租客姓名1', '男', '13823888881', '773890001@qq.com', '440300199101010001'),
	(12, '2021-05-02 04:01:25', '租客2', '123456', '租客姓名2', '男', '13823888882', '773890002@qq.com', '440300199202020002'),
	(13, '2021-05-02 04:01:25', '租客3', '123456', '租客姓名3', '男', '13823888883', '773890003@qq.com', '440300199303030003'),
	(14, '2021-05-02 04:01:25', '租客4', '123456', '租客姓名4', '男', '13823888884', '773890004@qq.com', '440300199404040004'),
	(15, '2021-05-02 04:01:25', '租客5', '123456', '租客姓名5', '男', '13823888885', '773890005@qq.com', '440300199505050005'),
	(16, '2021-05-02 04:01:25', '租客6', '123456', '租客姓名6', '男', '13823888886', '773890006@qq.com', '440300199606060006');

DROP TABLE IF EXISTS `zukepingjia`;
CREATE TABLE IF NOT EXISTS `zukepingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzhuzhanghao` varchar(200) DEFAULT NULL COMMENT '屋主账号',
  `fangwubianhao` varchar(200) DEFAULT NULL COMMENT '房屋编号',
  `fangwumingcheng` varchar(200) DEFAULT NULL COMMENT '房屋名称',
  `pingjialeixing` varchar(200) DEFAULT NULL COMMENT '评价类型',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiashijian` date DEFAULT NULL COMMENT '评价时间',
  `zukezhanghao` varchar(200) DEFAULT NULL COMMENT '租客账号',
  `zukexingming` varchar(200) DEFAULT NULL COMMENT '租客姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='租客评价';

DELETE FROM `zukepingjia`;
INSERT INTO `zukepingjia` (`id`, `addtime`, `wuzhuzhanghao`, `fangwubianhao`, `fangwumingcheng`, `pingjialeixing`, `pingjianeirong`, `pingjiashijian`, `zukezhanghao`, `zukexingming`) VALUES
	(61, '2021-05-02 04:01:25', '屋主账号1', '房屋编号1', '房屋名称1', '好评', '评价内容1', '2021-05-02', '租客账号1', '租客姓名1'),
	(62, '2021-05-02 04:01:25', '屋主账号2', '房屋编号2', '房屋名称2', '好评', '评价内容2', '2021-05-02', '租客账号2', '租客姓名2'),
	(63, '2021-05-02 04:01:25', '屋主账号3', '房屋编号3', '房屋名称3', '好评', '评价内容3', '2021-05-02', '租客账号3', '租客姓名3'),
	(64, '2021-05-02 04:01:25', '屋主账号4', '房屋编号4', '房屋名称4', '好评', '评价内容4', '2021-05-02', '租客账号4', '租客姓名4'),
	(65, '2021-05-02 04:01:25', '屋主账号5', '房屋编号5', '房屋名称5', '好评', '评价内容5', '2021-05-02', '租客账号5', '租客姓名5'),
	(66, '2021-05-02 04:01:25', '屋主账号6', '房屋编号6', '房屋名称6', '好评', '评价内容6', '2021-05-02', '租客账号6', '租客姓名6');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
