-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2025 at 12:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mandegar`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `community` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `author`, `community`, `text`, `date`, `poster`, `code`) VALUES
(1, 'دوره آموزشی ICDL', 'مهرداد کلاته عربی', 'کامپیوتر', '        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium modi vel eaque impedit iure fuga sed non nihil nisi aperiam, sit inventore sunt, distinctio hic, nam quidem eum! Repudiandae, sunt!\n        Aperiam beatae veniam labore expedita natus nulla iusto debitis quas rerum, maiores temporibus vel fugit aspernatur obcaecati eveniet quia porro quisquam, sint numquam. Nulla esse quis doloremque ab, hic tempore!\n        Quibusdam, explicabo? Illo fuga error nulla delectus esse dolorem! Quis nisi accusantium eveniet reiciendis ipsum, ad corporis iure, quasi ab quos culpa adipisci? Ea autem delectus veniam, amet dolores sunt.\n        Dolorum corrupti unde veniam. Natus dolore doloremque impedit maxime. Eveniet, officia cupiditate adipisci nostrum excepturi repellendus perferendis sint, dolore pariatur sequi voluptatibus a! Natus ipsa nulla quibusdam sapiente laudantium quam.\n        Similique voluptates corporis, et inventore, quisquam facilis nemo itaque mollitia eius temporibus doloremque molestiae quo minus sint alias quos porro sequi? Nesciunt natus aliquid aperiam ab ipsa, dicta mollitia molestiae!', '۱۴۰۳/۱۲/۱۶', 'images.jpg', '7379851'),
(2, 'دوره آموزشی ICDL', 'asdfasdfasdf', 'رباتیک', '                              asdfasdfasdfasdfasdf              ', '۱۴۰۳/۱۲/۱۶', 'Python programming language logo.png', '7379851');

-- --------------------------------------------------------

--
-- Table structure for table `bot`
--

CREATE TABLE `bot` (
  `id` int(11) NOT NULL,
  `chat_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bot`
--

INSERT INTO `bot` (`id`, `chat_id`, `status`) VALUES
(1, '694557566', '0'),
(2, '1518042418', '1'),
(3, '1560044161', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bot_token`
--

CREATE TABLE `bot_token` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bot_token`
--

INSERT INTO `bot_token` (`id`, `title`, `token`) VALUES
(1, 'main', '1050728797:Aw8PJtiPTy39ZkW9RBIbvwxe5rXTSwG7AgtRi3z7');

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `title`) VALUES
(1, 'کامپیوتر');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `comunity` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `start` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `teacher`, `comunity`, `poster`, `description`, `start`, `date`, `duration`, `amount`, `status`, `code`) VALUES
(1, 'پایتون مقدماتی', 'مهرداد کلاته عربی', 'کامپیوتر', 'python.png', 'دوره جامع پایتون                                            ', '1403/12/11 - چهارشنبه', '1403/11/12', '', '100000', '1', '90256'),
(4, 'دوره php', 'محدثه زندی', 'کامپیوتر', 'python.png', 'توضیحات جدید', '1403/12/11 - چهارشنبه', '۱۴۰۳/۱۱/۱۶', '', '200000', '1', '4828265'),
(5, 'دوره php', 'محدثه زندی', 'کامپیوتر', 'python.png', 'توضیحات جدید', '1403/12/11 - چهارشنبه', '۱۴۰۳/۱۱/۱۶', '', '200000', '1', '1195812'),
(6, 'دوره آموزشی ICDL', 'عباس محبوب صابری', 'کامپیوتر', 'nothing', 'دوره مقدماتی تا پیشرفته ', '1403/11/12', '۱۴۰۳/۱۲/۱۶', '', '5000000', '1', '381521'),
(7, 'دوره آموزشی ICDL', 'عباس محبوب صابری', 'کامپیوتر', 'nothing', 'sdfasdfasdfasd                                        ', '1403/11/12', '۱۴۰۳/۱۲/۱۶', '', '5000000', '1', '1873289'),
(8, 'دوره آموزشی ICDL', 'عباس محبوب صابری', 'کامپیوتر', 'Python programming language logo.png', 'sdfasdfasdfasd                                        ', '1403/11/12', '۱۴۰۳/۱۲/۱۶', '', '5000000', '1', '2741107'),
(9, 'دوره آموزشی ICDL', 'عباس محبوب صابری', 'کامپیوتر', 'Python programming language logo.png', 'sdfasdfasdfasd                                        ', '1403/11/12', '۱۴۰۳/۱۲/۱۶', '', '5000000', '1', '7593404'),
(10, 'دوره آموزشی ICDL', 'عباس محبوب صابری', 'کامپیوتر', 'Python programming language logo.png', 'sdfasdfasdfasd                                        ', '1403/11/12', '۱۴۰۳/۱۲/۱۶', '', '5000000', '1', '6333740'),
(11, 'دوره آموزشی ICDL', 'عباس محبوب صابری', 'رباتیک', 'Python programming language logo.png', 'sdfasdfasdfasd                                        ', '1403/11/12', '۱۴۰۳/۱۲/۱۶', '', '5000000', '1', '648561'),
(12, 'دوره آموزشی ICDL', 'عباس محبوب صابری', 'کامپیوتر', 'Python programming language logo.png', 'asdfasdfasd', '1403/11/12', '۱۴۰۳/۱۲/۱۶', '', '5000000', '1', '1670273'),
(13, 'دوره آموزشی ICDL', 'عباس محبوب صابری', 'کامپیوتر', 'Python programming language logo.png', 'asdfasdfasd', '1403/11/12', '۱۴۰۳/۱۲/۱۶', '', '5000000', '1', '9228759');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `community` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `poster` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `community`, `text`, `poster`, `date`, `code`) VALUES
(1, 'خبر جدید', 'کامپیوتر', 'متن یک خبر جدید', 'Python programming language logo.png', '۱۴۰۳/۱۲/۱۷', '3568721'),
(2, 'خبر جدید', 'کامپیوتر', 'متن یک خبر جدید', 'Python programming language logo.png', '۱۴۰۳/۱۲/۱۷', '7419872'),
(3, 'خبر جدید', 'کامپیوتر', 'متن جدید خبر', 'images.jpg', '۱۴۰۳/۱۲/۱۷', '1013913'),
(4, 'خبر جدید', 'کامپیوتر', 'متن جدید خبر', 'images.jpg', '۱۴۰۳/۱۲/۱۷', '1013913'),
(5, 'خبر جدید', 'کامپیوتر', 'متن جدید خبر', 'images.jpg', '۱۴۰۳/۱۲/۱۷', '1013913'),
(6, 'خبر جدید', 'کامپیوتر', 'متن جدید خبر', 'images.jpg', '۱۴۰۳/۱۲/۱۷', '1013913'),
(7, 'خبر جدید', 'کامپیوتر', 'متن جدید خبر', 'images.jpg', '۱۴۰۳/۱۲/۱۷', '1013913');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `st_id_no` varchar(255) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `st_id_no`, `course_code`, `transaction_id`, `date`, `time`) VALUES
(4, '100000', '', '90256', '301818', '۱۴۰۳/۱۱/۱۶', '۲۲:۳۸:۰۷'),
(5, '100000', '', '90256', '301818', '۱۴۰۳/۱۱/۱۶', '۲۲:۳۹:۵۶'),
(6, '100000', '0372647170', '90256', '391318', '۱۴۰۳/۱۱/۱۶', '۲۲:۴۱:۲۰'),
(7, '100000', '0372647170', '90256', '391318', '۱۴۰۳/۱۱/۱۶', '۲۳:۰۱:۲۱'),
(8, '100000', '0372647170', '90256', '391318', '۱۴۰۳/۱۱/۱۶', '۲۳:۰۱:۵۹'),
(9, '100000', '0372647170', '90256', '391318', '۱۴۰۳/۱۱/۱۶', '۲۳:۰۲:۱۴'),
(10, '100000', '0372647170', '90256', '391318', '۱۴۰۳/۱۱/۱۶', '۲۳:۰۲:۲۹');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `field` varchar(255) NOT NULL,
  `faname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `st_id_no` varchar(255) NOT NULL,
  `birthdate` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `fullname`, `field`, `faname`, `phone`, `st_id_no`, `birthdate`, `date`, `time`, `status`) VALUES
(1, '', 'کامپیوتر ', '', '09190505223', '0372647170', '', '۱۴۰۳/۱۱/۱۶', '۲۰:۵۶:۲۷', '0'),
(2, 'مهرداد کلاته عربی', 'ریاضی فیزیک', 'حمید', '0919050522', '0372647170', '1383/05/09', '', '', '0'),
(3, 'مهرداد کلاته عربی', 'ریاضی فیزیک', 'حمید', '0919050522', '0372647170', '1383/05/09', '۱۴۰۴/۰۱/۰۳', '۰۲:۳۴:۴۴', '0'),
(4, 'مهرداد کلاته عربی', 'ریاضی فیزیک', 'حمید', '0919050522', '0372647170', '1383/05/09', '۱۴۰۴/۰۱/۰۳', '۰۲:۳۵:۲۹', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `semat` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `semat`, `username`, `password`, `token`) VALUES
(1, 'ثریا', 'کریمی', 'رئیس باشگاه', 'karimi', '$2y$10$z1PW9osPRkLhk44PbDI3oOOTm0CzMKPwot0n/1PpfPHgzH0lGDXqu', '79ad1a43731561ed8a378a1340f5a3b5b6d2fe1d205a38a127f0f5459ce6decd016f7927e8983fa7e53d80887d0140aa033fe2ba5c8477f2bd5ee1057ab6e3e232d5327163502082672dd7dec94230bb71de20ab8bf11a68e9c12c3073d1d88139dc7c40'),
(2, '', '', '', 'karimi', '$2y$10$z1PW9osPRkLhk44PbDI3oOOTm0CzMKPwot0n/1PpfPHgzH0lGDXqu', '79ad1a43731561ed8a378a1340f5a3b5b6d2fe1d205a38a127f0f5459ce6decd016f7927e8983fa7e53d80887d0140aa033fe2ba5c8477f2bd5ee1057ab6e3e232d5327163502082672dd7dec94230bb71de20ab8bf11a68e9c12c3073d1d88139dc7c40'),
(3, 'مهدی', 'رحمتی', 'دبیر انجمن کامپیوتر', '0372647170', '$2y$10$smxI7L5mDUwoB7ZJXf1PYehfSFTOSC7mxX5dlaTwBM.edAh6lDwnm', 'dd74b60daeb3c1e0a53425da4d9b9e28fe6b2dcfbba03cada890174388d2facc437edc0a8466cff426d6d7ccd2c707340089557df54448cbe30f29fe48865a04ac92954aab7f328dd3b0889849f62da6e937b5aeee4d4d88a4f0d63566ca67e33706a95e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bot`
--
ALTER TABLE `bot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bot_token`
--
ALTER TABLE `bot_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bot`
--
ALTER TABLE `bot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bot_token`
--
ALTER TABLE `bot_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
