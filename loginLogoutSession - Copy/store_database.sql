-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 07:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(40) NOT NULL,
  `user_name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_name`, `email`, `password`) VALUES
(6, 'Kobayashi', 'kobayashi@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759'),
(7, 'Rina Mae', 'mae@gmail.com', '25d55ad283aa400af464c76d713c07ad'),
(8, 'Cat Win', 'cat@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f');

-- --------------------------------------------------------

--
-- Table structure for table `members_table`
--

CREATE TABLE `members_table` (
  `member_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `home_address` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `member_type` varchar(6) DEFAULT NULL,
  `date_created` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members_table`
--

INSERT INTO `members_table` (`member_id`, `first_name`, `last_name`, `gender`, `birthdate`, `home_address`, `email`, `username`, `password`, `member_type`, `date_created`) VALUES
(1, 'Nari', 'Chasier', 'Female', '2001-10-10', 'Bogo City', 'nchasier0@webmd.com', 'nchasier0', 'jorVO6BiHo{bN~', 'Seller', '2023-10-02'),
(2, 'Milty', 'Calder', 'Male', '2001-03-30', 'Bogo City', 'mcalder1@google.cn', 'mcalder1', 'ruhDO66*&', 'Member', '2023-04-11'),
(3, 'Aaren', 'Cuschieri', 'Female', '2006-12-10', 'Cebu City', 'acuschieri2@liveinternet.ru', 'acuschieri2', 'bhqCZ67U3fz!ee', 'Seller', '2023-05-27'),
(4, 'Don', 'Crehan', 'Male', '2006-11-17', 'Iloilo City', 'dcrehan3@techcrunch.com', 'dcrehan3', 'sjaTE9dL7', 'Member', '2023-05-02'),
(5, 'Jillian', 'Patershall', 'Female', '2002-06-21', 'Iloilo City', 'jpatershall4@tinypic.com', 'jpatershall4', 'qthXX8o*A_vnAdSR', 'Seller', '2023-05-07'),
(6, 'Shannon', 'Hender', 'Female', '2006-02-16', 'Cebu City', 'shender5@cbslocal.com', 'shender5', 'xixQM2OEi', 'Member', '2023-06-14'),
(7, 'Gaven', 'Newstead', 'Male', '2008-12-05', 'Cebu City', 'gnewstead6@state.tx.us', 'gnewstead6', 'scxNY00V,Ft4', 'Seller', '2023-03-14'),
(8, 'Harwell', 'Itzhaiek', 'Male', '2005-03-26', 'Cebu City', 'hitzhaiek7@baidu.com', 'hitzhaiek7', 'yqrAU5pH._@{\'RzD', 'Member', '2023-02-11'),
(9, 'Kelvin', 'Yakubovich', 'Male', '2000-09-04', 'Iloilo City', 'kyakubovich8@guardian.co.uk', 'kyakubovich8', 'ruxKM7.U7g_xa&Mb', 'Seller', '2023-07-11'),
(10, 'Ashla', 'Whate', 'Female', '2001-10-06', 'Davao City', 'awhate9@wikipedia.org', 'awhate9', 'gsdNN69g5!\')', 'Member', '2022-10-25'),
(11, 'Elissa', 'Bozier', 'Female', '2008-12-18', 'Davao City', 'eboziera@virginia.edu', 'eboziera', 'tieXM1RLT{wchi', 'Seller', '2023-06-06'),
(12, 'Tamma', 'Riccelli', 'Female', '2000-12-22', 'Baguio City', 'triccellib@360.cn', 'triccellib', 'eqqPC6~oxx', 'Member', '2023-01-15'),
(13, 'Jory', 'McCrea', 'Male', '2004-05-12', 'Iloilo City', 'jmccreac@census.gov', 'jmccreac', 'cgsHD2=K8`', 'Member', '2022-12-25'),
(14, 'Gabey', 'Musterd', 'Female', '2000-05-28', 'Iloilo City', 'gmusterdd@artisteer.com', 'gmusterdd', 'aeeSJ1vjQ7Yfqi', 'Member', '2023-01-06'),
(15, 'Izaak', 'Broyd', 'Male', '2003-11-05', 'Bogo City', 'ibroyde@newsvine.com', 'ibroyde', 'utoIC7@*DnJAi*', 'Seller', '2023-07-15'),
(16, 'Elihu', 'De Antoni', 'Male', '2004-10-05', 'Cebu City', 'edeantonif@ucoz.ru', 'edeantonif', 'qqfAP7.cPU~?', 'Member', '2023-08-02'),
(17, 'Iolanthe', 'Coleby', 'Female', '2002-09-20', 'Bohol', 'icolebyg@businessinsider.com', 'icolebyg', 'cysGB0>8j)8(&a', 'Member', '2023-08-11'),
(18, 'Padriac', 'Ghelardi', 'Male', '2006-09-19', 'Iloilo City', 'pghelardih@springer.com', 'pghelardih', 'xeuDF07Rg.&>', 'Member', '2023-07-17'),
(19, 'Cletus', 'MacAskill', 'Male', '2005-02-28', 'Iloilo City', 'cmacaskilli@myspace.com', 'cmacaskilli', 'ugiFC19wD*', 'Member', '2023-01-04'),
(20, 'Theda', 'Abramovicz', 'Female', '2007-01-20', 'Iloilo City', 'tabramoviczj@goo.gl', 'tabramoviczj', 'obaRN5.G&%iZ,NB', 'Member', '2023-02-08'),
(21, 'Faith', 'Petrovykh', 'Female', '2009-06-26', 'Iloilo City', 'fpetrovykhk@washington.edu', 'fpetrovykhk', 'fhyQL3cRn<=kZ', 'Member', '2023-03-11'),
(22, 'Kyrstin', 'Southwell', 'Female', '2001-04-19', 'Bogo City', 'ksouthwelll@mail.ru', 'ksouthwelll', 'vofTD5ko6JBl+', 'Seller', '2023-08-04'),
(23, 'Flss', 'Armes', 'Female', '2002-07-12', 'Baguio City', 'farmesm@diigo.com', 'farmesm', 'pkjCC4O6~Jit#\'d', 'Seller', '2023-09-30'),
(24, 'Karon', 'Zylbermann', 'Female', '2000-04-03', 'Cebu City', 'kzylbermannn@cloudflare.com', 'kzylbermannn', 'kvoJY2ps', 'Seller', '2022-11-07'),
(25, 'Valaria', 'Willars', 'Female', '2002-04-05', 'Iloilo City', 'vwillarso@booking.com', 'vwillarso', 'vtbLG1<_YHO,xN_f', 'Seller', '2022-12-12'),
(26, 'Benyamin', 'Hainge', 'Male', '2003-05-09', 'Bohol', 'bhaingep@cafepress.com', 'bhaingep', 'idpBG7R5#6L#M%R', 'Seller', '2023-05-10'),
(27, 'Zarah', 'Blinckhorne', 'Female', '2005-12-20', 'Cebu City', 'zblinckhorneq@utexas.edu', 'zblinckhorneq', 'eguTT4C6Y', 'Seller', '2023-04-11'),
(28, 'Yankee', 'Gregs', 'Male', '2009-06-30', 'Bogo City', 'ygregsr@soundcloud.com', 'ygregsr', 'ihjEO1?bMnbY', 'Seller', '2023-04-24'),
(29, 'Mirna', 'Foxwell', 'Female', '2009-07-29', 'Bohol', 'mfoxwells@tripadvisor.com', 'mfoxwells', 'fkmOQ6D=`SV7y(|e', 'Member', '2023-03-22'),
(30, 'Jan', 'Mugleston', 'Male', '2000-11-02', 'Bohol', 'jmuglestont@quantcast.com', 'jmuglestont', 'nqdMQ4wpwr@Im', 'Member', '2023-02-05'),
(31, 'Galina', 'Bradburne', 'Female', '2006-11-04', 'Bogo City', 'gbradburneu@slate.com', 'gbradburneu', 'gdhGL7d+?', 'Seller', '2022-11-19'),
(32, 'Chauncey', 'Dadd', 'Male', '2008-09-25', 'Cebu City', 'cdaddv@hubpages.com', 'cdaddv', 'rrhIA7+7', 'Seller', '2022-12-18'),
(33, 'Milli', 'McGarel', 'Female', '2000-05-17', 'Davao City', 'mmcgarelw@china.com.cn', 'mmcgarelw', 'tccYE2n?\"u?', 'Seller', '2023-02-22'),
(34, 'Osmund', 'McCandless', 'Male', '2000-11-07', 'Bohol', 'omccandlessx@vimeo.com', 'omccandlessx', 'zqdOD0RFoJ|1mJ', 'Member', '2023-05-26'),
(35, 'Barthel', 'Parkinson', 'Male', '2004-05-15', 'Davao City', 'bparkinsony@state.gov', 'bparkinsony', 'ketHV1N&J<E', 'Seller', '2023-03-26'),
(36, 'Barb', 'Quartermaine', 'Female', '2008-04-08', 'Bogo City', 'bquartermainez@imageshack.us', 'bquartermainez', 'tqiCD1#(1=D6p<q', 'Member', '2023-08-31'),
(37, 'Evangelin', 'Gosenell', 'Female', '2006-07-24', 'Iloilo City', 'egosenell10@businessinsider.com', 'egosenell10', 'mswLJ9BNYa0', 'Member', '2023-03-02'),
(38, 'Julius', 'Martinello', 'Male', '2001-02-26', 'Davao City', 'jmartinello11@feedburner.com', 'jmartinello11', 'ktsKQ8ty,sq_m', 'Member', '2023-01-09'),
(39, 'Gene', 'Bartke', 'Female', '2002-03-03', 'Bohol', 'gbartke12@biglobe.ne.jp', 'gbartke12', 'eeqMM4B/7*M1\'', 'Member', '2023-03-16'),
(40, 'Arlie', 'Ciementini', 'Female', '2006-02-19', 'Bohol', 'aciementini13@digg.com', 'aciementini13', 'gojPI4X@b', 'Member', '2023-06-23'),
(41, 'Dillon', 'Vance', 'Male', '2004-03-04', 'Davao City', 'dvance14@indiegogo.com', 'dvance14', 'yxhXK9a/', 'Seller', '2023-05-06'),
(42, 'Gunilla', 'Meckiff', 'Female', '2001-12-16', 'Metro Manila', 'gmeckiff15@plala.or.jp', 'gmeckiff15', 'crtPS5e$nl', 'Member', '2023-05-01'),
(43, 'Bartolomeo', 'Slingsby', 'Male', '2005-07-07', 'Metro Manila', 'bslingsby16@bbb.org', 'bslingsby16', 'bjfGW6w+=', 'Seller', '2023-01-28'),
(44, 'Corny', 'Horche', 'Male', '2008-03-10', 'Metro Manila', 'chorche17@mlb.com', 'chorche17', 'oifAY8*t', 'Seller', '2023-06-13'),
(45, 'Serge', 'Wilkes', 'Male', '2007-03-30', 'Bogo City', 'swilkes18@ebay.com', 'swilkes18', 'blxWS8SC?', 'Member', '2022-11-10'),
(46, 'Hildy', 'Lutman', 'Female', '2001-03-13', 'Iloilo City', 'hlutman19@virginia.edu', 'hlutman19', 'gsiPT1P#tF5', 'Seller', '2023-05-01'),
(47, 'Luciana', 'De Gouy', 'Female', '2009-11-23', 'Iloilo City', 'ldegouy1a@eepurl.com', 'ldegouy1a', 'zsxEF5xAa/\'', 'Seller', '2023-07-26'),
(67, 'Sander', 'Wane', 'Male', '2007-09-14', 'Bogo City', 'swane1u@usnews.com', 'swane1u', 'almDV2iLO$', 'Seller', '2023-07-19'),
(68, 'Marietta', 'Scahill', 'Female', '2003-12-20', 'Bogo City', 'mscahill1v@ca.gov', 'mscahill1v', 'fbcMF7!6C)6?m{', 'Member', '2023-05-30'),
(69, 'Marcelia', 'Dockree', 'Female', '2006-06-23', 'Bohol', 'mdockree1w@eventbrite.com', 'mdockree1w', 'kjsWR4+k\"Sp#', 'Seller', '2022-11-06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members_table`
--
ALTER TABLE `members_table`
  ADD PRIMARY KEY (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `members_table`
--
ALTER TABLE `members_table`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
