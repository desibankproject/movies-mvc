/*
Navicat MySQL Data Transfer

Source Server         : Mahakal
Source Server Version : 50013
Source Host           : localhost:3306
Source Database       : springbootdb

Target Server Type    : MYSQL
Target Server Version : 50013
File Encoding         : 65001

Date: 2019-01-03 11:36:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `movies_tbl`
-- ----------------------------
DROP TABLE IF EXISTS `movies_tbl`;
CREATE TABLE `movies_tbl` (
  `mid` int(11) NOT NULL auto_increment,
  `title` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `language` varchar(40) default NULL,
  `director` varchar(100) default NULL,
  `year` varchar(5) default NULL,
  `photo` varchar(500) default NULL,
  `doe` timestamp NULL default NULL,
  PRIMARY KEY  (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of movies_tbl
-- ----------------------------
INSERT INTO `movies_tbl` VALUES ('100', 'Robot2.x', 'nage@gmail.com', 'Hindi', 'ABC', '2011', 'http://localhost:555/movies-mvc-app/img/maxresdefault.jpg', '2019-01-03 11:07:41');
INSERT INTO `movies_tbl` VALUES ('101', '', '', 'Hindi', '', '2017', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqNhhiM4ChBG-dO_Rjf055lclT7OqVajJwauOhoDTscW9BC9E', '2019-01-03 11:20:44');
INSERT INTO `movies_tbl` VALUES ('102', 'Python', 'nagendra.synergisticit@gmail.com', 'Hindi', 'ABCD', '2018', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqNhhiM4ChBG-dO_Rjf055lclT7OqVajJwauOhoDTscW9BC9E', '2019-01-03 11:22:53');
INSERT INTO `movies_tbl` VALUES ('103', 'Python', 'nagendra.synergisticit@gmail.com', 'Hindi', 'ABCD', '2018', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqNhhiM4ChBG-dO_Rjf055lclT7OqVajJwauOhoDTscW9BC9E', '2019-01-03 11:26:13');
INSERT INTO `movies_tbl` VALUES ('104', 'SPEAKER2.0', 'nagen@synergisticit.com', 'Hindi', 'ABCD', '2018', 'https://m.media-amazon.com/images/M/MV5BOGNhMWE2YzktYzU0Yi00OGFlLTlhYzMtODBiOGFiZTM1YjI1XkEyXkFqcGdeQXVyODIwMDI1NjM@._V1_UY268_CR4,0,182,268_AL_.jpg', '2019-01-03 11:26:20');
