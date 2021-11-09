-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2020 at 04:14 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Business', '2020-11-09 18:05:48'),
(2, 'Technology', '2020-11-09 18:05:48'),
(3, 'Sports', '2020-11-14 14:32:57'),
(4, 'Life', '2020-11-15 17:01:40');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(5, 24, 'PERFAIT AKAKA', 'pafeshisoks@gmail.com', 'Hello....nice work bro', '2020-12-05 10:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(15, 1, 'Post one', 'Post-one', '<p>internet-enabled theft, fraud, and exploitation were responsible for a&nbsp;massive $2.7 billion in financial losses. The source goes ahead to add that in 2018, 82% of organizations were victims of payment fraud. That is clearly a massive amount of money that is lost yearly and something needs to be done.</p>\r\n\r\n<p>I found one useful and relevant research work regarding this subject. It talks about online scamming and how to curb it. In 2009, five Malaysian students; Mudiana Mokhsin, Azhar Abdul Aziz, Amer Shakir Zainol, Norshima Humaidi and Nur Ain Adnin Zaini did a research and came up with their own computational solution to the problem. With the average number of small consumers falling victim of identity fraud yearly standing at 14.4 million dollars in the USA alone, According to the&nbsp;2019 Identity</p>\r\n', 'angular.png', '2020-11-10 15:24:05'),
(17, 2, 'Post two', 'Post-two', '<p>In this introductory section, I will take you through what the research work of the project is all about.&nbsp; It will cover several items such as; the background information and literature review, problem statement, the main goal, the objectives of the project, significance of the study, limitations of the study, scope of the study and finally, the road map of the rest of the research document.</p>\r\n\r\n<p>The title of the project is the research, design and development of an online escrow service system for social media traders with no or unverified e-commerce websites, to address the issue of online scamming. The project basically revolves around financial security which is threatened by fraud, majorly in the form of online scams. According to Legal Job Site (2019), in 2018</p>\r\n', 'noimage.jpg', '2020-11-10 15:26:12'),
(20, 2, 'Post three', 'Post-three', '<p>sampling for their data collection, descriptive analysis to transform and reorganize raw data into an understandable form in order to generate descriptive information and finally, reliability analysis. One question that their research work raises however, is, &ldquo;what if someone decides to ignore the warning issued by their model and goes on with the risky behavior?&rdquo; How can such a person be helped? This is a possibility which we cannot rule out since 87 percent of users on the internet chose to ignore security alerts and warnings. Lisa Vaas (2016). That is where my research work comes in. My research work aims at enabling a sheep to be thrown inside a lion&rsquo;s den without getting eaten while theirs does not let the sheep get into the den in the first place. If it gets in then it is devoured.</p>\r\n\r\n<p>With that being said, the main aim of this project is to design and develop a system that will build trust between the two parties and curb scamming cases among buyers and sellers online. This should be completed in a semester.</p>\r\n', 'client2.png', '2020-11-10 17:35:03'),
(21, 1, 'Post four', 'Post-four', '<p>From their research, they proposed that a solution to this prevailing problem would be by developing a machine learning model which uses linear regression to try and predict the probability of a person being scammed. The model finds out what behaviors people usually engage in before getting scammed then come up with preventive measures. (Mudiana, Azhar, Amer, Norshima and Nur, 2008). The model which they developed requests for certain details which act as variables then calculates the likelihood of a person getting scammed. The model finds out what behaviors people usually engage in before getting scammed then come up with preventive measures. They used research methodologies such as surveying and</p>\r\n', 'client1.png', '2020-11-10 17:35:41'),
(24, 1, 'Akaka is a beast', 'Akaka-is-a-beast', '<p>The list of our Best Science Jobs may be short, but the work they do in these careers is no less important. Environmental science and protection technicians watch out for our environment by checking out possible sources of contamination and pollution, while biochemists study biological processes, like hereditary issues. Psychologists study our behavior and how we relate to one another and our environment, while anthropologists and archaeologists study behavior and how humans have evolved over time. Epidemiologists/medical scientists look into what causes human injury and illness, and work to prevent diseases from spreading and recurring. If all things scientific excite you, consider a career in one of the Best Science Jobs. For more information on how we rank, read the</p>\r\n', 'noimage.jpg', '2020-12-03 15:17:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
