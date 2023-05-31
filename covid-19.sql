# 查看資料
SELECT * FROM `covid-19`;
#將資料中有空值的紀錄刪除
SET SQL_SAFE_UPDATES=0;
DELETE FROM `covid-19` WHERE (Township = '空值') & (City = '空值');
SELECT * FROM `covid-19`;

#查看2021年確診死亡的紀錄
SELECT * FROM `covid-19_2` WHERE `Death Year` = 2021;

#查看2022年確診死亡的紀錄
SELECT * FROM `covid-19_2` WHERE `Death Year` = 2022;

#查看2023年確診死亡的紀錄
SELECT * FROM `covid-19_2` WHERE `Death Year` = 2023;

#查看 2023年桃園市死亡個案
SELECT * FROM `covid-19` WHERE `City` like '%桃%' AND `Death Year` = 2023;

#查看2021-2023女性確診死亡比例
SELECT   ROUND(( SELECT COUNT( `Death Num` ) FROM `covid-19`  WHERE `Sex` = 'F' )   /  

 (   SELECT  COUNT(`Death Num`)  FROM `covid-19`  ),2) 'Female Death';

#2021-2023女性確診死亡的百分比
SELECT   ( SELECT COUNT( `Death Num` ) * 100 FROM `covid-19`  WHERE `Sex` = 'F' )   /  

(   SELECT  COUNT(`Death Num`)  FROM `covid-19`  )   'Female Death Percentage'  ;

#查看2021-2023男性確診死亡比例
SELECT   ROUND(( SELECT COUNT( `Death Num` ) FROM `covid-19`  WHERE `Sex` = 'M' )   /  

 (   SELECT  COUNT(`Death Num`)  FROM `covid-19`  ),2) 'Male Death';

#2021-2023男性確診死亡的百分比
SELECT   ( SELECT COUNT( `Death Num` ) * 100 FROM `covid-19`  WHERE `Sex` = 'M' )   /  

(   SELECT  COUNT(`Death Num`)  FROM `covid-19`  )   'Male Death Percentage'  ;