DROP DATABASE IF EXISTS `company`;
CREATE DATABASE IF NOT EXISTS  `company`; 
USE `company`;

CREATE TABLE Sales(
   OID INTEGER PRIMARY KEY,
   Item VARCHAR(20) NOT NULL,
   Price FLOAT,
   Qty INTEGER,
   Date DATETIME,
   CustomerName VARCHAR(30) NOT NULL
);

INSERT INTO `Sales` VALUES ('1',"hammer","10",'2','2002-01-01','Andrew');
INSERT INTO `Sales` VALUES ('2',"keys ","1213",'5','2020-06-09','hany ');
INSERT INTO `Sales` VALUES ('3',"computer","10000",'10','2020-03-25','Omar Ahmed');
INSERT INTO `Sales` VALUES ('4',"mobile phone ","6000",'7','2020-03-25','Andrew');
INSERT INTO `Sales` VALUES ('5',"car","23423423",'1','2017-01-21','Omar Ahmed');
INSERT INTO `Sales` VALUES ('6',"hammer","10",'1','2012-02-25','Hany');
INSERT INTO `Sales` VALUES ('7',"keys ","1213",'3','2020-01-21','Omar Ahmed');
INSERT INTO `Sales` VALUES ('8',"computer","10000",'1','2020-03-10','Ebrahem');
INSERT INTO `Sales` VALUES ('9',"mobile phone ","6000",'4','2020-03-25','JO ayman');
INSERT INTO `Sales` VALUES ('10',"car","23423423",'4','2009-01-01','JO ayman');