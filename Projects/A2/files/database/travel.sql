-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 13, 2019 at 12:20 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `travelimage`
--

DROP TABLE IF EXISTS `travelimage`;
CREATE TABLE IF NOT EXISTS `travelimage` (
  `ImageID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT NULL,
  `Path` varchar(255) DEFAULT NULL,
  `ImageContent` longblob,
  PRIMARY KEY (`ImageID`),
  KEY `UID` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `travelimage`
--

INSERT INTO `travelimage` (`ImageID`, `UID`, `Path`, `ImageContent`) VALUES
(1, 1, '6592902825.jpg', NULL),
(2, 1, '6592914823.jpg', NULL),
(3, 2, '6592317633.jpg', NULL),
(4, 2, '6592294487.jpg', NULL),
(5, 5, '6114904363.jpg', NULL),
(6, 5, '6114907897.jpg', NULL),
(7, 27, '5856697109.jpg', NULL),
(8, 13, '5856658791.jpg', NULL),
(9, 11, '5856616479.jpg', NULL),
(10, 13, '5856654945.jpg', NULL),
(11, 11, '5857298322.jpg', NULL),
(12, 27, '5857398054.jpg', NULL),
(13, 5, '6596048341.jpg', NULL),
(14, 5, '6596046267.jpg', NULL),
(15, 9, '5855174537.jpg', NULL),
(16, 9, '5855735700.jpg', NULL),
(17, 27, '5855191275.jpg', NULL),
(18, 27, '5855752464.jpg', NULL),
(19, 27, '5855729828.jpg', NULL),
(20, 28, '5855774224.jpg', NULL),
(21, 28, '5855221959.jpg', NULL),
(22, 18, '6114850721.jpg', NULL),
(23, 18, '6114859969.jpg', NULL),
(24, 20, '6114960821.jpg', NULL),
(25, 10, '6114881215.jpg', NULL),
(26, 10, '6115603234.jpg', NULL),
(27, 10, '6114867983.jpg', NULL),
(28, 10, '6115548152.jpg', NULL),
(29, 29, '5855209453.jpg', NULL),
(30, 29, '5855213165.jpg', NULL),
(31, 30, '6119127716.jpg', NULL),
(32, 30, '6119130918.jpg', NULL),
(33, 6, '6119143988.jpg', NULL),
(34, 3, '8152043422.jpg', NULL),
(35, 3, '8152016381.jpg', NULL),
(36, 3, '8152045688.jpg', NULL),
(37, 3, '8152045872.jpg', NULL),
(38, 3, '8152020963.jpg', NULL),
(39, 3, '8152048712.jpg', NULL),
(40, 27, '222222.jpg', NULL),
(41, 27, '222223.jpg', NULL),
(42, 17, '9493997865.jpg', NULL),
(43, 17, '9496787858.jpg', NULL),
(44, 17, '9496792166.jpg', NULL),
(45, 17, '9496799098.jpg', NULL),
(46, 17, '9494282329.jpg', NULL),
(47, 8, '9494475161.jpg', NULL),
(48, 8, '9494472443.jpg', NULL),
(49, 8, '9494464567.jpg', NULL),
(50, 8, '9494470337.jpg', NULL),
(51, 8, '9496560520.jpg', NULL),
(52, 17, '9498368556.jpg', NULL),
(53, 17, '9495571869.jpg', NULL),
(54, 17, '9495574327.jpg', NULL),
(55, 17, '9498381010.jpg', NULL),
(56, 17, '9498386718.jpg', NULL),
(57, 4, '9498388516.jpg', NULL),
(58, 22, '9498358806.jpg', NULL),
(59, 22, '9504606628.jpg', NULL),
(60, 22, '9504609042.jpg', NULL),
(61, 12, '9504613978.jpg', NULL),
(62, 12, '9504451722.jpg', NULL),
(63, 12, '9504449928.jpg', NULL),
(64, 15, '9504448540.jpg', NULL),
(65, 15, '9504445110.jpg', NULL),
(66, 15, '9505536014.jpg', NULL),
(67, 23, '9502740177.jpg', NULL),
(68, 23, '9502741759.jpg', NULL),
(69, 23, '9505893300.jpg', NULL),
(70, 23, '9505897492.jpg', NULL),
(71, 7, '8730408907.jpg', NULL),
(72, 7, '8731523536.jpg', NULL),
(73, 14, '8710320515.jpg', NULL),
(74, 14, '8711645510.jpg', NULL),
(75, 14, '8710513053.jpg', NULL),
(76, 12, '8711623884.jpg', NULL),
(77, 12, '8710247776.jpg', NULL),
(78, 12, '8710289254.jpg', NULL),
(80, 7, '8731526170.jpg', NULL),
(81, 21, '8645912379.jpg', NULL),
(82, 21, '8646991554.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `travelimagedetails`
--

DROP TABLE IF EXISTS `travelimagedetails`;
CREATE TABLE IF NOT EXISTS `travelimagedetails` (
  `ImageID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` longtext,
  `Latitude` double DEFAULT NULL,
  `Longitude` double DEFAULT NULL,
  `CityCode` int(11) DEFAULT NULL,
  `CountryCodeISO` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ImageID`),
  KEY `CityCode` (`CityCode`),
  KEY `CountryCodeISO` (`CountryCodeISO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `travelimagedetails`
--

INSERT INTO `travelimagedetails` (`ImageID`, `Title`, `Description`, `Latitude`, `Longitude`, `CityCode`, `CountryCodeISO`) VALUES
(1, 'Edworthy Park', 'Calgary Children\'s Hospital from Edworthy Park', 51.061249, -114.158077, 5913490, 'CA'),
(2, 'Calgary Downtown', 'Calgary Downtown from Edworthy Park', 51.061249, -114.158077, 5913490, 'CA'),
(3, 'Grace Presbyterian Church', 'Calgary Beltline during the first snowfall of the season', 51.039522, -114.084236, 5913490, 'CA'),
(4, 'Along the Bow River', 'Along the Bow River in downtown Calgary', 51.051274, -114.082136, 5913490, 'CA'),
(5, 'Ascending Sulpher Mountain', 'First time using HDR with 2 stop bracketing composed in PhotoMatix Pro 4.1', 51.149579, -115.559993, 5892532, 'CA'),
(6, 'At top of Sulpher Mountain', 'At top of Sulpher Mountain near Banff', 51.144571, -115.57467, 5892532, 'CA'),
(7, 'Lunenburg Port', 'On board a small sailing ship leaving Lunenburg', 44.373257, -64.307249, 6062069, 'CA'),
(8, 'Central United Church', NULL, 44.377596, -64.309123, 6062069, 'CA'),
(9, 'Peggy\'s Cove', NULL, 44.491558, -63.91379, NULL, 'CA'),
(10, 'Near Peggy\'s Cove', 'An interesting pile of junk', 44.492859, -63.916676, NULL, 'CA'),
(11, 'Annapolis Royal', 'Outside the Fort Anne National Historic Site and Museum', 44.741658, -65.519307, NULL, 'CA'),
(12, 'Near Wolfville, NS', NULL, 45.093368, -64.360474, NULL, 'CA'),
(13, 'Central Park', 'Conservatory Pond in Central Park New York', 40.773684, -73.96701, 5128581, 'US'),
(14, 'Rockefeller Center', NULL, 40.758713, -73.978731, 5128581, 'US'),
(15, 'Albert Hall', NULL, 51.500241, -0.177273, 2643743, 'GB'),
(16, 'Emirates Stadium', 'Home to Arsenal FC', 51.556309, -0.107846, 2643743, 'GB'),
(17, 'Westminister Abbey', NULL, 51.49963, -0.128708, 2643743, 'GB'),
(18, 'Wellington\'s Arch', 'The top of Wellington\'s Arch has this sculptural grouping', 51.502572, -0.150869, 2643743, 'GB'),
(19, 'British Museum', 'The library in the British Museum in London', 51.519148, -0.126826, 2643743, 'GB'),
(20, 'Castle at Battle, UK', 'Entrance way to the Battle of Hasting\'s site in Battle, UK', 50.915115, 0.485893, 2656161, 'GB'),
(21, 'Lewes Castle', 'Built in 1069, the castle has a tremendous view of the town of Lewes and the surrounding countryside.', 50.872726, 0.008259, 2644559, 'GB'),
(22, 'View of Cologne', 'View of Cologne from atop the Cologne Cathedral', 50.941149, 6.957358, 2886242, 'DE'),
(23, 'Prinz-Georg Garten', NULL, 49.87872, 8.654719, 2938913, 'DE'),
(24, 'Downtown Frankfurt', 'Downtown Frankfurt from the Frankfurt Cathedral', 50.110647, 8.684955, 2925533, 'DE'),
(25, 'Brandenburg Gate, Berlin', NULL, 52.516239, 13.377214, 2950159, 'DE'),
(26, 'Outside the Berliner Dom', NULL, 52.519255, 13.399552, 2950159, 'DE'),
(27, 'New National Gallery, Ber', 'Exterior of the Mies van der Rohe designed New National Gallery', 52.506482, 13.367899, 2950159, 'DE'),
(28, 'Checkpoint Charlie', NULL, 52.507324, 13.390419, 2950159, 'DE'),
(29, 'Plaza de Cibeles, Madrid', NULL, 40.419098, -3.692452, 3117735, 'ES'),
(30, 'Santiago Bernabeu, Madrid', 'Home stadium for Real Madrid', 40.452891, -3.689813, 3117735, 'ES'),
(31, 'Paradise Island in Nassau', 'Photographed from Atlantis Bridge; Paradise Island in Nassau, Bahamas', 25.077709, -77.324127, 3571824, 'BS'),
(32, 'Castaway Cay, South Abaco', NULL, 26.082139, -77.536223, NULL, 'BS'),
(33, 'Disney Coronado Resort', NULL, 28.365272, -81.572183, 4167147, 'US'),
(34, 'Beach in Ghana', NULL, NULL, NULL, NULL, 'GH'),
(35, 'Beach in Ghana', NULL, NULL, NULL, NULL, 'GH'),
(36, 'Cape Coast', NULL, 5.104149, -1.240446, 2302357, 'GH'),
(37, 'Cape Coast', NULL, 5.103262, -1.240816, 2302357, 'GH'),
(38, 'Cape Coast', NULL, 5.103367, -1.241535, 2302357, 'GH'),
(39, 'Accra', NULL, NULL, NULL, 2306104, 'GH'),
(40, 'Florence', NULL, 43.766069, 11.252747, 3176959, 'IT'),
(41, 'Milan', NULL, 45.442661, 9.20105, 3173435, 'IT'),
(42, 'Verona Building Art', 'Verona Building Art', 45.442871, 10.997508, 3164527, 'IT'),
(43, 'Verona Ponte Scaligero', NULL, 45.441069, 10.987755, 3164527, 'IT'),
(44, 'Verona Piazza Bra at Night', NULL, 45.438794, 10.993353, 3164527, 'IT'),
(45, 'Verona', 'Near Ponte Nuovo', 45.443997, 11.000893, 3164527, 'IT'),
(46, 'Prato della Valle', 'Prato della Valle in Padova', 45.398611, 11.875797, 3171728, 'IT'),
(47, 'St Marks Square in Venice', NULL, 45.434233, 12.338693, 3164603, 'IT'),
(48, 'Santa Maria della Salute, Venice', NULL, 45.431003, 12.334766, 3164603, 'IT'),
(49, 'Venice View From Ponte di Rialto', NULL, 45.437975, 12.335871, 3164603, 'IT'),
(50, 'Venice', NULL, 45.435124, 12.328055, 3164603, 'IT'),
(51, 'Montepulciano', NULL, 43.092535, 11.782022, 3172794, 'IT'),
(52, 'Arch of Constantine', 'view from within the Colosseum', 41.88983, 12.490873, 3169070, 'IT'),
(53, 'Inside the Colosseum', NULL, 41.890332, 12.49181, 3169070, 'IT'),
(54, 'Arch of Septimus Severus', 'In the Roman Forum', 41.892949, 12.484972, 3169070, 'IT'),
(55, 'Palatine Hill', 'Walking up the via di San Gregorio side of the Hill', 41.887437, 12.48866, 3169070, 'IT'),
(56, 'From St. Peters', NULL, 41.902172, 12.456098, 3169070, 'IT'),
(57, 'Temple of Asclepius', 'In the Villa Borghese Park', 41.914541, 12.483443, 3169070, 'IT'),
(58, 'Florence Duomo', 'Photo taken from the Campanile', 43.772801, 11.255673, 3176959, 'IT'),
(59, 'Orpheus Fountain, Florence', 'In the garden of Palazzo Vivarelli Colonna', 43.76964, 11.266535, 3176959, 'IT'),
(60, 'Pazzi Chapel at Santa Croce', 'By Filippo Brunelleschi, the chapel is considered to be one of the masterpieces of Renaissance architecture. It is located in the first cloister of the Basilica di Santa Croce.', 43.768234, 11.262212, 3176959, 'IT'),
(61, 'Palazzo Strozzi, Florence', NULL, 43.771339, 11.251678, 3176959, 'IT'),
(62, 'Interior Santo Spirito, Florence', 'Filippo Brunelleschi designed church has been called by Bernini the most beautiful church in the world. I have to concur with the master, it is beyond stunning …', 43.767212, 11.248202, 3176959, 'IT'),
(63, 'Santo Spirito, Florence', NULL, 43.766827, 11.248174, 3176959, 'IT'),
(64, 'Garden of Boboli, Pitti Palace, Florence', NULL, 43.763791, 11.251147, 3176959, 'IT'),
(65, 'Santa Maria Novella, Florence', NULL, 43.773933, 11.249692, 3176959, 'IT'),
(66, 'Camposanto, Pisa', NULL, 43.724017, 10.394762, 3170647, 'IT'),
(67, 'Cathedral, Pisa', NULL, 43.723039, 10.394697, 3170647, 'IT'),
(68, 'Pisa Cathedral from Leaning Tower', NULL, 43.722977, 10.396661, 3170647, 'IT'),
(69, 'San Michele in Foro, Lucca', NULL, 43.842953, 10.502501, 3174530, 'IT'),
(70, 'Basilica of San Frediano, Lucca', NULL, 43.845901, 10.505397, 3174530, 'IT'),
(71, 'Matthias Church', 'Official name is \"Church of the Blessed Virgin in Buda\". Central part of church built around 1400, with additions by Turks, and then Baroque-era modifications, finally redone in late 19th Century in neo-Gothic revival. Very much a masterpiece of European eclecticism, though some say it is an over-decorated piece of stage scenery.', 47.502449, 19.03453, 3054643, 'HU'),
(72, 'St. Stephen\'s Cathedral', NULL, 47.500742, 19.053246, 3054643, 'HU'),
(73, 'Ekklisia Agii Isidori church', 'At the top of the Lycabettus Hill', 37.981905, 23.743295, 264371, 'GR'),
(74, 'Temple of Hephaistos', 'Located on western perimeter of Agora in Athens. Built in 460-415 BCE, it is the best preserved temple of antiquity.', 37.975579, 23.721526, 264371, 'GR'),
(75, 'Ancient Theatre of Dionysos', 'On south bank of Acropolis', 37.970657, 23.727309, 264371, 'GR'),
(76, 'Roman Agora', NULL, 37.974157, 23.726703, 264371, 'GR'),
(77, 'Dusk on Imerovigli (Santorini)', 'Looking towards Imerovigli, a village devoted to the appreciation of the sunset!', 36.429988, 25.426145, 252920, 'GR'),
(78, 'Looking towards Fira', NULL, 36.42898, 25.426612, 252920, 'GR'),
(80, 'Gresham Palace', 'Built in early 20th century and originally the headquarters for an English insurance company. Nationalized after the war, it was turned into a Four Season\'s Hotel after a 100 million dollar renovation from 2000-2004. Evidently one of the world\'s swankiest hotels. It overlooks Roosevelt Square and the Chain Bridge.', 47.49972, 19.04753, 3054643, 'HU'),
(81, 'Christ Church College, Oxford', NULL, 51.749364, -1.255794, 2640729, 'GB'),
(82, 'Cloisters, New College, Oxford', NULL, 51.754369, -1.252417, 2640729, 'GB');

-- --------------------------------------------------------

--
-- Table structure for table `travelimagelocations`
--

DROP TABLE IF EXISTS `travelimagelocations`;
CREATE TABLE IF NOT EXISTS `travelimagelocations` (
  `ImageLocationID` int(11) NOT NULL AUTO_INCREMENT,
  `ImageID` int(11) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ImageLocationID`),
  KEY `ImageLocationID` (`ImageLocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `travelimagelocations`
--

INSERT INTO `travelimagelocations` (`ImageLocationID`, `ImageID`, `Country`, `City`) VALUES
(1, 2, 'Canada', 'Calgary'),
(28, 1, 'Canada', 'Calgary'),
(30, 3, 'Canada', 'Calgary'),
(31, 4, 'Canada', 'Calgary'),
(32, 5, 'Canada', 'Banff'),
(33, 6, 'Canada', 'Banff'),
(34, 7, 'Canada', 'Nova Scotia'),
(35, 8, 'Canada', 'Nova Scotia'),
(36, 9, 'Canada', 'Nova Scotia'),
(37, 10, 'Canada', 'Nova Scotia'),
(38, 11, 'Canada', 'Nova Scotia'),
(39, 12, 'Canada', 'Wolfville, Nova Scotia'),
(40, 13, 'New York, USA', 'New York City'),
(41, 14, 'New York, USA', 'New York City'),
(42, 15, 'London', 'England'),
(50, 16, 'England', 'London'),
(51, 17, 'England', 'London'),
(52, 18, 'England', 'London'),
(53, 19, 'England', 'London'),
(54, 20, 'England', 'Sussex'),
(55, 21, 'England', 'Sussex'),
(56, 22, 'Germany', 'Cologne'),
(57, 23, 'Germany', 'Darmstadt'),
(58, 24, 'Germany', 'Frankfurt'),
(59, 25, 'Germany', 'Berlin');

-- --------------------------------------------------------

--
-- Table structure for table `travelimagerating`
--

DROP TABLE IF EXISTS `travelimagerating`;
CREATE TABLE IF NOT EXISTS `travelimagerating` (
  `ImageRatingID` int(11) NOT NULL,
  `ImageID` int(11) NOT NULL,
  `Rating` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ImageRatingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `travelimagerating`
--

INSERT INTO `travelimagerating` (`ImageRatingID`, `ImageID`, `Rating`) VALUES
(0, 1, 3),
(1, 2, 4),
(2, 3, 4),
(3, 4, 5),
(4, 5, 2),
(5, 6, 3),
(6, 7, 4),
(7, 8, 3),
(8, 9, 2),
(9, 10, 1),
(10, 11, 3),
(11, 12, 1),
(12, 13, 3),
(13, 14, 4),
(14, 15, 5),
(15, 16, 5),
(16, 17, 2),
(17, 18, 3),
(18, 19, 3),
(19, 20, 4),
(20, 21, 4),
(21, 22, 5),
(22, 23, 2),
(23, 24, 3),
(24, 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `travelpost`
--

DROP TABLE IF EXISTS `travelpost`;
CREATE TABLE IF NOT EXISTS `travelpost` (
  `PostID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(11) DEFAULT NULL,
  `ParentPost` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Message` longtext,
  `PostTime` datetime DEFAULT NULL,
  PRIMARY KEY (`PostID`),
  KEY `UID` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `travelpost`
--

INSERT INTO `travelpost` (`PostID`, `UID`, `ParentPost`, `Title`, `Message`, `PostTime`) VALUES
(1, 2, NULL, 'Calgary in the Snow', 'In December of 2011, I was lucky/unfortunate enough to have the opportunity to fly to chilly Calgary in Western Canada for a week-long conference. I was all prepared for winter and cold … it was to Canada after all that I was travelling! Imagine my surprise when I arrived at the airport on Saturday morning to find the temperature was over 10 degrees Celsius. Yet within just a few hours, the weather began to turn. On Sunday morning, I awoke at 6am local time to find that the city was dusted in about 10cm of snow. <p>It was truly magical! A hush had descended upon the city to go with the snow. And yet, again, to my surprise, there were joggers out at 7am running, snow or no snow. None the less, I spent almost two hours walking all across the center of the city, snapping photos, glad that I had packed mittens and a hat.', '2011-12-04 00:00:00'),
(2, 1, NULL, 'Fall Colors in Calgary', 'As part of John and I\'s journey across Canada, we found ourselves finally leaving the prairies and heading to Calgary, one of Canada\'s major cities, which lies less than an hour\'s drive from the mountains.<p>The weather was tremendous. Fall colors had blanketing the city, though there still was plenty of green. Perhaps my favorite photo location was Edworthy Park in Calgary. This park is on the western edge of the city right beside the Bow River. The park is also bordered by hills that contain what are amounts to old-growth forests.<p>Evidently the park used to be part of a ranch with cows and horses. While we didn\'t see any domestic animals, there were a variety of wonderful trails meandering through the hills, from which I snapped these photos.', '2011-10-08 00:00:00'),
(3, 5, NULL, 'Mountain Climbing', 'The highlight of our last trip to Canada was a climb up Sulpher Mountain just outside of Banff. I\'d like to say that it was so difficult that we required crampons, pitons, and screamers … but that would be stretching the truth for sure.<p>The ascent up Sulpher Mountain in fact can be made via a gondola. We decided to walk instead, which took us just about 90 minutes, if I remember correctly. There were lots of other people making the same ascent. Most of the climb is a series of eventually tedious switchbacks. Yet the view eventually becomes quite stunning, allowing one to view up and down the Bow River valley.', '2011-09-03 00:00:00'),
(4, 5, NULL, 'One Day in New York', 'After my last conference, I had time for a quick one day tour of New York. There is so much to see! Because of the time constraints, I decided to focus on a pretty small area, in my case, midtown New York around Central Park and the Rockefeller Center.<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Phasellus hendrerit. Pellentesque aliquet nibh nec urna. In nisi neque, aliquet vel, dapibus id, mattis vel, nisi. Sed pretium, ligula sollicitudin laoreet viverra, tortor libero sodales leo, eget blandit nunc tortor eu nibh. Nullam mollis. Ut justo. Suspendisse potenti.\r\n<p>\r\nSed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est. Sed lectus. Praesent elementum hendrerit tortor. Sed semper lorem at felis. Vestibulum volutpat, lacus a ultrices sagittis, mi neque euismod dui, eu pulvinar nunc sapien ornare nisl. Phasellus pede arcu, dapibus eu, fermentum et, dapibus sed, urna.', '2012-10-22 00:00:00'),
(5, 6, NULL, 'Visiting Orlando', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. Nullam malesuada erat ut turpis. Suspendisse urna nibh, viverra non, semper suscipit, posuere a, pede.\r\n<p>\r\nDonec nec justo eget felis facilisis fermentum. Aliquam porttitor mauris sit amet orci. Aenean dignissim pellentesque felis.\r\n<p>\r\nMorbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat.\r\n<p>\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.', '2012-07-18 00:00:00'),
(6, 9, NULL, 'Favorite Places', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful.\r\n<p>\r\nNor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\r\n<p>\r\nOn the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that', '2012-06-08 00:00:00'),
(7, 10, NULL, 'Berlin Tour', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.\r\n<p>\r\nWhen, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath of that universal love which bears and sustains us, as it floats around us in an eternity of bliss; and then, my friend, when darkness overspreads my eyes, and heaven and earth seem to dwell in my soul and absorb its power, like the form of a beloved mistress, then I often think with longing, Oh, would I could describe these conceptions, could impress upon paper all that is living so full and warm within me, that it might be the mirror of my soul, as my soul is the mirror of the infinite God!\r\n<p>\r\nO my friend -- but it is too much for my strength -- I sink under the weight of the splendour of these visions! A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.\r\n<p>\r\nI am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the', '2012-11-11 00:00:00'),
(8, 11, NULL, 'Old World Charm in the New World', '<p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.</p>\n\n<p>I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</p>\n\n<p>When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath of that universal love which bears and sustains us, as it floats around us in an eternity of bliss; and then, my friend, when darkness overspreads my eyes, and heaven and earth seem to dwell in my soul and absorb its power, like the form of a beloved mistress, then I often think with longing, Oh, would I could describe these conceptions, could impress upon paper all that is living so full and warm within me, that it might be the mirror of my soul, as my soul is the mirror of the infinite God!</p>\n\n<p>O my friend -- but it is too much for my strength -- I sink under the weight of the splendour of these visions! A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>\n\n<p>I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single</p>', '2013-01-17 00:00:00'),
(9, 13, NULL, 'Nova Scotia', '<p>The steamer Mongolia, belonging to the Peninsular and Oriental Company, built of iron, of two thousand eight hundred tons burden, and five hundred horse-power, was due at eleven o\'clock a.m. on Wednesday, the 9th of October, at Suez.  The Mongolia plied regularly between Brindisi and Bombay via the Suez Canal, and was one of the fastest steamers belonging to the company, always making more than ten knots an hour between Brindisi and Suez, and nine and a half between Suez and Bombay.</p>\n\n<p>Two men were promenading up and down the wharves, among the crowd of natives and strangers who were sojourning at this once straggling village&mdash;now, thanks to the enterprise of M. Lesseps, a fast-growing town.  One was the British consul at Suez, who, despite the prophecies of the English Government, and the unfavourable predictions of Stephenson, was in the habit of seeing, from his office window, English ships daily passing to and fro on the great canal, by which the old roundabout route from England to India by the Cape of Good Hope was abridged by at least a half.  The other was a small, slight-built personage, with a nervous, intelligent face, and bright eyes peering out from under eyebrows which he was incessantly twitching.  He was just now manifesting unmistakable signs of impatience, nervously pacing up and down, and unable to stand still for a moment.  This was Fix, one of the detectives who had been dispatched from England in search of the bank robber; it was his task to narrowly watch every passenger who arrived at Suez, and to follow up all who seemed to be suspicious characters, or bore a resemblance to the description of the criminal, which he had received two days before from the police headquarters at London.  The detective was evidently inspired by the hope of obtaining the splendid reward which would be the prize of success, and awaited with a feverish impatience, easy to understand, the arrival of the steamer Mongolia.</p>\n\n<p>\"So you say, consul,\" asked he for the twentieth time, \"that this steamer is never behind time?\"</p>\n\n<p>\"No, Mr. Fix,\" replied the consul.  \"She was bespoken yesterday at Port Said, and the rest of the way is of no account to such a craft.  I repeat that the Mongolia has been in advance of the time required by the company\'s regulations, and gained the prize awarded for excess of speed.\"</p>\n\n<p>\"Does she come directly from Brindisi?\"</p>', '2012-03-19 00:00:00'),
(10, 18, NULL, 'Rio Reno Voyage', '<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules.</p>\n\n<p>Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n\n<p>Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental.</p>\n\n<p>A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>', '2012-11-23 00:00:00'),
(11, 20, NULL, 'European Business', '<p>At last we gained such an offing, that the two pilots were needed no longer. The stout sail-boat that had accompanied us began ranging alongside.</p>\n\n<p>It was curious and not unpleasing, how Peleg and Bildad were affected at this juncture, especially Captain Bildad. For loath to depart, yet; very loath to leave, for good, a ship bound on so long and perilous a voyage&mdash;beyond both stormy Capes; a ship in which some thousands of his hard earned dollars were invested; a ship, in which an old shipmate sailed as captain; a man almost as old as he, once more starting to encounter all the terrors of the pitiless jaw; loath to say good-bye to a thing so every way brimful of every interest to him,&mdash;poor old Bildad lingered long; paced the deck with anxious strides; ran down into the cabin to speak another farewell word there; again came on deck, and looked to windward; looked towards the wide and endless waters, only bounded by the far-off unseen Eastern Continents; looked towards the land; looked aloft; looked right and left; looked everywhere and nowhere; and at last, mechanically coiling a rope upon its pin, convulsively grasped stout Peleg by the hand, and holding up a lantern, for a moment stood gazing heroically in his face, as much as to say, \"Nevertheless, friend Peleg, I can stand it; yes, I can.\"</p>\n\n<p>As for Peleg himself, he took it more like a philosopher; but for all his philosophy, there was a tear twinkling in his eye, when the lantern came too near. And he, too, did not a little run from cabin to deck&mdash;now a word below, and now a word with Starbuck, the chief mate.</p>\n\n<p>But, at last, he turned to his comrade, with a final sort of look about him,&mdash;\"Captain Bildad&mdash;come, old shipmate, we must go. Back the main-yard there! Boat ahoy! Stand by to come close alongside, now! Careful, careful!&mdash;come, Bildad, boy&mdash;say your last. Luck to ye, Starbuck&mdash;luck to ye, Mr. Stubb&mdash;luck to ye, Mr. Flask&mdash;good-bye and good luck to ye all&mdash;and this day three years I\'ll have a hot supper smoking for ye in old Nantucket. Hurrah and away!\"</p>', '2012-08-20 00:00:00'),
(12, 27, NULL, 'Honeymoon Journey', '<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>\n\n<p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>\n\n<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p>\n\n<p>The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p>', '2011-08-22 00:00:00'),
(13, 27, NULL, 'British Adventure', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>\n\n<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>\n\n<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee</p>', '2013-02-03 00:00:00'),
(14, 28, NULL, 'Sussex Zombie Castles', 'Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit??, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead.\r\n<p>\r\nCim horribilem walking dead resurgere de crazed sepulcris creaturis, zombie sicut de grave feeding iride et serpens. Pestilentia, shaun ofthe dead scythe animated corpses ipsa screams. Pestilentia est plague haec decaying ambulabat mortuos. Sicut zeder apathetic malus voodoo. Aenean a dolor plan et terror soulless vulnerum contagium accedunt, mortui iam vivam unlife. Qui tardius moveri, brid eof reanimator sed in magna copia sint terribiles undeath legionis. Alii missing oculis aliorum sicut serpere crabs nostram. Putridi braindead odores kill and infect, aere implent left four dead.\r\n<p>\r\nLucio fulci tremor est dark vivos magna. Expansis creepy arm yof darkness ulnis witchcraft missing carnem armis Kirkman Moore and Adlard caeruleum in locis. Romero morbo Congress amarus in auras. Nihil horum sagittis tincidunt, zombie slack-jawed gelida survival portenta. The unleashed virus est, et iam zombie mortui ambulabunt super terram. Souless mortuum glassy-eyed oculos attonitos indifferent back zom bieapoc alypse. An hoc dead snow braaaiiiins sociopathic incipere Clairvius Narcisse, an ante? Is bello mundi z?', '2011-05-16 00:00:00'),
(15, 29, NULL, 'Beautiful Madrid', 'Direct trade readymade vice, PBR stumptown blog gentrify fixie pickled gluten-free forage cardigan. Single-origin coffee raw denim readymade brooklyn 8-bit polaroid. Pour-over squid godard, semiotics vinyl american apparel mixtape polaroid scenester wolf four loko thundercats. Viral american apparel scenester, master cleanse swag typewriter kogi wes anderson forage gastropub 3 wolf moon pitchfork bicycle rights. Lo-fi fanny pack bushwick fingerstache art party, cray before they sold out seitan. Freegan food truck hella, chillwave lo-fi lomo small batch pour-over photo booth yr banh mi. Yr butcher keytar, retro williamsburg helvetica blog stumptown narwhal gluten-free american apparel fap.\r\n<p>\r\nWilliamsburg you probably haven\'t heard of them organic, banksy echo park post-ironic fingerstache craft beer cred ennui godard VHS squid. Beard jean shorts DIY, craft beer street art kale chips dreamcatcher forage scenester. Photo booth cliche bushwick, pinterest ethnic pop-up ennui leggings bicycle rights. Banh mi keytar four loko, ethical beard etsy food truck mixtape. Mustache squid narwhal trust fund. Umami authentic vinyl whatever food truck. 3 wolf moon mustache thundercats whatever, vinyl kogi cliche.\r\n<p>\r\nScenester cliche readymade, mlkshk squid vice Austin locavore quinoa selvage master cleanse lo-fi seitan. Wayfarers ethical squid forage, cliche gastropub mixtape marfa. Next level leggings pop-up cardigan kogi, shoreditch synth portland chambray mixtape. Vegan pork belly hella typewriter, ethnic swag before they sold out brunch sartorial synth bicycle rights stumptown seitan echo park. Sustainable pinterest stumptown iphone hella. Small batch viral cred, freegan banh mi banksy biodiesel letterpress post-ironic vice four loko mustache. Street art irony high life semiotics mustache odd future, wes anderson terry richardson stumptown forage put a bird on it pour-over readymade.\r\n<p>\r\nChambray PBR cliche, single-origin coffee vinyl wes anderson truffaut Austin DIY. Salvia whatever wes anderson street art pinterest high life. Master cleanse pour-over jean shorts four loko. Street art artisan biodiesel chillwave, next level synth lomo art party four loko put a bird on it umami pitchfork portland salvia. Art party butcher farm-to-table gastropub aesthetic. Terry richardson swag food truck chambray cardigan art party. Four loko irony polaroid, seitan keffiyeh typewriter +1 fanny pack DIY pour-over aesthetic.', '2012-09-02 00:00:00'),
(16, 30, NULL, 'Our Bahamas Getaway', 'Bacon ipsum dolor sit amet kielbasa officia ribeye tri-tip sausage, swine salami occaecat biltong. Strip steak shoulder rump swine sunt commodo turducken sint eu ut kielbasa meatball duis. Do chicken laboris officia ut. Hamburger aute labore jerky, laborum cillum ullamco ham cupidatat est esse voluptate non. Pig kielbasa chuck occaecat dolore tempor sint laborum beef ribs anim nisi cupidatat. Shank tail sint, excepteur short ribs bacon beef. Chicken frankfurter nostrud, pork dolore in meatloaf.\r\n<p>\r\nT-bone rump ham velit salami, ullamco laborum consectetur tenderloin jowl turducken. Meatball ham hock filet mignon, ad nisi esse commodo sint culpa labore magna. Nostrud aute officia shank non duis jerky venison t-bone spare ribs ut ribeye. T-bone est rump dolore ribeye kielbasa fugiat pancetta velit. Salami in proident adipisicing. Ball tip fugiat ex in jowl.', '2012-02-07 00:00:00'),
(17, 3, NULL, 'Summer in Ghana', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.\r\n<p>\r\nWhen, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath of that universal love which bears and sustains us, as it floats around us in an eternity of bliss; and then, my friend, when darkness overspreads my eyes, and heaven and earth seem to dwell in my soul and absorb its power, like the form of a beloved mistress, then I often think with longing, Oh, would I could describe these conceptions, could impress upon paper all that is living so full and warm within me, that it might be the mirror of my soul, as my soul is the mirror of the infinite God!\r\n<p>\r\nO my friend -- but it is too much for my strength -- I sink under the weight of the splendour of these visions! A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine.\r\n<p>\r\nI am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the', '2012-11-03 00:00:00'),
(18, 27, NULL, 'Northern Italy', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>\n\n<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>\n\n<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee</p>', '2012-11-12 00:00:00'),
(19, 17, NULL, 'Love in Venezia', '<p>The Lakeman now patrolled the barricade, all the while keeping his eye on the Captain, and jerking out such sentences as these:&mdash;\'It\'s not our fault; we didn\'t want it; I told him to take his hammer away; it was boy\'s business; he might have known me before this; I told him not to prick the buffalo; I believe I have broken a finger here against his cursed jaw; ain\'t those mincing knives down in the forecastle there, men? Look to those handspikes, my hearties. Captain, by God, look to yourself; say the word; don\'t be a fool; forget it all; we are ready to turn to; treat us decently, and we\'re your men; but we won\'t be flogged.</p>', '2013-06-12 00:00:00'),
(20, 8, NULL, 'Best Sabbatical Ever', '<p>Of the grand order of folio leviathans, the Sperm Whale and the Right Whale are by far the most noteworthy. They are the only whales regularly hunted by man. To the Nantucketer, they present the two extremes of all the known varieties of the whale. As the external difference between them is mainly observable in their heads; and as a head of each is this moment hanging from the Pequod\'s side; and as we may freely go from one to the other, by merely stepping across the deck:&mdash;where, I should like to know, will you obtain a better chance to study practical cetology than here?</p>\r\n\r\n<p>In the first place, you are struck by the general contrast between these heads. Both are massive enough in all conscience; but there is a certain mathematical symmetry in the Sperm Whale\'s which the Right Whale\'s sadly lacks. There is more character in the Sperm Whale\'s head. As you behold it, you involuntarily yield the immense superiority to him, in point of pervading dignity. In the present instance, too, this dignity is heightened by the pepper and salt colour of his head at the summit, giving token of advanced age and large experience. In short, he is what the fishermen technically call a \"grey-headed whale.\"</p>\r\n\r\n<p>Let us now note what is least dissimilar in these heads&mdash;namely, the two most important organs, the eye and the ear. Far back on the side of the head, and low down, near the angle of either whale\'s jaw, if you narrowly search, you will at last see a lashless eye, which you would fancy to be a young colt\'s eye; so out of all proportion is it to the magnitude of the head.</p>', '2013-07-09 00:00:00'),
(21, 17, NULL, 'When in Rome', '<p>The Narwhale has a very picturesque, leopard-like look, being of a milk-white ground colour, dotted with round and oblong spots of black. His oil is very superior, clear and fine; but there is little of it, and he is seldom hunted. He is mostly found in the circumpolar seas.</p>\r\n\r\n<p>Of this whale little is precisely known to the Nantucketer, and nothing at all to the professed naturalist. From what I have seen of him at a distance, I should say that he was about the bigness of a grampus. He is very savage&mdash;a sort of Feegee fish. He sometimes takes the great Folio whales by the lip, and hangs there like a leech, till the mighty brute is worried to death. The Killer is never hunted. I never heard what sort of oil he has. Exception might be taken to the name bestowed upon this whale, on the ground of its indistinctness. For we are all killers, on land and on sea; Bonapartes and Sharks included.</p>', '2013-08-06 00:00:00'),
(22, 4, NULL, 'The Park', '<p>A word or two more concerning this matter of the skin or blubber of the whale. It has already been said, that it is stript from him in long pieces, called blanket-pieces. Like most sea-terms, this one is very happy and significant. For the whale is indeed wrapt up in his blubber as in a real blanket or counterpane; or, still better, an Indian poncho slipt over his head, and skirting his extremity. It is by reason of this cosy blanketing of his body, that the whale is enabled to keep himself comfortable in all weathers, in all seas, times, and tides. What would become of a Greenland whale, say, in those shuddering, icy seas of the North, if unsupplied with his cosy surtout? True, other fish are found exceedingly brisk in those Hyperborean waters; but these, be it observed, are your cold-blooded, lungless fish, whose very bellies are refrigerators; creatures, that warm themselves under the lee of an iceberg, as a traveller in winter would bask before an inn fire; whereas, like man, the whale has lungs and warm blood. Freeze his blood, and he dies. How wonderful is it then&mdash;except after explanation&mdash;that this great monster, to whom corporeal warmth is as indispensable as it is to man; how wonderful that he should be found at home, immersed to his lips for life in those Arctic waters! where, when seamen fall overboard, they are sometimes found, months afterwards, perpendicularly frozen into the hearts of fields of ice, as a fly is found glued in amber. But more surprising is it to know, as has been proved by experiment, that the blood of a Polar whale is warmer than that of a Borneo negro in summer.</p>', '2013-03-10 00:00:00'),
(23, 22, NULL, 'Florence Tour', '<p>I know it, old man; these stubbs will weld together like glue from the melted bones of murderers. Quick! forge me the harpoon. And forge me first, twelve rods for its shank; then wind, and twist, and hammer these twelve together like the yarns and strands of a tow-line. Quick! I\'ll blow the fire.</p>\r\n\r\n<p>When at last the twelve rods were made, Ahab tried them, one by one, by spiralling them, with his own hand, round a long, heavy iron bolt. \"A flaw!\" rejecting the last one. \"Work that over again, Perth.\"</p>\r\n\r\n<p>This done, Perth was about to begin welding the twelve into one, when Ahab stayed his hand, and said he would weld his own iron. As, then, with regular, gasping hems, he hammered on the anvil, Perth passing to him the glowing rods, one after the other, and the hard pressed forge shooting up its intense straight flame, the Parsee passed silently, and bowing over his head towards the fire, seemed invoking some curse or some blessing on the toil. But, as Ahab looked up, he slid aside.</p>', '2013-04-18 00:00:00'),
(24, 12, NULL, 'Architecture of Florence', '<p>Champollion deciphered the wrinkled granite hieroglyphics. But there is no Champollion to decipher the Egypt of every man\'s and every being\'s face. Physiognomy, like every other human science, is but a passing fable. If then, Sir William Jones, who read in thirty languages, could not read the simplest peasant\'s face in its profounder and more subtle meanings, how may unlettered Ishmael hope to read the awful Chaldee of the Sperm Whale\'s brow? I but put that brow before you. Read it if you can.</p>\n\n<p>If the Sperm Whale be physiognomically a Sphinx, to the phrenologist his brain seems that geometrical circle which it is impossible to square.</p>', '2013-02-12 00:00:00'),
(25, 15, NULL, 'Tilting in Pisa', '<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.</p>\n\n<p>No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>\n\n<p>To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee</p>', '2013-09-19 00:00:00'),
(26, 23, NULL, 'Lovin\' Tuscany', '<p>At last we gained such an offing, that the two pilots were needed no longer. The stout sail-boat that had accompanied us began ranging alongside.</p>\n\n<p>It was curious and not unpleasing, how Peleg and Bildad were affected at this juncture, especially Captain Bildad. For loath to depart, yet; very loath to leave, for good, a ship bound on so long and perilous a voyage&mdash;beyond both stormy Capes; a ship in which some thousands of his hard earned dollars were invested; a ship, in which an old shipmate sailed as captain; a man almost as old as he, once more starting to encounter all the terrors of the pitiless jaw; loath to say good-bye to a thing so every way brimful of every interest to him,&mdash;poor old Bildad lingered long; paced the deck with anxious strides; ran down into the cabin to speak another farewell word there; again came on deck, and looked to windward; looked towards the wide and endless waters, only bounded by the far-off unseen Eastern Continents; looked towards the land; looked aloft; looked right and left; looked everywhere and nowhere; and at last, mechanically coiling a rope upon its pin, convulsively grasped stout Peleg by the hand, and holding up a lantern, for a moment stood gazing heroically in his face, as much as to say, \"Nevertheless, friend Peleg, I can stand it; yes, I can.\"</p>\n\n<p>As for Peleg himself, he took it more like a philosopher; but for all his philosophy, there was a tear twinkling in his eye, when the lantern came too near. And he, too, did not a little run from cabin to deck&mdash;now a word below, and now a word with Starbuck, the chief mate.</p>\n\n<p>But, at last, he turned to his comrade, with a final sort of look about him,&mdash;\"Captain Bildad&mdash;come, old shipmate, we must go. Back the main-yard there! Boat ahoy! Stand by to come close alongside, now! Careful, careful!&mdash;come, Bildad, boy&mdash;say your last. Luck to ye, Starbuck&mdash;luck to ye, Mr. Stubb&mdash;luck to ye, Mr. Flask&mdash;good-bye and good luck to ye all&mdash;and this day three years I\'ll have a hot supper smoking for ye in old Nantucket. Hurrah and away!\"</p>', '2013-09-13 00:00:00'),
(27, 7, NULL, 'Spicy Budapest', 'Bacon ipsum dolor sit amet kielbasa officia ribeye tri-tip sausage, swine salami occaecat biltong. Strip steak shoulder rump swine sunt commodo turducken sint eu ut kielbasa meatball duis. Do chicken laboris officia ut. Hamburger aute labore jerky, laborum cillum ullamco ham cupidatat est esse voluptate non. Pig kielbasa chuck occaecat dolore tempor sint laborum beef ribs anim nisi cupidatat. Shank tail sint, excepteur short ribs bacon beef. Chicken frankfurter nostrud, pork dolore in meatloaf.\r\n<p>\r\nT-bone rump ham velit salami, ullamco laborum consectetur tenderloin jowl turducken. Meatball ham hock filet mignon, ad nisi esse commodo sint culpa labore magna. Nostrud aute officia shank non duis jerky venison t-bone spare ribs ut ribeye. T-bone est rump dolore ribeye kielbasa fugiat pancetta velit. Salami in proident adipisicing. Ball tip fugiat ex in jowl.', '2013-03-20 00:00:00'),
(28, 14, NULL, 'Athen in the Sunshine', '<p>The Lakeman now patrolled the barricade, all the while keeping his eye on the Captain, and jerking out such sentences as these:&mdash;\'It\'s not our fault; we didn\'t want it; I told him to take his hammer away; it was boy\'s business; he might have known me before this; I told him not to prick the buffalo; I believe I have broken a finger here against his cursed jaw; ain\'t those mincing knives down in the forecastle there, men? Look to those handspikes, my hearties. Captain, by God, look to yourself; say the word; don\'t be a fool; forget it all; we are ready to turn to; treat us decently, and we\'re your men; but we won\'t be flogged.</p>', '2013-06-10 00:00:00'),
(29, 12, NULL, 'Greek Dreaming', '<p>Soon we were running through a suffusing wide veil of mist; neither ship nor boat to be seen.</p>\n\n<p>\"Give way, men,\" whispered Starbuck, drawing still further aft the sheet of his sail; \"there is time to kill a fish yet before the squall comes. There\'s white water again!&mdash;close to! Spring!\"</p>\n\n<p>Soon after, two cries in quick succession on each side of us denoted that the other boats had got fast; but hardly were they overheard, when with a lightning-like hurtling whisper Starbuck said: \"Stand up!\" and Queequeg, harpoon in hand, sprang to his feet.</p>', '2013-04-30 00:00:00'),
(30, 21, NULL, 'Oxford Day Trip', '<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules.</p>\n\n<p>Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>\n\n<p>Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental.</p>\n\n<p>A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es. Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>', '2013-03-22 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `travelpostimages`
--

DROP TABLE IF EXISTS `travelpostimages`;
CREATE TABLE IF NOT EXISTS `travelpostimages` (
  `ImageID` int(11) NOT NULL,
  `PostID` int(11) NOT NULL,
  PRIMARY KEY (`ImageID`,`PostID`),
  KEY `ImageID` (`ImageID`),
  KEY `PostID` (`PostID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `travelpostimages`
--

INSERT INTO `travelpostimages` (`ImageID`, `PostID`) VALUES
(1, 2),
(2, 2),
(3, 1),
(4, 1),
(5, 3),
(6, 3),
(7, 12),
(8, 9),
(9, 8),
(10, 9),
(11, 8),
(12, 12),
(13, 4),
(14, 4),
(15, 6),
(16, 6),
(17, 13),
(18, 13),
(19, 13),
(20, 14),
(21, 14),
(22, 10),
(23, 10),
(24, 11),
(25, 7),
(26, 7),
(27, 7),
(28, 7),
(29, 15),
(30, 15),
(31, 16),
(32, 16),
(33, 5),
(34, 17),
(35, 17),
(36, 17),
(37, 17),
(38, 17),
(39, 17),
(40, 18),
(41, 18),
(42, 19),
(43, 19),
(44, 19),
(45, 19),
(46, 19),
(47, 20),
(48, 20),
(49, 20),
(50, 20),
(51, 20),
(52, 21),
(53, 21),
(54, 21),
(55, 21),
(56, 21),
(57, 22),
(58, 23),
(59, 23),
(60, 23),
(61, 24),
(62, 24),
(63, 24),
(64, 25),
(65, 25),
(66, 25),
(67, 26),
(68, 26),
(69, 26),
(70, 26),
(71, 27),
(72, 27),
(73, 28),
(74, 28),
(75, 28),
(76, 29),
(77, 29),
(78, 29),
(80, 27),
(81, 30),
(82, 30);

-- --------------------------------------------------------

--
-- Table structure for table `traveluser`
--

DROP TABLE IF EXISTS `traveluser`;
CREATE TABLE IF NOT EXISTS `traveluser` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) DEFAULT NULL,
  `Pass` varchar(255) DEFAULT NULL,
  `State` int(11) DEFAULT NULL,
  `DateJoined` datetime DEFAULT NULL,
  `DateLastModified` datetime DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traveluser`
--

INSERT INTO `traveluser` (`UID`, `UserName`, `Pass`, `State`, `DateJoined`, `DateLastModified`) VALUES
(1, 'luisg@embraer.com.br', 'abcd1234', 1, '2012-10-08 00:00:00', '2012-11-15 00:00:00'),
(2, 'leonekohler@surfeu.de', 'abcd1234', 1, '2012-08-22 00:00:00', '2012-10-15 00:00:00'),
(3, 'ftremblay@gmail.com', 'abcd1234', 1, '2012-10-28 00:00:00', '2012-11-16 00:00:00'),
(4, 'bjorn.hansen@yahoo.no', 'abcd1234', 1, '2012-07-31 00:00:00', '2012-08-14 00:00:00'),
(5, 'frantisekw@jetbrains.com', 'abcd1234', 1, '2012-08-06 00:00:00', '2012-09-25 00:00:00'),
(6, 'hholy@gmail.com', 'abcd1234', 1, '2012-11-01 00:00:00', '2012-12-14 00:00:00'),
(7, 'astrid.gruber@apple.at', 'abcd1234', 1, '2012-06-05 00:00:00', '2013-01-10 00:00:00'),
(8, 'fharris@google.com', 'abcd1234', 1, '2012-09-25 00:00:00', '2012-11-18 00:00:00'),
(9, 'jacksmith@microsoft.com', 'abcd1234', 1, '2012-11-16 00:00:00', '2013-01-18 00:00:00'),
(10, 'michelleb@aol.com', 'abcd1234', 1, '2012-12-07 00:00:00', '2013-03-07 00:00:00'),
(11, 'tgoyer@apple.com', 'abcd1234', 1, '2013-01-14 00:00:00', '2013-04-19 00:00:00'),
(12, 'robbrown@shaw.ca', 'abcd1234', 1, '2013-02-07 00:00:00', '2013-06-11 00:00:00'),
(13, 'edfrancis@yachoo.ca', 'abcd1234', 1, '2012-12-20 00:00:00', '2013-01-11 00:00:00'),
(14, 'mphilips12@shaw.ca', 'abcd1234', 1, '2012-05-21 00:00:00', '2012-10-28 00:00:00'),
(15, 'marthasilk@gmail.com', 'abcd1234', 1, '2012-11-17 00:00:00', '2012-12-01 00:00:00'),
(16, 'aaronmitchell@yahoo.ca', 'abcd1234', 1, '2013-02-12 00:00:00', '2013-03-21 00:00:00'),
(17, 'ellie.sullivan@shaw.ca', 'abcd1234', 1, '2012-09-10 00:00:00', '2012-11-05 00:00:00'),
(18, 'jfernandes@yahoo.pt', 'abcd1234', 1, '2012-08-27 00:00:00', '2012-09-03 00:00:00'),
(19, 'masampaio@sapo.pt', 'abcd1234', 1, '2012-07-29 00:00:00', '2012-12-10 00:00:00'),
(20, 'hannah.schneider@yahoo.de', 'abcd1234', 1, '2012-08-01 00:00:00', '2012-11-02 00:00:00'),
(21, 'camille.bernard@yahoo.fr', 'abcd1234', 1, '2012-10-29 00:00:00', '2012-12-07 00:00:00'),
(22, 'isabelle_mercier@apple.fr', 'abcd1234', 1, '2012-11-12 00:00:00', '2013-01-21 00:00:00'),
(23, 'emma_jones@hotmail.com', 'abcd1234', 1, '2012-08-27 00:00:00', '2012-10-29 00:00:00'),
(24, 'phil.hughes@gmail.com', 'abcd1234', 1, '2012-07-24 00:00:00', '2012-08-28 00:00:00'),
(25, 'manoj.pareek@rediff.com', 'abcd1234', 1, '2012-09-07 00:00:00', '2013-01-11 00:00:00'),
(26, 'puja_srivastava@yahoo.in', 'abcd1234', 1, '2013-02-01 00:00:00', '2013-05-07 00:00:00'),
(27, 'mark.taylor@yahoo.au', 'abcd1234', 1, '2012-09-17 00:00:00', '2012-11-06 00:00:00'),
(28, 'ricunningham@hotmail.com', 'abcd1234', 1, '2012-08-21 00:00:00', '2012-11-10 00:00:00'),
(29, 'patrick.gray@aol.com', 'abcd1234', 1, '2012-08-27 00:00:00', '2012-08-30 00:00:00'),
(30, 'terhi.hamalainen@apple.fi', 'abcd1234', 1, '2013-01-24 00:00:00', '2013-01-28 00:00:00'),
(31, 'stanisław.wójcik@wp.pl', 'abcd1234', 1, '2012-11-25 00:00:00', '2012-12-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `traveluserdetails`
--

DROP TABLE IF EXISTS `traveluserdetails`;
CREATE TABLE IF NOT EXISTS `traveluserdetails` (
  `UID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `Postal` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Privacy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traveluserdetails`
--

INSERT INTO `traveluserdetails` (`UID`, `FirstName`, `LastName`, `Address`, `City`, `Region`, `Country`, `Postal`, `Phone`, `Email`, `Privacy`) VALUES
(1, 'Luís', 'Gonçalves', 'Av. Brigadeiro Faria Lima, 2170', 'São José dos Campos', 'SP', 'Brazil', '12227-000', '+55 (12) 3923-5555', 'luisg@embraer.com.br', '1'),
(2, 'Leonie', 'Köhler', 'Theodor-Heuss-Straße 34', 'Stuttgart', NULL, 'Germany', '70174', '+49 0711 2842222', 'leonekohler@surfeu.de', '1'),
(3, 'Bjørn', 'Hansen', 'Ullevålsveien 14', 'Oslo', NULL, 'Norway', '0171', '+47 22 44 22 22', 'bjorn.hansen@yahoo.no', '1'),
(4, 'François', 'Tremblay', '1498 rue Bélanger', 'Montréal', 'QC', 'Canada', 'H2G 1A7', '+1 (514) 721-4711', 'ftremblay@gmail.com', '1'),
(5, 'František', 'Wichterlová', 'Klanova 9/506', 'Prague', NULL, 'Czech Republic', '14700', '+420 2 4172 5555', 'frantisekw@jetbrains.com', '2'),
(6, 'Astrid', 'Gruber', 'Rotenturmstraße 4, 1010 Innere Stadt', 'Vienna', NULL, 'Austria', '1010', '+43 01 5134505', 'astrid.gruber@apple.at', '1'),
(7, 'Helena', 'Holý', 'Rilská 3174/6', 'Prague', NULL, 'Czech Republic', '14300', '+420 2 4177 0449', 'hholy@gmail.com', '2'),
(8, 'Frank', 'Harris', '1600 Amphitheatre Parkway', 'Mountain View', 'CA', 'USA', '94043-1351', '+1 (425) 882-8080', 'fharris@google.com', '1'),
(9, 'Jack', 'Smith', '1 Microsoft Way', 'Redmond', 'WA', 'USA', '98052-8300', '+1 (425) 882-8080', 'jacksmith@microsoft.com', '2'),
(10, 'Michelle', 'Brooks', '627 Broadway', 'New York', 'NY', 'USA', '10012-2612', '+1 (212) 221-3546', 'michelleb@aol.com', '1'),
(11, 'Tim', 'Goyer', '1 Infinite Loop', 'Cupertino', 'CA', 'USA', '95014', '+1 (408) 996-1010', 'tgoyer@apple.com', '1'),
(12, 'Robert', 'Brown', '796 Dundas Street West', 'Toronto', 'ON', 'Canada', 'M6J 1V1', '+1 (416) 363-8888', 'robbrown@shaw.ca', '2'),
(13, 'Edward', 'Francis', '230 Elgin Street', 'Ottawa', 'ON', 'Canada', 'K2P 1L7', '+1 (613) 234-3322', 'edfrancis@yachoo.ca', '2'),
(14, 'Mark', 'Philips', '8210 111 ST NW', 'Edmonto', 'AB', 'Canada', 'T6G 2C7', '+1 (780) 434-4554', 'mphilips12@shaw.ca', '1'),
(15, 'Martha', 'Silk', '194A Chain Lake Drive', 'Halifax', 'NS', 'Canada', 'B3S 1C5', '+1 (902) 450-0450', 'marthasilk@gmail.com', '1'),
(16, 'Aaron', 'Mitchell', '696 Osborne Street', 'Winnipeg', 'MB', 'Canada', 'R3L 2B9', '+1 (204) 452-6452', 'aaronmitchell@yahoo.ca', '2'),
(17, 'Ellie', 'Sullivan', '5112 48 Street', 'Yellowknife', 'NT', 'Canada', 'X1A 1N6', '+1 (867) 920-2233', 'ellie.sullivan@shaw.ca', '2'),
(18, 'João', 'Fernandes', 'Rua da Assunção 53', 'Lisbon', NULL, 'Portugal', NULL, '+351 (213) 466-111', 'jfernandes@yahoo.pt', '2'),
(19, 'Madalena', 'Sampaio', 'Rua dos Campeões Europeus de Viena, 4350', 'Porto', NULL, 'Portugal', NULL, '+351 (225) 022-448', 'masampaio@sapo.pt', '2'),
(20, 'Hannah', 'Schneider', 'Tauentzienstraße 8', 'Berlin', NULL, 'Germany', '10789', '+49 030 26550280', 'hannah.schneider@yahoo.de', '1'),
(21, 'Camille', 'Bernard', '4, Rue Milton', 'Paris', NULL, 'France', '75009', '+33 01 49 70 65 65', 'camille.bernard@yahoo.fr', '1'),
(22, 'Isabelle', 'Mercier', '68, Rue Jouvence', 'Dijon', NULL, 'France', '21000', '+33 03 80 73 66 99', 'isabelle_mercier@apple.fr', '1'),
(23, 'Emma', 'Jones', '202 Hoxton Street', 'London', NULL, 'United Kingdom', 'N1 5LH', '+44 020 7707 0707', 'emma_jones@hotmail.com', '1'),
(24, 'Phil', 'Hughes', '113 Lupus St', 'London', NULL, 'United Kingdom', 'SW1V 3EN', '+44 020 7976 5722', 'phil.hughes@gmail.com', '1'),
(25, 'Manoj', 'Pareek', '12,Community Centre', 'Delhi', NULL, 'India', '110017', '+91 0124 39883988', 'manoj.pareek@rediff.com', '1'),
(26, 'Puja', 'Srivastava', '3,Raj Bhavan Road', 'Bangalore', NULL, 'India', '560001', '+91 080 22289999', 'puja_srivastava@yahoo.in', '2'),
(27, 'Mark', 'Taylor', '421 Bourke Street', 'Sidney', 'NSW', 'Australia', '2010', '+61 (02) 9332 3633', 'mark.taylor@yahoo.au', '1'),
(28, 'Richard', 'Cunningham', '2211 W Berry Street', 'Fort Worth', 'TX', 'USA', '76110', '+1 (817) 924-7272', 'ricunningham@hotmail.com', '1'),
(29, 'Patrick', 'Gray', '1033 N Park Ave', 'Tucson', 'AZ', 'USA', '85719', '+1 (520) 622-4200', 'patrick.gray@aol.com', '2'),
(30, 'Terhi', 'Hämäläinen', 'Porthaninkatu 9', 'Helsinki', NULL, 'Finland', '00530', '+358 09 870 2000', 'terhi.hamalainen@apple.fi', '2'),
(31, 'Stanisław', 'Wójcik', 'Ordynacka 10', 'Warsaw', NULL, 'Poland', '00-358', '+48 22 828 37 39', 'stanisław.wójcik@wp.pl', '1');

-- --------------------------------------------------------

--
-- Table structure for table `traveluserfollowing`
--

DROP TABLE IF EXISTS `traveluserfollowing`;
CREATE TABLE IF NOT EXISTS `traveluserfollowing` (
  `UID` int(11) NOT NULL,
  `UIDFollowing` int(11) NOT NULL,
  PRIMARY KEY (`UID`,`UIDFollowing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `traveluserfollowing`
--

INSERT INTO `traveluserfollowing` (`UID`, `UIDFollowing`) VALUES
(1, 2),
(1, 5),
(2, 1),
(2, 7),
(2, 13),
(5, 27),
(5, 28),
(9, 1),
(9, 5),
(9, 20),
(9, 27),
(9, 30),
(10, 1),
(10, 2),
(10, 27),
(13, 30),
(27, 10),
(27, 29);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
