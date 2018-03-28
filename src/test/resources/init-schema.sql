DROP TABLE IF EXISTS `applytable`;
CREATE TABLE `applytable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_name` varchar(64) NOT NULL DEFAULT '',
  `course_type` varchar(128) NOT NULL DEFAULT '',
  `principal` varchar(128) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `credit` FLOAT(5,2) NOT NULL DEFAULT 0,
  `remark` varchar(256) NOT NULL DEFAULT '',
  `belong` varchar(128) NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT '0',/* 0申请未通过 1申请通过*/
  `create_date` DATETIME NOT NULL ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `drafttable`;
CREATE TABLE `drafttable` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `course_name` varchar(64) NOT NULL DEFAULT '',
  `course_type` varchar(128) NOT NULL DEFAULT '',
  `principal` varchar(128) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `credit` FLOAT(5,2) NOT NULL DEFAULT 0,
  `remark` varchar(256) NOT NULL DEFAULT '',
  `belong` varchar(128) NOT NULL DEFAULT '',
  `status` int NOT NULL DEFAULT '0',/* 0申请未通过 1申请通过*/
  `create_date` DATETIME NOT NULL ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




DROP TABLE IF EXISTS `adminstrators`;
CREATE TABLE `adminstrators` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `department` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(128) NOT NULL DEFAULT '',
  `tel` varchar(32) NOT NULL DEFAULT '',
  `college` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;








