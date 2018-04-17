-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 17, 2018 at 07:12 AM
-- Server version: 10.0.27-MariaDB-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ambility_flashcards`
--

-- --------------------------------------------------------

--
-- Table structure for table `flashcards`
--

CREATE TABLE IF NOT EXISTS `flashcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `english` text,
  `pinyin` text,
  `hanzi` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=137 ;

--
-- Dumping data for table `flashcards`
--

INSERT INTO `flashcards` (`id`, `english`, `pinyin`, `hanzi`) VALUES
(1, 'good', 'hÇŽo', 'å¥½'),
(2, 'teacher', 'lÇŽoshÄ«', 'è€å¸ˆ'),
(3, 'mr (title)', 'xiÄnsheng', 'å…ˆç”Ÿ'),
(4, 'name', 'mÃ­ngzi', 'åå­—'),
(5, 'New York', 'niÇ”yuÄ“', 'çº½çº¦'),
(6, 'America', 'mÄ›iguÃ³', 'ç¾Žå›½'),
(8, 'six', 'liÃ¹', 'å…­'),
(9, 'is/am', 'shÃ¬', 'æ˜¯'),
(10, 'not', 'bÃ¹', 'ä¸'),
(11, 'five', 'wÇ”', 'äº”'),
(12, 'seven', 'qÄ«', 'ä¸ƒ'),
(13, 'also', 'yÄ›', 'ä¹Ÿ'),
(14, 'student', 'xuÃ©sheng', 'å­¦ç”Ÿ'),
(15, 'you (courteous)', 'nÃ­n', 'æ‚¨'),
(16, 'you', 'nÇ', 'ä½ '),
(17, 'me', 'wÇ’', 'æˆ‘'),
(18, 'expensive; noble; precious', 'guÃ¬', 'è´µ'),
(19, 'to ask', 'qÇngwÃ¨n', 'è¯·é—®'),
(20, 'he/him', 'tÄ', 'ä»–'),
(21, 'she/her', 'tÄ', 'å¥¹'),
(22, 'four', 'sÃ¬', 'å››'),
(23, 'three', 'sÄn', 'ä¸‰'),
(24, 'two', 'Ã¨r', 'äºŒ'),
(25, 'one', 'yÄ«', 'ä¸€'),
(26, 'what', 'shÃ©nme', 'ä»€ä¹ˆ'),
(27, 'named', 'jiÃ o', 'å«'),
(28, 'possessive particle', 'de', 'çš„'),
(29, 'England', 'yÄ«ngguÃ³', 'è‹±å›½'),
(30, 'please', 'qÇng', 'è¯·'),
(31, 'surnamed', 'xÃ¬ng', 'å§“'),
(32, 'question particle', 'ma', 'å—'),
(33, 'eight', 'bÄ', 'å…«'),
(34, 'nine', 'jiÇ”', 'ä¹'),
(35, 'that', 'nÃ ', 'é‚£'),
(36, 'miss (title)', 'xiÇŽojie', 'å°å§'),
(37, 'ten', 'shÃ­', 'å'),
(38, 'person', 'rÃ©n', 'äºº'),
(39, 'China', 'zhÅngguÃ³', 'ä¸­å›½'),
(40, 'Beijing', 'bÄ›ijÄ«ng', 'åŒ—äº¬'),
(41, 'Australia', 'Ã o dÃ  lÃ¬ yÃ ', 'æ¾³å¤§åˆ©äºš'),
(42, 'father', 'bÃ ba', 'çˆ¸çˆ¸'),
(43, 'suggestive particle', 'ba', 'å§'),
(44, 'hundred', 'bÇŽi', 'ç™¾'),
(45, 'father''s elder brother', 'bÃ³bo', 'ä¼¯ä¼¯'),
(46, 'you''re welcome', 'bÃ¹ kÃ¨qi', 'ä¸å®¢æ°”'),
(47, 'no; not', 'bÃ¹', 'ä¸'),
(48, 'meal; dish', 'cÃ i', 'èœ'),
(49, 'to eat', 'chÄ«', 'åƒ'),
(50, 'to eat a meal', 'chÄ«fÃ n', 'åƒé¥­'),
(51, 'big', 'dÃ ', 'å¤§'),
(52, 'younger brother', 'dÃ¬di', 'å¼Ÿå¼Ÿ'),
(53, 'I''m sorry', 'duÃ¬ bÃ¹ qÇ', 'å¯¹ä¸èµ·'),
(54, 'all; both; entirely', 'dÅu', 'éƒ½'),
(55, 'son', 'Ã©rzi', 'å„¿å­'),
(56, 'older brother', 'gÄ“ge', 'å“¥å“¥'),
(57, 'general measure word; measure word for people', 'gÃ¨', 'ä¸ª'),
(58, 'worker', 'gÅngrÃ©n', 'å·¥äºº'),
(59, 'to drink', 'hÄ“', 'å–'),
(60, 'and', 'hÃ©', 'å’Œ'),
(61, 'very', 'hÄ›n', 'å¾ˆ'),
(62, 'can; be able to', 'huÃ¬', 'ä¼š'),
(63, 'how many', 'jÇ', 'å‡ '),
(64, 'family', 'jiÄ', 'å®¶'),
(65, 'elder sister', 'jiÄ›jie', 'å§å§'),
(66, 'but', 'kÄ›shÃ¬', 'å¯æ˜¯'),
(67, 'mouth; measure word for things with mouths', 'kÇ’u', 'å£'),
(68, 'two (before measure word)', 'liÇŽng', 'ä¸¤'),
(69, 'zero', 'lÃ­ng', 'é›¶'),
(70, 'mother', 'mÄma', 'å¦ˆå¦ˆ'),
(71, 'busy', 'mÃ¡ng', 'å¿™'),
(72, 'not have', 'mÃ©i yÇ’u', 'æ²¡æœ‰'),
(73, 'younger sister', 'mÃ¨imei', 'å¦¹å¦¹'),
(74, 'plural word', 'men', 'ä»¬'),
(75, 'tomorrow', 'mÃ­ngtiÄn', 'æ˜Žå¤©'),
(76, 'which', 'nÇŽ', 'å“ª'),
(79, 'grandmother', 'nÇŽinai', 'å¥¶å¥¶'),
(80, 'daughter', 'nÇš''Ã©r', 'å¥³å„¿'),
(81, 'friend', 'pÃ©ngyou', 'æœ‹å‹'),
(82, 'who', 'shÃ©i', 'è°'),
(83, 'years of age', 'suÃ¬', 'å²'),
(84, 'to like', 'xÇhuan', 'å–œæ¬¢'),
(85, 'thanks', 'xiÃ¨xie', 'è°¢è°¢'),
(86, 'paternal grandfather', 'yÃ©ye', 'çˆ·çˆ·'),
(87, 'doctor', 'yÄ«shÄ“ng', 'åŒ»ç”Ÿ'),
(88, 'to have', 'yÇ’u', 'æœ‰'),
(89, 'this', 'zhÃ¨', 'è¿™'),
(90, 'to do; to make;', 'zuÃ²', 'åš'),
(91, 'month', 'yuÃ¨', 'æœˆ'),
(92, 'day of a month', 'hÃ o', 'å·'),
(93, 'day of the week', 'xÄ«ngqÄ«', 'æ˜ŸæœŸ'),
(94, 'today', 'jÄ«ntiÄn', 'ä»Šå¤©'),
(95, 'birthday', 'shÄ“ngrÃ¬', 'ç”Ÿæ—¥'),
(96, 'year', 'niÃ¡n', 'å¹´'),
(97, 'both', 'duÅ', 'å¤š'),
(98, 'how are things', 'zÄ›nme yÃ ng', 'æ€Žä¹ˆæ ·'),
(99, 'very good', 'tÃ i hÇŽole', 'å¤ªå¥½äº†'),
(100, 'very good', 'tÃ i hÇŽole', 'å¤ªå¥½äº†'),
(101, 'to like', 'xÇhuan', 'å–œæ¬¢'),
(102, 'chinese food', 'ZhÅngguÃ³ cÃ i', 'ä¸­å›½èœ'),
(103, 'us', 'wÇ’men', 'æˆ‘ä»¬'),
(104, 'those guys', 'tÄmen', 'ä»–ä»¬'),
(105, 'you guys', 'nÇmen', 'ä½ ä»¬'),
(106, 'o''clock', 'diÇŽn', 'ç‚¹'),
(107, 'half (used in time)', 'bÃ n', 'åŠ'),
(108, 'quarter (used in time)', 'kÃ¨', 'åˆ»'),
(109, 'goodbye', 'zÃ ijiÃ n', 'å†è§'),
(110, 'photograph', 'zhÃ o piÃ n', 'ç…§ç‰‡'),
(111, 'female', 'nÇš', 'å¥³'),
(112, 'male', 'nÃ¡n', 'ç”·'),
(113, 'children', 'hÃ¡izi', 'å­©å­'),
(114, 'have', 'yÇ’u', 'æœ‰'),
(115, 'Sunday', 'XÄ«ngqÃ­rÃ¬', 'æ˜ŸæœŸæ—¥'),
(116, 'wrong; bad', 'cuÃ²', 'é”™'),
(117, 'yesterday', 'zuÃ³tiÄn', 'æ˜¨å¤©'),
(118, 'weekend', 'zhÅumÃ²', 'å‘¨æœ«'),
(119, 'to want', 'xiÇŽng', 'æƒ³'),
(120, 'to see', 'kÃ n', 'çœ‹'),
(121, 'to go', 'qÃ¹', 'åŽ»'),
(122, 'together', 'yÄ«qÇ', 'ä¸€èµ·'),
(123, 'to think', 'juÃ©de', 'è§‰å¾—'),
(124, 'movie', 'diÃ nyÇng', 'ç”µå½±'),
(125, 'interesting', 'yÇ’u yÃ¬si', 'æœ‰æ„æ€'),
(126, 'forget about it', 'suÃ nle', 'ç®—äº†'),
(127, 'foreign', 'wÃ iguÃ³', 'å¤–å›½'),
(128, 'calligraphy', 'shÅ«fÇŽ', 'ä¹¦æ³•'),
(129, 'now', 'xiÃ nzÃ i', 'çŽ°åœ¨'),
(130, 'dinner', 'wÇŽnfÃ n', 'æ™šé¥­'),
(131, 'why', 'wÃ¨i shÃ©nme', 'ä¸ºä»€ä¹ˆ'),
(132, 'because', 'yÄ«nwÃ¨i	', 'å› ä¸º'),
(133, 'classmate', 'tÃ³ngxuÃ©', 'åŒå­¦'),
(134, 'know; acquainted with', 'rÃ¨nshi', 'è®¤è¯†'),
(135, 'to play ball', 'dÇŽqiÃº', 'æ‰“çƒ'),
(136, 'to hit', 'dÇŽ', 'æ‰“');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
