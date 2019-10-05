-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2019 at 11:41 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `team`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assignment_id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `assignment_title` varchar(255) NOT NULL,
  `assignment_file` varchar(255) NOT NULL,
  `id_number` varchar(30) NOT NULL,
  `created_at` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`assignment_id`, `course_code`, `assignment_title`, `assignment_file`, `id_number`, `created_at`) VALUES
(1, 'CEG313', 'Assignment One', '', 'stu268174', '2019-12-11'),
(2, 'biology', 'the life of a frog', '../uploads/assignments/bala muazu, abuja.pdf', '123456', '2019-09-28'),
(3, 'biology', 'the life of a frog', '../uploads/assignments/bala muazu, abuja.pdf', '123456', '2019-09-28'),
(4, 'MEG413', 'Test Assignment', '../uploads/assignments/approval_1.pdf', 'lec204459', '2019-09-29'),
(5, 'MEG413', 'Another One', '../uploads/assignments/Health Insurance guide.pdf', 'lec204459', '2019-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `course_title` varchar(255) NOT NULL,
  `course_description` text NOT NULL,
  `credit_unit` int(5) NOT NULL,
  `dept_code` varchar(20) NOT NULL,
  `faculty_code` varchar(20) NOT NULL,
  `id_number` varchar(20) NOT NULL,
  `created_at` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_code`, `course_title`, `course_description`, `credit_unit`, `dept_code`, `faculty_code`, `id_number`, `created_at`) VALUES
(1, 'CEG313', 'strength of materials', 'dEscribing the stregnth of different materials in civil eng.', 4, 'CEG', 'ENG', 'lec204459', '2019-09-24'),
(2, 'MEG413', 'Mechanical Engineering Principles', 'The principles of mechanical engineering are studied indepth', 2, 'MEG', 'ENG', 'lec204459', ''),
(3, 'M001', 'Maths', 'lonzhBXHXJHHjxnnxbsshshs', 2, 'Statistic', 'Engineering ', 'lec204459', '2019-09-29');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` int(11) NOT NULL,
  `dept_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `department_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `faculty_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_code`, `department_name`, `faculty_code`) VALUES
(1, 'CEG', 'Civil Engineering', 'ENG'),
(2, 'MEG', 'Mechanical Engineering', 'ENG'),
(3, 'PET', 'Petroleum Engineering', 'ENG'),
(4, 'SOC', 'Sociology', 'HUM');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `faculty_id` int(11) NOT NULL,
  `faculty_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `faculty_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`faculty_id`, `faculty_code`, `faculty_name`) VALUES
(1, 'ENG', 'Engineering'),
(2, 'HUM', 'Humanities');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(11) NOT NULL,
  `course_code` varchar(20) NOT NULL,
  `note_title` varchar(200) NOT NULL,
  `note_file` varchar(255) NOT NULL,
  `id_number` varchar(30) NOT NULL,
  `created_at` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `course_code`, `note_title`, `note_file`, `id_number`, `created_at`) VALUES
(2, 'CEG313', 'strength of materials', '', 'lec123456', '2019-09-24'),
(3, 'Maths', 'Note number 2', '', 'stu268174', '2019-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `submission_id` int(11) NOT NULL,
  `course_code` varchar(10) NOT NULL,
  `assignment_title` varchar(255) NOT NULL,
  `id_number` varchar(30) NOT NULL,
  `submission_file` varchar(255) NOT NULL,
  `created_at` varchar(30) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `updated_at` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`submission_id`, `course_code`, `assignment_title`, `id_number`, `submission_file`, `created_at`, `grade`, `updated_at`) VALUES
(1, 'ENG301', 'First ass', '123456', '../uploads/assignments/submissions/Davis CV.pdf', '2019-09-27', '', ''),
(2, 'ENG301', 'Test Assignment', '123456', '../uploads/assignments/submissions/Health Insurance guide.pdf', '2019-09-28', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  `id_number` varchar(30) NOT NULL,
  `courses` varchar(255) NOT NULL,
  `dept_code` varchar(30) NOT NULL,
  `faculty_code` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `created_at` varchar(30) NOT NULL,
  `status` int(11) NOT NULL,
  `resetPass` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `fullname`, `role`, `id_number`, `courses`, `dept_code`, `faculty_code`, `password`, `image`, `hash`, `created_at`, `status`, `resetPass`) VALUES
(2, 'test2@gmail.com', 'kenny', 'lecturer', 'lec146779', '', '', '', '$2y$10$TKEu94go0C5MFoXIiNu9fevUWUyUdXOdl6Lfece2CWgKMmaHM8E6q', '', '9a1158154dfa42caddbd0694a4e9bdc8', '2019-09-28', 1, ''),
(3, 'agughalamdavis@yahoo.com', 'Agughalam', 'lecturer', 'lec204459', '', '', 'ENG', '$2y$10$BbBMeaAF9bvpOaQoFw1KQOmQnsJy3uBZtKzwV/QaxrAXWSWYhumgq', '', '1c1d4df596d01da60385f0bb17a4a9e0', '2019-09-28', 1, ''),
(4, 'ogunbe@yahoo.com', 'ogube', 'student', 'stu148460', '[\"CEG313\",\"MEG413\"]', 'MEG', 'ENG', '$2y$10$jEe6K/XYM3JoMSZXyJipa.6X3Hjf1UsWw4rAEcB4xnoGJbaVwZoi.', '', '6512bd43d9caa6e02c990b0a82652dca', '2019-09-28', 1, ''),
(5, 'kemi@gmail.com', 'Ayeni kehinde', 'student', 'stu211003', '', '', '', '$2y$10$dlZemg/Y97QFYSOPoC1EtuYEbJQymWc88nMfPE.Vv2vzgo92Vwj0a', '', '5b8add2a5d98b1a652ea7fd72d942dac', '2019-09-28', 1, ''),
(6, 'eshy00@gmail.com', 'John Ifog', 'lecturer', 'lec80532', '', '', '', '$2y$10$teJYaWF6dpsfgdoTew88HOqlMCw9n6unYdch6JOwNEgd2S5jj3D.W', '', '1e056d2b0ebd5c878c550da6ac5d3724', '2019-09-28', 1, ''),
(7, 'test@gmail.com', 'Ayeni kehinde', 'lecturer', 'lec176680', '', '', '', '$2y$10$Y0zeb4jJmbzK9E5Q.ekiteZsVGR7XxlTZE4lBNaM0R2j8VnCgOhNi', '', '9232fe81225bcaef853ae32870a2b0fe', '2019-09-28', 1, ''),
(8, 'mark@yahoo.com', 'mark', 'lecturer', 'lec282659', '', '', '', '$2y$10$0xc4pO1CRSsL7ANpcyuA1.N5TZ/NcpV6ePxg0D3lMtsP3HilR0F9K', '', '0ff8033cf9437c213ee13937b1c4c455', '2019-09-29', 1, ''),
(9, 'oyebamijitobi@gmail.com', 'tobi', 'lecturer', 'lec475672', '', '', '', '1f0e3dad99908345f7439f8ffabdffc4', '', '46ba9f2a6976570b0353203ec4474217', '2019-10-04', 1, '21754975');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `submission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
