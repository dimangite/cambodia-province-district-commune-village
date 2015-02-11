CREATE TABLE IF NOT EXISTS `op_communes` (
  `id` int(20) NOT NULL,
  `name` text,
  `district_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tcommune` (`district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `op_communes`
--

INSERT INTO `op_communes` (`id`, `name`, `district_id`) VALUES
(150101, 'Boeng Bat Kandaol', 1501),
(150102, 'Boeng Khnar', 1501),
(150103, 'Khnar Totueng', 1501),
(150104, 'Me Tuek', 1501),
(150105, 'Ou Ta Paong', 1501),
(150106, 'Rumlech', 1501),
(150107, 'Snam Preah', 1501),
(150108, 'Svay Doun Kaev', 1501),
(150109, 'Ta Lou', 1501),
(150110, 'Trapeang chorng', 1501),
(150201, 'Anlong Vil', 1502),
(150203, 'Kandieng', 1502),
(150204, 'Kanhchor', 1502),
(150205, 'Reang Til', 1502),
(150206, 'Srae Sdok', 1502),
(150207, 'Svay Luong', 1502),
(150208, 'Sya', 1502),
(150209, 'Veal', 1502),
(150210, 'Kaoh Chum', 1502),
(150301, 'Anlong Tnaot', 1503),
(150302, 'Ansa Chambak', 1503),
(150303, 'Boeng Kantuot', 1503),
(150304, 'Chheu Tom', 1503),
(150305, 'Kampong Luong', 1503),
(150306, 'Kampong Pou', 1503),
(150307, 'Kbal Trach', 1503),
(150308, 'Ou Sandan', 1503),
(150309, 'Sna Ansa', 1503),
(150310, 'Svay Sa', 1503),
(150311, 'Tnaot Chum', 1503),
(150401, 'Bak Chenhchien', 1504),
(150402, 'Leach', 1504),
(150403, 'Phteah Rung', 1504),
(150404, 'Prongil', 1504),
(150405, 'Rokat', 1504),
(150406, 'Santreae', 1504),
(150407, 'Samraong', 1504),
(150501, 'Chamraeun Phal', 1505),
(150503, 'Lolok Sa', 1505),
(150504, 'Phteah Prey', 1505),
(150505, 'Prey Nhi', 1505),
(150506, 'Roleab', 1505),
(150507, 'Svay At', 1505),
(150508, 'Banteay Dei', 1505),
(150601, 'Ou Saom', 1506),
(150602, 'Krapeu Pir', 1506),
(150603, 'Anlong Reab', 1506),
(150604, 'Pramaoy', 1506),
(150605, 'Thma Da', 1506);

-- --------------------------------------------------------

--
-- Table structure for table `op_districts`
--

CREATE TABLE IF NOT EXISTS `op_districts` (
  `id` int(20) NOT NULL,
  `name` text,
  `provinces_id` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tdistrict` (`provinces_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `op_districts`
--

INSERT INTO `op_districts` (`id`, `name`, `provinces_id`) VALUES
(1501, 'Bakan', 15),
(1502, 'Kandieng', 15),
(1503, 'Krakor', 15),
(1504, 'Phnum Kravanh', 15),
(1505, 'Pursat', 15),
(1506, 'Veal Veaeng', 15);

-- --------------------------------------------------------

--
-- Table structure for table `op_provinces`
--

CREATE TABLE IF NOT EXISTS `op_provinces` (
  `id` varchar(20) NOT NULL,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `op_provinces`
--

INSERT INTO `op_provinces` (`id`, `name`) VALUES
('15', 'Pursat');

-- --------------------------------------------------------

--
-- Table structure for table `op_villages`
--

CREATE TABLE IF NOT EXISTS `op_villages` (
  `id` int(20) NOT NULL,
  `name` text NOT NULL,
  `commune_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `op_villages`
--

INSERT INTO `op_villages` (`id`, `name`, `commune_id`) VALUES
(15010101, 'Doung Chrum', 150101),
(15010102, 'Samraong', 150101),
(15010103, 'Tram Seh', 150101),
(15010104, 'Ou', 150101),
(15010105, 'Bat Trach', 150101),
(15010106, 'Robang Romeas', 150101),
(15010107, 'Bat Kandaol', 150101),
(15010108, 'Svay', 150101),
(15010109, 'Preah Ampil', 150101),
(15010110, 'Boeng Chhuk', 150101),
(15010111, 'Tuol Thmea', 150101),
(15010112, 'Svay Chrum', 150101),
(15010114, 'Ruessei Ta Man', 150101),
(15010201, 'Prey Phdau', 150102),
(15010202, 'Boeng Khnar', 150102),
(15010203, 'Krasang Kruo', 150102),
(15010204, 'Rung', 150102),
(15010205, 'Voat Chreae', 150102),
(15010206, 'Preah Mlu', 150102),
(15010207, 'Prey Svay', 150102),
(15010208, 'Chamkar Leu', 150102),
(15010209, 'Prey Damrei', 150102),
(15010210, 'Khnach Romeas', 150102),
(15010211, 'Srakar', 150102),
(15010212, 'Daeum Chres', 150102),
(15010215, 'Trach Kraol', 150102),
(15010301, 'Daeum Roka', 150103),
(15010302, 'Kaoh Svay', 150103),
(15010303, 'Kamprak Koun', 150103),
(15010304, 'Tuol Angkrong', 150103),
(15010305, 'Krouch Saeuch', 150103),
(15010306, 'Khnar Totueng', 150103),
(15010307, 'Boeng Chhuk', 150103),
(15010308, 'Phteah Sla', 150103),
(15010309, 'Kaoh Krabei', 150103),
(15010310, 'Damnak Thnong', 150103),
(15010311, 'Bak Meaek', 150103),
(15010312, 'Kaoh Voat', 150103),
(15010401, 'Angkanh', 150104),
(15010402, 'Ou Preal', 150104),
(15010403, 'Cha Yov', 150104),
(15010404, 'Kdat', 150104),
(15010405, 'Paolao', 150104),
(15010406, 'Ta Mom', 150104),
(15010407, 'Chen Tay', 150104),
(15010408, 'Me Tuek', 150104),
(15010409, 'Kaoh Khsach', 150104),
(15010410, 'Ma', 150104),
(15010411, 'Dei Roneat', 150104),
(15010412, 'Trang', 150104),
(15010414, 'Samraong Prey Khiev', 150104),
(15010415, 'Kamsamna', 150104),
(15010416, 'Preaek Kra', 150104),
(15010501, 'Prey Yeang', 150105),
(15010502, 'Robaoh Reang', 150105),
(15010503, 'Chamkar Ou', 150105),
(15010504, 'Chamkar Khloy', 150105),
(15010505, 'Ou Ta Paong', 150105),
(15010506, 'Anlong Kray', 150105),
(15010507, 'Srah Mkak', 150105),
(15010509, 'Bat Kokir Chas', 150105),
(15010510, 'Sdok Khlouk', 150105),
(15010511, 'Tuol Rokeang', 150105),
(15010512, 'Samraong Pok', 150105),
(15010513, 'Phsar Andaet', 150105),
(15010514, 'Oknha Moan', 150105),
(15010515, 'Srah Run', 150105),
(15010516, 'Bat Kokir Thmei', 150105),
(15010517, 'Ta Nai', 150105),
(15010519, 'Ou Bat', 150105),
(15010521, 'Prey Krabau', 150105),
(15010601, 'Pnov', 150106),
(15010602, 'Roung Ta Kok', 150106),
(15010603, 'Koun Tnaot', 150106),
(15010604, 'Pralay Rumdeng', 150106),
(15010605, 'Prasat', 150106),
(15010606, 'Kampong Kdei', 150106),
(15010607, 'Rumlech', 150106),
(15010608, 'Kaoh Khcheay', 150106),
(15010609, 'Sdok Khla', 150106),
(15010610, 'Khvav', 150106),
(15010611, 'Damnak Trach', 150106),
(15010612, 'Lhong', 150106),
(15010613, 'Thmei', 150106),
(15010701, 'Snam Preah', 150107),
(15010702, 'Krapeu Rou', 150107),
(15010703, 'Andoung Sambuor', 150107),
(15010704, 'Sameakki', 150107),
(15010705, 'Chambak Meas', 150107),
(15010706, 'Tuol Khmer', 150107),
(15010707, 'Sdok Svay', 150107),
(15010708, 'Kaoh Krasang', 150107),
(15010709, 'Pnov', 150107),
(15010710, 'Dangkieb Kdam', 150107),
(15010711, 'Anlong Mean', 150107),
(15010712, 'Kampeaeng Svay', 150107),
(15010713, 'Khmar', 150107),
(15010714, 'Thnuoh Ta Chab', 150107),
(15010715, 'Svay At', 150107),
(15010716, 'Araen', 150107),
(15010717, 'Andoung Krasang', 150107),
(15010718, 'Bak Pring', 150107),
(15010719, 'Cheung Phleung', 150107),
(15010720, 'Tram Peaer', 150107),
(15010801, 'Tuol Samraong', 150108),
(15010802, 'Svay Doun Kaev Ti Muoy', 150108),
(15010803, 'Svay Doun Kaev Ti Pir', 150108),
(15010804, 'Svay Sa', 150108),
(15010805, 'Kampang', 150108),
(15010806, 'Chrab', 150108),
(15010807, 'Thmei', 150108),
(15010808, 'Kampout Ang', 150108),
(15010809, 'Nikom Leu', 150108),
(15010901, 'Kouk Rumlo', 150109),
(15010902, 'Tuol Totueng', 150109),
(15010903, 'Tuol Thma', 150109),
(15010904, 'Buo Chres', 150109),
(15010905, 'Prey Roung', 150109),
(15010906, 'Ta Lou', 150109),
(15010907, 'Thmei', 150109),
(15010908, 'Tuol Chreav', 150109),
(15010909, 'Prey Tao', 150109),
(15010910, 'Boeng Kak', 150109),
(15010911, 'Prey Veang', 150109),
(15010912, 'Serei Kunthea', 150109),
(15010913, 'Trayang Sa', 150109),
(15010914, 'Chhnal Moan', 150109),
(15010915, 'Prey Kantuot', 150109),
(15010916, 'Tang Kouk', 150109),
(15010917, 'Baos Kor', 150109),
(15010918, 'Prahal', 150109),
(15010919, 'Rohal Til', 150109),
(15010920, 'Som Sant', 150109),
(15011001, 'Bakan', 150110),
(15011002, 'Kab Kralanh', 150110),
(15011003, 'Poulyum', 150110),
(15011004, 'Stueng Kambot', 150110),
(15011005, 'Boeng Prei', 150110),
(15011006, 'Srae Lvea', 150110),
(15011007, 'Chamkar Ou', 150110),
(15011008, 'Kandoeng Meas', 150110),
(15011009, 'Trapeang Chorng', 150110),
(15011010, 'Kaoh Andaet', 150110),
(15011011, 'Kaoh Svay', 150110),
(15011012, 'Kraol Krabei', 150110),
(15011013, 'Pit Trang', 150110),
(15011014, 'Kaoh Kaev', 150110),
(15011015, 'Buo Srangae', 150110),
(15011016, 'Snay Toul', 150110),
(15011017, 'Ou Rumchek', 150110),
(15011018, 'Kdei Chhnuol', 150110),
(15011019, 'Thmei', 150110),
(15011020, 'Preah Chambak', 150110),
(15020101, 'Tuol Char', 150201),
(15020102, 'Ou Ba Krang', 150201),
(15020103, 'Voat Pou Ti Muoy', 150201),
(15020104, 'Voat Pou Ti Pir', 150201),
(15020105, 'Kampong Krabei', 150201),
(15020106, 'Phlov Krabei', 150201),
(15020107, 'Kanhcheu Bay Dach', 150201),
(15020108, 'Anlong Vil', 150201),
(15020109, 'Preaek Ta Vong', 150201),
(15020110, 'Preaek Ta Kong', 150201),
(15020111, 'Kaoh Krasang', 150201),
(15020112, 'Preaek Chheu Trav', 150201),
(15020113, 'Chey Chumneah', 150201),
(15020114, 'Boeng Chhuk', 150201),
(15020115, 'Phteah Kor', 150201),
(15020116, 'Kbal Romeas', 150201),
(15020301, 'Kampong Roka', 150203),
(15020302, 'Kaev Chey', 150203),
(15020303, 'Svay Yeang', 150203),
(15020304, 'Kandieng Knong', 150203),
(15020305, 'Kandieng', 150203),
(15020306, 'Sthani', 150203),
(15020307, 'Yos', 150203),
(15020308, 'Prey Kdei Leu', 150203),
(15020309, 'Prey Kdei Kandal', 150203),
(15020310, 'Prey Kdei Kraom', 150203),
(15020311, 'Sya', 150203),
(15020312, 'Bangkoul', 150203),
(15020313, 'Stueng Leu', 150203),
(15020314, 'Stueng Kraom', 150203),
(15020315, 'Kampong Krasang Leu', 150203),
(15020316, 'Kampong Krasang Kraom', 150203),
(15020317, 'Boeng Chhuk', 150203),
(15020401, 'Kanhchor', 150204),
(15020402, 'Boeng Kranh', 150204),
(15020403, 'Preaek Trabaek', 150204),
(15020404, 'Samraong', 150204),
(15020405, 'Roleang', 150204),
(15020406, 'Tuol Totueng', 150204),
(15020407, 'Pou Andaet', 150204),
(15020408, 'Koun Kray', 150204),
(15020409, 'Dang Ou', 150204),
(15020410, 'Phlov Luong', 150204),
(15020411, 'Tbaeng Bangkeab', 150204),
(15020412, 'Kandal', 150204),
(15020501, 'Reang Til', 150205),
(15020502, 'Preaek', 150205),
(15020503, 'Charaoh', 150205),
(15020504, 'Kaoh  Kaev', 150205),
(15020505, 'Kaoh Kaek', 150205),
(15020601, 'Banteay Traok', 150206),
(15020602, 'Chamkar Ta Pou', 150206),
(15020603, 'Phteah Kaoh', 150206),
(15020604, 'Saen Chey', 150206),
(15020605, 'Veal', 150206),
(15020606, 'Sarieng', 150206),
(15020607, 'Kdei Chhvit', 150206),
(15020608, 'Ta Mao Li', 150206),
(15020609, 'Pring Khpos', 150206),
(15020610, 'Trang', 150206),
(15020611, 'Thlea Ampil', 150206),
(15020612, 'Thmei', 150206),
(15020613, 'Chamreh', 150206),
(15020614, 'Bakur', 150206),
(15020615, 'Pou', 150206),
(15020616, 'Pou Pir', 150206),
(15020617, 'Entheakthyea', 150206),
(15020701, 'Boeng Kranh', 150207),
(15020702, 'Roung Masin', 150207),
(15020703, 'Svay Luong', 150207),
(15020704, 'Svay Chan', 150207),
(15020705, 'Phlov Pouthi Vongs', 150207),
(15020706, 'Svay Chambak', 150207),
(15020707, 'Pou Laeung', 150207),
(15020708, 'Ka Kou', 150207),
(15020709, 'Sanlung', 150207),
(15020710, 'Svay Yeang', 150207),
(15020711, 'Phteah Srae', 150207),
(15020712, 'Chreaeng', 150207),
(15020713, 'Chheu Teal', 150207),
(15020801, 'Kampong Sambuor', 150208),
(15020802, 'Anlong Vil', 150208),
(15020803, 'Charuek', 150208),
(15020804, 'Boeng Chak', 150208),
(15020805, 'Kbal Peam', 150208),
(15020806, 'Trapeang Thma', 150208),
(15020807, 'Kbal Chheu Puk', 150208),
(15020808, 'Sya', 150208),
(15020809, 'Thlok', 150208),
(15020810, 'Prey Srakum', 150208),
(15020812, 'Voat Lieb', 150208),
(15020901, 'Kbal Hong', 150209),
(15020902, 'Pralay Thum', 150209),
(15020903, 'Veal', 150209),
(15020904, 'Pou Kambaor', 150209),
(15020905, 'Kanhcheu Bay Dach', 150209),
(15020906, 'Pou Damnak', 150209),
(15020907, 'Boeng Yea', 150209),
(15020908, 'Ta Sdei', 150209),
(15020909, 'Tuol Pongro', 150209),
(15021001, 'Anlong Hab', 150210),
(15021002, 'Spean', 150210),
(15021003, 'Dang Rung', 150210),
(15021004, 'Dang Lang', 150210),
(15021005, 'Sdok Chum', 150210),
(15021006, 'Damrei Sa', 150210),
(15021007, 'Phteah Pring', 150210),
(15021008, 'Kien', 150210),
(15021009, 'Ampil Kanhchrinh', 150210),
(15021010, 'Tuol Ku', 150210),
(15030101, 'Chrolorng', 150301),
(15030102, 'Thkoul Thum', 150301),
(15030103, 'Kandal', 150301),
(15030104, 'Phsar', 150301),
(15030105, 'Tuol Mkak', 150301),
(15030106, 'La Bak', 150301),
(15030107, 'Khla Krapeu', 150301),
(15030108, 'Tonsay Kol', 150301),
(15030109, 'Khleang Moeung', 150301),
(15030110, 'Banteay Krang', 150301),
(15030111, 'Papet', 150301),
(15030112, 'Totueng', 150301),
(15030201, 'Khsach Let', 150302),
(15030202, 'Thkoul Thum', 150302),
(15030203, 'Thkoul Touch', 150302),
(15030204, 'Arang Pruoch', 150302),
(15030205, 'Kampong Thkoul', 150302),
(15030206, 'San Sar', 150302),
(15030207, 'Kbal Damrei', 150302),
(15030301, 'Thmei', 150303),
(15030302, 'Kandor Sa', 150303),
(15030303, 'Trapeang Khley', 150303),
(15030304, 'Chochork', 150303),
(15030305, 'Trapeang Kantuot', 150303),
(15030306, 'Boeng', 150303),
(15030307, 'Ou Anhchanh', 150303),
(15030308, 'Pou Khoeun', 150303),
(15030309, 'Pou Angkrang', 150303),
(15030310, 'Thlea Mam', 150303),
(15030311, 'Ta Kaev Kraom', 150303),
(15030401, 'Tuol Tbaeng', 150304),
(15030402, 'Kandal', 150304),
(15030403, 'Phteah Chek', 150304),
(15030404, 'Chheu Teaeb', 150304),
(15030405, 'Cham Chas', 150304),
(15030406, 'Cham Thmei', 150304),
(15030407, 'Kapas', 150304),
(15030408, 'Dangkieb Kdam', 150304),
(15030409, 'Kbal Teahean', 150304),
(15030410, 'Bamnak', 150304),
(15030411, 'Tean Prey', 150304),
(15030412, 'Kapas Leu', 150304),
(15030501, 'Phum Ti Muoy', 150305),
(15030502, 'Phum Ti Pir', 150305),
(15030503, 'Phum Ti Bei', 150305),
(15030504, 'Phum Ti Buon', 150305),
(15030505, 'Phum Ti Pram', 150305),
(15030601, 'Chek Chau', 150306),
(15030602, 'Pou Kod', 150306),
(15030603, 'Kampong La', 150306),
(15030604, 'Moat Prey', 150306),
(15030605, 'Pou Robang', 150306),
(15030606, 'Roluos Kandal', 150306),
(15030607, 'Roluos Khang Kaeut', 150306),
(15030608, 'Sna Reach', 150306),
(15030701, 'Totueng', 150307),
(15030702, 'Doung', 150307),
(15030703, 'Phsar', 150307),
(15030704, 'Trapeang Rumdenh', 150307),
(15030705, 'Trapeang Smach', 150307),
(15030706, 'Chheu Teal Khpos', 150307),
(15030707, 'Kampong Leu', 150307),
(15030708, 'Samraong', 150307),
(15030709, 'Kandal', 150307),
(15030710, 'Srae Ruessei', 150307),
(15030711, 'Kralanh', 150307),
(15030801, 'Ou Ach Kok', 150308),
(15030802, 'Krang Thum', 150308),
(15030803, 'Thnoeng', 150308),
(15030804, 'Puttream', 150308),
(15030805, 'Doung Chuor', 150308),
(15030806, 'Ou Ta Prok', 150308),
(15030807, 'Chong Khlong', 150308),
(15030808, 'Ou Sandan', 150308),
(15030901, 'Sna Ansa', 150309),
(15030902, 'Krang Veaeng', 150309),
(15030903, 'Beng', 150309),
(15030904, 'Chi Cheh', 150309),
(15030905, 'Veal Vong', 150309),
(15030906, 'Sarovoan', 150309),
(15030907, 'Svay Sa', 150309),
(15030908, 'Thmei', 150309),
(15030910, 'Ansa Kdam', 150309),
(15030911, 'Kampong Prak', 150309),
(15031001, 'Kamraeng', 150310),
(15031002, 'Trapeang Snuol', 150310),
(15031003, 'Ansa Chambak', 150310),
(15031004, 'Tuol Andaet', 150310),
(15031005, 'Boeng Smok', 150310),
(15031006, 'Ou Chan', 150310),
(15031101, 'Prey Khla', 150311),
(15031102, 'Krabei Sa', 150311),
(15031103, 'Bangkong Khmum', 150311),
(15031104, 'Dang Tuek Leach', 150311),
(15031105, 'Chambak Thum', 150311),
(15031106, 'Tbaeng Chrum', 150311),
(15031107, 'Tram', 150311),
(15031108, 'Choar Mkean', 150311),
(15031109, 'Boeng Veal', 150311),
(15031110, 'Thmei', 150311),
(15031111, 'Kandal', 150311),
(15031112, 'Chheu Teal', 150311),
(15031113, 'Ta Kaev Leu', 150311),
(15031114, 'Saen Pen', 150311),
(15031115, 'Dambouk 100', 150311),
(15040101, 'Ou Rumchang', 150401),
(15040102, 'Bak Chenhchien', 150401),
(15040103, 'Krabau Chrum', 150401),
(15040104, 'Chan Serei', 150401),
(15040105, 'Tuol Pongro', 150401),
(15040106, 'Ou Ruessei', 150401),
(15040201, 'Leach', 150402),
(15040202, 'Pech Ban', 150402),
(15040203, 'Baoh Puoy', 150402),
(15040204, 'Sbov Rik', 150402),
(15040205, 'Paen', 150402),
(15040206, 'Bak Trakuon', 150402),
(15040207, 'Krouch Chhmar', 150402),
(15040208, 'Ta Nuk', 150402),
(15040301, 'Kaoh Svay', 150403),
(15040302, 'Ta Sas', 150403),
(15040303, 'Kranham', 150403),
(15040304, 'Prey Kanlang', 150403),
(15040305, 'Thlok Dangkao', 150403),
(15040306, 'Bat Rumduol', 150403),
(15040307, 'Kandal', 150403),
(15040308, 'Phteah Rung', 150403),
(15040309, 'Damnak Kansaeng', 150403),
(15040310, 'Sdok Khtum', 150403),
(15040311, 'Prohoas Kbal', 150403),
(15040312, 'Chongruk', 150403),
(15040313, 'Chrey Kroem', 150403),
(15040401, 'Say', 150404),
(15040402, 'Ou Srav', 150404),
(15040403, 'Kampeaeng', 150404),
(15040404, 'Prongil', 150404),
(15040405, 'Ou Bak Tra', 150404),
(15040407, 'Samraong Yea', 150404),
(15040408, 'Svay Pak', 150404),
(15040501, 'Prey Smach', 150405),
(15040502, 'Prey Khlong', 150405),
(15040503, 'Mol', 150405),
(15040504, 'Veal Vong', 150405),
(15040601, 'Kol Totueng', 150406),
(15040602, 'Santreae', 150406),
(15040603, 'Ksetr Bourei', 150406),
(15040604, 'Srae Popeay', 150406),
(15040701, 'Preaek Muoy', 150407),
(15040702, 'Preaek Pir', 150407),
(15040703, 'Preaek Bei', 150407),
(15040704, 'Ta Deh', 150407),
(15040705, 'Ou Heng', 150407),
(15040706, 'Samraong Muoy', 150407),
(15040707, 'Samraong Pir', 150407),
(15040708, 'Ou Preal', 150407),
(15040709, 'Veal', 150407),
(15040710, 'Angkrong', 150407),
(15040711, 'Rovieng', 150407),
(15050101, 'Leav', 150501),
(15050102, 'Ou Roka', 150501),
(15050103, 'Ou Tong', 150501),
(15050104, 'Doun Ei', 150501),
(15050105, 'Kdei Khvav', 150501),
(15050106, 'Kampong Stoung', 150501),
(15050107, 'Svay Meas', 150501),
(15050109, 'Tuol Kruos', 150501),
(15050301, 'Pou Ta Kuoy', 150503),
(15050302, 'Preaek Sdei', 150503),
(15050303, 'Lolok Sa', 150503),
(15050304, 'Kaoh', 150503),
(15050305, 'Phsar Leu', 150503),
(15050306, 'Voat Luong', 150503),
(15050307, 'Chumrum Siem', 150503),
(15050308, 'Dab Bat', 150503),
(15050309, 'Damnak Ampil', 150503),
(15050310, 'Khmar', 150503),
(15050401, 'Peal Nheaek Muoy', 150504),
(15050402, 'Peal Nheaek Pir', 150504),
(15050403, 'Kbal Hong', 150504),
(15050404, 'Dangkear', 150504),
(15050405, 'Chamkar Chek Khang Cheung', 150504),
(15050406, 'Chamkar Chek Khang Tboung', 150504),
(15050407, 'Ou Sdau', 150504),
(15050408, 'Tnaot Tret', 150504),
(15050409, 'Kok', 150504),
(15050410, 'Ra', 150504),
(15050501, 'Bak Roteh', 150505),
(15050502, 'Doung Chrum', 150505),
(15050503, 'Pralay Thum', 150505),
(15050504, 'Spean Thma', 150505),
(15050505, 'Moan Chae', 150505),
(15050506, 'Sala Kumru', 150505),
(15050507, 'Krang Ta Saen', 150505),
(15050508, 'Srah Srang', 150505),
(15050601, 'Pou Andaot', 150506),
(15050602, 'Prey Aomal', 150506),
(15050603, 'Tuol Mkak', 150506),
(15050604, 'Thnal Bambaek', 150506),
(15050605, 'Spean Thma', 150506),
(15050606, 'Chhlang Kat', 150506),
(15050607, 'Stueng Touch', 150506),
(15050608, 'Roleab', 150506),
(15050609, 'Souriya Leu', 150506),
(15050610, 'Souriya Kraom', 150506),
(15050611, 'Thnal Chopon', 150506),
(15050612, 'Preaek Tnaot', 150506),
(15050613, 'Ou Thkov', 150506),
(15050701, 'Sthani', 150507),
(15050702, 'Krang Pophleak', 150507),
(15050703, 'Trang', 150507),
(15050704, 'Svay At', 150507),
(15050705, 'Ou Sdau', 150507),
(15050801, 'Ou Ba Krang Leu', 150508),
(15050802, 'Ou Ba Krang Kraom', 150508),
(15050803, 'Ou Ba Krang Kandal', 150508),
(15050804, 'Kaev Sovann Leu', 150508),
(15050805, 'Kaev Sovann Kraom', 150508),
(15050806, 'Ta Koy', 150508),
(15050807, 'Kbal Hong', 150508),
(15050808, 'Bandoh Sandaek', 150508),
(15050809, 'Eslam', 150508),
(15050810, 'Banteay Dei Leu', 150508),
(15050811, 'Banteay Dei Kraom', 150508),
(15050812, 'Kaev Muni', 150508),
(15060101, 'Ou Saom', 150601),
(15060102, 'Kandal', 150601),
(15060103, 'Chhay Louk', 150601),
(15060104, 'Kien Chongruk', 150601),
(15060201, 'Krapeu Pir Leu', 150602),
(15060202, 'Krapeu Pir Kraom', 150602),
(15060203, 'Samlanh', 150602),
(15060301, 'Kandal', 150603),
(15060302, 'Krang Rongieng', 150603),
(15060303, 'Chamka Chrey Khang Cheung', 150603),
(15060304, 'Chamka Chrey Khang Tbong', 150603),
(15060305, 'Dei Kraham', 150603),
(15060401, 'Chheu Teal Chrum', 150604),
(15060402, 'Pchoek Chrum', 150604),
(15060403, 'Stueng Thmei', 150604),
(15060404, 'Pramaoy', 150604),
(15060405, 'Tumpoar', 150604),
(15060501, 'Aekakpheap', 150605),
(15060502, 'Kandal', 150605),
(15060503, 'Sangkum Thmei', 150605);