-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 25, 2018 at 10:00 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_videoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

DROP TABLE IF EXISTS `tbl_comments`;
CREATE TABLE IF NOT EXISTS `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comments_auth` varchar(125) DEFAULT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comments_movie` int(11) NOT NULL,
  `comments_rating` int(11) NOT NULL,
  PRIMARY KEY (`comments_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comments_id`, `comments_auth`, `comments_copy`, `comments_date`, `comments_movie`, `comments_rating`) VALUES
(1, NULL, 'Loved it. Chris Pratt is my hero! I LOVE YOU STAR LORD!!', '2018-03-26 19:08:41', 1, 5),
(2, NULL, 'Not quite as good as the first Guardians, but still WAY better that any DC movie... ', '2018-03-26 19:09:57', 1, 4),
(3, NULL, 'It sucked.', '2018-04-01 14:54:32', 1, 1),
(4, NULL, 'It was amazing. I really liked this way better than any DC movie that\'s ever been made, EVER.\n\nCuz DC movies are garbage.', '2018-04-01 14:55:29', 1, 3),
(5, NULL, 'I thought Logan was great.THIS is the way you do comic book dystopia.', '2018-04-01 14:56:55', 3, 4),
(6, NULL, 'Way too violent. I thought Hugh Jackman would at least do a song and dance, but was VERY disappointed.', '2018-04-01 14:57:35', 3, 1),
(7, NULL, 'OMG i can\'t get enough Deadpool.. what a great movie', '2018-04-01 15:11:30', 7, 5),
(8, NULL, 'I really liked this. Prof X made me sad tho. What a way to go...', '2018-04-01 15:51:58', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

DROP TABLE IF EXISTS `tbl_genre`;
CREATE TABLE IF NOT EXISTS `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Science Fiction'),
(5, 'Drama'),
(6, 'Animation'),
(7, 'Mystery'),
(8, 'Musical'),
(9, 'War'),
(10, 'Fantasy'),
(11, 'Horror'),
(12, 'Thriller'),
(13, 'Family'),
(14, 'Superhero'),
(15, 'Children'),
(16, 'universe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

DROP TABLE IF EXISTS `tbl_movies`;
CREATE TABLE IF NOT EXISTS `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` text NOT NULL,
  `movies_title` text NOT NULL,
  `movies_year` text NOT NULL,
  `movies_runtime` text NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` text NOT NULL,
  `movies_release` text NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'Annihilation.jpg', 'Annihilation', '2018', '2h', 'A biologist signs up for a dangerous, secret expedition into a mysterious zone where the laws of nature do not apply.', 'Annihilation.mp4', ' 23 February 2018'),
(2, 'BlackPanther.jpg', 'Black Panther', '2018', '1h 58m', 'T\'Challa, the King of Wakanda, rises to the throne in the isolated, technologically advanced African nation, but his claim is challenged by a vengeful outsider who was a childhood victim of T\'Challa\'s father\'s mistake.', 'BlackPanther.mp4', '16 February 2018'),
(3, 'CaptainAmericaCivilWar.jpg', 'Captain America Civil War', '2016', '2h 27min', 'Political involvement in the Avengers\' activities causes a rift between Captain America and Iron Man.', 'CaptainAmericaCivilWar.mp4', '6 May 2016'),
(4, 'Deadpool.jpg', 'Deadpool', '2016', '1h 48min', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.', 'Deadpool.mp4', '12 February 2016'),
(5, 'Gravity.jpg', 'Gravity', '2013', '1h 31min', 'Two astronauts work together to survive after an accident which leaves them stranded in space.', 'Gravity.mp4', '4 October 2013'),
(6, 'GuardiansoftheGalaxy.jpg', 'Guardians of the Galaxy', '2014', '2h 1min', 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.', 'GuardiansoftheGalaxy.mp4', '1 August 2014'),
(7, 'IronManThree.jpg', 'Iron Man Three', '2013', '2h 10min', 'A fast-talking mercenary with a morbid sense of humor is subjected to a rogue experiment that leaves him with accelerated healing powers and a quest for revenge.', 'IronManThree.mp4', '3 May 2013'),
(8, 'JumanjiWelcometotheJungle.jpg', 'Jumanji: Welcome to the Jungle', '2018', '1h 59m', 'Four teenagers are sucked into a magical video game, and the only way they can escape is to work together to finish the game.', 'JumanjiWelcometotheJungle.mp4', '20 December 2017'),
(9, 'PacificRimUprising.jpg', 'Pacific Rim: Uprising', '2018', '1h 51min', 'Jake Pentecost, son of Stacker Pentecost, reunites with Mako Mori to lead a new generation of Jaeger pilots, including rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.', 'PacificRimUprising.mp4', '23 March 2018'),
(10, 'Paddington2.jpg', 'Paddington 2', '2018', '1h 43min', 'Paddington, now happily settled with the Brown family and a popular member of the local community, picks up a series of odd jobs to buy the perfect present for his Aunt Lucy\'s 100th birthday, only for the gift to be stolen.', 'Paddington2.mp4', '12 January 2018'),
(11, 'PeterRabbit.jpg', 'The Revenant', '2018', '1h 35min', 'Feature adaptation of Beatrix Potter\'s classic tale of a rebellious rabbit trying to sneak into a farmer\'s vegetable garden.', 'PeterRabbit.mp4', '9 February 2018'),
(12, 'Rampage.jpg', 'Rampage', '2018', '1h 47min', 'When three different animals become infected with a dangerous pathogen, a primatologist and a geneticist team up to stop them from destroying Chicago.', 'Rampage.mp4', '13 April 2018'),
(13, 'ReadyPlayerOne.jpg', 'Ready Player One', '2018', '2h 20min', 'When the creator of a virtual reality world called the OASIS dies, he releases a video in which he challenges all OASIS users to find his Easter Egg, which will give the finder his fortune.', 'ReadyPlayerOne.mp4', '29 March 2018'),
(14, 'RedSparrow.jpg', 'Red Sparrow', '2018', '2h 20min', 'Ballerina Dominika Egorova is recruited to \'Sparrow School,\' a Russian intelligence service where she is forced to use her body as a weapon. Her first mission, targeting a C.I.A. agent, threatens to unravel the security of both nations.', 'RedSparrow.mp4', '2 March 2018'),
(15, 'SherlockGnomes.jpg', 'SherlockGnomes', '2018', '1h 26min', 'Garden gnomes, Gnomeo & Juliet, recruit renowned detective Sherlock Gnomes to investigate the mysterious disappearance of other garden ornaments.', 'SherlockGnomes.mp4', '23 March 2018'),
(16, 'SpiderManHomecoming.jpg', 'Spider-Man: Homecoming', '2017', '2h 13min', 'Peter Parker balances his life as an ordinary high school student in Queens with his superhero alter-ego Spider-Man, and finds himself on the trail of a new menace prowling the skies of New York City.', 'SpiderManHomecoming.mp4', '7 July 2017'),
(17, 'SuicideSquad.jpg', 'Suicide Squad', '2016', '2h 3m', 'A secret government agency recruits some of the most dangerous incarcerated super-villains to form a defensive task force. Their first mission: save the world from the apocalypse.', 'SuicideSquad.mp4', '5 August 2016'),
(18, 'Ted.jpg', 'Ted', '2012', '1h 46min', 'John Bennett, a man whose childhood wish of bringing his teddy bear to life came true, now must decide between keeping the relationship with the bear or his girlfriend, Lori.', 'Ted.mp4', '29 June 2012'),
(19, 'TheEndless.jpg', 'The Endless', '2018', '1h 51m', 'Two brothers return to the cult they fled from years ago to discover that the group\'s beliefs may be more sane than they once thought.', 'TheEndless.mp4', '6 April 2018'),
(20, 'TheGreatestShowman.jpg', 'The Greatest Showman', '2017', '1h 45min', 'Celebrates the birth of show business, and tells of a visionary who rose from nothing to create a spectacle that became a worldwide sensation.', 'TheGreatestShowman.mp4', '20 December 2017'),
(21, 'TheHungerGamesCatchingFire.jpg', 'The Hunger Games: Catching Fire', '2013', '2h 26min', 'Katniss Everdeen and Peeta Mellark become targets of the Capitol after their victory in the 74th Hunger Games sparks a rebellion in the Districts of Panem.', 'TheHungerGamesCatchingFire.mp4', '22 November 2013'),
(22, 'ThorRagnarok.jpg', 'Thor: Ragnarok', '2017', '2h 10min', 'Thor is imprisoned on the planet Sakaar, and must race against time to return to Asgard and stop Ragnarök, the destruction of his world, which is at the hands of the powerful and ruthless villain Hela.', 'ThorRagnarok.mp4', '3 November 2017'),
(23, 'WonderWoman.jpg', 'Wonder Woman', '2017', '2h 21min', 'When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.', 'WonderWoman.jpg', '2 June 2017'),
(24, 'TombRaider.jpg', 'Tomb Raider', '2018', '1h 58min', 'Lara Croft, the fiercely independent daughter of a missing adventurer, must push herself beyond her limits when she finds herself on the island where her father disappeared.', 'TombRaider.jpg', '16 March 2018'),
(25, 'XMenApocalypse.jpg', 'X-Men: Apocalypse', '2016', '2h 24min', 'After the re-emergence of the world\'s first mutant, world-destroyer Apocalypse, the X-Men must unite to defeat his extinction level plan.', 'XMenApocalypse.jpg', '27 May 2016');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

DROP TABLE IF EXISTS `tbl_mov_genre`;
CREATE TABLE IF NOT EXISTS `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 5),
(2, 1, 2),
(3, 1, 10),
(4, 2, 1),
(5, 2, 2),
(6, 2, 4),
(7, 3, 1),
(8, 3, 2),
(9, 3, 9),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 4),
(14, 5, 5),
(15, 5, 16),
(16, 6, 1),
(17, 6, 4),
(18, 6, 16),
(19, 7, 1),
(20, 7, 2),
(21, 7, 14),
(22, 8, 2),
(23, 8, 7),
(24, 8, 13),
(25, 9, 3),
(26, 9, 4),
(27, 9, 9),
(28, 10, 2),
(29, 10, 6),
(30, 10, 13),
(31, 11, 6),
(32, 11, 13),
(33, 11, 15),
(34, 12, 2),
(35, 12, 4),
(36, 12, 11),
(37, 13, 1),
(38, 13, 2),
(39, 13, 7),
(40, 14, 5),
(41, 14, 11),
(42, 14, 12),
(43, 15, 3),
(44, 15, 6),
(45, 16, 1),
(46, 16, 4),
(47, 16, 14),
(48, 17, 1),
(49, 17, 11),
(50, 17, 14),
(51, 18, 3),
(52, 18, 5),
(53, 18, 10),
(54, 19, 4),
(55, 19, 11),
(56, 19, 12),
(57, 20, 5),
(58, 20, 8),
(59, 20, 13),
(60, 21, 1),
(61, 21, 7),
(62, 21, 9),
(63, 22, 1),
(64, 22, 9),
(65, 22, 14),
(66, 23, 1),
(67, 23, 5),
(68, 23, 11),
(69, 24, 1),
(70, 24, 10),
(71, 24, 14),
(72, 25, 4),
(73, 25, 14),
(74, 25, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_level` text NOT NULL,
  `user_ip` varchar(50) DEFAULT 'no',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_level`, `user_ip`) VALUES
(1, 'enmin', 'bian', 'bem19970728', 'bem648921684@gmail.com', '2018-02-14 22:05:04', '', '::1'),
(2, '123', '123', '123456', '648921684@qq.com', '2018-02-22 06:30:10', '', '::1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
