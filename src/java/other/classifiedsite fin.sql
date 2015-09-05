-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2015 at 05:29 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `classifiedsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_blacklisted_emails`
--

CREATE TABLE IF NOT EXISTS `admin_blacklisted_emails` (
  `email_address` varchar(100) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_newsletter_subscribers`
--

CREATE TABLE IF NOT EXISTS `admin_newsletter_subscribers` (
  `email_address` varchar(100) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`email_address`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_reported_inquiries`
--

CREATE TABLE IF NOT EXISTS `admin_reported_inquiries` (
  `inquiry_id` int(25) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reported_user` varchar(25) NOT NULL,
  `reason` text NOT NULL,
  `read_state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inquiry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_reported_inquiryview`
--
CREATE TABLE IF NOT EXISTS `admin_reported_inquiryview` (
`inquiry_id` int(25)
,`time_stamp` timestamp
,`reported_user` varchar(25)
,`reason` text
,`read_state` tinyint(1)
,`item_number` int(20)
,`message_to` varchar(25)
,`message_from` varchar(25)
,`inquiry_message` text
,`inquiry_time_stamp` timestamp
,`inquiry_response` text
,`response_time_stamp` timestamp
,`inquiry_state` tinyint(1)
);
-- --------------------------------------------------------

--
-- Table structure for table `admin_reported_items`
--

CREATE TABLE IF NOT EXISTS `admin_reported_items` (
  `report_id` int(25) NOT NULL AUTO_INCREMENT,
  `item_number` int(25) NOT NULL,
  `reporter_email` varchar(100) NOT NULL,
  `report_reason` text NOT NULL,
  `reporter_message` text NOT NULL,
  `read_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unread, 1=read',
  PRIMARY KEY (`report_id`),
  KEY `item_number` (`item_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `admin_reported_itemview`
--
CREATE TABLE IF NOT EXISTS `admin_reported_itemview` (
`item_number` int(25)
,`report_id` int(25)
,`reporter_email` varchar(100)
,`report_reason` text
,`reporter_message` text
,`read_state` tinyint(1)
,`username` varchar(25)
,`time_stamp` timestamp
,`status` set('Pending','Modifying','Active','Sold','Disabled')
,`category_main` varchar(100)
,`category_sub` varchar(150)
,`district` varchar(20)
,`city` varchar(30)
,`ad_form` set('For Sale','For Rent','Wanted')
,`title` varchar(255)
,`content` text
,`contact_number` varchar(10)
,`negotiable` set('Yes','No')
,`price` int(10)
,`view_count` int(5)
);
-- --------------------------------------------------------

--
-- Table structure for table `admin_reported_messages`
--

CREATE TABLE IF NOT EXISTS `admin_reported_messages` (
  `message_id` int(25) NOT NULL,
  `sender` varchar(25) NOT NULL,
  `receiver` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `message_time_stamp` timestamp NOT NULL,
  `reason` text NOT NULL,
  `reported_time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_state` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`message_id`),
  KEY `sender` (`sender`),
  KEY `receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `main` varchar(100) NOT NULL,
  `sub` varchar(150) NOT NULL,
  PRIMARY KEY (`main`,`sub`),
  KEY `category_sub` (`sub`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_main`
--

CREATE TABLE IF NOT EXISTS `category_main` (
  `main_name` varchar(100) NOT NULL,
  PRIMARY KEY (`main_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category_sub`
--

CREATE TABLE IF NOT EXISTS `category_sub` (
  `sub_name` varchar(150) NOT NULL,
  PRIMARY KEY (`sub_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `favoriteview`
--
CREATE TABLE IF NOT EXISTS `favoriteview` (
`item_number` int(25)
,`record_id` int(25)
,`favorite_of` varchar(25)
,`username` varchar(25)
,`time_stamp` timestamp
,`category_main` varchar(100)
,`category_sub` varchar(150)
,`district` varchar(20)
,`city` varchar(30)
,`ad_form` set('For Sale','For Rent','Wanted')
,`status` set('Pending','Modifying','Active','Sold','Disabled')
,`reason` text
,`title` varchar(255)
,`content` text
,`contact_number` varchar(10)
,`negotiable` set('Yes','No')
,`price` int(10)
,`view_count` int(5)
,`Image_cover` mediumblob
,`Image1` mediumblob
,`Image2` mediumblob
,`Image3` mediumblob
,`Image4` mediumblob
);
-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `item_number` int(25) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_main` varchar(100) NOT NULL,
  `category_sub` varchar(150) NOT NULL,
  `district` varchar(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `ad_form` set('For Sale','For Rent','Wanted') NOT NULL DEFAULT 'For Sale',
  PRIMARY KEY (`item_number`),
  KEY `category_main` (`category_main`,`category_sub`,`district`,`city`),
  KEY `seller` (`username`),
  KEY `category_sub` (`category_sub`),
  KEY `district` (`district`),
  KEY `city` (`city`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Triggers `item`
--
DROP TRIGGER IF EXISTS `After_Item_Insert`;
DELIMITER //
CREATE TRIGGER `After_Item_Insert` AFTER INSERT ON `item`
 FOR EACH ROW BEGIN

select total_ads into @total from user_info where username=new.username;

update user_info set total_ads=@total+1 where username=new.username;

END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `itemview`
--
CREATE TABLE IF NOT EXISTS `itemview` (
`item_number` int(25)
,`username` varchar(25)
,`time_stamp` timestamp
,`category_main` varchar(100)
,`category_sub` varchar(150)
,`district` varchar(20)
,`city` varchar(30)
,`ad_form` set('For Sale','For Rent','Wanted')
,`status` set('Pending','Modifying','Active','Sold','Disabled')
,`reason` text
,`title` varchar(255)
,`content` text
,`contact_number` varchar(10)
,`negotiable` set('Yes','No')
,`price` int(10)
,`view_count` int(5)
,`Image_cover` mediumblob
,`Image1` mediumblob
,`Image2` mediumblob
,`Image3` mediumblob
,`Image4` mediumblob
);
-- --------------------------------------------------------

--
-- Table structure for table `item_approval`
--

CREATE TABLE IF NOT EXISTS `item_approval` (
  `item_number` int(25) NOT NULL,
  `status` set('Pending','Modifying','Active','Sold','Disabled') NOT NULL DEFAULT 'Pending',
  `reason` text,
  PRIMARY KEY (`item_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE IF NOT EXISTS `item_images` (
  `item_number` int(25) NOT NULL,
  `Image_cover` mediumblob NOT NULL,
  `Image1` mediumblob,
  `Image2` mediumblob,
  `Image3` mediumblob,
  `Image4` mediumblob,
  PRIMARY KEY (`item_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_info`
--

CREATE TABLE IF NOT EXISTS `item_info` (
  `item_number` int(25) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `contact_number` varchar(10) NOT NULL,
  `negotiable` set('Yes','No') NOT NULL DEFAULT 'No',
  `price` int(10) NOT NULL,
  `view_count` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_inquiry`
--

CREATE TABLE IF NOT EXISTS `item_inquiry` (
  `inquiry_id` int(25) NOT NULL AUTO_INCREMENT,
  `item_number` int(20) NOT NULL COMMENT 'inquiry item',
  `message_to` varchar(25) NOT NULL COMMENT 'inquiry receiver',
  `message_from` varchar(25) NOT NULL COMMENT 'inquiry sender',
  `inquiry_message` text NOT NULL COMMENT 'inquiry message/content',
  `inquiry_time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inquiry_response` text COMMENT 'inquiry response message',
  `response_time_stamp` timestamp NULL DEFAULT NULL,
  `inquiry_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = responded, 0 = not responded',
  PRIMARY KEY (`inquiry_id`),
  KEY `message_to` (`message_to`),
  KEY `message_from` (`message_from`),
  KEY `item_number` (`item_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `district` varchar(15) NOT NULL,
  `city` varchar(30) NOT NULL,
  PRIMARY KEY (`district`,`city`),
  KEY `location_city` (`city`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_city`
--

CREATE TABLE IF NOT EXISTS `location_city` (
  `city_name` varchar(30) NOT NULL COMMENT 'city name',
  PRIMARY KEY (`city_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `location_district`
--

CREATE TABLE IF NOT EXISTS `location_district` (
  `district_name` varchar(15) NOT NULL COMMENT 'district name',
  PRIMARY KEY (`district_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `messageview`
--
CREATE TABLE IF NOT EXISTS `messageview` (
`message_id` int(25)
,`msg_to` varchar(25)
,`msg_from` varchar(25)
,`content` text
,`time_stamp` timestamp
,`sender` varchar(25)
,`read_state` tinyint(1)
,`receiver` varchar(25)
);
-- --------------------------------------------------------

--
-- Table structure for table `offensive_usernames`
--

CREATE TABLE IF NOT EXISTS `offensive_usernames` (
  `username` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_visits`
--

CREATE TABLE IF NOT EXISTS `site_visits` (
  `record_id` int(25) NOT NULL AUTO_INCREMENT,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`record_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `slider_images`
--

CREATE TABLE IF NOT EXISTS `slider_images` (
  `img_id` int(1) NOT NULL AUTO_INCREMENT,
  `image` mediumblob NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(25) NOT NULL,
  `pass` varchar(16) NOT NULL,
  `user_type` set('Admin','Member') NOT NULL DEFAULT 'Member',
  `email` varchar(100) NOT NULL,
  `voice` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `email` (`email`,`voice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `userview`
--
CREATE TABLE IF NOT EXISTS `userview` (
`username` varchar(25)
,`pass` varchar(16)
,`user_type` set('Admin','Member')
,`email` varchar(100)
,`voice` varchar(10)
,`status` set('Blocked','Inactive','Activated')
,`activate_code` int(10)
,`activated_time_stamp` timestamp
,`registration` timestamp
,`last_login` timestamp
,`total_ads` int(11)
);
-- --------------------------------------------------------

--
-- Table structure for table `user_account_status`
--

CREATE TABLE IF NOT EXISTS `user_account_status` (
  `username` varchar(25) NOT NULL,
  `status` set('Blocked','Inactive','Activated') NOT NULL DEFAULT 'Inactive',
  `activate_code` int(10) DEFAULT NULL,
  `activated_time_stamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `user_account_status`
--
DROP TRIGGER IF EXISTS `Before_UAS_Update`;
DELIMITER //
CREATE TRIGGER `Before_UAS_Update` BEFORE UPDATE ON `user_account_status`
 FOR EACH ROW Begin

IF(new.status = "Activated") THEN 

set new.activate_code = null;

END IF;

End
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_current_state`
--

CREATE TABLE IF NOT EXISTS `user_current_state` (
  `username` varchar(25) NOT NULL,
  `last_seen` timestamp NOT NULL,
  `current_state` set('Online','Offline') NOT NULL DEFAULT 'Offline',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_favorite`
--

CREATE TABLE IF NOT EXISTS `user_favorite` (
  `record_id` int(25) NOT NULL AUTO_INCREMENT,
  `favorite_of` varchar(25) NOT NULL,
  `item_number` int(25) NOT NULL,
  PRIMARY KEY (`record_id`,`favorite_of`),
  KEY `item_number` (`item_number`),
  KEY `favorite_item_username` (`favorite_of`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `username` varchar(25) NOT NULL,
  `registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `total_ads` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE IF NOT EXISTS `user_messages` (
  `message_id` int(25) NOT NULL AUTO_INCREMENT,
  `msg_to` varchar(25) NOT NULL COMMENT 'receiver',
  `msg_from` varchar(25) NOT NULL COMMENT 'sender',
  `content` text NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`message_id`),
  KEY `msg_to` (`msg_to`),
  KEY `msg_from` (`msg_from`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_messages_inbox`
--

CREATE TABLE IF NOT EXISTS `user_messages_inbox` (
  `message_id` int(25) NOT NULL,
  `sender` varchar(25) NOT NULL,
  `read_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1= read, 0=unread',
  PRIMARY KEY (`message_id`,`sender`),
  KEY `sender_of_message` (`sender`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_messages_outbox`
--

CREATE TABLE IF NOT EXISTS `user_messages_outbox` (
  `message_id` int(25) NOT NULL,
  `receiver` varchar(25) NOT NULL,
  PRIMARY KEY (`message_id`,`receiver`),
  KEY `receiver_of_message` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_reset_codes`
--

CREATE TABLE IF NOT EXISTS `user_reset_codes` (
  `username` varchar(25) NOT NULL,
  `reset_code` varchar(10) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`),
  UNIQUE KEY `reset_code` (`reset_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure for view `admin_reported_inquiryview`
--
DROP TABLE IF EXISTS `admin_reported_inquiryview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_reported_inquiryview` AS select `admin_reported_inquiries`.`inquiry_id` AS `inquiry_id`,`admin_reported_inquiries`.`time_stamp` AS `time_stamp`,`admin_reported_inquiries`.`reported_user` AS `reported_user`,`admin_reported_inquiries`.`reason` AS `reason`,`admin_reported_inquiries`.`read_state` AS `read_state`,`item_inquiry`.`item_number` AS `item_number`,`item_inquiry`.`message_to` AS `message_to`,`item_inquiry`.`message_from` AS `message_from`,`item_inquiry`.`inquiry_message` AS `inquiry_message`,`item_inquiry`.`inquiry_time_stamp` AS `inquiry_time_stamp`,`item_inquiry`.`inquiry_response` AS `inquiry_response`,`item_inquiry`.`response_time_stamp` AS `response_time_stamp`,`item_inquiry`.`inquiry_state` AS `inquiry_state` from (`admin_reported_inquiries` left join `item_inquiry` on((`admin_reported_inquiries`.`inquiry_id` = `item_inquiry`.`inquiry_id`)));

-- --------------------------------------------------------

--
-- Structure for view `admin_reported_itemview`
--
DROP TABLE IF EXISTS `admin_reported_itemview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `admin_reported_itemview` AS select `admin_reported_items`.`item_number` AS `item_number`,`admin_reported_items`.`report_id` AS `report_id`,`admin_reported_items`.`reporter_email` AS `reporter_email`,`admin_reported_items`.`report_reason` AS `report_reason`,`admin_reported_items`.`reporter_message` AS `reporter_message`,`admin_reported_items`.`read_state` AS `read_state`,`itemview`.`username` AS `username`,`itemview`.`time_stamp` AS `time_stamp`,`itemview`.`status` AS `status`,`itemview`.`category_main` AS `category_main`,`itemview`.`category_sub` AS `category_sub`,`itemview`.`district` AS `district`,`itemview`.`city` AS `city`,`itemview`.`ad_form` AS `ad_form`,`itemview`.`title` AS `title`,`itemview`.`content` AS `content`,`itemview`.`contact_number` AS `contact_number`,`itemview`.`negotiable` AS `negotiable`,`itemview`.`price` AS `price`,`itemview`.`view_count` AS `view_count` from (`admin_reported_items` left join `itemview` on((`admin_reported_items`.`item_number` = `itemview`.`item_number`)));

-- --------------------------------------------------------

--
-- Structure for view `favoriteview`
--
DROP TABLE IF EXISTS `favoriteview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `favoriteview` AS select `user_favorite`.`item_number` AS `item_number`,`user_favorite`.`record_id` AS `record_id`,`user_favorite`.`favorite_of` AS `favorite_of`,`itemview`.`username` AS `username`,`itemview`.`time_stamp` AS `time_stamp`,`itemview`.`category_main` AS `category_main`,`itemview`.`category_sub` AS `category_sub`,`itemview`.`district` AS `district`,`itemview`.`city` AS `city`,`itemview`.`ad_form` AS `ad_form`,`itemview`.`status` AS `status`,`itemview`.`reason` AS `reason`,`itemview`.`title` AS `title`,`itemview`.`content` AS `content`,`itemview`.`contact_number` AS `contact_number`,`itemview`.`negotiable` AS `negotiable`,`itemview`.`price` AS `price`,`itemview`.`view_count` AS `view_count`,`itemview`.`Image_cover` AS `Image_cover`,`itemview`.`Image1` AS `Image1`,`itemview`.`Image2` AS `Image2`,`itemview`.`Image3` AS `Image3`,`itemview`.`Image4` AS `Image4` from (`user_favorite` left join `itemview` on((`user_favorite`.`item_number` = `itemview`.`item_number`)));

-- --------------------------------------------------------

--
-- Structure for view `itemview`
--
DROP TABLE IF EXISTS `itemview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `itemview` AS select `item`.`item_number` AS `item_number`,`item`.`username` AS `username`,`item`.`time_stamp` AS `time_stamp`,`item`.`category_main` AS `category_main`,`item`.`category_sub` AS `category_sub`,`item`.`district` AS `district`,`item`.`city` AS `city`,`item`.`ad_form` AS `ad_form`,`item_approval`.`status` AS `status`,`item_approval`.`reason` AS `reason`,`item_info`.`title` AS `title`,`item_info`.`content` AS `content`,`item_info`.`contact_number` AS `contact_number`,`item_info`.`negotiable` AS `negotiable`,`item_info`.`price` AS `price`,`item_info`.`view_count` AS `view_count`,`item_images`.`Image_cover` AS `Image_cover`,`item_images`.`Image1` AS `Image1`,`item_images`.`Image2` AS `Image2`,`item_images`.`Image3` AS `Image3`,`item_images`.`Image4` AS `Image4` from (((`item` left join `item_approval` on((`item`.`item_number` = `item_approval`.`item_number`))) left join `item_info` on((`item`.`item_number` = `item_info`.`item_number`))) left join `item_images` on((`item`.`item_number` = `item_images`.`item_number`)));

-- --------------------------------------------------------

--
-- Structure for view `messageview`
--
DROP TABLE IF EXISTS `messageview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `messageview` AS select `user_messages`.`message_id` AS `message_id`,`user_messages`.`msg_to` AS `msg_to`,`user_messages`.`msg_from` AS `msg_from`,`user_messages`.`content` AS `content`,`user_messages`.`time_stamp` AS `time_stamp`,`user_messages_inbox`.`sender` AS `sender`,`user_messages_inbox`.`read_state` AS `read_state`,`user_messages_outbox`.`receiver` AS `receiver` from ((`user_messages` left join `user_messages_inbox` on((`user_messages`.`message_id` = `user_messages_inbox`.`message_id`))) left join `user_messages_outbox` on((`user_messages`.`message_id` = `user_messages_outbox`.`message_id`)));

-- --------------------------------------------------------

--
-- Structure for view `userview`
--
DROP TABLE IF EXISTS `userview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `userview` AS select `user`.`username` AS `username`,`user`.`pass` AS `pass`,`user`.`user_type` AS `user_type`,`user`.`email` AS `email`,`user`.`voice` AS `voice`,`user_account_status`.`status` AS `status`,`user_account_status`.`activate_code` AS `activate_code`,`user_account_status`.`activated_time_stamp` AS `activated_time_stamp`,`user_info`.`registration` AS `registration`,`user_info`.`last_login` AS `last_login`,`user_info`.`total_ads` AS `total_ads` from ((`user` left join `user_account_status` on((`user`.`username` = `user_account_status`.`username`))) left join `user_info` on((`user`.`username` = `user_info`.`username`)));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_reported_inquiries`
--
ALTER TABLE `admin_reported_inquiries`
  ADD CONSTRAINT `reported_inquiry_id` FOREIGN KEY (`inquiry_id`) REFERENCES `item_inquiry` (`inquiry_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_reported_items`
--
ALTER TABLE `admin_reported_items`
  ADD CONSTRAINT `reported_item_number` FOREIGN KEY (`item_number`) REFERENCES `item` (`item_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_reported_messages`
--
ALTER TABLE `admin_reported_messages`
  ADD CONSTRAINT `message_reporter` FOREIGN KEY (`receiver`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_sender` FOREIGN KEY (`sender`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reported_message_id` FOREIGN KEY (`message_id`) REFERENCES `user_messages` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_main` FOREIGN KEY (`main`) REFERENCES `category_main` (`main_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_sub` FOREIGN KEY (`sub`) REFERENCES `category_sub` (`sub_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_category_main` FOREIGN KEY (`category_main`) REFERENCES `category_main` (`main_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_category_sub` FOREIGN KEY (`category_sub`) REFERENCES `category_sub` (`sub_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_city` FOREIGN KEY (`city`) REFERENCES `location_city` (`city_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_district` FOREIGN KEY (`district`) REFERENCES `location_district` (`district_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_seller` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_approval`
--
ALTER TABLE `item_approval`
  ADD CONSTRAINT `item_number_of_item_approval` FOREIGN KEY (`item_number`) REFERENCES `item` (`item_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_info`
--
ALTER TABLE `item_info`
  ADD CONSTRAINT `item_info_item_number` FOREIGN KEY (`item_number`) REFERENCES `item` (`item_number`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_inquiry`
--
ALTER TABLE `item_inquiry`
  ADD CONSTRAINT `item_inquiry_item_number` FOREIGN KEY (`item_number`) REFERENCES `item` (`item_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_inquiry_receiver` FOREIGN KEY (`message_to`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_inquiry_sender` FOREIGN KEY (`message_from`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_city` FOREIGN KEY (`city`) REFERENCES `location_city` (`city_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `location_district` FOREIGN KEY (`district`) REFERENCES `location_district` (`district_name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_account_status`
--
ALTER TABLE `user_account_status`
  ADD CONSTRAINT `user_account_status_username` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_current_state`
--
ALTER TABLE `user_current_state`
  ADD CONSTRAINT `username_of_user_state` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_favorite`
--
ALTER TABLE `user_favorite`
  ADD CONSTRAINT `favorite_item_item_number` FOREIGN KEY (`item_number`) REFERENCES `item` (`item_number`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorite_item_username` FOREIGN KEY (`favorite_of`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_username` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_messages`
--
ALTER TABLE `user_messages`
  ADD CONSTRAINT `message_from` FOREIGN KEY (`msg_from`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_to` FOREIGN KEY (`msg_to`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_messages_inbox`
--
ALTER TABLE `user_messages_inbox`
  ADD CONSTRAINT `message_id_of_inbox` FOREIGN KEY (`message_id`) REFERENCES `user_messages` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sender_of_message` FOREIGN KEY (`sender`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_messages_outbox`
--
ALTER TABLE `user_messages_outbox`
  ADD CONSTRAINT `message_id_of_outbox` FOREIGN KEY (`message_id`) REFERENCES `user_messages` (`message_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `receiver_of_message` FOREIGN KEY (`receiver`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_reset_codes`
--
ALTER TABLE `user_reset_codes`
  ADD CONSTRAINT `user_reset_codes_username` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
