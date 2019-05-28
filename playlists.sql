-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2018 at 09:40 PM
-- Server version: 5.6.38
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET hp8 COLLATE hp8_bin NOT NULL,
  `image` varchar(1000) CHARACTER SET hp8 COLLATE hp8_bin NOT NULL,
  `songs` text CHARACTER SET hp8 COLLATE hp8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `image`, `songs`) VALUES
(1, 'Marvin Gaye', 'https://static.qobuz.com/images/covers/26/21/3596972972126_600.jpg', '[{\"name\":\"Inner City Blues\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1XDaRQRJweOdZqimXjpIIYTVo31ngm_8e\"},{\"name\":\"Trouble Man\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1lzti4QTyTJOCzUGyeW4kb7RrGs7PPT1l\"},{\"name\":\"I Want You(1976)\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=18mNEWoHF-t7dtAP4-5pXPWR8Od_bmkmj\"},{\"name\":\"What\'s Going On (Live In Amsterdam)\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1I0ZybM1X0pvtg8O-bYpBmRcCkQLOybP8\"},{\"name\":\"You\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1hq7dmQZfJmE2lNoA2uBqyk_o_NGRpLXt\"},{\"name\":\"Sexual Healing\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1y0IA_W_ELNUiHQuGbkqMRbiG2g4UyhP-\"},{\"name\":\"Heard It Through The Grapevine (Live at Montreux)\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1y0IA_W_ELNUiHQuGbkqMRbiG2g4UyhP-\"}]'),
(3, 'The Spacials', 'https://is5-ssl.mzstatic.com/image/thumb/Music62/v4/54/77/59/5477590c-f267-05c9-0595-559ea25fd94d/5054526647466_1.jpg/268x0w.jpg', '[{\"name\":\"Rat Race\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1fZb2hx_MqFSGFZb__YIx9BEEJK5lzP6S\"},{\"name\":\"Monkey Man\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1V-ppR9UpnNNOsB5s9axZeR6UnBRkLBA_\"},{\"name\":\"Gangsterts\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1O2TZpPhNXuasGbcxyW8Kcf2EORMPLl5I\"},{\"name\":\"Ghost Town\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1uzhsgUxuuByrEvOdZaMHzuCCPm2IRbOm\"},{\"name\":\"Pressure Drop\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1ZxcYWI4tdJt6JWmjUph_qZ61PhNrNwHd\"},{\"name\":\"Too Much Too Young\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=13GL0wkpA-vfbGL2bpbZZf5rrsLBFIsKo\"},{\"name\":\"A Message To You Rudy\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1K948Hrt64NpHVsQbxsOs6Gm0YmAvxmbD\"},{\"name\":\"Nelson Mandela\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=19Y2HlEtqr9qTO_GFqV1_Gtci_rtRJq81\"}]'),
(4, 'The Rolling Stones', 'https://images.eil.com/large_image/ROLLING_STONES_LIVE%2B-%2BTHE%2BROLLING%2BSTONES%2BFIFTY%2BYEARS%2B-%2BSEALED-678521.jpg', '[{\"name\":\"Paint It, Black\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1alE7sHXrf_5MwKDeUvO6CZ2uJGhEP87V\"},{\"name\":\"Gimme Shelter\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1XbaXVx_H1hOvZJTGZJfgF7AYR-vWfbur\"},{\"name\":\"(I Can\'t get No) Statisfaction\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=13cY9KxfQDT6Cr2SgGqBeCQCGOJWBDCqo\"},{\"name\":\"She\'s So Cold\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1B0K6RkD7zOavYW1YZ8hScGAZGHhP8o36\"},{\"name\":\"Start Me Up\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1GL07B9Q0Jxry4YvUtVajAw-zjpym720N\"},{\"name\":\"Can\'t You Hear Me Knocking\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1vjT_-T1M4jskeCLsoww9V7SUrrUuwY4u\"},{\"name\":\"Angie\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1bZPexMLpPDqar58xdU5yMtJVVIPf5HWs\"},{\"name\":\"Miss You\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=16H2MQGc9PetDy7K7_ladiMN-0iFvwGaW\"}]'),
(5, 'The Goldman Brothers', 'https://f4.bcbits.com/img/a1107096778_2.jpg', '[{\"name\":\"Sea Of Stars\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1miUUj5r_BMtCwS3nECrerfU2UcNsNhws\"},{\"name\":\"Call My Name\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1B7tZ2WEqeZnTpFXRAI6kUw6dcZiD8MKz\"},{\"name\":\"Broken Heart\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1Ef7A_CAxkrGcErTN-JNzK-fEsIDqDaeT\"},{\"name\":\"Faith (Live Underground )\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1pmFTswlNw092AsEYbuM7Tt8ZU7Z-huFt\"},{\"name\":\"Come On\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1mQXtg-gWkgc5aqgqkY4I_-ooj-0f1L4K\"},{\"name\":\"Time Is On Our Side\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1cz8NT7jC64LYFsKRSrj_-_sErUPFRqdb\"}]'),
(31, 'King Tuff', 'https://f4.bcbits.com/img/a1639195391_10.jpg', '[{\"name\":\"Shakira\",\"url\":\"https:\\/\\/drive.google.com\\/uc?export=download&id=1X5-LdJsZlC9PX-43TKToEIkp5DyH1aUb\"}]'),
(33, 'Beastie Boys', 'https://i.pinimg.com/originals/1b/42/43/1b42434f32d103ff28def57f1e1ff705.jpg', '[{\"name\":\"Just A Test\",\"url\":\"sfgsdf\"}]'),
(34, 'Mac Miller', 'https://exclaim.ca/images/mac49.jpg', '[{\"name\":\"Doors\",\"url\":\"https://drive.google.com/uc?export=download&id=1i40zhKd5qJ1GPSt6CeL66zmY0LTmo0Qh\"}]'),
(35, 'Native', 'https://upload.wikimedia.org/wikipedia/en/9/96/OneRepublic_-_Native.png', '[{\"name\":\"I Lived\",\"url\":\"https:\\/\\/drive.google.com\\/file\\/d\\/1xB_US-0s9AcyFV_ZXWODU932CylcAeTP\\/view?usp=sharing\"}]'),
(36, 'Velvet Underground', 'https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Velvet_Underground_and_Nico.jpg/220px-Velvet_Underground_and_Nico.jpg', '[{\"name\":\"ssaSDasdas\",\"url\":\"dasasDasd\"}]'),
(37, 'The Velvet Underground', 'http://dennisludvino.com/wp-content/uploads/2015/05/velvetunderground.png', '[{\"name\":\"retertewrtwre\",\"url\":\"wertwert\"}]'),
(38, 'Blue & Lonesome', 'https://upload.wikimedia.org/wikipedia/en/thumb/1/1f/The_Rolling_Stones_-_Blue_%26_Lonesome.png/220px-The_Rolling_Stones_-_Blue_%26_Lonesome.png', '[{\"name\":\"1234123\",\"url\":\"12341234123\"}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
