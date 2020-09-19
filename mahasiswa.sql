-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 19, 2020 at 08:50 AM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `mahasiswa`;
USE `mahasiswa`;
-- --------------------------------------------------------

--
-- Table structure for table `detail_mahasiswa`
--

CREATE TABLE `detail_mahasiswa` (
  `id` int NOT NULL,
  `mahasiswa_id` int NOT NULL,
  `matkul_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_mahasiswa`
--

INSERT INTO `detail_mahasiswa` (`id`, `mahasiswa_id`, `matkul_id`, `created_at`) VALUES
(1, 1, 8, '2020-09-18 10:27:10'),
(2, 1, 9, '2020-09-18 10:27:10'),
(3, 2, 8, '2020-09-18 10:27:27'),
(4, 2, 9, '2020-09-18 10:27:27'),
(5, 3, 8, '2020-09-18 10:27:36'),
(6, 3, 9, '2020-09-18 10:27:36'),
(7, 4, 8, '2020-09-18 10:27:45'),
(8, 4, 9, '2020-09-18 10:27:45'),
(9, 5, 8, '2020-09-18 10:27:59'),
(10, 5, 9, '2020-09-18 10:27:59'),
(11, 6, 8, '2020-09-18 10:28:08'),
(12, 6, 9, '2020-09-18 10:28:08'),
(13, 7, 8, '2020-09-18 10:28:15'),
(14, 7, 9, '2020-09-18 10:28:15'),
(15, 8, 8, '2020-09-18 10:28:22'),
(16, 8, 9, '2020-09-18 10:28:22'),
(17, 9, 8, '2020-09-18 10:28:30'),
(18, 9, 9, '2020-09-18 10:28:30'),
(19, 10, 8, '2020-09-18 10:28:41'),
(20, 10, 9, '2020-09-18 10:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `name`, `address`, `created_at`) VALUES
(1, 'Jerald Brundle', '29 Sundown Trail', '2020-09-19 01:25:17'),
(2, 'Jeannie Pitcaithly', '65468 Brickson Park Junction', '2020-09-19 01:25:17'),
(3, 'Guillermo Soan', '50 Warrior Avenue', '2020-09-19 01:25:17'),
(4, 'Jesselyn Faussett', '94 Superior Court', '2020-09-19 01:25:17'),
(5, 'Dory Harrap', '9 Buhler Lane', '2020-09-19 01:25:17'),
(6, 'Alwin McVitty', '6 Riverside Way', '2020-09-19 01:25:17'),
(7, 'Edythe Stedall', '5 Derek Way', '2020-09-19 01:25:17'),
(8, 'Crosby Room', '3 Swallow Trail', '2020-09-19 01:25:17'),
(9, 'Clayson Fieldgate', '1 Lukken Lane', '2020-09-19 01:25:17'),
(10, 'Griffie Hamsher', '781 Dixon Drive', '2020-09-19 01:25:17'),
(11, 'Ester Vowell', '874 Lighthouse Bay Drive', '2020-09-19 01:25:17'),
(12, 'Xerxes Wright', '28545 Derek Hill', '2020-09-19 01:25:17'),
(13, 'Rosanna Mountfort', '80 Oak Lane', '2020-09-19 01:25:17'),
(14, 'Kattie Verryan', '3 Mitchell Hill', '2020-09-19 01:25:17'),
(15, 'Cullie Heatley', '0443 Toban Lane', '2020-09-19 01:25:17'),
(16, 'Carolynn Ailsbury', '22717 Badeau Terrace', '2020-09-19 01:25:17'),
(17, 'Krystalle Salmen', '26063 Golden Leaf Center', '2020-09-19 01:25:17'),
(18, 'Issie Winpenny', '364 Glacier Hill Pass', '2020-09-19 01:25:17'),
(19, 'Florenza Naish', '74480 Jana Parkway', '2020-09-19 01:25:17'),
(20, 'Klemens Parkhouse', '6800 Valley Edge Street', '2020-09-19 01:25:17'),
(21, 'Arne Spottswood', '5 Basil Way', '2020-09-19 01:25:17'),
(22, 'Birdie Eamer', '5271 Donald Place', '2020-09-19 01:25:17'),
(23, 'Mord Mapstone', '4835 Hoffman Point', '2020-09-19 01:25:17'),
(24, 'Marita Carlick', '9 Darwin Way', '2020-09-19 01:25:17'),
(25, 'Nickie Parkins', '137 Drewry Pass', '2020-09-19 01:25:17'),
(26, 'Morry Sinclar', '980 Mcbride Point', '2020-09-19 01:25:17'),
(27, 'Gilligan Crisford', '05 Bartillon Street', '2020-09-19 01:25:17'),
(28, 'Ferrel Aicheson', '1 Fairview Circle', '2020-09-19 01:25:17'),
(29, 'Vidovic Verbeke', '1 Milwaukee Plaza', '2020-09-19 01:25:17'),
(30, 'Lorianne Orgel', '9031 Vernon Circle', '2020-09-19 01:25:17'),
(31, 'Violante McVicar', '833 Warbler Plaza', '2020-09-19 01:25:17'),
(32, 'Dara Rowney', '6555 Talmadge Hill', '2020-09-19 01:25:17'),
(33, 'Serena Brailey', '17670 Cordelia Point', '2020-09-19 01:25:17'),
(34, 'Garth Burker', '36 Macpherson Alley', '2020-09-19 01:25:17'),
(35, 'Carie Vose', '9 Westport Park', '2020-09-19 01:25:17'),
(36, 'Henderson Bexon', '97788 8th Alley', '2020-09-19 01:25:17'),
(37, 'Lotti Gillio', '483 Fremont Drive', '2020-09-19 01:25:17'),
(38, 'Alysia Cudbertson', '9055 Algoma Parkway', '2020-09-19 01:25:17'),
(39, 'Yank Toffoletto', '4205 Petterle Crossing', '2020-09-19 01:25:17'),
(40, 'Meris Taffe', '339 Sunfield Pass', '2020-09-19 01:25:17'),
(41, 'Catlin Doumic', '50960 Stang Trail', '2020-09-19 01:25:17'),
(42, 'Ruthe Whife', '079 Luster Street', '2020-09-19 01:25:17'),
(43, 'Madelle Garry', '3758 Maywood Alley', '2020-09-19 01:25:17'),
(44, 'Hector Tomblings', '69956 Westridge Point', '2020-09-19 01:25:17'),
(45, 'Adey Pay', '6 Transport Way', '2020-09-19 01:25:17'),
(46, 'Annamarie Kiossel', '308 Shasta Point', '2020-09-19 01:25:17'),
(47, 'Hedy Gittins', '060 Springview Park', '2020-09-19 01:25:17'),
(48, 'Em Orwell', '4943 Bunker Hill Trail', '2020-09-19 01:25:17'),
(49, 'Dru Chapellow', '7 Karstens Terrace', '2020-09-19 01:25:17'),
(50, 'Glynis Tuiller', '88402 Killdeer Parkway', '2020-09-19 01:25:17'),
(51, '宇涵', 'tdutteridge1e@last.fm', '2020-09-19 01:41:57'),
(52, '玺越', 'ctheunissen1f@ed.gov', '2020-09-19 01:41:57'),
(53, '彦歆', 'psaur1g@domainmarket.com', '2020-09-19 01:41:57'),
(54, '睿杰', 'ltrimble1h@cbslocal.com', '2020-09-19 01:41:57'),
(55, '浩成', 'rlaible1i@unesco.org', '2020-09-19 01:41:57'),
(56, '永鑫', 'dhagland1j@home.pl', '2020-09-19 01:41:57'),
(57, '龙胜', 'apiddlehinton1k@oaic.gov.au', '2020-09-19 01:41:57'),
(58, '海程', 'fswinbourne1l@uiuc.edu', '2020-09-19 01:41:57'),
(59, '海程', 'cdyka1m@netlog.com', '2020-09-19 01:41:57'),
(60, '婧琪', 'lglassborow1n@myspace.com', '2020-09-19 01:41:57'),
(61, '博裕', 'gtomasik1o@fda.gov', '2020-09-19 01:41:57'),
(62, '松源', 'jvasic1p@google.cn', '2020-09-19 01:41:57'),
(63, '俞凯', 'htregale1q@fema.gov', '2020-09-19 01:41:57'),
(64, '博裕', 'atwizell1r@harvard.edu', '2020-09-19 01:41:57'),
(65, '佐仪', 'smcmackin1s@slate.com', '2020-09-19 01:41:57'),
(66, '宇涵', 'ncossell1t@a8.net', '2020-09-19 01:41:57'),
(67, '梓焓', 'rtorrance1u@stanford.edu', '2020-09-19 01:41:57'),
(68, '秉皓', 'hmeriet1v@nyu.edu', '2020-09-19 01:41:57'),
(69, '博裕', 'fmungham1w@hexun.com', '2020-09-19 01:41:57'),
(70, '思翰', 'mhails1x@yelp.com', '2020-09-19 01:41:57'),
(71, '伟菘', 'aocassidy1y@gnu.org', '2020-09-19 01:41:57'),
(72, '墨含', 'rhawking1z@un.org', '2020-09-19 01:41:57'),
(73, '宸赫', 'sszymaniak20@nasa.gov', '2020-09-19 01:41:57'),
(74, '墨含', 'ljobin21@odnoklassniki.ru', '2020-09-19 01:41:57'),
(75, '萧然', 'lkasting22@printfriendly.com', '2020-09-19 01:41:57'),
(76, '宸瑜', 'gurlich23@ehow.com', '2020-09-19 01:41:57'),
(77, '雅静', 'jwoodyear24@i2i.jp', '2020-09-19 01:41:57'),
(78, '芮涵', 'mhendrikse25@huffingtonpost.com', '2020-09-19 01:41:57'),
(79, '清凌', 'rwapplington26@gmpg.org', '2020-09-19 01:41:57'),
(80, '彦军', 'hmathis27@umich.edu', '2020-09-19 01:41:57'),
(81, '品逸', 'fsincock28@hp.com', '2020-09-19 01:41:57'),
(82, '慧妍', 'hcelez29@4shared.com', '2020-09-19 01:41:57'),
(83, '秉皓', 'hgarland2a@huffingtonpost.com', '2020-09-19 01:41:57'),
(84, '澄泓', 'dternent2b@google.fr', '2020-09-19 01:41:57'),
(85, '轩硕', 'ebiddle2c@dedecms.com', '2020-09-19 01:41:57'),
(86, '依娜', 'rupton2d@ehow.com', '2020-09-19 01:41:57'),
(87, '秩选', 'ralldridge2e@patch.com', '2020-09-19 01:41:57'),
(88, '佐仪', 'cmarcinkus2f@ovh.net', '2020-09-19 01:41:57'),
(89, '博豪', 'rsinson2g@amazon.co.uk', '2020-09-19 01:41:57'),
(90, '海程', 'bstandell2h@admin.ch', '2020-09-19 01:41:57'),
(91, '思宏', 'hyeulet2i@narod.ru', '2020-09-19 01:41:57'),
(92, '秉皓', 'jmackinder2j@lulu.com', '2020-09-19 01:41:57'),
(93, '亦涵', 'uhoulworth2k@fastcompany.com', '2020-09-19 01:41:57'),
(94, '韵寒', 'sairdrie2l@va.gov', '2020-09-19 01:41:57'),
(95, '佐仪', 'sbugge2m@vimeo.com', '2020-09-19 01:41:57'),
(96, '思翰', 'mskelton2n@ifeng.com', '2020-09-19 01:41:57'),
(97, '婧涵', 'bwoollaston2o@jimdo.com', '2020-09-19 01:41:57'),
(98, '雪怡', 'zwigfield2p@facebook.com', '2020-09-19 01:41:57'),
(99, '俊誉', 'rfores2q@usnews.com', '2020-09-19 01:41:57'),
(100, '浩霖', 'dpresidey2r@dedecms.com', '2020-09-19 01:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE `matkul` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id`, `name`, `created_at`) VALUES
(1, 'Pendidikan Agama', '2020-09-18 10:23:11'),
(2, 'Manajemen & Organisasi', '2020-09-18 10:23:11'),
(3, 'Wawasan Kebangsaan', '2020-09-18 10:23:11'),
(4, 'Sistem dan Teknologi Informasi', '2020-09-18 10:23:11'),
(5, 'Matematika Diskrit', '2020-09-18 10:23:11'),
(6, 'Bahasa Pemrograman', '2020-09-18 10:23:11'),
(7, 'Wawasan Teknologi & Komunikasi Ilmiah', '2020-09-18 10:23:11'),
(8, 'Algoritma & Struktur Data', '2020-09-18 10:23:11'),
(9, 'Bahasa Inggris', '2020-09-18 10:23:11'),
(10, 'Pengantar Sistem Operasi', '2020-09-18 10:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int NOT NULL,
  `mahasiswa_id` int NOT NULL,
  `matkul_id` int NOT NULL,
  `score` int NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `mahasiswa_id`, `matkul_id`, `score`, `description`, `created_at`) VALUES
(17, 1, 1, 45, 'perbaiki lagi nilainya ya!', '2020-09-19 01:36:19'),
(18, 1, 2, 70, 'sudah cukup baik', '2020-09-19 01:36:35'),
(19, 2, 1, 90, 'bagus! harap dipertahankan', '2020-09-19 01:36:52'),
(20, 2, 2, 60, 'banyak belajar ya!', '2020-09-19 01:37:07'),
(21, 3, 1, 80, 'lebih baik perbanyak belajar ya', '2020-09-19 01:37:28'),
(22, 3, 2, 100, 'jangan main terus', '2020-09-19 01:37:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_mahasiswa`
--
ALTER TABLE `detail_mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_id` (`mahasiswa_id`),
  ADD KEY `matkul_id` (`matkul_id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_mahasiswa`
--
ALTER TABLE `detail_mahasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `matkul`
--
ALTER TABLE `matkul`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_mahasiswa`
--
ALTER TABLE `detail_mahasiswa`
  ADD CONSTRAINT `detail_mahasiswa_ibfk_2` FOREIGN KEY (`matkul_id`) REFERENCES `matkul` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
