-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 20, 2016 alle 00:55
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_mmobilehypermedia`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ASSISTANCESERVICE`
--

CREATE TABLE IF NOT EXISTS `ASSISTANCESERVICE` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `Category` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Subcategory` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Category` (`Category`,`Image`),
  KEY `Subcategory` (`Subcategory`),
  KEY `ID` (`ID`),
  KEY `Name` (`Name`),
  FULLTEXT KEY `Description` (`Description`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dump dei dati per la tabella `ASSISTANCESERVICE`
--

INSERT INTO `ASSISTANCESERVICE` (`ID`, `Name`, `Active`, `Category`, `Subcategory`, `Image`, `Description`) VALUES
(1, 'Residential line activation', 1, 'Line Management', 'Residential', '', 'Requesting the activation of a residential line is very simple. You can:</p>\r\n<ul>\r\n	<li> request it online</li>\r\n	<li> go in one of our physical store</li>\r\n</ul>\r\n<p>The mandatory data are:</p>\r\n<ul>\r\n	<li>name and surname</li>\r\n	<li>tax code</li>\r\n	<li>address where the line should be installed</li>\r\n	<li>a phone number</li>\r\n	<li>e-mail address(optional)</li>\r\n</ul>\r\n<p>Our technical staff will contact you as soon as possible to choose a date on which they will install what you have requested.'),
(2, 'Managing subscription', 0, 'Line Management', 'Residential', '', ''),
(3, 'Termination', 0, 'Line Management', 'Residential', '', ''),
(4, 'Deactivation of residential line services', 0, 'Line Management', 'Residential', '', ''),
(5, 'Telephone books at home', 0, 'Line Management', 'Residential', '', ''),
(6, 'From subscription to rechargeable phone card', 0, 'Line Management', 'Mobile', '', ''),
(7, 'From rechargeable phone card to subscription', 0, 'Line Management', 'Mobile', '', ''),
(8, 'MMS', 0, 'Line Management', 'Mobile', '', ''),
(9, 'Verify line coverage', 0, 'Line Management', 'Mobile', '', ''),
(10, 'Verify your credit while you are abroad', 0, 'Line Management', 'Mobile', '', ''),
(11, 'How to use internet while abroad', 0, 'Line Management', 'Mobile', '', ''),
(12, 'All the ways for recharging your phone card', 0, 'Line Management', 'Mobile', '', ''),
(13, 'Fast recharge', 0, 'Line Management', 'Mobile', '', ''),
(14, 'M-Mobile smart', 0, 'Line Management', 'Help moving to M-Mobile', '', ''),
(15, 'How to enter M-Mobile with your mobile line', 0, 'Line Management', 'Help moving to M-Mobile', '', ''),
(16, 'How to read the invoice of the residential line', 1, 'Monitoring Costs And Payment', 'Residential', '', 'The invoice of the residential line is easy and simple to read beacuse is designed taking into account suggestions from our clients. The graphical part, modern and accurate, utilizes a simple language that facilitates the reading of all the informations you need and granting more transparency in the contents and payments.'),
(17, 'How to pay the invoice of the residential line', 0, 'Monitoring Costs And Payment', 'Residential', '', ''),
(18, 'Asking for a refund', 0, 'Monitoring Costs And Payment', 'Residential', '', ''),
(19, 'Verify your remaining credit', 0, 'Monitoring Costs And Payment', 'Mobile', '', ''),
(20, 'Payment method for mobile line invoice', 0, 'Monitoring Costs And Payment', 'Mobile', '', ''),
(21, 'Promotions and automatic renewal of rechargeable phone card clients', 0, 'Monitoring Costs And Payment', 'Mobile', '', ''),
(22, 'How to visualize the consumptions of your line', 0, 'Monitoring Costs And Payment', 'Mobile', '', ''),
(23, 'Payment method of subscription invoice', 0, 'Monitoring Costs And Payment', 'Mobile', '', ''),
(24, 'Promotions and automatic renewal of subscripted clients', 0, 'Monitoring Costs And Payment', 'Mobile', '', ''),
(25, 'Rates for navigating Internet from Smartphone, PC and Tablet', 0, 'Monitoring Costs And Payment', 'Mobile', '', ''),
(26, 'Technical assistance', 1, 'Technical Support', 'Smartphone and Tablet', '', 'You can call our number 410 to speak with an expert that can give you premium assistance.\r\n<br> \r\nThe services you can receive are:</p>\r\n<ul>\r\n<li>support to data transfer in case of moving to a new phone</li>\r\n<li>assistance in using advanced smartphone features</li>\r\n<li>management of your media contents</li>\r\n<li>support in order to have maximum security</li>\r\n<li>smartphone software update</li>\r\n<li>storage and protection of your data</li>\r\n</ul>\r\n<p>The services have a cost starting from 3&euro;, depending on which service you need. The amount will be added on your invoice if you are a client with subscription of removed from your available credit if you are a rechargeable phone card client.'),
(27, 'Map service on cellphone', 0, 'Technical Support', 'Smartphone and Tablet', '', ''),
(28, 'Configure Mail on iPhone', 0, 'Technical Support', 'Smartphone and Tablet', '', ''),
(29, 'Configure Mail on iPad', 0, 'Technical Support', 'Smartphone and Tablet', '', ''),
(30, 'Configure Mail on Android', 0, 'Technical Support', 'Smartphone and Tablet', '', ''),
(31, 'Configure Mail on Windows Mobile', 0, 'Technical Support', 'Smartphone and Tablet', '', ''),
(32, 'Connect to Internet with your Smartphone', 0, 'Technical Support', 'Smartphone and Tablet', '', ''),
(33, 'M-Mobile mail - forgotten password or access problems', 0, 'Technical Support', 'Smartphone and Tablet', '', ''),
(34, 'Call notification', 0, 'Technical Support', 'Telephone Line', '', ''),
(35, 'Call redirection', 0, 'Technical Support', 'Telephone Line', '', ''),
(36, 'Disable phone calls', 0, 'Technical Support', 'Telephone Line', '', ''),
(37, 'First installation', 0, 'Technical Support', 'ADSL and Fiber', '', ''),
(38, 'Modem for fiber', 0, 'Technical Support', 'ADSL and Fiber', '', ''),
(39, 'How to do phone calls', 0, 'Technical Support', 'ADSL and Fiber', '', ''),
(40, 'How to navigate', 0, 'Technical Support', 'ADSL and Fiber', '', ''),
(41, 'Frequent problems', 0, 'Technical Support', 'ADSL and Fiber', '', ''),
(42, 'Router manuals and configurations', 0, 'Technical Support', 'ADSL and Fiber', '', ''),
(43, 'How to modify the type of subscription of daily newspaper/magazine', 0, 'Smart Life Assistance', 'Reading', '', ''),
(44, 'How to pay the subscription of daily newspaper/magazine', 0, 'Smart Life Assistance', 'Reading', '', ''),
(45, 'Tracks are not loading', 0, 'Smart Life Assistance', 'Music', '', ''),
(46, 'I am not able to hear the music', 0, 'Smart Life Assistance', 'Music', '', ''),
(47, 'How to pay the subscription of Spotify', 1, 'Smart Life Assistance', 'Music', '', 'Spotify Premium is a music streaming service that offers you milions of tracks and playlists.<br> \r\nIt is accessible via app on PC, Tablet and Smartphone. You can download directly from <a href="http://www.spotify.com">www.spotify.com</a> if you are on PC or use the Google PlayStore for Android or the App Store for iOS.\r\n<br><br>\r\nThe cost of the subscription to Spotify Premium is 9.99&euro;/month. It will be added on your invoice if you are a subscription client or it will be removed from your credit on your phone card if you are a rechargeable phone card client.'),
(48, 'How to terminate the subscription of Spotify', 0, 'Smart Life Assistance', 'Music', '', ''),
(49, 'How to modify the type of subscription of Spotify', 0, 'Smart Life Assistance', 'Music', '', ''),
(50, 'How to terminate the subscription of daily newspaper/magazine', 0, 'Smart Life Assistance', 'Reading', '', ''),
(51, 'I am not ablet to read the newspaper/magazine', 0, 'Smart Life Assistance', 'Reading', '', ''),
(52, 'I am not able to download the daily newspaper/magazine', 0, 'Smart Life Assistance', 'Reading', '', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `DEVICE`
--

CREATE TABLE IF NOT EXISTS `DEVICE` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Category` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Active` tinyint(1) DEFAULT NULL,
  `FullPrice` float DEFAULT NULL,
  `OutletPrice` float DEFAULT NULL,
  `Instalment` tinyint(1) DEFAULT NULL,
  `OS` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Presentation` text CHARACTER SET utf8 COLLATE utf8_bin,
  `TechSpecs` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Image` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Brand` (`Brand`,`FullPrice`,`OutletPrice`),
  KEY `Category` (`Category`),
  KEY `OS` (`OS`),
  KEY `Instalment` (`Instalment`),
  KEY `Name` (`Name`),
  KEY `ID` (`ID`),
  KEY `Name_2` (`Name`),
  FULLTEXT KEY `TechSpecs` (`TechSpecs`),
  FULLTEXT KEY `Presentation` (`Presentation`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dump dei dati per la tabella `DEVICE`
--

INSERT INTO `DEVICE` (`ID`, `Name`, `Category`, `Brand`, `Active`, `FullPrice`, `OutletPrice`, `Instalment`, `OS`, `Presentation`, `TechSpecs`, `Image`) VALUES
(1, 'Galaxy S7', 'Smartphone', 'Samsung', 1, 20.34, NULL, 1, 'Android', 'More than a simple smartphone. Great materials, waterproof design and first-class camera.\r\nSamsung Galaxy S7 is now available with 32 GB of memory! \r\n', 'Network:4G cat.9/HSDPA42/UMTS/EDGE/GPRS Frequences 850/900/1800/1900/2100\r\nComms:Wi-Fi - Bluetooth - Micro USB - NFC\r\nGPS:integrated A-GPS, GLONASS, BDS\r\nDisplay:Super AMOLED capacitive touchscreen, 16M colors, 5.1'''', 1440 x 2560 pixels\r\nDimensions:142.4 x 69.6 x 7.9 mm\r\nWeight:152 g\r\nCamera:12 MP, f/1.7, 26mm, phase detection autofocus, OIS, LED flash\r\nVideo:2160p@30fps, 1080p@60fps, 720p@240fps, HDR, dual-video rec.\r\nInternal Memory:32 GB, 4 GB RAM\r\nProcessor:OctaCore (QuadCore 2.3GHZ+QuadCore 1.6GHZ)\r\nOS:Android OS, v6.0 (Marshmallow)\r\nBattery:Non-removable Li-Ion 3000 mAh battery\r\nSensors:Fingerprint, accelerometer, gyro, proximity, compass, barometer, heart rate, SpO2', 'images/SAMSUNG_S7.jpg'),
(2, 'iPhone SE 16GB', 'Smartphone', 'Apple', 1, 21.94, 19.95, 1, 'iOS', 'iPhone SE is the most powerful smartphone with 4" screen: a small device for a great experience!', 'Network:4G LTE\r\nComms:Wi Fi 802.11a/b/g/n/ac\r\nGPS:A-GPS, GLONASS\r\nDisplay:LED-backlit IPS LCD, capacitive touchscreen, 16M colors, 4.0", 640 x 1136 pixels\r\nDimensions:123.8 x 58.6 x 7.6 mm\r\nWeight:113 g\r\nCamera:12 MP, f/2.2, 29mm, phase detection autofocus, dual-LED (dual tone) flash\r\nVideo:2160p@30fps, 1080p@30/60fps, 1080p@120fps, 720p@240fps\r\nInternal Memory:16 GB, 2 GB RAM\r\nProcessor:Chip A9 64-bit, Apple motion coprocessor M9 \r\nOS:iOS 9.3.2\r\nBattery:Non-removable Li-Po 1624 mAh battery\r\nSensors:Fingerprint, accelerometer, gyro, proximity, compass', 'images/iPhoneSE.jpg'),
(3, 'P9', 'Smartphone', 'Huawei', 0, 749.9, NULL, 0, 'Android', '', '', 'images/huawei-p9.jpg'),
(4, 'G5', 'Smartphone', 'LG', 0, 26.95, NULL, 1, 'Android', '', '', 'images/LG_G5.jpg'),
(5, 'Xperia X', 'Smartphone', 'Sony', 0, 629.9, NULL, 0, 'Android', '', '', 'images/sony-xperiaX.jpg'),
(6, 'iPhone 6s', 'Smartphone', 'Apple', 0, 29.99, NULL, 1, 'iOS', '', '', 'images/apple-iPhone6s.jpg'),
(7, 'Lumia 950', 'Smartphone', 'Microsoft', 0, 29.9, 27, 1, 'Windows', '', '', 'images/microsoft-LUMIA950.jpg'),
(8, 'Galaxy A5', 'Smartphone', 'Samsung', 0, 439.9, 359, 0, 'Android', '', '', 'images/GALAXY_A5.jpg'),
(9, 'K8', 'Smartphone', 'LG', 0, 20.99, NULL, 1, 'Android', '', '', 'images/LG-K8.jpg'),
(10, 'Galaxy TAB A 9.7', 'Tablet', 'Samsung', 1, 299.9, NULL, 0, 'Android', 'Equipped with a 1.2GHz Quad Core processor, 1.5GB RAM and Lollipop, the Galaxy Tab A delivers powerful performance with a simplified UI, tailored to a new screen ratio!', 'Network:LTE/HSDPA/HSUPA\r\nComms:Wi-Fi 802.11 a/b/g/n - Bluetooth 4.0 - micro USB\r\nGPS:A-GPS, GLONASS\r\nDisplay:9.7" TFT,1024x768\r\nDimensions:242.5 x 166.8 x 7.5 mm\r\nWeight:453 g\r\nCamera:5 MP, autofocus\r\nVideo:720p@30fps\r\nInternal Memory:32 GB, 2 GB RAM\r\nProcessor:Snapdragon 410 QuadCore da 1.2 GHz\r\nOS:Android OS, v5.0 (Lollipop), upgradable to v6.0.1 (Marshmallow)\r\nBattery:Non-removable Li-Ion 6000 mAh battery\r\nSensors:Accelerometer, compass', 'images/samsung-galaxy-tabA.jpg'),
(11, 'iPad Pro 9.7" 256 GB', 'Tablet', 'Apple', 1, 1199.9, NULL, 0, 'iOS', 'iPad Pro is more than the next generation of iPad: it''s an uncompromising vision of personal computing for the modern world. It puts incredible power that leaps past most portable PCs at your fingertips. It makes even complex work as natural as touching, swiping, or writing with a pencil.', 'Network:4G LTE Advanced \r\nComms:Wi-Fi 802.11 a/b/g/n/ac, dual-band, hotspot\r\nGPS:A-GPS, GLONASS\r\nDisplay:LED-backlit IPS LCD, capacitive touchscreen, 16M colors, 9.7", 1536 x 2048 pixels\r\nDimensions:240 x 169.5 x 6.1 mm\r\nWeight:444 g\r\nCamera:12 MP, f/2.2, 29mm, phase detection autofocus, dual-LED (dual tone) flash\r\nVideo:2160p@30fps, 1080p@30/60fps, 1080p@120fps, 720p@240fps\r\nInternal Memory:256 GB, 2 GB RAM\r\nProcessor:Snapdragon 410 QuadCore da 1.2 GHz\r\nOS:iOS 9.3.2\r\nBattery:Non-removable Li-Ion 6000 mAh battery\r\nSensors:Fingerprint, accelerometer, gyro, compass, barometer', 'images/APPLE_IPAD_PRO_97.jpg'),
(12, 'ONE TOUCH Pixi3 8', 'Tablet', 'Alcatel', 0, 99.9, 69, 0, 'Android', '', '', 'images/alcatel-pixi3.jpg'),
(13, 'ICONIA W4 821', 'Tablet', 'Acer', 0, 299.9, 199, 0, 'Windows', '', '', 'images/acer-iconia-w4.jpg'),
(14, 'Galaxy TabPro S 12', 'Tablet', 'Samsung', 0, 1299.9, NULL, 0, 'Android', '', '', 'images/SAMSUNG_GALAXY_TABPRO.jpg'),
(15, 'Mediapad T1 10 LTE', 'Tablet', 'Huawei', 0, 249.9, NULL, 0, 'Android', '', '', 'images/huawei-t1-10.jpg'),
(17, 'iPad mini 4', 'Tablet', 'Apple', 0, 529.9, 489, 0, 'iOS', '', '', 'images/ipad-mini-4.jpg'),
(18, 'iPad Air 2 16GB', 'Tablet', 'Apple', 0, 14.16, NULL, 1, 'iOS', '', '', 'images/ipad-air-2.jpg'),
(19, 'Repeater Wi-Fi AC750', 'Networking', 'ZyXEL', 1, 49.9, NULL, 0, '', 'ZyXEL Wireless AC750 Range Extender allows to easily extend your wireless network in an easy and fast way!\r\nIt is only necessary to connect the device to the socket and the LED signal allows to determine the ideal position.', 'Wi-Fi Standard:802.11 a / b / g / n / ac\r\nWi-Fi Speed:300 Mbps * (2,4 GHz), 450 Mbps * (5 GHz) Reception: 300 Mbps * (2,4 GHz), 450 Mbps * (5 GHz)\r\nWi-Fi Security:64/128 bit WEP, WPA / WPA2, WPA-PSK / WPA2-PSK\r\nSoftware:Online update of the firmware\r\nDimensions: 46,5 x 62,3 x 90,9 mm\r\nWeight: 98 g\r\nIncluded in the Price:Wireless Range Extender, Ethernet Cable, Warranty Certificate, support CD', 'images/zyxel1.jpg'),
(20, 'FRITZ!WLAN Repeater 1750E', 'Networking', 'AVM', 1, 2.5, NULL, 1, '', '', '', 'images/avm2.jpg'),
(21, 'WiFi Bridge', 'Networking', 'Technicolor', 0, 79.9, 59, 0, '', '', '', 'images/techni.jpg'),
(22, 'ERA Plus 900', 'Networking', 'Tecnoware', 0, 79.9, 59, 0, '', '', '', 'images/tecnoware900.jpg'),
(23, 'Repeater ZyXEL N300', 'Networking', 'ZyXEL', 0, 39, NULL, 0, '', '', '', 'images/zyxel2.jpg'),
(24, 'ERA Plus 600', 'Networking', 'Tecnoware', 0, 79.9, NULL, 0, '', '', '', 'images/tecnowareERA900.jpg'),
(25, 'FRITZ!WLAN Repeater 450E', 'Networking', 'AVM', 0, 2.44, NULL, 1, '', '', '', 'images/avm2.jpg'),
(26, 'Smart Home', 'SmartLiving', 'D-Link', 1, 5, NULL, 1, '', 'With Smart Home HD Starter Kit you can set up, monitor and automatize your home wherever you are!\r\nYou can use the app mydlink Home for smartphones and tablet to control all the devices to help you manage your smart home.', 'Wi-Fi Standard:802.11 a / b / g / n\r\nWi-Fi Security:WPA / WPA2\r\nDimensions: 9.7 x 7.7 x 6.2 cm\r\nWeight: 180 g\r\nIncluded in the Price:Smart Plug (DSP-W215), Wi-Fi Motion Sensor (DCH-S150), Monitor HD (DCS-935L)', 'images/dlinkSmartHome.jpg'),
(31, 'Galaxy Gear S', 'SmartLiving', 'Samsung', 0, 349.99, NULL, 0, '', '', '', 'images/gears.jpg'),
(32, 'Fixed Camera', 'SmartLiving', 'D-Link', 0, 79.9, NULL, 0, '', '', '', 'images/fixedcamera.jpg'),
(33, 'Galaxy Gear Fit', 'SmartLiving', 'Samsung', 0, 76.55, NULL, 0, '', '', '', 'images/gearfit.jpg'),
(34, 'Friends of Hue Bloom', 'SmartLiving', 'Philips', 0, 179.95, NULL, 0, '', '', '', 'images/bloom.png'),
(27, 'Watch Sport 38', 'SmartLiving', 'Apple', 1, 10.28, NULL, 1, '', 'Instantly receive and respond to your favorite notifications. Get the motivation you need to stay active and healthy. Express your personal style in a whole new way!', 'Wi-Fi Standard:802.11 a / b / g / n\r\nOS:watchOS 2\r\nDimensions:33.3x38.6x10.5 mm\r\nWeight:25 g\r\nSensors:Heart rate sensor, accelerometer, and gyroscope\r\nIncluded in the Price:Magnetic charging cable (2 m), USB power adapter (5W), Sport Band, Quick Start Guide', 'images/applesport.jpg'),
(28, 'Smart Band FIFA', 'SmartLiving', 'Sony', 0, 23.99, NULL, 0, '', '', '', 'images/sonyfifa.jpg'),
(29, 'WeR@Home', 'SmartLiving', 'Essence', 0, 5.5, NULL, 1, '', '', '', 'images/essence.jpg'),
(30, 'Solo 2 Headphones', 'SmartLiving', 'Beats', 0, 199.9, NULL, 0, '', '', '', 'images/beats.jpg'),
(39, 'Motorized Camera', 'SmartLiving', 'D-Link', 0, 159.99, NULL, 0, '', NULL, '', 'images/motorizedcamera.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `DEVICEANDAS`
--

CREATE TABLE IF NOT EXISTS `DEVICEANDAS` (
  `DeviceID` int(255) NOT NULL,
  `ASID` int(255) NOT NULL,
  PRIMARY KEY (`DeviceID`,`ASID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `DEVICEANDAS`
--

INSERT INTO `DEVICEANDAS` (`DeviceID`, `ASID`) VALUES
(1, 6),
(1, 26),
(1, 47),
(2, 6),
(2, 26),
(2, 47),
(10, 26),
(11, 26),
(19, 42),
(26, 14),
(27, 26);

-- --------------------------------------------------------

--
-- Struttura della tabella `DEVICEANDSL`
--

CREATE TABLE IF NOT EXISTS `DEVICEANDSL` (
  `DeviceID` int(255) NOT NULL,
  `SLID` int(255) NOT NULL,
  PRIMARY KEY (`DeviceID`,`SLID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `DEVICEANDSL`
--

INSERT INTO `DEVICEANDSL` (`DeviceID`, `SLID`) VALUES
(1, 4),
(2, 4),
(10, 5),
(11, 5),
(19, 16),
(26, 14),
(27, 9),
(27, 19),
(28, 21),
(29, 15),
(31, 18),
(32, 13),
(33, 20),
(34, 17),
(39, 12);

-- --------------------------------------------------------

--
-- Struttura della tabella `IMAGES`
--

CREATE TABLE IF NOT EXISTS `IMAGES` (
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `URL` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Name`),
  KEY `URL` (`URL`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `IMAGES`
--

INSERT INTO `IMAGES` (`Name`, `URL`) VALUES
('Slide1', 'images/slide1.png'),
('Slide2', 'images/slide2.jpg'),
('Slide3', 'images/slide3.jpg'),
('Logo', 'images/logo.png'),
('Spotify', 'images/girl-music.jpg'),
('AllDevs', 'images/alldevs.jpg'),
('HealthFitness', 'images/healthandfitness2.png'),
('HomeFamily', 'images/homeandfamily2.jpg'),
('Person', 'images/epayment.jpg'),
('TvEntertainment', 'images/tvandentertainment2.jpg'),
('Tvent1', 'images/tvent.jpg'),
('Tvent2', 'images/banner.jpg'),
('Tvent3', 'reading.jpg'),
('Person1', 'images/identita-pagamenti.jpg'),
('Person2', 'images/ticket.png'),
('Person3', 'images/Mobile_payment_01.jpg'),
('Person4', 'images/mobile-coupon.jpg'),
('Transport1', 'images/transport1.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `SMARTLIFE`
--

CREATE TABLE IF NOT EXISTS `SMARTLIFE` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Active` tinyint(1) NOT NULL,
  `Category` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Subcategory` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Presentation` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ActivationRule` varchar(999) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FullPrice` float DEFAULT NULL,
  `OutletPrice` text CHARACTER SET utf8 COLLATE utf8_bin,
  `Image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `isDevice` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Category` (`Category`,`FullPrice`,`Image`),
  KEY `Subcategory` (`Subcategory`),
  KEY `isDevice` (`isDevice`),
  KEY `ID` (`ID`),
  KEY `Name` (`Name`),
  FULLTEXT KEY `Description` (`Presentation`,`ActivationRule`),
  FULLTEXT KEY `Promotion` (`OutletPrice`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dump dei dati per la tabella `SMARTLIFE`
--

INSERT INTO `SMARTLIFE` (`ID`, `Name`, `Active`, `Category`, `Subcategory`, `Presentation`, `Description`, `ActivationRule`, `FullPrice`, `OutletPrice`, `Image`, `isDevice`) VALUES
(1, 'Chromecast', 0, 'TV & Entertainment', 'TV', 'Buy Chromecast, the device that connects smartphone and tablet to the TV.', '', '', 0, NULL, 'images/chromecast.jpg', 0),
(2, 'M-Mobile SKY', 0, 'TV & Entertainment', 'TV', 'With our fiber and DSL offers, you can have SKY without any need of a satellite dish.', '', '', 0, NULL, 'images/SKYNOP.jpg', 0),
(3, 'Netflix', 0, 'TV & Entertainment', 'TV', 'Subscribe to Netflix with us, you can get an immediate discount on the monthly bill.', '', '', 0, NULL, 'images/netflix.png', 0),
(4, 'Spotify Premium', 0, 'TV & Entertainment', 'Music', 'Subscribe to Spotify with us, you will get a discount on your monthly bill and you will have access to milions of tracks, themed playlists and much more.', '', '', 0, NULL, 'images/spotify.jpeg', 0),
(5, 'Daily Newspaper', 1, 'TV & Entertainment', 'Reading', 'We offer you the possibility to read your favourite daily newspapers on your Smartphone, Tablet or PC. You will be able to bring them with you wherever you go and have instant and easy access to them.', '', '', 0, NULL, 'images/corriere.png', 0),
(6, 'Magazine', 0, 'TV & Entertainment', 'Reading', 'Fashion, gossip, actuality, science. Which magzine do you want to read today? Choose with one click and read on your Tablet and PC.', '', '', 0, NULL, 'images/vogue.jpg', 0),
(7, 'Bose Soundlink Mini Bluetooth II', 0, 'TV & Entertainment', 'Music', 'Listening to your favourite music now is easier than ever. Great Bose compact design, are also a good looking decorative object.', '', '', 0, NULL, 'images/bose.jpg', 1),
(8, 'Headphones Beats "Solo2"', 0, 'TV & Entertainment', 'Music', 'Powerful sound and high sound quality, the headphones SOlo2 are one of the best headphones around.', '', '', 0, NULL, 'images/beats.jpg', 1),
(9, 'Transport', 1, 'Person', '', '', 'Buy a ticket via SMS and pay it with your phone credit.', 'Open M-Bag and browse until you find the city you are interested in and click on buy ticket.\r\nYou pay directly with you phone credit.<br><br>\r\n \r\nYou will receive an SMS, the ticket is valid from that moment with no further validations required.\r\nYou can find your ticket directly into your M-Bag, and you can renew it when it expires. \r\nIf the ticket inspector asks for you ticket just show your SMS of confirm you have received.\r\n <br><br>\r\nIn some cities you can also use the QRCode mode. You will receive a QRCode, along with the SMS, that will allow you to open the turnstiles.\r\nPut your device close to the reader and the deal is done.', 0, NULL, 'images/ticket.png', 0),
(10, 'Payments', 0, 'Person', '', '', '', '', 0, NULL, 'images/payment.jpg', 0),
(11, 'Coupons', 0, 'Person', '', '', '', '', 0, NULL, 'images/mobile-coupon.jpg', 0),
(12, 'D-Link Motorized Camera', 0, 'Home & Family', 'Security', 'The camera allow to monitor an entire room no matter\r\n					where it is placed, thanks to a 340 degrees action range', '', '', 0, NULL, 'images/motorizedcamera.jpg', 1),
(13, 'D-Link Fixed Camera', 0, 'Home & Family', 'Security', 'A good solution to monitor your home or a small office all day\r\n					long. THe camera has an infrared LED that grants vision also with no light', '', '', 0, NULL, 'images/fixedcamera.jpg', 1),
(14, 'D-Link SmartHome', 1, 'Home & Family', 'Security', 'D-Link SmartHome Starter Kit offers the possibility to set,\r\n					manage and monitor your home everywhere you are', '', '', 0, NULL, 'images/dlinkSmartHome.jpg', 1),
(15, 'WeR@Home', 0, 'Home & Family', 'Security', 'Keep under control what happens in your house at any\r\n					time with your Smartphone.<br>Three months of service included!', '', '', 0, NULL, 'images/essence.jpg', 1),
(16, 'ZyXEL Repeater Wi-Fi AC 750', 1, 'Home & Family', 'Utility & Design', 'AC 750 by ZyXEL offers an easy solution for extending your Wi-Fi network\r\n					at home. It has a compact design and is easy to install', '', '', 0, NULL, 'images/zyxel1.jpg', 1),
(17, 'Philips Livingcolours Bloom', 0, 'Home & Family', 'Utility & Design', 'The starter kit Philips friends of hue Bloom white offers you the possibility\r\n					to create the type of illumination you desire via Smartphone or other devices', '', '', 0, NULL, 'images/bloom.png', 1),
(18, 'Samsung Galaxy Gear S', 0, 'Health & Fitness', 'Smart Watches', 'An elegant display Super AMOLED curved for maximum wearability, personalized screens e differents wristbands to interchange as you like.', '', '', 0, NULL, 'images/gears.jpg', 1),
(19, 'Apple Watch Sport 38', 1, 'Health & Fitness', 'Smart Watches', 'Apple Watch is an incredible customizable timepiece, has entirely new ways to stay in touch, and is a comprehensive health and fitness companion.', '', '', 0, NULL, 'images/applesport.jpg', 1),
(20, 'Samsung Galaxy Gear Fit', 0, 'Health & Fitness', 'Bands', 'It keeps track of your daily activities, it is comfortable and ultra-light and also the most resilient to water and dust.', '', '', 0, NULL, 'images/gearfit.jpg', 1),
(21, 'Sony Smartband FIFA Edition', 0, 'Health & Fitness', 'Bands', 'An innovative band which is capable of register your physical activities.', '', '', 0, NULL, 'images/sonyfifa.jpg', 1),
(22, 'Ihealth HS5', 0, 'Health & Fitness', 'Other', 'It registers calories and your daily activites, it plans your weight targets. It can manage registrations, graphs and the history of data and also show tendecies.', '', '', 0, NULL, 'images/iHealth.png', 1),
(23, 'Corrieredellasera', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 19.99, 'First 3 months free!', 'images/corrieredellasera.png', 0),
(24, 'La Gazzetta dello Sport', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 19.99, NULL, '', 0),
(25, 'la Repubblica', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 15.99, 'The next 2 months are discounted by 70%!', 'images/larepubblica.png', 0),
(26, 'Il Messaggero', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 15.99, NULL, 'images/messaggero.jpg', 0),
(27, 'Il Mattino', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 15.99, NULL, '', 0),
(28, 'Il Gazzettino', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 15.99, NULL, '', 0),
(29, 'La Stampa', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 19.99, NULL, '', 0),
(30, 'Il Corriere Adriatico', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 15.99, NULL, '', 0),
(31, 'Il Nuovo Quotidiano di Puglia', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 15.99, NULL, '', 0),
(32, 'La Nazione', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 19.99, NULL, '', 0),
(33, 'Il Resto del Carlino', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 19.99, NULL, '', 0),
(34, 'Il Giorno', 0, 'TV & Entertainment', 'Daily Newspaper', '', '', '', 19.99, NULL, '', 0),
(35, 'Transport', 1, 'Person', '', '', 'Buy a ticket via SMS and pay it with your phone credit.', 'Open M-Bag and browse until you find the city you are interested in and click on buy ticket.\r\nYou pay directly with you phone credit.<br><br>\r\n \r\nYou will receive an SMS, the ticket is valid from that moment with no further validations required.\r\nYou can find your ticket directly into your M-Bag, and you can renew it when it expires. \r\nIf the ticket inspector asks for you ticket just show your SMS of confirm you have received.\r\n <br><br>\r\nIn some cities you can also use the QRCode mode. You will receive a QRCode, along with the SMS, that will allow you to open the turnstiles.\r\nPut your device close to the reader and the deal is done.', 0, NULL, 'images/ticket.png', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `THEGROUP`
--

CREATE TABLE IF NOT EXISTS `THEGROUP` (
  `Category` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `Title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Image` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Description` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Category`,`Name`),
  KEY `Image` (`Image`),
  KEY `Title` (`Title`),
  FULLTEXT KEY `Description` (`Description`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `THEGROUP`
--

INSERT INTO `THEGROUP` (`Category`, `Name`, `Title`, `Image`, `Description`) VALUES
('Governance', '', 'M-MOBILE CORPORATE GOVERNANCE', '', 'The system of corporate governance adopted by M-Mobile, articulated according to the traditional method, is focused on the role of leadership in the strategic decision taken by the Board of Directors, on the transparency of management choices, both within the company as well as in respect to the market, on the efficiency and effectiveness of the internal control system, on the strict discipline of potential conflicts of interest and on firm principles of conduct for transactions with related parties.\r\n \r\nThis system, which was designed and built in light of the principles elaborated by the Committee for the Corporate Governance of the Italian Stock Exchange and the best international practices, has been implemented with the adoption of codes, principles and procedures which characterize the activities of the different organizational and operational components, which are constantly subject to verification and update, to respond effectively to the evolution of the regulatory situation and to the mutation of operational practices.\r\n \r\nWe are convinced that a good corporate governance can and has to always identify new margins for improvement, in light of external stimuli and constraints, as well as application experience.'),
('News', '', 'M-Mobile news', '', ''),
('TheGroup', '', 'M-MOBILE', '', 'The future of our country passes through social and technological innovation. Just in the year 2015 we laid 2.2 million km of fiber-optic network.  In the Group, about 53 thousand people work every day with this objective in mind. For the development of innovative technologies we will invest around 6.7 billion euros by the end of 2018.\r\nWe develop new generation infrastructures with the goal of ensuring that around 84% of Italian houses have coverage via the new fixed ultra-broadband network and 98% of the population via  the new mobile network by the end of 2018. As we believe digital technologies are the basis for a smart, sustainable and inclusive growth. By the end of March 2016, with a total of 11 million km of installed fiber, the fixed network has already reached 45% of the houses and 1,100 municipalities; the mobile network reached 92% of the population and 6,200 municipalities.\r\n \r\nTo simplify the daily life there are new solutions: electronic payment systems, smart homes, electronic medical records and certified electronic mail in the healthcare and government sectors, for the schools  interactive multimedia whiteboards and web-based learning environments. For businesses, advanced platforms for cloud computing for the virtualization of applications and infrastructures, a vast selection of applications for storing and managing data or controlling energy consumption, products and software to enhance the use of digital signatures.\r\n \r\nFor everyone, digital technology means to be always connected and access services and digital  content - games, e-books, music and films, all constantly enriched with premium contents - with ease and safety; all of this seamlessly on smartphones, tablets or other devices.  \r\n \r\nThrough the M-Mobile Foundation we promote a vision of innovation and technology as social enablers, supporting projects in the fields of  digital education and cultural innovation. As a result of the company’s social and environmental commitment, we have been included among the most important and selective stock market Sustainability indexes worldwide, for the last eleven years.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
