-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.30-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema crs
--

CREATE DATABASE IF NOT EXISTS crs;
USE crs;

--
-- Definition of table `addcompany_tbl`
--

DROP TABLE IF EXISTS `addcompany_tbl`;
CREATE TABLE `addcompany_tbl` (
  `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_title` varchar(45) DEFAULT NULL,
  `company` varchar(1000) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `industry` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `employment_type` varchar(45) DEFAULT NULL,
  `criteria` varchar(45) DEFAULT NULL,
  `skill_set` varchar(1000) DEFAULT NULL,
  `post_date` varchar(45) DEFAULT NULL,
  `rec_email` varchar(100) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `passout_year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcompany_tbl`
--

/*!40000 ALTER TABLE `addcompany_tbl` DISABLE KEYS */;
INSERT INTO `addcompany_tbl` (`post_id`,`post_title`,`company`,`location`,`salary`,`industry`,`designation`,`employment_type`,`criteria`,`skill_set`,`post_date`,`rec_email`,`qualification`,`passout_year`) VALUES 
 (26,'Tester','ATOS','Akurdi','2','IT','Java Developer','Permant','60','core Java','2019-01-29','priyankamarathe0108@gmail.com','BE(IT)','2018'),
 (27,'Tester','infosys','pune','5','IT','Software Testing','Part Time','55','java','2019-01-29','priyankamarathe0108@gmail.com','BE','2017'),
 (33,'Developer','KPIT','pune','4','IT','Java Developer','Full Time','60','Java,SQL','2019-01-29','priyankamarathe0108@gmail.com','BE','2017'),
 (34,'Java developer','IBM','Pune','3','IT','Java Developer','Full Time','60%','c,c++,java,hibernate','2019-04-05','tpo123@gmail.com','BE(IT/Comp)','2017');
/*!40000 ALTER TABLE `addcompany_tbl` ENABLE KEYS */;


--
-- Definition of table `admintbl`
--

DROP TABLE IF EXISTS `admintbl`;
CREATE TABLE `admintbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emailid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintbl`
--

/*!40000 ALTER TABLE `admintbl` DISABLE KEYS */;
INSERT INTO `admintbl` (`id`,`emailid`,`password`,`uname`) VALUES 
 (1,'tpo123@gmail.com','Tpo@123','Admin');
/*!40000 ALTER TABLE `admintbl` ENABLE KEYS */;


--
-- Definition of table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `exam_id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `correct_answer` varchar(1000) NOT NULL,
  `status` varchar(1000) NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=783 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answers`
--

/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` (`answer_id`,`exam_id`,`question`,`answer`,`correct_answer`,`status`) VALUES 
 (710,19,'Can we declare function inside structure of C Programming?','Yes','No','incorrect'),
 (711,19,'Which compilation unit is responsible for adding header files content in the source code?','Linker','Preprocessor','incorrect'),
 (712,19,'What is the meaning of below lines? void sum (int, int);','it will produce compilation error','sum is a function which takes two int arguments and returns void','incorrect'),
 (713,19,'What is sizeof() in C?','Function','Operator','incorrect'),
 (714,19,'Is there any limit in adding no of header files in program?','No','No','correct'),
 (715,19,'Is it possible to run program without main() function?','Adaquate','No','incorrect'),
 (716,19,'What is the job of Assembler in C programming?','It converts source code into assembly code','It converts a assembly language program into machine language','incorrect'),
 (717,19,'Which of the following is executed by Preprocess?','return 0','#include<stdio.h>','incorrect'),
 (718,19,'Which programming language is more faster among these?','PHP','C','incorrect'),
 (719,19,'Java is.....?','Platform dependent','Platform independent','incorrect'),
 (720,19,'How many main() function we can have in our project?','0','1','incorrect'),
 (721,19,'Which one of the following is invalid macro in C programming?','#error','#elseif','incorrect'),
 (722,19,'The concept of two functions with same name is know as?','Operator Overloading','Function Overloading','incorrect'),
 (723,21,'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?','180 metres','150 metres','incorrect'),
 (724,21,'A sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is:','Rs. 690','Rs. 698','incorrect'),
 (725,21,'3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?','11','12','incorrect'),
 (726,21,'The H.C.F. of two numbers is 23 and the other two factors of their L.C.M. are 13 and 14. The larger of the two numbers is:','322','322','correct'),
 (727,21,'If a quarter kg of potato costs 60 paise, how many paise will 200 gm cost?','54 paise','48 paise','incorrect'),
 (728,21,'Find out the odd man out: 	 3, 5, 11, 14, 17, 21','17','14','incorrect'),
 (729,21,'An industrial loom weaves 0.128 metres of cloth every second. Approximately, how many seconds will it take for the loom to weave 25 metres of cloth?','195','195','correct'),
 (730,21,'39 persons can repair a road in 12 days, working 5 hours a day. In how many days will 30 persons, working 6 hours a day, complete the work?','13','13','correct'),
 (731,21,'A car owner buys petrol at Rs.7.50, Rs. 8 and Rs. 8.50 per litre for three successive years. What approximately is the average cost per litre of petrol if he spends Rs. 4000 each year?','RS. 8','Rs. 7.98','incorrect'),
 (732,21,'36 men can complete a piece of work in 18 days. In how many days will 27 men complete the same work?','22','24','incorrect'),
 (733,21,'The cost price of 20 articles is the same as the selling price of x articles. If the profit is 25%, then the value of x is:','16','16','correct'),
 (734,21,'Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case.','7','4','incorrect'),
 (735,21,'A train speeds past a pole in 15 seconds and a platform 100 m long in 25 seconds. Its length is:','150 m','150 m','correct'),
 (736,21,'The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:','225 m','245 m','incorrect'),
 (737,21,'A vendor bought toffees at 6 for a rupee. How many for a rupee must he sell to gain 20%?','5','5','correct'),
 (738,21,'The average of 20 numbers is zero. Of them, at the most, how many may be greater than zero?','10','19','incorrect'),
 (739,21,'A train 240 m long passes a pole in 24 seconds. How long will it take to pass a platform 650 m long?','89 sec','89 sec','correct'),
 (740,21,'	 A train 360 m long is running at a speed of 45 km/hr. In what time will it pass a bridge 140 m long?','45 sec','40 sec','incorrect'),
 (741,21,'The greatest number of four digits which is divisible by 15, 25, 40 and 75 is:','9600','9600','correct'),
 (742,21,'In a camp, there is a meal for 120 men or 200 children. If 150 children have taken the meal, how many men will be catered to with remaining meal?','40','30','incorrect'),
 (743,1,'A train 240 m long passes a pole in 24 seconds. How long will it take to pass a platform 650 m long?','65 sec','89 sec','incorrect'),
 (744,1,'Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case.','7','4','incorrect'),
 (745,1,'3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?','11','12','incorrect'),
 (746,1,'A train speeds past a pole in 15 seconds and a platform 100 m long in 25 seconds. Its length is:','150 m','150 m','correct'),
 (747,1,'Find out the odd man out: 	 3, 5, 11, 14, 17, 21','17','14','incorrect'),
 (748,1,'If a quarter kg of potato costs 60 paise, how many paise will 200 gm cost?','54 paise','48 paise','incorrect'),
 (749,1,'The H.C.F. of two numbers is 23 and the other two factors of their L.C.M. are 13 and 14. The larger of the two numbers is:','322','322','correct'),
 (750,1,'A car owner buys petrol at Rs.7.50, Rs. 8 and Rs. 8.50 per litre for three successive years. What approximately is the average cost per litre of petrol if he spends Rs. 4000 each year?','RS. 8','Rs. 7.98','incorrect'),
 (751,1,'In a camp, there is a meal for 120 men or 200 children. If 150 children have taken the meal, how many men will be catered to with remaining meal?','40','30','incorrect'),
 (752,1,'39 persons can repair a road in 12 days, working 5 hours a day. In how many days will 30 persons, working 6 hours a day, complete the work?','14','13','incorrect'),
 (753,1,'A vendor bought toffees at 6 for a rupee. How many for a rupee must he sell to gain 20%?','5','5','correct'),
 (754,1,'The average of 20 numbers is zero. Of them, at the most, how many may be greater than zero?','10','19','incorrect'),
 (755,1,'The cost price of 20 articles is the same as the selling price of x articles. If the profit is 25%, then the value of x is:','18','16','incorrect'),
 (756,1,'An industrial loom weaves 0.128 metres of cloth every second. Approximately, how many seconds will it take for the loom to weave 25 metres of cloth?','204','195','incorrect'),
 (757,1,'The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:','225 m','245 m','incorrect'),
 (758,1,'The greatest number of four digits which is divisible by 15, 25, 40 and 75 is:','9600','9600','correct'),
 (759,1,'A sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is:','Rs. 690','Rs. 698','incorrect'),
 (760,1,'	 A train 360 m long is running at a speed of 45 km/hr. In what time will it pass a bridge 140 m long?','45 sec','40 sec','incorrect'),
 (761,1,'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?','180 metres','150 metres','incorrect'),
 (762,1,'36 men can complete a piece of work in 18 days. In how many days will 27 men complete the same work?','24','24','correct'),
 (763,3,'A car owner buys petrol at Rs.7.50, Rs. 8 and Rs. 8.50 per litre for three successive years. What approximately is the average cost per litre of petrol if he spends Rs. 4000 each year?','Rs. 7.98','Rs. 7.98','correct'),
 (764,3,'A train 240 m long passes a pole in 24 seconds. How long will it take to pass a platform 650 m long?','65 sec','89 sec','incorrect'),
 (765,3,'The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:','225 m','245 m','incorrect'),
 (766,3,'	 A train 360 m long is running at a speed of 45 km/hr. In what time will it pass a bridge 140 m long?','42 sec','40 sec','incorrect'),
 (767,3,'A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?','180 metres','150 metres','incorrect'),
 (768,3,'If a quarter kg of potato costs 60 paise, how many paise will 200 gm cost?','54 paise','48 paise','incorrect'),
 (769,3,'A train speeds past a pole in 15 seconds and a platform 100 m long in 25 seconds. Its length is:','150 m','150 m','correct'),
 (770,3,'The average of 20 numbers is zero. Of them, at the most, how many may be greater than zero?','10','19','incorrect'),
 (771,3,'3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?','11','12','incorrect'),
 (772,3,'A vendor bought toffees at 6 for a rupee. How many for a rupee must he sell to gain 20%?','5','5','correct'),
 (773,7,'Success in this examination depends ...... hard work alone.','over','on','incorrect'),
 (774,7,'My uncle decided to take ...... and my sister to the market.','me','me','correct'),
 (775,7,'In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence:  	 A style in which a writer makes a display of his knowledge','Verbose','Pedantic','incorrect'),
 (776,7,'Fate smiles ...... those who untiringly grapple with stark realities of life.','over','on','incorrect'),
 (777,7,'Catching the earlier train will give us the ...... to do some shopping.','possibility','chance','incorrect'),
 (778,7,'In the following questions choose the word which is the exact OPPOSITE of the given words:       ARTIFICIAL ','Truthful','Natural','incorrect'),
 (779,7,'The grapes are now ...... enough to be picked.','ripe','ripe','correct'),
 (780,7,'In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence: 	 Extreme old age when a man behaves like a fool','Dotage','Dotage','correct'),
 (781,7,'In the following questions choose the word which is the exact OPPOSITE of the given words:  	 ENORMOUS','Tiny','Tiny','correct'),
 (782,7,'In the following the questions choose the word which best expresses the meaning of the given word: 	 BRIEF','Little','Short','incorrect');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;


--
-- Definition of table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `testtype` varchar(45) NOT NULL,
  `total_marks` varchar(45) NOT NULL,
  `obt_marks` varchar(45) DEFAULT NULL,
  `date` varchar(45) NOT NULL,
  `start_time` varchar(45) NOT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  `exam_time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

/*!40000 ALTER TABLE `exams` DISABLE KEYS */;
INSERT INTO `exams` (`exam_id`,`email`,`testtype`,`total_marks`,`obt_marks`,`date`,`start_time`,`end_time`,`exam_time`,`status`) VALUES 
 (1,'xyz@gmail.com','Aptitude','30','7','14-05-2019','15:40:49.962','15:41:17.967','30','Fail'),
 (3,'abc@gmail.com','Aptitude','30','9','15-05-2019','16:21:50.378','16:22:10.739','30','Fail'),
 (4,'abc@gmail.com','Technical','30','16','15-05-2019','16:21:50.378','16:22:10.739','30','Pass'),
 (5,'abc@gmail.com','Verbal','30','20','14-05-2019','16:21:50.378','16:22:10.739','30','Pass'),
 (6,'abc@gmail.com','Aptitude','30','18','16-05-2019','16:21:50.378','16:22:10.739','30','Pass'),
 (7,'abc@gmail.com','Verbal','30','12','29-05-2019','11:37:36.975','11:39:52.679','30','Fail');
/*!40000 ALTER TABLE `exams` ENABLE KEYS */;


--
-- Definition of table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `testtype` varchar(45) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(1000) NOT NULL,
  `opt2` varchar(1000) NOT NULL,
  `opt3` varchar(1000) NOT NULL,
  `opt4` varchar(1000) NOT NULL,
  `correct` varchar(1000) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`question_id`,`testtype`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`correct`) VALUES 
 (11,'Technical','Java is.....?','Platform independent','Platform dependent','None','both','Platform independent'),
 (12,'Aptitude','The cost price of 20 articles is the same as the selling price of x articles. If the profit is 25%, then the value of x is:','15','16','18','25','16'),
 (13,'Aptitude','A vendor bought toffees at 6 for a rupee. How many for a rupee must he sell to gain 20%?','3','4','5','6','5'),
 (14,'Aptitude','A train running at the speed of 60 km/hr crosses a pole in 9 seconds. What is the length of the train?','120 metres','180 metres','324 metres','150 metres','150 metres'),
 (15,'Aptitude','The length of the bridge, which a train 130 metres long and travelling at 45 km/hr can cross in 30 seconds, is:','200 m','225 m','245 m','250 m','245 m'),
 (16,'Aptitude','A train 240 m long passes a pole in 24 seconds. How long will it take to pass a platform 650 m long?','65 sec','89 sec','100 sec','150 sec','89 sec'),
 (17,'Aptitude','	 A train 360 m long is running at a speed of 45 km/hr. In what time will it pass a bridge 140 m long?','40 sec','42 sec','45 sec','48 sec','40 sec'),
 (18,'Aptitude','A train speeds past a pole in 15 seconds and a platform 100 m long in 25 seconds. Its length is:','50 m','150 m','200 m','Data inadequate','150 m'),
 (19,'Aptitude','Find out the odd man out: 	 3, 5, 11, 14, 17, 21','21','17','14','3','14'),
 (20,'Aptitude','The average of 20 numbers is zero. Of them, at the most, how many may be greater than zero?','0','1','10','19','19'),
 (21,'Aptitude','A car owner buys petrol at Rs.7.50, Rs. 8 and Rs. 8.50 per litre for three successive years. What approximately is the average cost per litre of petrol if he spends Rs. 4000 each year?','Rs. 7.98','RS. 8','Rs. 8.50','RS. 9','Rs. 7.98'),
 (22,'Aptitude','3 pumps, working 8 hours a day, can empty a tank in 2 days. How many hours a day must 4 pumps work to empty the tank in 1 day?','9','10','11','12','12'),
 (23,'Aptitude','39 persons can repair a road in 12 days, working 5 hours a day. In how many days will 30 persons, working 6 hours a day, complete the work?','10','13','14','15','13'),
 (24,'Aptitude','If a quarter kg of potato costs 60 paise, how many paise will 200 gm cost?','48 paise','54 paise','56 paise','72 paise','48 paise'),
 (25,'Aptitude','In a camp, there is a meal for 120 men or 200 children. If 150 children have taken the meal, how many men will be catered to with remaining meal?','20','30','40','50','30'),
 (26,'Aptitude','An industrial loom weaves 0.128 metres of cloth every second. Approximately, how many seconds will it take for the loom to weave 25 metres of cloth?','178','195','204','488','195'),
 (27,'Aptitude','36 men can complete a piece of work in 18 days. In how many days will 27 men complete the same work?','12','18','22','24','24'),
 (28,'Aptitude','A sum of money at simple interest amounts to Rs. 815 in 3 years and to Rs. 854 in 4 years. The sum is:','Rs. 650','Rs. 690','Rs. 698','Rs. 700','Rs. 698'),
 (29,'Aptitude','Find the greatest number that will divide 43, 91 and 183 so as to leave the same remainder in each case.','4','7','9','13','4'),
 (30,'Aptitude','The H.C.F. of two numbers is 23 and the other two factors of their L.C.M. are 13 and 14. The larger of the two numbers is:','276','299','322','345','322'),
 (31,'Aptitude','The greatest number of four digits which is divisible by 15, 25, 40 and 75 is:','9000','9400','9600','9800','9600'),
 (32,'Verbal','In the following the questions choose the word which best expresses the meaning of the given word: 	 BRIEF','Limited','Small','Little','Short','Short'),
 (33,'Verbal','Fate smiles ...... those who untiringly grapple with stark realities of life.','with','over','on','round','on'),
 (34,'Verbal','Catching the earlier train will give us the ...... to do some shopping.','chance','luck','possibility','occasion','chance'),
 (35,'Verbal','The grapes are now ...... enough to be picked.','ready','mature','ripe','advanced','ripe'),
 (36,'Verbal','Success in this examination depends ...... hard work alone.','at','over','for','on','on'),
 (37,'Verbal','My uncle decided to take ...... and my sister to the market.','I','mine','me','myself','me'),
 (38,'verbal','In the following questions choose the word which is the exact OPPOSITE of the given words:  	 ENORMOUS','Soft','Average','Tiny','Weak','Tiny'),
 (39,'Verbal','In the following questions choose the word which is the exact OPPOSITE of the given words:       ARTIFICIAL ','Red','Natural','Truthful','Solid','Natural'),
 (40,'Verbal','In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence: 	 Extreme old age when a man behaves like a fool','Imbecility','Senility','Dotage','Superannuation','Dotage'),
 (41,'Verbal','In questions given below out of four alternatives, choose the one which can be substituted for the given word/sentence:  	 A style in which a writer makes a display of his knowledge','Pedantic','Verbose','Pompous','Ornate','Pedantic'),
 (42,'Technical','Is it possible to run program without main() function?','Yes','No','Adaquate','none','No'),
 (43,'Technical','How many main() function we can have in our project?','1','0','2','3','1'),
 (44,'Technical','What is sizeof() in C?','Operator','Function','Macro','None of these','Operator'),
 (45,'Technical','Which programming language is more faster among these?','Java','PHP','C','Visual Basic','C'),
 (46,'Technical','Which of the following is executed by Preprocess?','#include<stdio.h>','return 0','void main(int argc , char ** argv)','None of above','#include<stdio.h>'),
 (47,'Technical','What is the meaning of below lines? void sum (int, int);','sum is function which takes int arguments','sum is a function which takes two int arguments and returns void','it will produce compilation error',' Can\'t comment','sum is a function which takes two int arguments and returns void'),
 (48,'Technical','The concept of two functions with same name is know as?','Operator Overloading','Function Overloading','Function Overriding','Function renaming','Function Overloading'),
 (49,'Technical','Can we declare function inside structure of C Programming?','Yes','No','Depends on Compiler','Yes but run time error','No'),
 (50,'Technical','What is the job of Assembler in C programming?','It converts source code into assembly code','It converts a assembly language program into machine language','t convert code generated by Preprocessor to assembly code','None of the above','It converts a assembly language program into machine language'),
 (51,'Technical','Which one of the following is invalid macro in C programming?','#pragma','#error','#ifndef','#elseif','#elseif'),
 (52,'Technical','Is there any limit in adding no of header files in program?','Yes','No','---','---','No'),
 (53,'Technical','Which compilation unit is responsible for adding header files content in the source code?','Linker','Compiler ','Assembler','Preprocessor','Preprocessor');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;


--
-- Definition of table `schedulecompany_tbl`
--

DROP TABLE IF EXISTS `schedulecompany_tbl`;
CREATE TABLE `schedulecompany_tbl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company` varchar(45) NOT NULL,
  `schcriteria` varchar(45) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `Venu` varchar(45) NOT NULL,
  `Time` varchar(45) NOT NULL,
  `CTC` varchar(45) NOT NULL,
  `profile` varchar(45) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedulecompany_tbl`
--

/*!40000 ALTER TABLE `schedulecompany_tbl` DISABLE KEYS */;
INSERT INTO `schedulecompany_tbl` (`id`,`company`,`schcriteria`,`Date`,`Venu`,`Time`,`CTC`,`profile`) VALUES 
 (9,'ATOS','62','2019-01-18','Pune','10 am','2.5','Developer'),
 (10,'Zensar','60','2019-01-18','Pune','9:30 am','2.2','Tester'),
 (11,'Capgimini','70','2019-01-18','Hinjewadi Phase2','10 am','1.8','Tester'),
 (12,'KPIT','65','2019-01-18','kharadi IT Park','11 am','3.0','Developer'),
 (13,'Syntel','58','2019-01-18','Pune','12 pm','3.0','Developer'),
 (14,'SSP','60','2019-05-16','Akurdi','9 am','2.0','Tester'),
 (15,'pg','55','2019-05-31','akurdi','12','3','developer');
/*!40000 ALTER TABLE `schedulecompany_tbl` ENABLE KEYS */;


--
-- Definition of table `studenttbl`
--

DROP TABLE IF EXISTS `studenttbl`;
CREATE TABLE `studenttbl` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `PRN` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `sscboard` varchar(45) NOT NULL,
  `sscschool` varchar(45) NOT NULL,
  `sscmarks` varchar(45) NOT NULL,
  `hscboard` varchar(45) NOT NULL,
  `hsccollege` varchar(45) NOT NULL,
  `hscmarks` varchar(45) NOT NULL,
  `dipboard` varchar(45) NOT NULL,
  `dipcollege` varchar(45) NOT NULL,
  `dipmarks` varchar(45) NOT NULL,
  `beboard` varchar(45) NOT NULL,
  `becollege` varchar(45) NOT NULL,
  `bemarks` int(10) unsigned NOT NULL,
  `year` varchar(45) NOT NULL,
  `liveback` varchar(45) NOT NULL,
  `deadback` varchar(45) NOT NULL,
  `yeargap` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `photo` longblob NOT NULL,
  `resume` longblob NOT NULL,
  `interestedin` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttbl`
--

/*!40000 ALTER TABLE `studenttbl` DISABLE KEYS */;
INSERT INTO `studenttbl` (`id`,`name`,`PRN`,`dob`,`branch`,`phone`,`email`,`address`,`sscboard`,`sscschool`,`sscmarks`,`hscboard`,`hsccollege`,`hscmarks`,`dipboard`,`dipcollege`,`dipmarks`,`beboard`,`becollege`,`bemarks`,`year`,`liveback`,`deadback`,`yeargap`,`password`,`photo`,`resume`,`interestedin`,`status`) VALUES 
 (6,'xyz ','3456','05/11/1996','Comp','9962536548','xyz@gmail.com','Akurdi','Mh','d.y','88','No','No','No','MSBTE','D.y','75','Pune univercity','d.y',65,'2018','NO','NO','NO','Xy@234',0x6A6176612E696F2E427974654172726179496E70757453747265616D403430613233343463,0x6A6176612E696F2E427974654172726179496E70757453747265616D403632373639333462,'Java','Unplace');
/*!40000 ALTER TABLE `studenttbl` ENABLE KEYS */;


--
-- Definition of table `studstatus`
--

DROP TABLE IF EXISTS `studstatus`;
CREATE TABLE `studstatus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `PRN` varchar(45) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studstatus`
--

/*!40000 ALTER TABLE `studstatus` DISABLE KEYS */;
INSERT INTO `studstatus` (`id`,`name`,`PRN`,`branch`,`phone`,`email`,`status`) VALUES 
 (2,'rushi     ','1234','IT','9970459586','abc@gmail.com','place');
/*!40000 ALTER TABLE `studstatus` ENABLE KEYS */;


--
-- Definition of table `testtype`
--

DROP TABLE IF EXISTS `testtype`;
CREATE TABLE `testtype` (
  `testtype` varchar(25) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `time` varchar(45) NOT NULL,
  PRIMARY KEY (`testtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testtype`
--

/*!40000 ALTER TABLE `testtype` DISABLE KEYS */;
INSERT INTO `testtype` (`testtype`,`total_marks`,`time`) VALUES 
 ('Aptitude',30,'30'),
 ('Technical',30,'30'),
 ('Verbal',30,'30');
/*!40000 ALTER TABLE `testtype` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;