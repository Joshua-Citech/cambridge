-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2021 at 12:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13756877_college_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_year`
--

CREATE TABLE `academic_year` (
  `id` int(11) NOT NULL,
  `academic_year` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_year`
--

INSERT INTO `academic_year` (`id`, `academic_year`) VALUES
(4, '2018-2019'),
(5, '2019-2020'),
(6, '2020-2021');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` varchar(225) NOT NULL,
  `assignment_name` varchar(225) NOT NULL,
  `subject_code` varchar(225) NOT NULL,
  `assignment_type` varchar(225) NOT NULL,
  `due_date` varchar(225) NOT NULL,
  `available_from` varchar(225) NOT NULL,
  `available_until` varchar(225) NOT NULL,
  `published_date` varchar(225) NOT NULL,
  `question` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `assignment_submission`
--

CREATE TABLE `assignment_submission` (
  `assignment_id` varchar(225) NOT NULL,
  `usn` varchar(225) NOT NULL,
  `answer` varchar(225) NOT NULL,
  `score` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `base_info`
--

CREATE TABLE `base_info` (
  `id` int(11) NOT NULL,
  `email_id` varchar(200) DEFAULT NULL,
  `academic_year` varchar(50) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `semester_type` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_info`
--

INSERT INTO `base_info` (`id`, `email_id`, `academic_year`, `department`, `semester_type`) VALUES
(1, 'akash.19mca54@cambridge.edu.in', '2020-2021', 'MCA', 'EVEN'),
(2, 'amarjeet.18mca03@cambridge.edu.in', '2020-2021', 'MCA', 'EVEN'),
(3, 'sushmita.18mca20@cambridge.edu.in', '2020-2021', 'MCA', 'EVEN'),
(4, 'shiva.19mca86@cambridge.edu.in', '2020-2021', 'MCA', 'EVEN'),
(5, 'sindhu.mca@cambridge.edu.in', '2020-2021', 'MCA', 'EVEN'),
(6, 'rashmi.mca@cambridge.edu.in', '2020-2021', 'MCA', 'ODD'),
(7, 'diwakar.mca@cambridge.edu.in', '2020-2021', 'MCA', 'ODD'),
(8, 'sindhu.mca@cambridge.edu.in', '2020-2021', 'MCA', 'ODD'),
(9, 'vijaya.mca@cambridge.edu.in', '2020-2021', 'MCA', 'ODD');

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `slno` int(225) NOT NULL,
  `batch_Id` varchar(225) NOT NULL,
  `batch_name` varchar(225) NOT NULL,
  `semester` varchar(225) NOT NULL,
  `syllabus_scheme` varchar(225) NOT NULL,
  `department` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_schedule`
--

CREATE TABLE `class_schedule` (
  `schedule_id` varchar(225) NOT NULL,
  `topic` varchar(225) NOT NULL,
  `subject_code` varchar(225) NOT NULL,
  `start_time` varchar(225) NOT NULL,
  `end_time` varchar(225) NOT NULL,
  `date` varchar(225) NOT NULL,
  `session_type` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `college_time`
--

CREATE TABLE `college_time` (
  `DAY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `S_FIRST_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `E_FIRST_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `S_SECOND_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `E_SECOND_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `S_THIRD_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `E_THIRD_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `S_FOUR_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `E_FOUR_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `S_FIVE_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `E_FIVE_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `S_SIX_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `E_SIX_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `S_SEVEN_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `E_SEVEN_TIME_SLOT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `college_time`
--

INSERT INTO `college_time` (`DAY`, `S_FIRST_TIME_SLOT`, `E_FIRST_TIME_SLOT`, `S_SECOND_TIME_SLOT`, `E_SECOND_TIME_SLOT`, `S_THIRD_TIME_SLOT`, `E_THIRD_TIME_SLOT`, `S_FOUR_TIME_SLOT`, `E_FOUR_TIME_SLOT`, `S_FIVE_TIME_SLOT`, `E_FIVE_TIME_SLOT`, `S_SIX_TIME_SLOT`, `E_SIX_TIME_SLOT`, `S_SEVEN_TIME_SLOT`, `E_SEVEN_TIME_SLOT`) VALUES
('Friday', '09:00 AM', '09:55 AM', '09:55 AM', '10:55 AM', '11:10 AM', '12:05 PM', '12:05 PM', '01:00 PM', '01:40 PM', '02:35 PM', '02:35 PM', '03:30 PM', '03:30 PM', '04:25 PM'),
('Monday', '09:00 AM', '09:55 AM', '09:55 AM', '10:55 AM', '11:10 AM', '12:05 PM', '12:05 PM', '01:00 PM', '01:40 PM', '02:35 PM', '02:35 PM', '03:30 PM', '03:30 PM', '04:25 PM'),
('Saturday', '09:00 AM', '09:55 AM', '09:55 AM', '10:55 AM', '11:10 AM', '12:05 PM', '12:05 PM', '01:00 PM', '', '', '', '', '', ''),
('Thursday', '09:00 AM', '09:55 AM', '09:55 AM', '10:55 AM', '11:10 AM', '12:05 PM', '12:05 PM', '01:00 PM', '01:40 PM', '02:35 PM', '02:35 PM', '03:30 PM', '03:30 PM', '04:25 PM'),
('Tuesday', '09:00 AM', '09:55 AM', '09:55 AM', '10:55 AM', '11:10 AM', '12:05 PM', '12:05 PM', '01:00 PM', '01:40 PM', '02:35 PM', '02:35 PM', '03:30 PM', '03:30 PM', '04:25 PM'),
('Wednesday', '09:00 AM', '09:55 AM', '09:55 AM', '10:55 AM', '11:10 AM', '12:05 PM', '12:05 PM', '01:00 PM', '01:40 PM', '02:35 PM', '02:35 PM', '03:30 PM', '03:30 PM', '04:25 PM');

-- --------------------------------------------------------

--
-- Table structure for table `coordinator`
--

CREATE TABLE `coordinator` (
  `id` int(11) NOT NULL,
  `type_coordinator` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coordinator_level` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `coordinator`
--

INSERT INTO `coordinator` (`id`, `type_coordinator`, `coordinator_level`) VALUES
(1, 'College Level', ' R AND D'),
(3, 'Department Level', 'TIME-TABLE COORDINATOR'),
(7, 'College Level', 'CULTURAL'),
(8, 'College Level', 'MHRD'),
(9, 'College Level', 'IQAC'),
(10, 'College Level', 'PUBLIC CELL'),
(11, 'Department Level', 'STUDENT FORUM'),
(12, 'Department Level', 'FACULTY FORUM'),
(13, 'Department Level', 'NBA COORDINATOR'),
(14, 'Department Level', 'NAAC'),
(15, 'Department Level', 'PUBLIC CELL'),
(16, 'Department Level', 'CULTURAL'),
(17, 'Department Level', 'MHRD');

-- --------------------------------------------------------

--
-- Table structure for table `coordinator_details`
--

CREATE TABLE `coordinator_details` (
  `id` int(10) DEFAULT NULL,
  `college_coordinator` varchar(100) DEFAULT NULL,
  `department_coordinator` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coordinator_details`
--

INSERT INTO `coordinator_details` (`id`, `college_coordinator`, `department_coordinator`) VALUES
(1, 'CULTURAL', 'NAAC'),
(2, ' R AND D', 'STUDENT FORUM'),
(3, ' R AND D', 'MHRD'),
(5, 'Select College Coordinator', 'NAAC'),
(6, ' R AND D', 'CULTURAL'),
(7, 'None', 'None'),
(8, 'MHRD', 'TIME-TABLE COORDINATOR'),
(9, 'MHRD', 'NBA COORDINATOR'),
(1, 'CULTURAL', 'NAAC'),
(2, ' R AND D', 'STUDENT FORUM'),
(3, ' R AND D', 'MHRD'),
(5, 'Select College Coordinator', 'NAAC'),
(6, ' R AND D', 'CULTURAL'),
(7, 'None', 'None'),
(8, 'MHRD', 'TIME-TABLE COORDINATOR'),
(9, 'MHRD', 'NBA COORDINATOR'),
(1, 'CULTURAL', 'NAAC'),
(2, ' R AND D', 'STUDENT FORUM'),
(3, ' R AND D', 'MHRD'),
(5, 'Select College Coordinator', 'NAAC'),
(6, ' R AND D', 'CULTURAL'),
(7, 'None', 'None'),
(8, 'MHRD', 'TIME-TABLE COORDINATOR'),
(9, 'MHRD', 'NBA COORDINATOR'),
(1, 'CULTURAL', 'NAAC'),
(2, ' R AND D', 'STUDENT FORUM'),
(3, ' R AND D', 'MHRD'),
(5, 'Select College Coordinator', 'NAAC'),
(6, ' R AND D', 'CULTURAL'),
(7, 'None', 'None'),
(8, 'MHRD', 'TIME-TABLE COORDINATOR'),
(9, 'MHRD', 'NBA COORDINATOR'),
(1, 'CULTURAL', 'NAAC'),
(2, ' R AND D', 'STUDENT FORUM'),
(3, ' R AND D', 'MHRD'),
(5, 'Select College Coordinator', 'NAAC'),
(6, ' R AND D', 'CULTURAL'),
(7, 'None', 'None'),
(8, 'MHRD', 'TIME-TABLE COORDINATOR'),
(9, 'MHRD', 'NBA COORDINATOR'),
(1, 'CULTURAL', 'NAAC'),
(2, ' R AND D', 'STUDENT FORUM'),
(3, ' R AND D', 'MHRD'),
(5, 'Select College Coordinator', 'NAAC'),
(6, ' R AND D', 'CULTURAL'),
(7, 'None', 'None'),
(8, 'MHRD', 'TIME-TABLE COORDINATOR'),
(9, 'MHRD', 'NBA COORDINATOR'),
(1, 'CULTURAL', 'NAAC'),
(2, ' R AND D', 'STUDENT FORUM'),
(3, ' R AND D', 'MHRD'),
(5, 'Select College Coordinator', 'NAAC'),
(6, ' R AND D', 'CULTURAL'),
(7, 'None', 'None'),
(8, 'MHRD', 'TIME-TABLE COORDINATOR'),
(9, 'MHRD', 'NBA COORDINATOR');

-- --------------------------------------------------------

--
-- Table structure for table `current_academic_year`
--

CREATE TABLE `current_academic_year` (
  `year` varchar(50) NOT NULL,
  `indexs` int(5) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `current_academic_year`
--

INSERT INTO `current_academic_year` (`year`, `indexs`) VALUES
('2020-2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SIG_NO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HOD_Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `SIG_NO`, `HOD_Email`) VALUES
(1, 'MCA', 'A1', 'hod.mca@cambridge.edu.in'),
(2, 'MBA', 'B1', ''),
(3, 'CSE', 'C1', ''),
(4, 'ECE', 'N1', ''),
(6, 'EEE', 'E1', ''),
(7, 'ME', 'M1', ''),
(8, 'CE', 'V1', '');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designation`) VALUES
(1, 'ASSISTANT PROFESSOR'),
(2, 'HOD'),
(8, 'ASSOCIATE PROFESSOR'),
(9, 'PRINCIPAL'),
(11, 'DEAN BASIC SCIENCE'),
(12, 'DEAN R AND D'),
(13, 'CFO');

-- --------------------------------------------------------

--
-- Table structure for table `domain_expert`
--

CREATE TABLE `domain_expert` (
  `id` int(11) NOT NULL,
  `domain_expert` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `domain_expert`
--

INSERT INTO `domain_expert` (`id`, `domain_expert`) VALUES
(1, 'AI'),
(2, 'MACHINE LEARNING'),
(3, 'CLOUD COMPUTING'),
(4, 'FINANCE MANAGEMENT'),
(5, 'FUZZY LOGIC'),
(6, 'IMAGE PROCESSING'),
(7, 'CIRCUIT ENGINEERING'),
(12, 'LOGICAL DESIGN'),
(13, 'IOT'),
(14, 'ARTIFICIAL INTEGENCE'),
(15, 'DBMS'),
(16, 'JAVA'),
(17, 'CYBER SECURITY'),
(18, 'OTHERS');

-- --------------------------------------------------------

--
-- Table structure for table `dq_exam_question`
--

CREATE TABLE `dq_exam_question` (
  `question_id` varchar(225) NOT NULL,
  `test_id` varchar(225) NOT NULL,
  `question` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dq_result`
--

CREATE TABLE `dq_result` (
  `result_id` varchar(225) NOT NULL,
  `question_id` varchar(225) NOT NULL,
  `usn` varchar(225) NOT NULL,
  `test_id` varchar(225) NOT NULL,
  `answer` varchar(225) NOT NULL,
  `score` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_activites`
--

CREATE TABLE `faculty_activites` (
  `id` int(10) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `activites` varchar(200) DEFAULT NULL,
  `starting_time_slot` varchar(50) DEFAULT NULL,
  `ending_time_slot` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_activites`
--

INSERT INTO `faculty_activites` (`id`, `day`, `activites`, `starting_time_slot`, `ending_time_slot`) VALUES
(1, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(1, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(1, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(2, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(3, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(3, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(5, 'Monday', 'FACULTY ENHANCEMENT PROGRAM', '09:00 AM', '09:55 AM'),
(1, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(1, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(1, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(2, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(3, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(3, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(5, 'Monday', 'FACULTY ENHANCEMENT PROGRAM', '09:00 AM', '09:55 AM'),
(1, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(1, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(1, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(2, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(3, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(3, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(5, 'Monday', 'FACULTY ENHANCEMENT PROGRAM', '09:00 AM', '09:55 AM'),
(1, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(1, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(1, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(2, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(3, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(3, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(5, 'Monday', 'FACULTY ENHANCEMENT PROGRAM', '09:00 AM', '09:55 AM'),
(1, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(1, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(1, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(2, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(3, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(3, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(5, 'Monday', 'FACULTY ENHANCEMENT PROGRAM', '09:00 AM', '09:55 AM'),
(1, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(1, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(1, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(2, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(3, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(3, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(5, 'Monday', 'FACULTY ENHANCEMENT PROGRAM', '09:00 AM', '09:55 AM'),
(1, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(1, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(1, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(2, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(2, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', 'FACULTY ENHANCEMENT PROGRAM', '03:30 PM', '04:25 PM'),
(3, 'Thursday', 'FACULTY FORUM', '02:35 PM', '03:30 PM'),
(3, 'Thursday', 'FACULTY FORUM', '03:30 PM', '04:25 PM'),
(5, 'Monday', 'FACULTY ENHANCEMENT PROGRAM', '09:00 AM', '09:55 AM');

-- --------------------------------------------------------

--
-- Table structure for table `final_ia_marks`
--

CREATE TABLE `final_ia_marks` (
  `usn` varchar(225) NOT NULL,
  `sem` varchar(225) NOT NULL,
  `t1` varchar(225) NOT NULL,
  `t2` varchar(225) NOT NULL,
  `t3` varchar(225) NOT NULL,
  `avg` varchar(225) NOT NULL,
  `reduce` varchar(225) NOT NULL,
  `q_score` varchar(225) NOT NULL,
  `a_score` varchar(225) NOT NULL,
  `total` varchar(225) NOT NULL,
  `publoish_state` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `free_time_slot_no`
--

CREATE TABLE `free_time_slot_no` (
  `id` int(10) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `starting_time_slot` varchar(50) DEFAULT NULL,
  `ending_time_slot` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `free_time_slot_no`
--

INSERT INTO `free_time_slot_no` (`id`, `day`, `starting_time_slot`, `ending_time_slot`) VALUES
(1, 'Monday', '09:00 AM', '09:55 AM'),
(1, 'Monday', '09:55 AM', '10:55 AM'),
(1, 'Monday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '09:55 AM', '10:55 AM'),
(1, 'Tuesday', '11:10 AM', '12:05 PM'),
(1, 'Tuesday', '12:05 PM', '01:00 PM'),
(1, 'Tuesday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '03:30 PM', '04:25 PM'),
(1, 'Thursday', '09:00 AM', '09:55 AM'),
(1, 'Thursday', '09:55 AM', '10:55 AM'),
(1, 'Thursday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '09:00 AM', '09:55 AM'),
(1, 'Friday', '09:55 AM', '10:55 AM'),
(1, 'Friday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '12:05 PM', '01:00 PM'),
(1, 'Friday', '02:35 PM', '03:30 PM'),
(1, 'Friday', '03:30 PM', '04:25 PM'),
(1, 'Saturday', '09:00 AM', '09:55 AM'),
(1, 'Saturday', '09:55 AM', '10:55 AM'),
(1, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Saturday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '09:55 AM', '10:55 AM'),
(1, 'Wednesday', '11:10 AM', '12:05 PM'),
(1, 'Wednesday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Monday', '11:10 AM', '12:05 PM'),
(2, 'Monday', '12:05 PM', '01:00 PM'),
(2, 'Monday', '02:35 PM', '03:30 PM'),
(2, 'Monday', '03:30 PM', '04:25 PM'),
(2, 'Tuesday', '09:55 AM', '10:55 AM'),
(2, 'Tuesday', '11:10 AM', '12:05 PM'),
(2, 'Tuesday', '12:05 PM', '01:00 PM'),
(2, 'Wednesday', '09:00 AM', '09:55 AM'),
(2, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Wednesday', '02:35 PM', '03:30 PM'),
(2, 'Thursday', '09:00 AM', '09:55 AM'),
(2, 'Thursday', '09:55 AM', '10:55 AM'),
(2, 'Thursday', '11:10 AM', '12:05 PM'),
(2, 'Thursday', '12:05 PM', '01:00 PM'),
(2, 'Thursday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '09:55 AM', '10:55 AM'),
(2, 'Friday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '02:35 PM', '03:30 PM'),
(2, 'Friday', '03:30 PM', '04:25 PM'),
(2, 'Saturday', '09:55 AM', '10:55 AM'),
(2, 'Saturday', '11:10 AM', '12:05 PM'),
(2, 'Saturday', '12:05 PM', '01:00 PM'),
(3, 'Monday', '09:00 AM', '09:55 AM'),
(3, 'Monday', '09:55 AM', '10:55 AM'),
(3, 'Monday', '11:10 AM', '12:05 PM'),
(3, 'Monday', '01:40 PM', '02:35 PM'),
(3, 'Monday', '02:35 PM', '03:30 PM'),
(3, 'Monday', '03:30 PM', '04:25 PM'),
(3, 'Tuesday', '09:00 AM', '09:55 AM'),
(3, 'Tuesday', '09:55 AM', '10:55 AM'),
(3, 'Tuesday', '11:10 AM', '12:05 PM'),
(3, 'Tuesday', '12:05 PM', '01:00 PM'),
(3, 'Tuesday', '02:35 PM', '03:30 PM'),
(3, 'Tuesday', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', '09:00 AM', '09:55 AM'),
(3, 'Wednesday', '09:55 AM', '10:55 AM'),
(3, 'Wednesday', '11:10 AM', '12:05 PM'),
(3, 'Wednesday', '12:05 PM', '01:00 PM'),
(3, 'Wednesday', '02:35 PM', '03:30 PM'),
(3, 'Thursday', '09:00 AM', '09:55 AM'),
(3, 'Thursday', '09:55 AM', '10:55 AM'),
(3, 'Thursday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '09:55 AM', '10:55 AM'),
(3, 'Friday', '11:10 AM', '12:05 PM'),
(3, 'Friday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '01:40 PM', '02:35 PM'),
(3, 'Friday', '03:30 PM', '04:25 PM'),
(3, 'Saturday', '09:00 AM', '09:55 AM'),
(3, 'Saturday', '11:10 AM', '12:05 PM'),
(3, 'Saturday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '09:00 AM', '09:55 AM'),
(6, 'Monday', '09:55 AM', '10:55 AM'),
(6, 'Monday', '11:10 AM', '12:05 PM'),
(6, 'Monday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '01:40 PM', '02:35 PM'),
(6, 'Monday', '02:35 PM', '03:30 PM'),
(6, 'Monday', '03:30 PM', '04:25 PM'),
(6, 'Tuesday', '09:55 AM', '10:55 AM'),
(6, 'Tuesday', '11:10 AM', '12:05 PM'),
(6, 'Tuesday', '12:05 PM', '01:00 PM'),
(6, 'Tuesday', '01:40 PM', '02:35 PM'),
(6, 'Tuesday', '02:35 PM', '03:30 PM'),
(6, 'Tuesday', '03:30 PM', '04:25 PM'),
(6, 'Wednesday', '09:55 AM', '10:55 AM'),
(6, 'Wednesday', '11:10 AM', '12:05 PM'),
(6, 'Wednesday', '12:05 PM', '01:00 PM'),
(6, 'Wednesday', '01:40 PM', '02:35 PM'),
(6, 'Wednesday', '02:35 PM', '03:30 PM'),
(6, 'Wednesday', '03:30 PM', '04:25 PM'),
(6, 'Thursday', '09:00 AM', '09:55 AM'),
(6, 'Thursday', '11:10 AM', '12:05 PM'),
(6, 'Thursday', '12:05 PM', '01:00 PM'),
(6, 'Thursday', '01:40 PM', '02:35 PM'),
(6, 'Thursday', '02:35 PM', '03:30 PM'),
(6, 'Thursday', '03:30 PM', '04:25 PM'),
(6, 'Friday', '09:00 AM', '09:55 AM'),
(6, 'Friday', '09:55 AM', '10:55 AM'),
(6, 'Friday', '12:05 PM', '01:00 PM'),
(6, 'Friday', '01:40 PM', '02:35 PM'),
(6, 'Friday', '02:35 PM', '03:30 PM'),
(6, 'Friday', '03:30 PM', '04:25 PM'),
(6, 'Saturday', '09:00 AM', '09:55 AM'),
(6, 'Saturday', '09:55 AM', '10:55 AM'),
(6, 'Saturday', '11:10 AM', '12:05 PM'),
(6, 'Saturday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '09:00 AM', '09:55 AM'),
(7, 'Monday', '09:55 AM', '10:55 AM'),
(7, 'Monday', '11:10 AM', '12:05 PM'),
(7, 'Monday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '01:40 PM', '02:35 PM'),
(7, 'Monday', '02:35 PM', '03:30 PM'),
(7, 'Monday', '03:30 PM', '04:25 PM'),
(7, 'Tuesday', '09:00 AM', '09:55 AM'),
(7, 'Tuesday', '09:55 AM', '10:55 AM'),
(7, 'Tuesday', '11:10 AM', '12:05 PM'),
(7, 'Tuesday', '12:05 PM', '01:00 PM'),
(7, 'Tuesday', '01:40 PM', '02:35 PM'),
(7, 'Tuesday', '02:35 PM', '03:30 PM'),
(7, 'Tuesday', '03:30 PM', '04:25 PM'),
(7, 'Wednesday', '09:00 AM', '09:55 AM'),
(7, 'Wednesday', '09:55 AM', '10:55 AM'),
(7, 'Wednesday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '09:55 AM', '10:55 AM'),
(7, 'Thursday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '12:05 PM', '01:00 PM'),
(7, 'Thursday', '01:40 PM', '02:35 PM'),
(7, 'Thursday', '02:35 PM', '03:30 PM'),
(7, 'Thursday', '03:30 PM', '04:25 PM'),
(7, 'Friday', '09:00 AM', '09:55 AM'),
(7, 'Friday', '11:10 AM', '12:05 PM'),
(7, 'Friday', '12:05 PM', '01:00 PM'),
(7, 'Friday', '01:40 PM', '02:35 PM'),
(7, 'Friday', '02:35 PM', '03:30 PM'),
(7, 'Friday', '03:30 PM', '04:25 PM'),
(7, 'Saturday', '09:00 AM', '09:55 AM'),
(7, 'Saturday', '09:55 AM', '10:55 AM'),
(7, 'Saturday', '11:10 AM', '12:05 PM'),
(7, 'Saturday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '09:55 AM', '10:55 AM'),
(8, 'Monday', '11:10 AM', '12:05 PM'),
(8, 'Monday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '01:40 PM', '02:35 PM'),
(8, 'Monday', '02:35 PM', '03:30 PM'),
(8, 'Monday', '03:30 PM', '04:25 PM'),
(8, 'Tuesday', '09:55 AM', '10:55 AM'),
(8, 'Tuesday', '11:10 AM', '12:05 PM'),
(8, 'Tuesday', '12:05 PM', '01:00 PM'),
(8, 'Tuesday', '01:40 PM', '02:35 PM'),
(8, 'Tuesday', '02:35 PM', '03:30 PM'),
(8, 'Tuesday', '03:30 PM', '04:25 PM'),
(8, 'Wednesday', '09:00 AM', '09:55 AM'),
(8, 'Wednesday', '11:10 AM', '12:05 PM'),
(8, 'Wednesday', '12:05 PM', '01:00 PM'),
(8, 'Wednesday', '01:40 PM', '02:35 PM'),
(8, 'Wednesday', '02:35 PM', '03:30 PM'),
(8, 'Wednesday', '03:30 PM', '04:25 PM'),
(8, 'Thursday', '09:00 AM', '09:55 AM'),
(8, 'Thursday', '09:55 AM', '10:55 AM'),
(8, 'Thursday', '12:05 PM', '01:00 PM'),
(8, 'Thursday', '01:40 PM', '02:35 PM'),
(8, 'Thursday', '02:35 PM', '03:30 PM'),
(8, 'Thursday', '03:30 PM', '04:25 PM'),
(8, 'Friday', '09:00 AM', '09:55 AM'),
(8, 'Friday', '11:10 AM', '12:05 PM'),
(8, 'Friday', '12:05 PM', '01:00 PM'),
(8, 'Friday', '01:40 PM', '02:35 PM'),
(8, 'Friday', '02:35 PM', '03:30 PM'),
(8, 'Friday', '03:30 PM', '04:25 PM'),
(8, 'Saturday', '09:00 AM', '09:55 AM'),
(8, 'Saturday', '11:10 AM', '12:05 PM'),
(8, 'Saturday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '09:00 AM', '09:55 AM'),
(9, 'Monday', '09:55 AM', '10:55 AM'),
(9, 'Monday', '11:10 AM', '12:05 PM'),
(9, 'Monday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '01:40 PM', '02:35 PM'),
(9, 'Monday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '09:00 AM', '09:55 AM'),
(9, 'Tuesday', '09:55 AM', '10:55 AM'),
(9, 'Tuesday', '12:05 PM', '01:00 PM'),
(9, 'Tuesday', '01:40 PM', '02:35 PM'),
(9, 'Tuesday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '03:30 PM', '04:25 PM'),
(9, 'Wednesday', '11:10 AM', '12:05 PM'),
(9, 'Wednesday', '12:05 PM', '01:00 PM'),
(9, 'Wednesday', '01:40 PM', '02:35 PM'),
(9, 'Wednesday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '09:55 AM', '10:55 AM'),
(9, 'Thursday', '11:10 AM', '12:05 PM'),
(9, 'Thursday', '01:40 PM', '02:35 PM'),
(9, 'Thursday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '03:30 PM', '04:25 PM'),
(9, 'Friday', '09:00 AM', '09:55 AM'),
(9, 'Friday', '09:55 AM', '10:55 AM'),
(9, 'Friday', '12:05 PM', '01:00 PM'),
(9, 'Friday', '01:40 PM', '02:35 PM'),
(9, 'Friday', '02:35 PM', '03:30 PM'),
(9, 'Friday', '03:30 PM', '04:25 PM'),
(9, 'Saturday', '09:00 AM', '09:55 AM'),
(9, 'Saturday', '09:55 AM', '10:55 AM'),
(9, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Monday', '09:00 AM', '09:55 AM'),
(1, 'Monday', '09:55 AM', '10:55 AM'),
(1, 'Monday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '09:55 AM', '10:55 AM'),
(1, 'Tuesday', '11:10 AM', '12:05 PM'),
(1, 'Tuesday', '12:05 PM', '01:00 PM'),
(1, 'Tuesday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '03:30 PM', '04:25 PM'),
(1, 'Thursday', '09:00 AM', '09:55 AM'),
(1, 'Thursday', '09:55 AM', '10:55 AM'),
(1, 'Thursday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '09:00 AM', '09:55 AM'),
(1, 'Friday', '09:55 AM', '10:55 AM'),
(1, 'Friday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '12:05 PM', '01:00 PM'),
(1, 'Friday', '02:35 PM', '03:30 PM'),
(1, 'Friday', '03:30 PM', '04:25 PM'),
(1, 'Saturday', '09:00 AM', '09:55 AM'),
(1, 'Saturday', '09:55 AM', '10:55 AM'),
(1, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Saturday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '09:55 AM', '10:55 AM'),
(1, 'Wednesday', '11:10 AM', '12:05 PM'),
(1, 'Wednesday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Monday', '11:10 AM', '12:05 PM'),
(2, 'Monday', '12:05 PM', '01:00 PM'),
(2, 'Monday', '02:35 PM', '03:30 PM'),
(2, 'Monday', '03:30 PM', '04:25 PM'),
(2, 'Tuesday', '09:55 AM', '10:55 AM'),
(2, 'Tuesday', '11:10 AM', '12:05 PM'),
(2, 'Tuesday', '12:05 PM', '01:00 PM'),
(2, 'Wednesday', '09:00 AM', '09:55 AM'),
(2, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Wednesday', '02:35 PM', '03:30 PM'),
(2, 'Thursday', '09:00 AM', '09:55 AM'),
(2, 'Thursday', '09:55 AM', '10:55 AM'),
(2, 'Thursday', '11:10 AM', '12:05 PM'),
(2, 'Thursday', '12:05 PM', '01:00 PM'),
(2, 'Thursday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '09:55 AM', '10:55 AM'),
(2, 'Friday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '02:35 PM', '03:30 PM'),
(2, 'Friday', '03:30 PM', '04:25 PM'),
(2, 'Saturday', '09:55 AM', '10:55 AM'),
(2, 'Saturday', '11:10 AM', '12:05 PM'),
(2, 'Saturday', '12:05 PM', '01:00 PM'),
(3, 'Monday', '09:00 AM', '09:55 AM'),
(3, 'Monday', '09:55 AM', '10:55 AM'),
(3, 'Monday', '11:10 AM', '12:05 PM'),
(3, 'Monday', '01:40 PM', '02:35 PM'),
(3, 'Monday', '02:35 PM', '03:30 PM'),
(3, 'Monday', '03:30 PM', '04:25 PM'),
(3, 'Tuesday', '09:00 AM', '09:55 AM'),
(3, 'Tuesday', '09:55 AM', '10:55 AM'),
(3, 'Tuesday', '11:10 AM', '12:05 PM'),
(3, 'Tuesday', '12:05 PM', '01:00 PM'),
(3, 'Tuesday', '02:35 PM', '03:30 PM'),
(3, 'Tuesday', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', '09:00 AM', '09:55 AM'),
(3, 'Wednesday', '09:55 AM', '10:55 AM'),
(3, 'Wednesday', '11:10 AM', '12:05 PM'),
(3, 'Wednesday', '12:05 PM', '01:00 PM'),
(3, 'Wednesday', '02:35 PM', '03:30 PM'),
(3, 'Thursday', '09:00 AM', '09:55 AM'),
(3, 'Thursday', '09:55 AM', '10:55 AM'),
(3, 'Thursday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '09:55 AM', '10:55 AM'),
(3, 'Friday', '11:10 AM', '12:05 PM'),
(3, 'Friday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '01:40 PM', '02:35 PM'),
(3, 'Friday', '03:30 PM', '04:25 PM'),
(3, 'Saturday', '09:00 AM', '09:55 AM'),
(3, 'Saturday', '11:10 AM', '12:05 PM'),
(3, 'Saturday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '09:00 AM', '09:55 AM'),
(6, 'Monday', '09:55 AM', '10:55 AM'),
(6, 'Monday', '11:10 AM', '12:05 PM'),
(6, 'Monday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '01:40 PM', '02:35 PM'),
(6, 'Monday', '02:35 PM', '03:30 PM'),
(6, 'Monday', '03:30 PM', '04:25 PM'),
(6, 'Tuesday', '09:55 AM', '10:55 AM'),
(6, 'Tuesday', '11:10 AM', '12:05 PM'),
(6, 'Tuesday', '12:05 PM', '01:00 PM'),
(6, 'Tuesday', '01:40 PM', '02:35 PM'),
(6, 'Tuesday', '02:35 PM', '03:30 PM'),
(6, 'Tuesday', '03:30 PM', '04:25 PM'),
(6, 'Wednesday', '09:55 AM', '10:55 AM'),
(6, 'Wednesday', '11:10 AM', '12:05 PM'),
(6, 'Wednesday', '12:05 PM', '01:00 PM'),
(6, 'Wednesday', '01:40 PM', '02:35 PM'),
(6, 'Wednesday', '02:35 PM', '03:30 PM'),
(6, 'Wednesday', '03:30 PM', '04:25 PM'),
(6, 'Thursday', '09:00 AM', '09:55 AM'),
(6, 'Thursday', '11:10 AM', '12:05 PM'),
(6, 'Thursday', '12:05 PM', '01:00 PM'),
(6, 'Thursday', '01:40 PM', '02:35 PM'),
(6, 'Thursday', '02:35 PM', '03:30 PM'),
(6, 'Thursday', '03:30 PM', '04:25 PM'),
(6, 'Friday', '09:00 AM', '09:55 AM'),
(6, 'Friday', '09:55 AM', '10:55 AM'),
(6, 'Friday', '12:05 PM', '01:00 PM'),
(6, 'Friday', '01:40 PM', '02:35 PM'),
(6, 'Friday', '02:35 PM', '03:30 PM'),
(6, 'Friday', '03:30 PM', '04:25 PM'),
(6, 'Saturday', '09:00 AM', '09:55 AM'),
(6, 'Saturday', '09:55 AM', '10:55 AM'),
(6, 'Saturday', '11:10 AM', '12:05 PM'),
(6, 'Saturday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '09:00 AM', '09:55 AM'),
(7, 'Monday', '09:55 AM', '10:55 AM'),
(7, 'Monday', '11:10 AM', '12:05 PM'),
(7, 'Monday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '01:40 PM', '02:35 PM'),
(7, 'Monday', '02:35 PM', '03:30 PM'),
(7, 'Monday', '03:30 PM', '04:25 PM'),
(7, 'Tuesday', '09:00 AM', '09:55 AM'),
(7, 'Tuesday', '09:55 AM', '10:55 AM'),
(7, 'Tuesday', '11:10 AM', '12:05 PM'),
(7, 'Tuesday', '12:05 PM', '01:00 PM'),
(7, 'Tuesday', '01:40 PM', '02:35 PM'),
(7, 'Tuesday', '02:35 PM', '03:30 PM'),
(7, 'Tuesday', '03:30 PM', '04:25 PM'),
(7, 'Wednesday', '09:00 AM', '09:55 AM'),
(7, 'Wednesday', '09:55 AM', '10:55 AM'),
(7, 'Wednesday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '09:55 AM', '10:55 AM'),
(7, 'Thursday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '12:05 PM', '01:00 PM'),
(7, 'Thursday', '01:40 PM', '02:35 PM'),
(7, 'Thursday', '02:35 PM', '03:30 PM'),
(7, 'Thursday', '03:30 PM', '04:25 PM'),
(7, 'Friday', '09:00 AM', '09:55 AM'),
(7, 'Friday', '11:10 AM', '12:05 PM'),
(7, 'Friday', '12:05 PM', '01:00 PM'),
(7, 'Friday', '01:40 PM', '02:35 PM'),
(7, 'Friday', '02:35 PM', '03:30 PM'),
(7, 'Friday', '03:30 PM', '04:25 PM'),
(7, 'Saturday', '09:00 AM', '09:55 AM'),
(7, 'Saturday', '09:55 AM', '10:55 AM'),
(7, 'Saturday', '11:10 AM', '12:05 PM'),
(7, 'Saturday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '09:55 AM', '10:55 AM'),
(8, 'Monday', '11:10 AM', '12:05 PM'),
(8, 'Monday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '01:40 PM', '02:35 PM'),
(8, 'Monday', '02:35 PM', '03:30 PM'),
(8, 'Monday', '03:30 PM', '04:25 PM'),
(8, 'Tuesday', '09:55 AM', '10:55 AM'),
(8, 'Tuesday', '11:10 AM', '12:05 PM'),
(8, 'Tuesday', '12:05 PM', '01:00 PM'),
(8, 'Tuesday', '01:40 PM', '02:35 PM'),
(8, 'Tuesday', '02:35 PM', '03:30 PM'),
(8, 'Tuesday', '03:30 PM', '04:25 PM'),
(8, 'Wednesday', '09:00 AM', '09:55 AM'),
(8, 'Wednesday', '11:10 AM', '12:05 PM'),
(8, 'Wednesday', '12:05 PM', '01:00 PM'),
(8, 'Wednesday', '01:40 PM', '02:35 PM'),
(8, 'Wednesday', '02:35 PM', '03:30 PM'),
(8, 'Wednesday', '03:30 PM', '04:25 PM'),
(8, 'Thursday', '09:00 AM', '09:55 AM'),
(8, 'Thursday', '09:55 AM', '10:55 AM'),
(8, 'Thursday', '12:05 PM', '01:00 PM'),
(8, 'Thursday', '01:40 PM', '02:35 PM'),
(8, 'Thursday', '02:35 PM', '03:30 PM'),
(8, 'Thursday', '03:30 PM', '04:25 PM'),
(8, 'Friday', '09:00 AM', '09:55 AM'),
(8, 'Friday', '11:10 AM', '12:05 PM'),
(8, 'Friday', '12:05 PM', '01:00 PM'),
(8, 'Friday', '01:40 PM', '02:35 PM'),
(8, 'Friday', '02:35 PM', '03:30 PM'),
(8, 'Friday', '03:30 PM', '04:25 PM'),
(8, 'Saturday', '09:00 AM', '09:55 AM'),
(8, 'Saturday', '11:10 AM', '12:05 PM'),
(8, 'Saturday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '09:00 AM', '09:55 AM'),
(9, 'Monday', '09:55 AM', '10:55 AM'),
(9, 'Monday', '11:10 AM', '12:05 PM'),
(9, 'Monday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '01:40 PM', '02:35 PM'),
(9, 'Monday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '09:00 AM', '09:55 AM'),
(9, 'Tuesday', '09:55 AM', '10:55 AM'),
(9, 'Tuesday', '12:05 PM', '01:00 PM'),
(9, 'Tuesday', '01:40 PM', '02:35 PM'),
(9, 'Tuesday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '03:30 PM', '04:25 PM'),
(9, 'Wednesday', '11:10 AM', '12:05 PM'),
(9, 'Wednesday', '12:05 PM', '01:00 PM'),
(9, 'Wednesday', '01:40 PM', '02:35 PM'),
(9, 'Wednesday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '09:55 AM', '10:55 AM'),
(9, 'Thursday', '11:10 AM', '12:05 PM'),
(9, 'Thursday', '01:40 PM', '02:35 PM'),
(9, 'Thursday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '03:30 PM', '04:25 PM'),
(9, 'Friday', '09:00 AM', '09:55 AM'),
(9, 'Friday', '09:55 AM', '10:55 AM'),
(9, 'Friday', '12:05 PM', '01:00 PM'),
(9, 'Friday', '01:40 PM', '02:35 PM'),
(9, 'Friday', '02:35 PM', '03:30 PM'),
(9, 'Friday', '03:30 PM', '04:25 PM'),
(9, 'Saturday', '09:00 AM', '09:55 AM'),
(9, 'Saturday', '09:55 AM', '10:55 AM'),
(9, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Monday', '09:00 AM', '09:55 AM'),
(1, 'Monday', '09:55 AM', '10:55 AM'),
(1, 'Monday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '09:55 AM', '10:55 AM'),
(1, 'Tuesday', '11:10 AM', '12:05 PM'),
(1, 'Tuesday', '12:05 PM', '01:00 PM'),
(1, 'Tuesday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '03:30 PM', '04:25 PM'),
(1, 'Thursday', '09:00 AM', '09:55 AM'),
(1, 'Thursday', '09:55 AM', '10:55 AM'),
(1, 'Thursday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '09:00 AM', '09:55 AM'),
(1, 'Friday', '09:55 AM', '10:55 AM'),
(1, 'Friday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '12:05 PM', '01:00 PM'),
(1, 'Friday', '02:35 PM', '03:30 PM'),
(1, 'Friday', '03:30 PM', '04:25 PM'),
(1, 'Saturday', '09:00 AM', '09:55 AM'),
(1, 'Saturday', '09:55 AM', '10:55 AM'),
(1, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Saturday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '09:55 AM', '10:55 AM'),
(1, 'Wednesday', '11:10 AM', '12:05 PM'),
(1, 'Wednesday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Monday', '11:10 AM', '12:05 PM'),
(2, 'Monday', '12:05 PM', '01:00 PM'),
(2, 'Monday', '02:35 PM', '03:30 PM'),
(2, 'Monday', '03:30 PM', '04:25 PM'),
(2, 'Tuesday', '09:55 AM', '10:55 AM'),
(2, 'Tuesday', '11:10 AM', '12:05 PM'),
(2, 'Tuesday', '12:05 PM', '01:00 PM'),
(2, 'Wednesday', '09:00 AM', '09:55 AM'),
(2, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Wednesday', '02:35 PM', '03:30 PM'),
(2, 'Thursday', '09:00 AM', '09:55 AM'),
(2, 'Thursday', '09:55 AM', '10:55 AM'),
(2, 'Thursday', '11:10 AM', '12:05 PM'),
(2, 'Thursday', '12:05 PM', '01:00 PM'),
(2, 'Thursday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '09:55 AM', '10:55 AM'),
(2, 'Friday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '02:35 PM', '03:30 PM'),
(2, 'Friday', '03:30 PM', '04:25 PM'),
(2, 'Saturday', '09:55 AM', '10:55 AM'),
(2, 'Saturday', '11:10 AM', '12:05 PM'),
(2, 'Saturday', '12:05 PM', '01:00 PM'),
(3, 'Monday', '09:00 AM', '09:55 AM'),
(3, 'Monday', '09:55 AM', '10:55 AM'),
(3, 'Monday', '11:10 AM', '12:05 PM'),
(3, 'Monday', '01:40 PM', '02:35 PM'),
(3, 'Monday', '02:35 PM', '03:30 PM'),
(3, 'Monday', '03:30 PM', '04:25 PM'),
(3, 'Tuesday', '09:00 AM', '09:55 AM'),
(3, 'Tuesday', '09:55 AM', '10:55 AM'),
(3, 'Tuesday', '11:10 AM', '12:05 PM'),
(3, 'Tuesday', '12:05 PM', '01:00 PM'),
(3, 'Tuesday', '02:35 PM', '03:30 PM'),
(3, 'Tuesday', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', '09:00 AM', '09:55 AM'),
(3, 'Wednesday', '09:55 AM', '10:55 AM'),
(3, 'Wednesday', '11:10 AM', '12:05 PM'),
(3, 'Wednesday', '12:05 PM', '01:00 PM'),
(3, 'Wednesday', '02:35 PM', '03:30 PM'),
(3, 'Thursday', '09:00 AM', '09:55 AM'),
(3, 'Thursday', '09:55 AM', '10:55 AM'),
(3, 'Thursday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '09:55 AM', '10:55 AM'),
(3, 'Friday', '11:10 AM', '12:05 PM'),
(3, 'Friday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '01:40 PM', '02:35 PM'),
(3, 'Friday', '03:30 PM', '04:25 PM'),
(3, 'Saturday', '09:00 AM', '09:55 AM'),
(3, 'Saturday', '11:10 AM', '12:05 PM'),
(3, 'Saturday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '09:00 AM', '09:55 AM'),
(6, 'Monday', '09:55 AM', '10:55 AM'),
(6, 'Monday', '11:10 AM', '12:05 PM'),
(6, 'Monday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '01:40 PM', '02:35 PM'),
(6, 'Monday', '02:35 PM', '03:30 PM'),
(6, 'Monday', '03:30 PM', '04:25 PM'),
(6, 'Tuesday', '09:55 AM', '10:55 AM'),
(6, 'Tuesday', '11:10 AM', '12:05 PM'),
(6, 'Tuesday', '12:05 PM', '01:00 PM'),
(6, 'Tuesday', '01:40 PM', '02:35 PM'),
(6, 'Tuesday', '02:35 PM', '03:30 PM'),
(6, 'Tuesday', '03:30 PM', '04:25 PM'),
(6, 'Wednesday', '09:55 AM', '10:55 AM'),
(6, 'Wednesday', '11:10 AM', '12:05 PM'),
(6, 'Wednesday', '12:05 PM', '01:00 PM'),
(6, 'Wednesday', '01:40 PM', '02:35 PM'),
(6, 'Wednesday', '02:35 PM', '03:30 PM'),
(6, 'Wednesday', '03:30 PM', '04:25 PM'),
(6, 'Thursday', '09:00 AM', '09:55 AM'),
(6, 'Thursday', '11:10 AM', '12:05 PM'),
(6, 'Thursday', '12:05 PM', '01:00 PM'),
(6, 'Thursday', '01:40 PM', '02:35 PM'),
(6, 'Thursday', '02:35 PM', '03:30 PM'),
(6, 'Thursday', '03:30 PM', '04:25 PM'),
(6, 'Friday', '09:00 AM', '09:55 AM'),
(6, 'Friday', '09:55 AM', '10:55 AM'),
(6, 'Friday', '12:05 PM', '01:00 PM'),
(6, 'Friday', '01:40 PM', '02:35 PM'),
(6, 'Friday', '02:35 PM', '03:30 PM'),
(6, 'Friday', '03:30 PM', '04:25 PM'),
(6, 'Saturday', '09:00 AM', '09:55 AM'),
(6, 'Saturday', '09:55 AM', '10:55 AM'),
(6, 'Saturday', '11:10 AM', '12:05 PM'),
(6, 'Saturday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '09:00 AM', '09:55 AM'),
(7, 'Monday', '09:55 AM', '10:55 AM'),
(7, 'Monday', '11:10 AM', '12:05 PM'),
(7, 'Monday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '01:40 PM', '02:35 PM'),
(7, 'Monday', '02:35 PM', '03:30 PM'),
(7, 'Monday', '03:30 PM', '04:25 PM'),
(7, 'Tuesday', '09:00 AM', '09:55 AM'),
(7, 'Tuesday', '09:55 AM', '10:55 AM'),
(7, 'Tuesday', '11:10 AM', '12:05 PM'),
(7, 'Tuesday', '12:05 PM', '01:00 PM'),
(7, 'Tuesday', '01:40 PM', '02:35 PM'),
(7, 'Tuesday', '02:35 PM', '03:30 PM'),
(7, 'Tuesday', '03:30 PM', '04:25 PM'),
(7, 'Wednesday', '09:00 AM', '09:55 AM'),
(7, 'Wednesday', '09:55 AM', '10:55 AM'),
(7, 'Wednesday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '09:55 AM', '10:55 AM'),
(7, 'Thursday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '12:05 PM', '01:00 PM'),
(7, 'Thursday', '01:40 PM', '02:35 PM'),
(7, 'Thursday', '02:35 PM', '03:30 PM'),
(7, 'Thursday', '03:30 PM', '04:25 PM'),
(7, 'Friday', '09:00 AM', '09:55 AM'),
(7, 'Friday', '11:10 AM', '12:05 PM'),
(7, 'Friday', '12:05 PM', '01:00 PM'),
(7, 'Friday', '01:40 PM', '02:35 PM'),
(7, 'Friday', '02:35 PM', '03:30 PM'),
(7, 'Friday', '03:30 PM', '04:25 PM'),
(7, 'Saturday', '09:00 AM', '09:55 AM'),
(7, 'Saturday', '09:55 AM', '10:55 AM'),
(7, 'Saturday', '11:10 AM', '12:05 PM'),
(7, 'Saturday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '09:55 AM', '10:55 AM'),
(8, 'Monday', '11:10 AM', '12:05 PM'),
(8, 'Monday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '01:40 PM', '02:35 PM'),
(8, 'Monday', '02:35 PM', '03:30 PM'),
(8, 'Monday', '03:30 PM', '04:25 PM'),
(8, 'Tuesday', '09:55 AM', '10:55 AM'),
(8, 'Tuesday', '11:10 AM', '12:05 PM'),
(8, 'Tuesday', '12:05 PM', '01:00 PM'),
(8, 'Tuesday', '01:40 PM', '02:35 PM'),
(8, 'Tuesday', '02:35 PM', '03:30 PM'),
(8, 'Tuesday', '03:30 PM', '04:25 PM'),
(8, 'Wednesday', '09:00 AM', '09:55 AM'),
(8, 'Wednesday', '11:10 AM', '12:05 PM'),
(8, 'Wednesday', '12:05 PM', '01:00 PM'),
(8, 'Wednesday', '01:40 PM', '02:35 PM'),
(8, 'Wednesday', '02:35 PM', '03:30 PM'),
(8, 'Wednesday', '03:30 PM', '04:25 PM'),
(8, 'Thursday', '09:00 AM', '09:55 AM'),
(8, 'Thursday', '09:55 AM', '10:55 AM'),
(8, 'Thursday', '12:05 PM', '01:00 PM'),
(8, 'Thursday', '01:40 PM', '02:35 PM'),
(8, 'Thursday', '02:35 PM', '03:30 PM'),
(8, 'Thursday', '03:30 PM', '04:25 PM'),
(8, 'Friday', '09:00 AM', '09:55 AM'),
(8, 'Friday', '11:10 AM', '12:05 PM'),
(8, 'Friday', '12:05 PM', '01:00 PM'),
(8, 'Friday', '01:40 PM', '02:35 PM'),
(8, 'Friday', '02:35 PM', '03:30 PM'),
(8, 'Friday', '03:30 PM', '04:25 PM'),
(8, 'Saturday', '09:00 AM', '09:55 AM'),
(8, 'Saturday', '11:10 AM', '12:05 PM'),
(8, 'Saturday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '09:00 AM', '09:55 AM'),
(9, 'Monday', '09:55 AM', '10:55 AM'),
(9, 'Monday', '11:10 AM', '12:05 PM'),
(9, 'Monday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '01:40 PM', '02:35 PM'),
(9, 'Monday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '09:00 AM', '09:55 AM'),
(9, 'Tuesday', '09:55 AM', '10:55 AM'),
(9, 'Tuesday', '12:05 PM', '01:00 PM'),
(9, 'Tuesday', '01:40 PM', '02:35 PM'),
(9, 'Tuesday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '03:30 PM', '04:25 PM'),
(9, 'Wednesday', '11:10 AM', '12:05 PM'),
(9, 'Wednesday', '12:05 PM', '01:00 PM'),
(9, 'Wednesday', '01:40 PM', '02:35 PM'),
(9, 'Wednesday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '09:55 AM', '10:55 AM'),
(9, 'Thursday', '11:10 AM', '12:05 PM'),
(9, 'Thursday', '01:40 PM', '02:35 PM'),
(9, 'Thursday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '03:30 PM', '04:25 PM'),
(9, 'Friday', '09:00 AM', '09:55 AM'),
(9, 'Friday', '09:55 AM', '10:55 AM'),
(9, 'Friday', '12:05 PM', '01:00 PM'),
(9, 'Friday', '01:40 PM', '02:35 PM'),
(9, 'Friday', '02:35 PM', '03:30 PM'),
(9, 'Friday', '03:30 PM', '04:25 PM'),
(9, 'Saturday', '09:00 AM', '09:55 AM'),
(9, 'Saturday', '09:55 AM', '10:55 AM'),
(9, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Monday', '09:00 AM', '09:55 AM'),
(1, 'Monday', '09:55 AM', '10:55 AM'),
(1, 'Monday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '09:55 AM', '10:55 AM'),
(1, 'Tuesday', '11:10 AM', '12:05 PM'),
(1, 'Tuesday', '12:05 PM', '01:00 PM'),
(1, 'Tuesday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '03:30 PM', '04:25 PM'),
(1, 'Thursday', '09:00 AM', '09:55 AM'),
(1, 'Thursday', '09:55 AM', '10:55 AM'),
(1, 'Thursday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '09:00 AM', '09:55 AM'),
(1, 'Friday', '09:55 AM', '10:55 AM'),
(1, 'Friday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '12:05 PM', '01:00 PM'),
(1, 'Friday', '02:35 PM', '03:30 PM'),
(1, 'Friday', '03:30 PM', '04:25 PM'),
(1, 'Saturday', '09:00 AM', '09:55 AM'),
(1, 'Saturday', '09:55 AM', '10:55 AM'),
(1, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Saturday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '09:55 AM', '10:55 AM'),
(1, 'Wednesday', '11:10 AM', '12:05 PM'),
(1, 'Wednesday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Monday', '11:10 AM', '12:05 PM'),
(2, 'Monday', '12:05 PM', '01:00 PM'),
(2, 'Monday', '02:35 PM', '03:30 PM'),
(2, 'Monday', '03:30 PM', '04:25 PM'),
(2, 'Tuesday', '09:55 AM', '10:55 AM'),
(2, 'Tuesday', '11:10 AM', '12:05 PM'),
(2, 'Tuesday', '12:05 PM', '01:00 PM'),
(2, 'Wednesday', '09:00 AM', '09:55 AM'),
(2, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Wednesday', '02:35 PM', '03:30 PM'),
(2, 'Thursday', '09:00 AM', '09:55 AM'),
(2, 'Thursday', '09:55 AM', '10:55 AM'),
(2, 'Thursday', '11:10 AM', '12:05 PM'),
(2, 'Thursday', '12:05 PM', '01:00 PM'),
(2, 'Thursday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '09:55 AM', '10:55 AM'),
(2, 'Friday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '02:35 PM', '03:30 PM'),
(2, 'Friday', '03:30 PM', '04:25 PM'),
(2, 'Saturday', '09:55 AM', '10:55 AM'),
(2, 'Saturday', '11:10 AM', '12:05 PM'),
(2, 'Saturday', '12:05 PM', '01:00 PM'),
(3, 'Monday', '09:00 AM', '09:55 AM'),
(3, 'Monday', '09:55 AM', '10:55 AM'),
(3, 'Monday', '11:10 AM', '12:05 PM'),
(3, 'Monday', '01:40 PM', '02:35 PM'),
(3, 'Monday', '02:35 PM', '03:30 PM'),
(3, 'Monday', '03:30 PM', '04:25 PM'),
(3, 'Tuesday', '09:00 AM', '09:55 AM'),
(3, 'Tuesday', '09:55 AM', '10:55 AM'),
(3, 'Tuesday', '11:10 AM', '12:05 PM'),
(3, 'Tuesday', '12:05 PM', '01:00 PM'),
(3, 'Tuesday', '02:35 PM', '03:30 PM'),
(3, 'Tuesday', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', '09:00 AM', '09:55 AM'),
(3, 'Wednesday', '09:55 AM', '10:55 AM'),
(3, 'Wednesday', '11:10 AM', '12:05 PM'),
(3, 'Wednesday', '12:05 PM', '01:00 PM'),
(3, 'Wednesday', '02:35 PM', '03:30 PM'),
(3, 'Thursday', '09:00 AM', '09:55 AM'),
(3, 'Thursday', '09:55 AM', '10:55 AM'),
(3, 'Thursday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '09:55 AM', '10:55 AM'),
(3, 'Friday', '11:10 AM', '12:05 PM'),
(3, 'Friday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '01:40 PM', '02:35 PM'),
(3, 'Friday', '03:30 PM', '04:25 PM'),
(3, 'Saturday', '09:00 AM', '09:55 AM'),
(3, 'Saturday', '11:10 AM', '12:05 PM'),
(3, 'Saturday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '09:00 AM', '09:55 AM'),
(6, 'Monday', '09:55 AM', '10:55 AM'),
(6, 'Monday', '11:10 AM', '12:05 PM'),
(6, 'Monday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '01:40 PM', '02:35 PM'),
(6, 'Monday', '02:35 PM', '03:30 PM'),
(6, 'Monday', '03:30 PM', '04:25 PM'),
(6, 'Tuesday', '09:55 AM', '10:55 AM'),
(6, 'Tuesday', '11:10 AM', '12:05 PM'),
(6, 'Tuesday', '12:05 PM', '01:00 PM'),
(6, 'Tuesday', '01:40 PM', '02:35 PM'),
(6, 'Tuesday', '02:35 PM', '03:30 PM'),
(6, 'Tuesday', '03:30 PM', '04:25 PM'),
(6, 'Wednesday', '09:55 AM', '10:55 AM'),
(6, 'Wednesday', '11:10 AM', '12:05 PM'),
(6, 'Wednesday', '12:05 PM', '01:00 PM'),
(6, 'Wednesday', '01:40 PM', '02:35 PM'),
(6, 'Wednesday', '02:35 PM', '03:30 PM'),
(6, 'Wednesday', '03:30 PM', '04:25 PM'),
(6, 'Thursday', '09:00 AM', '09:55 AM'),
(6, 'Thursday', '11:10 AM', '12:05 PM'),
(6, 'Thursday', '12:05 PM', '01:00 PM'),
(6, 'Thursday', '01:40 PM', '02:35 PM'),
(6, 'Thursday', '02:35 PM', '03:30 PM'),
(6, 'Thursday', '03:30 PM', '04:25 PM'),
(6, 'Friday', '09:00 AM', '09:55 AM'),
(6, 'Friday', '09:55 AM', '10:55 AM'),
(6, 'Friday', '12:05 PM', '01:00 PM'),
(6, 'Friday', '01:40 PM', '02:35 PM'),
(6, 'Friday', '02:35 PM', '03:30 PM'),
(6, 'Friday', '03:30 PM', '04:25 PM'),
(6, 'Saturday', '09:00 AM', '09:55 AM'),
(6, 'Saturday', '09:55 AM', '10:55 AM'),
(6, 'Saturday', '11:10 AM', '12:05 PM'),
(6, 'Saturday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '09:00 AM', '09:55 AM'),
(7, 'Monday', '09:55 AM', '10:55 AM'),
(7, 'Monday', '11:10 AM', '12:05 PM'),
(7, 'Monday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '01:40 PM', '02:35 PM'),
(7, 'Monday', '02:35 PM', '03:30 PM'),
(7, 'Monday', '03:30 PM', '04:25 PM'),
(7, 'Tuesday', '09:00 AM', '09:55 AM'),
(7, 'Tuesday', '09:55 AM', '10:55 AM'),
(7, 'Tuesday', '11:10 AM', '12:05 PM'),
(7, 'Tuesday', '12:05 PM', '01:00 PM'),
(7, 'Tuesday', '01:40 PM', '02:35 PM'),
(7, 'Tuesday', '02:35 PM', '03:30 PM'),
(7, 'Tuesday', '03:30 PM', '04:25 PM'),
(7, 'Wednesday', '09:00 AM', '09:55 AM'),
(7, 'Wednesday', '09:55 AM', '10:55 AM'),
(7, 'Wednesday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '09:55 AM', '10:55 AM'),
(7, 'Thursday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '12:05 PM', '01:00 PM'),
(7, 'Thursday', '01:40 PM', '02:35 PM'),
(7, 'Thursday', '02:35 PM', '03:30 PM'),
(7, 'Thursday', '03:30 PM', '04:25 PM'),
(7, 'Friday', '09:00 AM', '09:55 AM'),
(7, 'Friday', '11:10 AM', '12:05 PM'),
(7, 'Friday', '12:05 PM', '01:00 PM'),
(7, 'Friday', '01:40 PM', '02:35 PM'),
(7, 'Friday', '02:35 PM', '03:30 PM'),
(7, 'Friday', '03:30 PM', '04:25 PM'),
(7, 'Saturday', '09:00 AM', '09:55 AM'),
(7, 'Saturday', '09:55 AM', '10:55 AM'),
(7, 'Saturday', '11:10 AM', '12:05 PM'),
(7, 'Saturday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '09:55 AM', '10:55 AM'),
(8, 'Monday', '11:10 AM', '12:05 PM'),
(8, 'Monday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '01:40 PM', '02:35 PM'),
(8, 'Monday', '02:35 PM', '03:30 PM'),
(8, 'Monday', '03:30 PM', '04:25 PM'),
(8, 'Tuesday', '09:55 AM', '10:55 AM'),
(8, 'Tuesday', '11:10 AM', '12:05 PM'),
(8, 'Tuesday', '12:05 PM', '01:00 PM'),
(8, 'Tuesday', '01:40 PM', '02:35 PM'),
(8, 'Tuesday', '02:35 PM', '03:30 PM'),
(8, 'Tuesday', '03:30 PM', '04:25 PM'),
(8, 'Wednesday', '09:00 AM', '09:55 AM'),
(8, 'Wednesday', '11:10 AM', '12:05 PM'),
(8, 'Wednesday', '12:05 PM', '01:00 PM'),
(8, 'Wednesday', '01:40 PM', '02:35 PM'),
(8, 'Wednesday', '02:35 PM', '03:30 PM'),
(8, 'Wednesday', '03:30 PM', '04:25 PM'),
(8, 'Thursday', '09:00 AM', '09:55 AM'),
(8, 'Thursday', '09:55 AM', '10:55 AM'),
(8, 'Thursday', '12:05 PM', '01:00 PM'),
(8, 'Thursday', '01:40 PM', '02:35 PM'),
(8, 'Thursday', '02:35 PM', '03:30 PM'),
(8, 'Thursday', '03:30 PM', '04:25 PM'),
(8, 'Friday', '09:00 AM', '09:55 AM'),
(8, 'Friday', '11:10 AM', '12:05 PM'),
(8, 'Friday', '12:05 PM', '01:00 PM'),
(8, 'Friday', '01:40 PM', '02:35 PM'),
(8, 'Friday', '02:35 PM', '03:30 PM'),
(8, 'Friday', '03:30 PM', '04:25 PM'),
(8, 'Saturday', '09:00 AM', '09:55 AM'),
(8, 'Saturday', '11:10 AM', '12:05 PM'),
(8, 'Saturday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '09:00 AM', '09:55 AM'),
(9, 'Monday', '09:55 AM', '10:55 AM'),
(9, 'Monday', '11:10 AM', '12:05 PM'),
(9, 'Monday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '01:40 PM', '02:35 PM'),
(9, 'Monday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '09:00 AM', '09:55 AM'),
(9, 'Tuesday', '09:55 AM', '10:55 AM'),
(9, 'Tuesday', '12:05 PM', '01:00 PM'),
(9, 'Tuesday', '01:40 PM', '02:35 PM'),
(9, 'Tuesday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '03:30 PM', '04:25 PM'),
(9, 'Wednesday', '11:10 AM', '12:05 PM'),
(9, 'Wednesday', '12:05 PM', '01:00 PM'),
(9, 'Wednesday', '01:40 PM', '02:35 PM'),
(9, 'Wednesday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '09:55 AM', '10:55 AM'),
(9, 'Thursday', '11:10 AM', '12:05 PM'),
(9, 'Thursday', '01:40 PM', '02:35 PM'),
(9, 'Thursday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '03:30 PM', '04:25 PM'),
(9, 'Friday', '09:00 AM', '09:55 AM'),
(9, 'Friday', '09:55 AM', '10:55 AM'),
(9, 'Friday', '12:05 PM', '01:00 PM'),
(9, 'Friday', '01:40 PM', '02:35 PM'),
(9, 'Friday', '02:35 PM', '03:30 PM'),
(9, 'Friday', '03:30 PM', '04:25 PM'),
(9, 'Saturday', '09:00 AM', '09:55 AM'),
(9, 'Saturday', '09:55 AM', '10:55 AM'),
(9, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Monday', '09:00 AM', '09:55 AM'),
(1, 'Monday', '09:55 AM', '10:55 AM'),
(1, 'Monday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '09:55 AM', '10:55 AM'),
(1, 'Tuesday', '11:10 AM', '12:05 PM'),
(1, 'Tuesday', '12:05 PM', '01:00 PM'),
(1, 'Tuesday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '03:30 PM', '04:25 PM'),
(1, 'Thursday', '09:00 AM', '09:55 AM'),
(1, 'Thursday', '09:55 AM', '10:55 AM'),
(1, 'Thursday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '09:00 AM', '09:55 AM'),
(1, 'Friday', '09:55 AM', '10:55 AM'),
(1, 'Friday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '12:05 PM', '01:00 PM'),
(1, 'Friday', '02:35 PM', '03:30 PM'),
(1, 'Friday', '03:30 PM', '04:25 PM'),
(1, 'Saturday', '09:00 AM', '09:55 AM'),
(1, 'Saturday', '09:55 AM', '10:55 AM'),
(1, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Saturday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '09:55 AM', '10:55 AM'),
(1, 'Wednesday', '11:10 AM', '12:05 PM'),
(1, 'Wednesday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Monday', '11:10 AM', '12:05 PM'),
(2, 'Monday', '12:05 PM', '01:00 PM'),
(2, 'Monday', '02:35 PM', '03:30 PM'),
(2, 'Monday', '03:30 PM', '04:25 PM'),
(2, 'Tuesday', '09:55 AM', '10:55 AM'),
(2, 'Tuesday', '11:10 AM', '12:05 PM'),
(2, 'Tuesday', '12:05 PM', '01:00 PM'),
(2, 'Wednesday', '09:00 AM', '09:55 AM'),
(2, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Wednesday', '02:35 PM', '03:30 PM'),
(2, 'Thursday', '09:00 AM', '09:55 AM'),
(2, 'Thursday', '09:55 AM', '10:55 AM'),
(2, 'Thursday', '11:10 AM', '12:05 PM'),
(2, 'Thursday', '12:05 PM', '01:00 PM'),
(2, 'Thursday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '09:55 AM', '10:55 AM'),
(2, 'Friday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '02:35 PM', '03:30 PM'),
(2, 'Friday', '03:30 PM', '04:25 PM'),
(2, 'Saturday', '09:55 AM', '10:55 AM'),
(2, 'Saturday', '11:10 AM', '12:05 PM'),
(2, 'Saturday', '12:05 PM', '01:00 PM'),
(3, 'Monday', '09:00 AM', '09:55 AM'),
(3, 'Monday', '09:55 AM', '10:55 AM'),
(3, 'Monday', '11:10 AM', '12:05 PM'),
(3, 'Monday', '01:40 PM', '02:35 PM'),
(3, 'Monday', '02:35 PM', '03:30 PM'),
(3, 'Monday', '03:30 PM', '04:25 PM'),
(3, 'Tuesday', '09:00 AM', '09:55 AM'),
(3, 'Tuesday', '09:55 AM', '10:55 AM'),
(3, 'Tuesday', '11:10 AM', '12:05 PM'),
(3, 'Tuesday', '12:05 PM', '01:00 PM'),
(3, 'Tuesday', '02:35 PM', '03:30 PM'),
(3, 'Tuesday', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', '09:00 AM', '09:55 AM'),
(3, 'Wednesday', '09:55 AM', '10:55 AM'),
(3, 'Wednesday', '11:10 AM', '12:05 PM'),
(3, 'Wednesday', '12:05 PM', '01:00 PM'),
(3, 'Wednesday', '02:35 PM', '03:30 PM'),
(3, 'Thursday', '09:00 AM', '09:55 AM'),
(3, 'Thursday', '09:55 AM', '10:55 AM'),
(3, 'Thursday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '09:55 AM', '10:55 AM'),
(3, 'Friday', '11:10 AM', '12:05 PM'),
(3, 'Friday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '01:40 PM', '02:35 PM'),
(3, 'Friday', '03:30 PM', '04:25 PM'),
(3, 'Saturday', '09:00 AM', '09:55 AM'),
(3, 'Saturday', '11:10 AM', '12:05 PM'),
(3, 'Saturday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '09:00 AM', '09:55 AM'),
(6, 'Monday', '09:55 AM', '10:55 AM'),
(6, 'Monday', '11:10 AM', '12:05 PM'),
(6, 'Monday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '01:40 PM', '02:35 PM'),
(6, 'Monday', '02:35 PM', '03:30 PM'),
(6, 'Monday', '03:30 PM', '04:25 PM'),
(6, 'Tuesday', '09:55 AM', '10:55 AM'),
(6, 'Tuesday', '11:10 AM', '12:05 PM'),
(6, 'Tuesday', '12:05 PM', '01:00 PM'),
(6, 'Tuesday', '01:40 PM', '02:35 PM'),
(6, 'Tuesday', '02:35 PM', '03:30 PM'),
(6, 'Tuesday', '03:30 PM', '04:25 PM'),
(6, 'Wednesday', '09:55 AM', '10:55 AM'),
(6, 'Wednesday', '11:10 AM', '12:05 PM'),
(6, 'Wednesday', '12:05 PM', '01:00 PM'),
(6, 'Wednesday', '01:40 PM', '02:35 PM'),
(6, 'Wednesday', '02:35 PM', '03:30 PM'),
(6, 'Wednesday', '03:30 PM', '04:25 PM'),
(6, 'Thursday', '09:00 AM', '09:55 AM'),
(6, 'Thursday', '11:10 AM', '12:05 PM'),
(6, 'Thursday', '12:05 PM', '01:00 PM'),
(6, 'Thursday', '01:40 PM', '02:35 PM'),
(6, 'Thursday', '02:35 PM', '03:30 PM'),
(6, 'Thursday', '03:30 PM', '04:25 PM'),
(6, 'Friday', '09:00 AM', '09:55 AM'),
(6, 'Friday', '09:55 AM', '10:55 AM'),
(6, 'Friday', '12:05 PM', '01:00 PM'),
(6, 'Friday', '01:40 PM', '02:35 PM'),
(6, 'Friday', '02:35 PM', '03:30 PM'),
(6, 'Friday', '03:30 PM', '04:25 PM'),
(6, 'Saturday', '09:00 AM', '09:55 AM'),
(6, 'Saturday', '09:55 AM', '10:55 AM'),
(6, 'Saturday', '11:10 AM', '12:05 PM'),
(6, 'Saturday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '09:00 AM', '09:55 AM'),
(7, 'Monday', '09:55 AM', '10:55 AM'),
(7, 'Monday', '11:10 AM', '12:05 PM'),
(7, 'Monday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '01:40 PM', '02:35 PM'),
(7, 'Monday', '02:35 PM', '03:30 PM'),
(7, 'Monday', '03:30 PM', '04:25 PM'),
(7, 'Tuesday', '09:00 AM', '09:55 AM'),
(7, 'Tuesday', '09:55 AM', '10:55 AM'),
(7, 'Tuesday', '11:10 AM', '12:05 PM'),
(7, 'Tuesday', '12:05 PM', '01:00 PM'),
(7, 'Tuesday', '01:40 PM', '02:35 PM'),
(7, 'Tuesday', '02:35 PM', '03:30 PM'),
(7, 'Tuesday', '03:30 PM', '04:25 PM'),
(7, 'Wednesday', '09:00 AM', '09:55 AM'),
(7, 'Wednesday', '09:55 AM', '10:55 AM'),
(7, 'Wednesday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '09:55 AM', '10:55 AM'),
(7, 'Thursday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '12:05 PM', '01:00 PM'),
(7, 'Thursday', '01:40 PM', '02:35 PM'),
(7, 'Thursday', '02:35 PM', '03:30 PM'),
(7, 'Thursday', '03:30 PM', '04:25 PM'),
(7, 'Friday', '09:00 AM', '09:55 AM'),
(7, 'Friday', '11:10 AM', '12:05 PM'),
(7, 'Friday', '12:05 PM', '01:00 PM'),
(7, 'Friday', '01:40 PM', '02:35 PM'),
(7, 'Friday', '02:35 PM', '03:30 PM'),
(7, 'Friday', '03:30 PM', '04:25 PM'),
(7, 'Saturday', '09:00 AM', '09:55 AM'),
(7, 'Saturday', '09:55 AM', '10:55 AM'),
(7, 'Saturday', '11:10 AM', '12:05 PM'),
(7, 'Saturday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '09:55 AM', '10:55 AM'),
(8, 'Monday', '11:10 AM', '12:05 PM'),
(8, 'Monday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '01:40 PM', '02:35 PM'),
(8, 'Monday', '02:35 PM', '03:30 PM'),
(8, 'Monday', '03:30 PM', '04:25 PM'),
(8, 'Tuesday', '09:55 AM', '10:55 AM'),
(8, 'Tuesday', '11:10 AM', '12:05 PM'),
(8, 'Tuesday', '12:05 PM', '01:00 PM'),
(8, 'Tuesday', '01:40 PM', '02:35 PM'),
(8, 'Tuesday', '02:35 PM', '03:30 PM'),
(8, 'Tuesday', '03:30 PM', '04:25 PM'),
(8, 'Wednesday', '09:00 AM', '09:55 AM'),
(8, 'Wednesday', '11:10 AM', '12:05 PM'),
(8, 'Wednesday', '12:05 PM', '01:00 PM'),
(8, 'Wednesday', '01:40 PM', '02:35 PM'),
(8, 'Wednesday', '02:35 PM', '03:30 PM'),
(8, 'Wednesday', '03:30 PM', '04:25 PM'),
(8, 'Thursday', '09:00 AM', '09:55 AM'),
(8, 'Thursday', '09:55 AM', '10:55 AM'),
(8, 'Thursday', '12:05 PM', '01:00 PM'),
(8, 'Thursday', '01:40 PM', '02:35 PM'),
(8, 'Thursday', '02:35 PM', '03:30 PM'),
(8, 'Thursday', '03:30 PM', '04:25 PM'),
(8, 'Friday', '09:00 AM', '09:55 AM'),
(8, 'Friday', '11:10 AM', '12:05 PM'),
(8, 'Friday', '12:05 PM', '01:00 PM'),
(8, 'Friday', '01:40 PM', '02:35 PM'),
(8, 'Friday', '02:35 PM', '03:30 PM'),
(8, 'Friday', '03:30 PM', '04:25 PM'),
(8, 'Saturday', '09:00 AM', '09:55 AM'),
(8, 'Saturday', '11:10 AM', '12:05 PM'),
(8, 'Saturday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '09:00 AM', '09:55 AM'),
(9, 'Monday', '09:55 AM', '10:55 AM'),
(9, 'Monday', '11:10 AM', '12:05 PM'),
(9, 'Monday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '01:40 PM', '02:35 PM'),
(9, 'Monday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '09:00 AM', '09:55 AM'),
(9, 'Tuesday', '09:55 AM', '10:55 AM'),
(9, 'Tuesday', '12:05 PM', '01:00 PM'),
(9, 'Tuesday', '01:40 PM', '02:35 PM'),
(9, 'Tuesday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '03:30 PM', '04:25 PM'),
(9, 'Wednesday', '11:10 AM', '12:05 PM'),
(9, 'Wednesday', '12:05 PM', '01:00 PM'),
(9, 'Wednesday', '01:40 PM', '02:35 PM'),
(9, 'Wednesday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '09:55 AM', '10:55 AM'),
(9, 'Thursday', '11:10 AM', '12:05 PM'),
(9, 'Thursday', '01:40 PM', '02:35 PM'),
(9, 'Thursday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '03:30 PM', '04:25 PM'),
(9, 'Friday', '09:00 AM', '09:55 AM'),
(9, 'Friday', '09:55 AM', '10:55 AM'),
(9, 'Friday', '12:05 PM', '01:00 PM'),
(9, 'Friday', '01:40 PM', '02:35 PM'),
(9, 'Friday', '02:35 PM', '03:30 PM'),
(9, 'Friday', '03:30 PM', '04:25 PM'),
(9, 'Saturday', '09:00 AM', '09:55 AM'),
(9, 'Saturday', '09:55 AM', '10:55 AM'),
(9, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Monday', '09:00 AM', '09:55 AM'),
(1, 'Monday', '09:55 AM', '10:55 AM'),
(1, 'Monday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '09:55 AM', '10:55 AM'),
(1, 'Tuesday', '11:10 AM', '12:05 PM'),
(1, 'Tuesday', '12:05 PM', '01:00 PM'),
(1, 'Tuesday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '03:30 PM', '04:25 PM'),
(1, 'Thursday', '09:00 AM', '09:55 AM'),
(1, 'Thursday', '09:55 AM', '10:55 AM'),
(1, 'Thursday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '09:00 AM', '09:55 AM'),
(1, 'Friday', '09:55 AM', '10:55 AM'),
(1, 'Friday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '12:05 PM', '01:00 PM'),
(1, 'Friday', '02:35 PM', '03:30 PM'),
(1, 'Friday', '03:30 PM', '04:25 PM'),
(1, 'Saturday', '09:00 AM', '09:55 AM'),
(1, 'Saturday', '09:55 AM', '10:55 AM'),
(1, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Saturday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '09:55 AM', '10:55 AM'),
(1, 'Wednesday', '11:10 AM', '12:05 PM'),
(1, 'Wednesday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Monday', '11:10 AM', '12:05 PM'),
(2, 'Monday', '12:05 PM', '01:00 PM'),
(2, 'Monday', '02:35 PM', '03:30 PM'),
(2, 'Monday', '03:30 PM', '04:25 PM'),
(2, 'Tuesday', '09:55 AM', '10:55 AM'),
(2, 'Tuesday', '11:10 AM', '12:05 PM'),
(2, 'Tuesday', '12:05 PM', '01:00 PM'),
(2, 'Wednesday', '09:00 AM', '09:55 AM'),
(2, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Wednesday', '02:35 PM', '03:30 PM'),
(2, 'Thursday', '09:00 AM', '09:55 AM'),
(2, 'Thursday', '09:55 AM', '10:55 AM'),
(2, 'Thursday', '11:10 AM', '12:05 PM'),
(2, 'Thursday', '12:05 PM', '01:00 PM'),
(2, 'Thursday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '09:55 AM', '10:55 AM'),
(2, 'Friday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '02:35 PM', '03:30 PM'),
(2, 'Friday', '03:30 PM', '04:25 PM'),
(2, 'Saturday', '09:55 AM', '10:55 AM'),
(2, 'Saturday', '11:10 AM', '12:05 PM'),
(2, 'Saturday', '12:05 PM', '01:00 PM'),
(3, 'Monday', '09:00 AM', '09:55 AM'),
(3, 'Monday', '09:55 AM', '10:55 AM'),
(3, 'Monday', '11:10 AM', '12:05 PM'),
(3, 'Monday', '01:40 PM', '02:35 PM'),
(3, 'Monday', '02:35 PM', '03:30 PM'),
(3, 'Monday', '03:30 PM', '04:25 PM'),
(3, 'Tuesday', '09:00 AM', '09:55 AM'),
(3, 'Tuesday', '09:55 AM', '10:55 AM'),
(3, 'Tuesday', '11:10 AM', '12:05 PM'),
(3, 'Tuesday', '12:05 PM', '01:00 PM'),
(3, 'Tuesday', '02:35 PM', '03:30 PM'),
(3, 'Tuesday', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', '09:00 AM', '09:55 AM'),
(3, 'Wednesday', '09:55 AM', '10:55 AM'),
(3, 'Wednesday', '11:10 AM', '12:05 PM'),
(3, 'Wednesday', '12:05 PM', '01:00 PM'),
(3, 'Wednesday', '02:35 PM', '03:30 PM'),
(3, 'Thursday', '09:00 AM', '09:55 AM'),
(3, 'Thursday', '09:55 AM', '10:55 AM'),
(3, 'Thursday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '09:55 AM', '10:55 AM'),
(3, 'Friday', '11:10 AM', '12:05 PM'),
(3, 'Friday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '01:40 PM', '02:35 PM'),
(3, 'Friday', '03:30 PM', '04:25 PM'),
(3, 'Saturday', '09:00 AM', '09:55 AM'),
(3, 'Saturday', '11:10 AM', '12:05 PM'),
(3, 'Saturday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '09:00 AM', '09:55 AM'),
(6, 'Monday', '09:55 AM', '10:55 AM'),
(6, 'Monday', '11:10 AM', '12:05 PM'),
(6, 'Monday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '01:40 PM', '02:35 PM'),
(6, 'Monday', '02:35 PM', '03:30 PM'),
(6, 'Monday', '03:30 PM', '04:25 PM'),
(6, 'Tuesday', '09:55 AM', '10:55 AM'),
(6, 'Tuesday', '11:10 AM', '12:05 PM'),
(6, 'Tuesday', '12:05 PM', '01:00 PM'),
(6, 'Tuesday', '01:40 PM', '02:35 PM'),
(6, 'Tuesday', '02:35 PM', '03:30 PM'),
(6, 'Tuesday', '03:30 PM', '04:25 PM'),
(6, 'Wednesday', '09:55 AM', '10:55 AM'),
(6, 'Wednesday', '11:10 AM', '12:05 PM'),
(6, 'Wednesday', '12:05 PM', '01:00 PM'),
(6, 'Wednesday', '01:40 PM', '02:35 PM'),
(6, 'Wednesday', '02:35 PM', '03:30 PM'),
(6, 'Wednesday', '03:30 PM', '04:25 PM'),
(6, 'Thursday', '09:00 AM', '09:55 AM'),
(6, 'Thursday', '11:10 AM', '12:05 PM'),
(6, 'Thursday', '12:05 PM', '01:00 PM'),
(6, 'Thursday', '01:40 PM', '02:35 PM'),
(6, 'Thursday', '02:35 PM', '03:30 PM'),
(6, 'Thursday', '03:30 PM', '04:25 PM'),
(6, 'Friday', '09:00 AM', '09:55 AM'),
(6, 'Friday', '09:55 AM', '10:55 AM'),
(6, 'Friday', '12:05 PM', '01:00 PM'),
(6, 'Friday', '01:40 PM', '02:35 PM'),
(6, 'Friday', '02:35 PM', '03:30 PM'),
(6, 'Friday', '03:30 PM', '04:25 PM'),
(6, 'Saturday', '09:00 AM', '09:55 AM'),
(6, 'Saturday', '09:55 AM', '10:55 AM'),
(6, 'Saturday', '11:10 AM', '12:05 PM'),
(6, 'Saturday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '09:00 AM', '09:55 AM'),
(7, 'Monday', '09:55 AM', '10:55 AM'),
(7, 'Monday', '11:10 AM', '12:05 PM'),
(7, 'Monday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '01:40 PM', '02:35 PM'),
(7, 'Monday', '02:35 PM', '03:30 PM'),
(7, 'Monday', '03:30 PM', '04:25 PM'),
(7, 'Tuesday', '09:00 AM', '09:55 AM'),
(7, 'Tuesday', '09:55 AM', '10:55 AM'),
(7, 'Tuesday', '11:10 AM', '12:05 PM'),
(7, 'Tuesday', '12:05 PM', '01:00 PM'),
(7, 'Tuesday', '01:40 PM', '02:35 PM'),
(7, 'Tuesday', '02:35 PM', '03:30 PM'),
(7, 'Tuesday', '03:30 PM', '04:25 PM'),
(7, 'Wednesday', '09:00 AM', '09:55 AM'),
(7, 'Wednesday', '09:55 AM', '10:55 AM'),
(7, 'Wednesday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '09:55 AM', '10:55 AM'),
(7, 'Thursday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '12:05 PM', '01:00 PM'),
(7, 'Thursday', '01:40 PM', '02:35 PM'),
(7, 'Thursday', '02:35 PM', '03:30 PM'),
(7, 'Thursday', '03:30 PM', '04:25 PM'),
(7, 'Friday', '09:00 AM', '09:55 AM'),
(7, 'Friday', '11:10 AM', '12:05 PM'),
(7, 'Friday', '12:05 PM', '01:00 PM'),
(7, 'Friday', '01:40 PM', '02:35 PM'),
(7, 'Friday', '02:35 PM', '03:30 PM'),
(7, 'Friday', '03:30 PM', '04:25 PM'),
(7, 'Saturday', '09:00 AM', '09:55 AM'),
(7, 'Saturday', '09:55 AM', '10:55 AM'),
(7, 'Saturday', '11:10 AM', '12:05 PM'),
(7, 'Saturday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '09:55 AM', '10:55 AM'),
(8, 'Monday', '11:10 AM', '12:05 PM'),
(8, 'Monday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '01:40 PM', '02:35 PM'),
(8, 'Monday', '02:35 PM', '03:30 PM'),
(8, 'Monday', '03:30 PM', '04:25 PM'),
(8, 'Tuesday', '09:55 AM', '10:55 AM'),
(8, 'Tuesday', '11:10 AM', '12:05 PM'),
(8, 'Tuesday', '12:05 PM', '01:00 PM'),
(8, 'Tuesday', '01:40 PM', '02:35 PM'),
(8, 'Tuesday', '02:35 PM', '03:30 PM'),
(8, 'Tuesday', '03:30 PM', '04:25 PM'),
(8, 'Wednesday', '09:00 AM', '09:55 AM'),
(8, 'Wednesday', '11:10 AM', '12:05 PM'),
(8, 'Wednesday', '12:05 PM', '01:00 PM'),
(8, 'Wednesday', '01:40 PM', '02:35 PM'),
(8, 'Wednesday', '02:35 PM', '03:30 PM'),
(8, 'Wednesday', '03:30 PM', '04:25 PM'),
(8, 'Thursday', '09:00 AM', '09:55 AM'),
(8, 'Thursday', '09:55 AM', '10:55 AM'),
(8, 'Thursday', '12:05 PM', '01:00 PM'),
(8, 'Thursday', '01:40 PM', '02:35 PM'),
(8, 'Thursday', '02:35 PM', '03:30 PM'),
(8, 'Thursday', '03:30 PM', '04:25 PM'),
(8, 'Friday', '09:00 AM', '09:55 AM'),
(8, 'Friday', '11:10 AM', '12:05 PM'),
(8, 'Friday', '12:05 PM', '01:00 PM'),
(8, 'Friday', '01:40 PM', '02:35 PM'),
(8, 'Friday', '02:35 PM', '03:30 PM'),
(8, 'Friday', '03:30 PM', '04:25 PM'),
(8, 'Saturday', '09:00 AM', '09:55 AM'),
(8, 'Saturday', '11:10 AM', '12:05 PM'),
(8, 'Saturday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '09:00 AM', '09:55 AM'),
(9, 'Monday', '09:55 AM', '10:55 AM'),
(9, 'Monday', '11:10 AM', '12:05 PM'),
(9, 'Monday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '01:40 PM', '02:35 PM'),
(9, 'Monday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '09:00 AM', '09:55 AM'),
(9, 'Tuesday', '09:55 AM', '10:55 AM'),
(9, 'Tuesday', '12:05 PM', '01:00 PM'),
(9, 'Tuesday', '01:40 PM', '02:35 PM'),
(9, 'Tuesday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '03:30 PM', '04:25 PM'),
(9, 'Wednesday', '11:10 AM', '12:05 PM'),
(9, 'Wednesday', '12:05 PM', '01:00 PM'),
(9, 'Wednesday', '01:40 PM', '02:35 PM'),
(9, 'Wednesday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '09:55 AM', '10:55 AM'),
(9, 'Thursday', '11:10 AM', '12:05 PM'),
(9, 'Thursday', '01:40 PM', '02:35 PM'),
(9, 'Thursday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '03:30 PM', '04:25 PM'),
(9, 'Friday', '09:00 AM', '09:55 AM'),
(9, 'Friday', '09:55 AM', '10:55 AM'),
(9, 'Friday', '12:05 PM', '01:00 PM'),
(9, 'Friday', '01:40 PM', '02:35 PM'),
(9, 'Friday', '02:35 PM', '03:30 PM'),
(9, 'Friday', '03:30 PM', '04:25 PM'),
(9, 'Saturday', '09:00 AM', '09:55 AM'),
(9, 'Saturday', '09:55 AM', '10:55 AM'),
(9, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Monday', '09:00 AM', '09:55 AM'),
(1, 'Monday', '09:55 AM', '10:55 AM'),
(1, 'Monday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '09:55 AM', '10:55 AM'),
(1, 'Tuesday', '11:10 AM', '12:05 PM'),
(1, 'Tuesday', '12:05 PM', '01:00 PM'),
(1, 'Tuesday', '01:40 PM', '02:35 PM'),
(1, 'Tuesday', '03:30 PM', '04:25 PM'),
(1, 'Thursday', '09:00 AM', '09:55 AM'),
(1, 'Thursday', '09:55 AM', '10:55 AM'),
(1, 'Thursday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '09:00 AM', '09:55 AM'),
(1, 'Friday', '09:55 AM', '10:55 AM'),
(1, 'Friday', '11:10 AM', '12:05 PM'),
(1, 'Friday', '12:05 PM', '01:00 PM'),
(1, 'Friday', '02:35 PM', '03:30 PM'),
(1, 'Friday', '03:30 PM', '04:25 PM'),
(1, 'Saturday', '09:00 AM', '09:55 AM'),
(1, 'Saturday', '09:55 AM', '10:55 AM'),
(1, 'Saturday', '11:10 AM', '12:05 PM'),
(1, 'Saturday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '09:55 AM', '10:55 AM'),
(1, 'Wednesday', '11:10 AM', '12:05 PM'),
(1, 'Wednesday', '12:05 PM', '01:00 PM'),
(1, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Monday', '11:10 AM', '12:05 PM'),
(2, 'Monday', '12:05 PM', '01:00 PM'),
(2, 'Monday', '02:35 PM', '03:30 PM'),
(2, 'Monday', '03:30 PM', '04:25 PM'),
(2, 'Tuesday', '09:55 AM', '10:55 AM'),
(2, 'Tuesday', '11:10 AM', '12:05 PM'),
(2, 'Tuesday', '12:05 PM', '01:00 PM'),
(2, 'Wednesday', '09:00 AM', '09:55 AM'),
(2, 'Wednesday', '01:40 PM', '02:35 PM'),
(2, 'Wednesday', '02:35 PM', '03:30 PM'),
(2, 'Thursday', '09:00 AM', '09:55 AM'),
(2, 'Thursday', '09:55 AM', '10:55 AM'),
(2, 'Thursday', '11:10 AM', '12:05 PM'),
(2, 'Thursday', '12:05 PM', '01:00 PM'),
(2, 'Thursday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '09:55 AM', '10:55 AM'),
(2, 'Friday', '01:40 PM', '02:35 PM'),
(2, 'Friday', '02:35 PM', '03:30 PM'),
(2, 'Friday', '03:30 PM', '04:25 PM'),
(2, 'Saturday', '09:55 AM', '10:55 AM'),
(2, 'Saturday', '11:10 AM', '12:05 PM'),
(2, 'Saturday', '12:05 PM', '01:00 PM'),
(3, 'Monday', '09:00 AM', '09:55 AM'),
(3, 'Monday', '09:55 AM', '10:55 AM'),
(3, 'Monday', '11:10 AM', '12:05 PM'),
(3, 'Monday', '01:40 PM', '02:35 PM'),
(3, 'Monday', '02:35 PM', '03:30 PM'),
(3, 'Monday', '03:30 PM', '04:25 PM'),
(3, 'Tuesday', '09:00 AM', '09:55 AM'),
(3, 'Tuesday', '09:55 AM', '10:55 AM'),
(3, 'Tuesday', '11:10 AM', '12:05 PM'),
(3, 'Tuesday', '12:05 PM', '01:00 PM'),
(3, 'Tuesday', '02:35 PM', '03:30 PM'),
(3, 'Tuesday', '03:30 PM', '04:25 PM'),
(3, 'Wednesday', '09:00 AM', '09:55 AM'),
(3, 'Wednesday', '09:55 AM', '10:55 AM'),
(3, 'Wednesday', '11:10 AM', '12:05 PM'),
(3, 'Wednesday', '12:05 PM', '01:00 PM'),
(3, 'Wednesday', '02:35 PM', '03:30 PM'),
(3, 'Thursday', '09:00 AM', '09:55 AM'),
(3, 'Thursday', '09:55 AM', '10:55 AM'),
(3, 'Thursday', '12:05 PM', '01:00 PM'),
(3, 'Friday', '09:55 AM', '10:55 AM'),
(3, 'Friday', '11:10 AM', '12:05 PM'),
(3, 'Friday', '12:05 PM', '01:00 PM');
INSERT INTO `free_time_slot_no` (`id`, `day`, `starting_time_slot`, `ending_time_slot`) VALUES
(3, 'Friday', '01:40 PM', '02:35 PM'),
(3, 'Friday', '03:30 PM', '04:25 PM'),
(3, 'Saturday', '09:00 AM', '09:55 AM'),
(3, 'Saturday', '11:10 AM', '12:05 PM'),
(3, 'Saturday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '09:00 AM', '09:55 AM'),
(6, 'Monday', '09:55 AM', '10:55 AM'),
(6, 'Monday', '11:10 AM', '12:05 PM'),
(6, 'Monday', '12:05 PM', '01:00 PM'),
(6, 'Monday', '01:40 PM', '02:35 PM'),
(6, 'Monday', '02:35 PM', '03:30 PM'),
(6, 'Monday', '03:30 PM', '04:25 PM'),
(6, 'Tuesday', '09:55 AM', '10:55 AM'),
(6, 'Tuesday', '11:10 AM', '12:05 PM'),
(6, 'Tuesday', '12:05 PM', '01:00 PM'),
(6, 'Tuesday', '01:40 PM', '02:35 PM'),
(6, 'Tuesday', '02:35 PM', '03:30 PM'),
(6, 'Tuesday', '03:30 PM', '04:25 PM'),
(6, 'Wednesday', '09:55 AM', '10:55 AM'),
(6, 'Wednesday', '11:10 AM', '12:05 PM'),
(6, 'Wednesday', '12:05 PM', '01:00 PM'),
(6, 'Wednesday', '01:40 PM', '02:35 PM'),
(6, 'Wednesday', '02:35 PM', '03:30 PM'),
(6, 'Wednesday', '03:30 PM', '04:25 PM'),
(6, 'Thursday', '09:00 AM', '09:55 AM'),
(6, 'Thursday', '11:10 AM', '12:05 PM'),
(6, 'Thursday', '12:05 PM', '01:00 PM'),
(6, 'Thursday', '01:40 PM', '02:35 PM'),
(6, 'Thursday', '02:35 PM', '03:30 PM'),
(6, 'Thursday', '03:30 PM', '04:25 PM'),
(6, 'Friday', '09:00 AM', '09:55 AM'),
(6, 'Friday', '09:55 AM', '10:55 AM'),
(6, 'Friday', '12:05 PM', '01:00 PM'),
(6, 'Friday', '01:40 PM', '02:35 PM'),
(6, 'Friday', '02:35 PM', '03:30 PM'),
(6, 'Friday', '03:30 PM', '04:25 PM'),
(6, 'Saturday', '09:00 AM', '09:55 AM'),
(6, 'Saturday', '09:55 AM', '10:55 AM'),
(6, 'Saturday', '11:10 AM', '12:05 PM'),
(6, 'Saturday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '09:00 AM', '09:55 AM'),
(7, 'Monday', '09:55 AM', '10:55 AM'),
(7, 'Monday', '11:10 AM', '12:05 PM'),
(7, 'Monday', '12:05 PM', '01:00 PM'),
(7, 'Monday', '01:40 PM', '02:35 PM'),
(7, 'Monday', '02:35 PM', '03:30 PM'),
(7, 'Monday', '03:30 PM', '04:25 PM'),
(7, 'Tuesday', '09:00 AM', '09:55 AM'),
(7, 'Tuesday', '09:55 AM', '10:55 AM'),
(7, 'Tuesday', '11:10 AM', '12:05 PM'),
(7, 'Tuesday', '12:05 PM', '01:00 PM'),
(7, 'Tuesday', '01:40 PM', '02:35 PM'),
(7, 'Tuesday', '02:35 PM', '03:30 PM'),
(7, 'Tuesday', '03:30 PM', '04:25 PM'),
(7, 'Wednesday', '09:00 AM', '09:55 AM'),
(7, 'Wednesday', '09:55 AM', '10:55 AM'),
(7, 'Wednesday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '09:55 AM', '10:55 AM'),
(7, 'Thursday', '11:10 AM', '12:05 PM'),
(7, 'Thursday', '12:05 PM', '01:00 PM'),
(7, 'Thursday', '01:40 PM', '02:35 PM'),
(7, 'Thursday', '02:35 PM', '03:30 PM'),
(7, 'Thursday', '03:30 PM', '04:25 PM'),
(7, 'Friday', '09:00 AM', '09:55 AM'),
(7, 'Friday', '11:10 AM', '12:05 PM'),
(7, 'Friday', '12:05 PM', '01:00 PM'),
(7, 'Friday', '01:40 PM', '02:35 PM'),
(7, 'Friday', '02:35 PM', '03:30 PM'),
(7, 'Friday', '03:30 PM', '04:25 PM'),
(7, 'Saturday', '09:00 AM', '09:55 AM'),
(7, 'Saturday', '09:55 AM', '10:55 AM'),
(7, 'Saturday', '11:10 AM', '12:05 PM'),
(7, 'Saturday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '09:55 AM', '10:55 AM'),
(8, 'Monday', '11:10 AM', '12:05 PM'),
(8, 'Monday', '12:05 PM', '01:00 PM'),
(8, 'Monday', '01:40 PM', '02:35 PM'),
(8, 'Monday', '02:35 PM', '03:30 PM'),
(8, 'Monday', '03:30 PM', '04:25 PM'),
(8, 'Tuesday', '09:55 AM', '10:55 AM'),
(8, 'Tuesday', '11:10 AM', '12:05 PM'),
(8, 'Tuesday', '12:05 PM', '01:00 PM'),
(8, 'Tuesday', '01:40 PM', '02:35 PM'),
(8, 'Tuesday', '02:35 PM', '03:30 PM'),
(8, 'Tuesday', '03:30 PM', '04:25 PM'),
(8, 'Wednesday', '09:00 AM', '09:55 AM'),
(8, 'Wednesday', '11:10 AM', '12:05 PM'),
(8, 'Wednesday', '12:05 PM', '01:00 PM'),
(8, 'Wednesday', '01:40 PM', '02:35 PM'),
(8, 'Wednesday', '02:35 PM', '03:30 PM'),
(8, 'Wednesday', '03:30 PM', '04:25 PM'),
(8, 'Thursday', '09:00 AM', '09:55 AM'),
(8, 'Thursday', '09:55 AM', '10:55 AM'),
(8, 'Thursday', '12:05 PM', '01:00 PM'),
(8, 'Thursday', '01:40 PM', '02:35 PM'),
(8, 'Thursday', '02:35 PM', '03:30 PM'),
(8, 'Thursday', '03:30 PM', '04:25 PM'),
(8, 'Friday', '09:00 AM', '09:55 AM'),
(8, 'Friday', '11:10 AM', '12:05 PM'),
(8, 'Friday', '12:05 PM', '01:00 PM'),
(8, 'Friday', '01:40 PM', '02:35 PM'),
(8, 'Friday', '02:35 PM', '03:30 PM'),
(8, 'Friday', '03:30 PM', '04:25 PM'),
(8, 'Saturday', '09:00 AM', '09:55 AM'),
(8, 'Saturday', '11:10 AM', '12:05 PM'),
(8, 'Saturday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '09:00 AM', '09:55 AM'),
(9, 'Monday', '09:55 AM', '10:55 AM'),
(9, 'Monday', '11:10 AM', '12:05 PM'),
(9, 'Monday', '12:05 PM', '01:00 PM'),
(9, 'Monday', '01:40 PM', '02:35 PM'),
(9, 'Monday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '09:00 AM', '09:55 AM'),
(9, 'Tuesday', '09:55 AM', '10:55 AM'),
(9, 'Tuesday', '12:05 PM', '01:00 PM'),
(9, 'Tuesday', '01:40 PM', '02:35 PM'),
(9, 'Tuesday', '02:35 PM', '03:30 PM'),
(9, 'Tuesday', '03:30 PM', '04:25 PM'),
(9, 'Wednesday', '11:10 AM', '12:05 PM'),
(9, 'Wednesday', '12:05 PM', '01:00 PM'),
(9, 'Wednesday', '01:40 PM', '02:35 PM'),
(9, 'Wednesday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '09:55 AM', '10:55 AM'),
(9, 'Thursday', '11:10 AM', '12:05 PM'),
(9, 'Thursday', '01:40 PM', '02:35 PM'),
(9, 'Thursday', '02:35 PM', '03:30 PM'),
(9, 'Thursday', '03:30 PM', '04:25 PM'),
(9, 'Friday', '09:00 AM', '09:55 AM'),
(9, 'Friday', '09:55 AM', '10:55 AM'),
(9, 'Friday', '12:05 PM', '01:00 PM'),
(9, 'Friday', '01:40 PM', '02:35 PM'),
(9, 'Friday', '02:35 PM', '03:30 PM'),
(9, 'Friday', '03:30 PM', '04:25 PM'),
(9, 'Saturday', '09:00 AM', '09:55 AM'),
(9, 'Saturday', '09:55 AM', '10:55 AM'),
(9, 'Saturday', '11:10 AM', '12:05 PM');

-- --------------------------------------------------------

--
-- Table structure for table `free_time_slot_yes`
--

CREATE TABLE `free_time_slot_yes` (
  `id` int(10) DEFAULT NULL,
  `semester` varchar(5) DEFAULT NULL,
  `scheme` varchar(50) DEFAULT NULL,
  `day` varchar(20) DEFAULT NULL,
  `subject_name` varchar(500) DEFAULT NULL,
  `starting_time_slot` varchar(50) DEFAULT NULL,
  `ending_time_slot` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `free_time_slot_yes`
--

INSERT INTO `free_time_slot_yes` (`id`, `semester`, `scheme`, `day`, `subject_name`, `starting_time_slot`, `ending_time_slot`) VALUES
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '11:10 AM', '12:05 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '03:30 PM', '04:25 PM'),
(1, 'IV', '2018', 'Tuesday', 'CYBER SECURITY', '09:00 AM', '09:55 AM'),
(1, 'II', '2019', 'Tuesday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'IV', '2018', 'Thursday', 'CYBER SECURITY', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Thursday', 'CORE JAVA', '01:40 PM', '02:35 PM'),
(1, 'IV', '2018', 'Friday', 'CYBER SECURITY', '01:40 PM', '02:35 PM'),
(1, 'II', '2019', 'Wednesday', 'CORE JAVA', '09:00 AM', '09:55 AM'),
(1, 'IV', '2018', 'Wednesday', 'CYBER SECURITY', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:55 AM', '10:55 AM'),
(2, 'II', '2019', 'Monday', 'OS', '01:40 PM', '02:35 PM'),
(2, 'II', '2019', 'Tuesday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '01:40 PM', '02:35 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '03:30 PM', '04:25 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Friday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Saturday', 'OS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Monday', 'BIG DATA ANALYSIS', '12:05 PM', '01:00 PM'),
(3, 'II', '2019', 'Tuesday', 'MP', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Wednesday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Thursday', 'PCE', '11:10 AM', '12:05 PM'),
(3, 'IV', '2018', 'Thursday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Friday', 'BIG DATA ANALYSIS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Friday', 'PCE', '02:35 PM', '03:30 PM'),
(3, 'IV', '2018', 'Saturday', 'PCE', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Tuesday', 'DATABASE MANAGEMENT SYSTEM', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Wednesday', 'DBMS LAB', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Thursday', 'DATABASE MANAGEMENT SYSTEM', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Friday', 'DATABASE MANAGEMENT SYSTEM', '11:10 AM', '12:05 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '12:05 PM', '01:00 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '01:40 PM', '02:35 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '02:35 PM', '03:30 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '03:30 PM', '04:25 PM'),
(7, 'V', '2018', 'Thursday', 'PROGRAMMING USING C#.NET', '09:00 AM', '09:55 AM'),
(7, 'V', '2018', 'Friday', 'PROGRAMMING USING C#.NET', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Monday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'V', '2018', 'Tuesday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'III', '2018', 'Wednesday', 'PYTHON PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(8, 'III', '2018', 'Thursday', 'PROGRAMMING USING PYTHON', '11:10 AM', '12:05 PM'),
(8, 'III', '2018', 'Friday', 'PROGRAMMING USING PYTHON', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Saturday', 'STORAGE AREA NETWORKS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Monday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Tuesday', 'SYSTEM SOFTWARE', '11:10 AM', '12:05 PM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Wednesday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Thursday', 'SYSTEM SOFTWARE', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Thursday', 'MOBILE APPLICATIONS', '12:05 PM', '01:00 PM'),
(9, 'V', '2018', 'Friday', 'MOBILE APPLICATIONS', '11:10 AM', '12:05 PM'),
(9, 'III', '2018', 'Saturday', 'SYSTEM SOFTWARE', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '11:10 AM', '12:05 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '03:30 PM', '04:25 PM'),
(1, 'IV', '2018', 'Tuesday', 'CYBER SECURITY', '09:00 AM', '09:55 AM'),
(1, 'II', '2019', 'Tuesday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'IV', '2018', 'Thursday', 'CYBER SECURITY', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Thursday', 'CORE JAVA', '01:40 PM', '02:35 PM'),
(1, 'IV', '2018', 'Friday', 'CYBER SECURITY', '01:40 PM', '02:35 PM'),
(1, 'II', '2019', 'Wednesday', 'CORE JAVA', '09:00 AM', '09:55 AM'),
(1, 'IV', '2018', 'Wednesday', 'CYBER SECURITY', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:55 AM', '10:55 AM'),
(2, 'II', '2019', 'Monday', 'OS', '01:40 PM', '02:35 PM'),
(2, 'II', '2019', 'Tuesday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '01:40 PM', '02:35 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '03:30 PM', '04:25 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Friday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Saturday', 'OS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Monday', 'BIG DATA ANALYSIS', '12:05 PM', '01:00 PM'),
(3, 'II', '2019', 'Tuesday', 'MP', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Wednesday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Thursday', 'PCE', '11:10 AM', '12:05 PM'),
(3, 'IV', '2018', 'Thursday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Friday', 'BIG DATA ANALYSIS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Friday', 'PCE', '02:35 PM', '03:30 PM'),
(3, 'IV', '2018', 'Saturday', 'PCE', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Tuesday', 'DATABASE MANAGEMENT SYSTEM', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Wednesday', 'DBMS LAB', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Thursday', 'DATABASE MANAGEMENT SYSTEM', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Friday', 'DATABASE MANAGEMENT SYSTEM', '11:10 AM', '12:05 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '12:05 PM', '01:00 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '01:40 PM', '02:35 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '02:35 PM', '03:30 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '03:30 PM', '04:25 PM'),
(7, 'V', '2018', 'Thursday', 'PROGRAMMING USING C#.NET', '09:00 AM', '09:55 AM'),
(7, 'V', '2018', 'Friday', 'PROGRAMMING USING C#.NET', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Monday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'V', '2018', 'Tuesday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'III', '2018', 'Wednesday', 'PYTHON PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(8, 'III', '2018', 'Thursday', 'PROGRAMMING USING PYTHON', '11:10 AM', '12:05 PM'),
(8, 'III', '2018', 'Friday', 'PROGRAMMING USING PYTHON', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Saturday', 'STORAGE AREA NETWORKS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Monday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Tuesday', 'SYSTEM SOFTWARE', '11:10 AM', '12:05 PM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Wednesday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Thursday', 'SYSTEM SOFTWARE', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Thursday', 'MOBILE APPLICATIONS', '12:05 PM', '01:00 PM'),
(9, 'V', '2018', 'Friday', 'MOBILE APPLICATIONS', '11:10 AM', '12:05 PM'),
(9, 'III', '2018', 'Saturday', 'SYSTEM SOFTWARE', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '11:10 AM', '12:05 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '03:30 PM', '04:25 PM'),
(1, 'IV', '2018', 'Tuesday', 'CYBER SECURITY', '09:00 AM', '09:55 AM'),
(1, 'II', '2019', 'Tuesday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'IV', '2018', 'Thursday', 'CYBER SECURITY', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Thursday', 'CORE JAVA', '01:40 PM', '02:35 PM'),
(1, 'IV', '2018', 'Friday', 'CYBER SECURITY', '01:40 PM', '02:35 PM'),
(1, 'II', '2019', 'Wednesday', 'CORE JAVA', '09:00 AM', '09:55 AM'),
(1, 'IV', '2018', 'Wednesday', 'CYBER SECURITY', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:55 AM', '10:55 AM'),
(2, 'II', '2019', 'Monday', 'OS', '01:40 PM', '02:35 PM'),
(2, 'II', '2019', 'Tuesday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '01:40 PM', '02:35 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '03:30 PM', '04:25 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Friday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Saturday', 'OS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Monday', 'BIG DATA ANALYSIS', '12:05 PM', '01:00 PM'),
(3, 'II', '2019', 'Tuesday', 'MP', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Wednesday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Thursday', 'PCE', '11:10 AM', '12:05 PM'),
(3, 'IV', '2018', 'Thursday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Friday', 'BIG DATA ANALYSIS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Friday', 'PCE', '02:35 PM', '03:30 PM'),
(3, 'IV', '2018', 'Saturday', 'PCE', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Tuesday', 'DATABASE MANAGEMENT SYSTEM', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Wednesday', 'DBMS LAB', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Thursday', 'DATABASE MANAGEMENT SYSTEM', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Friday', 'DATABASE MANAGEMENT SYSTEM', '11:10 AM', '12:05 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '12:05 PM', '01:00 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '01:40 PM', '02:35 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '02:35 PM', '03:30 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '03:30 PM', '04:25 PM'),
(7, 'V', '2018', 'Thursday', 'PROGRAMMING USING C#.NET', '09:00 AM', '09:55 AM'),
(7, 'V', '2018', 'Friday', 'PROGRAMMING USING C#.NET', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Monday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'V', '2018', 'Tuesday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'III', '2018', 'Wednesday', 'PYTHON PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(8, 'III', '2018', 'Thursday', 'PROGRAMMING USING PYTHON', '11:10 AM', '12:05 PM'),
(8, 'III', '2018', 'Friday', 'PROGRAMMING USING PYTHON', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Saturday', 'STORAGE AREA NETWORKS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Monday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Tuesday', 'SYSTEM SOFTWARE', '11:10 AM', '12:05 PM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Wednesday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Thursday', 'SYSTEM SOFTWARE', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Thursday', 'MOBILE APPLICATIONS', '12:05 PM', '01:00 PM'),
(9, 'V', '2018', 'Friday', 'MOBILE APPLICATIONS', '11:10 AM', '12:05 PM'),
(9, 'III', '2018', 'Saturday', 'SYSTEM SOFTWARE', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '11:10 AM', '12:05 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '03:30 PM', '04:25 PM'),
(1, 'IV', '2018', 'Tuesday', 'CYBER SECURITY', '09:00 AM', '09:55 AM'),
(1, 'II', '2019', 'Tuesday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'IV', '2018', 'Thursday', 'CYBER SECURITY', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Thursday', 'CORE JAVA', '01:40 PM', '02:35 PM'),
(1, 'IV', '2018', 'Friday', 'CYBER SECURITY', '01:40 PM', '02:35 PM'),
(1, 'II', '2019', 'Wednesday', 'CORE JAVA', '09:00 AM', '09:55 AM'),
(1, 'IV', '2018', 'Wednesday', 'CYBER SECURITY', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:55 AM', '10:55 AM'),
(2, 'II', '2019', 'Monday', 'OS', '01:40 PM', '02:35 PM'),
(2, 'II', '2019', 'Tuesday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '01:40 PM', '02:35 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '03:30 PM', '04:25 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Friday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Saturday', 'OS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Monday', 'BIG DATA ANALYSIS', '12:05 PM', '01:00 PM'),
(3, 'II', '2019', 'Tuesday', 'MP', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Wednesday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Thursday', 'PCE', '11:10 AM', '12:05 PM'),
(3, 'IV', '2018', 'Thursday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Friday', 'BIG DATA ANALYSIS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Friday', 'PCE', '02:35 PM', '03:30 PM'),
(3, 'IV', '2018', 'Saturday', 'PCE', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Tuesday', 'DATABASE MANAGEMENT SYSTEM', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Wednesday', 'DBMS LAB', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Thursday', 'DATABASE MANAGEMENT SYSTEM', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Friday', 'DATABASE MANAGEMENT SYSTEM', '11:10 AM', '12:05 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '12:05 PM', '01:00 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '01:40 PM', '02:35 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '02:35 PM', '03:30 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '03:30 PM', '04:25 PM'),
(7, 'V', '2018', 'Thursday', 'PROGRAMMING USING C#.NET', '09:00 AM', '09:55 AM'),
(7, 'V', '2018', 'Friday', 'PROGRAMMING USING C#.NET', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Monday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'V', '2018', 'Tuesday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'III', '2018', 'Wednesday', 'PYTHON PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(8, 'III', '2018', 'Thursday', 'PROGRAMMING USING PYTHON', '11:10 AM', '12:05 PM'),
(8, 'III', '2018', 'Friday', 'PROGRAMMING USING PYTHON', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Saturday', 'STORAGE AREA NETWORKS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Monday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Tuesday', 'SYSTEM SOFTWARE', '11:10 AM', '12:05 PM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Wednesday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Thursday', 'SYSTEM SOFTWARE', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Thursday', 'MOBILE APPLICATIONS', '12:05 PM', '01:00 PM'),
(9, 'V', '2018', 'Friday', 'MOBILE APPLICATIONS', '11:10 AM', '12:05 PM'),
(9, 'III', '2018', 'Saturday', 'SYSTEM SOFTWARE', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '11:10 AM', '12:05 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '03:30 PM', '04:25 PM'),
(1, 'IV', '2018', 'Tuesday', 'CYBER SECURITY', '09:00 AM', '09:55 AM'),
(1, 'II', '2019', 'Tuesday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'IV', '2018', 'Thursday', 'CYBER SECURITY', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Thursday', 'CORE JAVA', '01:40 PM', '02:35 PM'),
(1, 'IV', '2018', 'Friday', 'CYBER SECURITY', '01:40 PM', '02:35 PM'),
(1, 'II', '2019', 'Wednesday', 'CORE JAVA', '09:00 AM', '09:55 AM'),
(1, 'IV', '2018', 'Wednesday', 'CYBER SECURITY', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:55 AM', '10:55 AM'),
(2, 'II', '2019', 'Monday', 'OS', '01:40 PM', '02:35 PM'),
(2, 'II', '2019', 'Tuesday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '01:40 PM', '02:35 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '03:30 PM', '04:25 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Friday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Saturday', 'OS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Monday', 'BIG DATA ANALYSIS', '12:05 PM', '01:00 PM'),
(3, 'II', '2019', 'Tuesday', 'MP', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Wednesday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Thursday', 'PCE', '11:10 AM', '12:05 PM'),
(3, 'IV', '2018', 'Thursday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Friday', 'BIG DATA ANALYSIS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Friday', 'PCE', '02:35 PM', '03:30 PM'),
(3, 'IV', '2018', 'Saturday', 'PCE', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Tuesday', 'DATABASE MANAGEMENT SYSTEM', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Wednesday', 'DBMS LAB', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Thursday', 'DATABASE MANAGEMENT SYSTEM', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Friday', 'DATABASE MANAGEMENT SYSTEM', '11:10 AM', '12:05 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '12:05 PM', '01:00 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '01:40 PM', '02:35 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '02:35 PM', '03:30 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '03:30 PM', '04:25 PM'),
(7, 'V', '2018', 'Thursday', 'PROGRAMMING USING C#.NET', '09:00 AM', '09:55 AM'),
(7, 'V', '2018', 'Friday', 'PROGRAMMING USING C#.NET', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Monday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'V', '2018', 'Tuesday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'III', '2018', 'Wednesday', 'PYTHON PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(8, 'III', '2018', 'Thursday', 'PROGRAMMING USING PYTHON', '11:10 AM', '12:05 PM'),
(8, 'III', '2018', 'Friday', 'PROGRAMMING USING PYTHON', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Saturday', 'STORAGE AREA NETWORKS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Monday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Tuesday', 'SYSTEM SOFTWARE', '11:10 AM', '12:05 PM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Wednesday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Thursday', 'SYSTEM SOFTWARE', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Thursday', 'MOBILE APPLICATIONS', '12:05 PM', '01:00 PM'),
(9, 'V', '2018', 'Friday', 'MOBILE APPLICATIONS', '11:10 AM', '12:05 PM'),
(9, 'III', '2018', 'Saturday', 'SYSTEM SOFTWARE', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '11:10 AM', '12:05 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '03:30 PM', '04:25 PM'),
(1, 'IV', '2018', 'Tuesday', 'CYBER SECURITY', '09:00 AM', '09:55 AM'),
(1, 'II', '2019', 'Tuesday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'IV', '2018', 'Thursday', 'CYBER SECURITY', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Thursday', 'CORE JAVA', '01:40 PM', '02:35 PM'),
(1, 'IV', '2018', 'Friday', 'CYBER SECURITY', '01:40 PM', '02:35 PM'),
(1, 'II', '2019', 'Wednesday', 'CORE JAVA', '09:00 AM', '09:55 AM'),
(1, 'IV', '2018', 'Wednesday', 'CYBER SECURITY', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:55 AM', '10:55 AM'),
(2, 'II', '2019', 'Monday', 'OS', '01:40 PM', '02:35 PM'),
(2, 'II', '2019', 'Tuesday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '01:40 PM', '02:35 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '03:30 PM', '04:25 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Friday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Saturday', 'OS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Monday', 'BIG DATA ANALYSIS', '12:05 PM', '01:00 PM'),
(3, 'II', '2019', 'Tuesday', 'MP', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Wednesday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Thursday', 'PCE', '11:10 AM', '12:05 PM'),
(3, 'IV', '2018', 'Thursday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Friday', 'BIG DATA ANALYSIS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Friday', 'PCE', '02:35 PM', '03:30 PM'),
(3, 'IV', '2018', 'Saturday', 'PCE', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Tuesday', 'DATABASE MANAGEMENT SYSTEM', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Wednesday', 'DBMS LAB', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Thursday', 'DATABASE MANAGEMENT SYSTEM', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Friday', 'DATABASE MANAGEMENT SYSTEM', '11:10 AM', '12:05 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '12:05 PM', '01:00 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '01:40 PM', '02:35 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '02:35 PM', '03:30 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '03:30 PM', '04:25 PM'),
(7, 'V', '2018', 'Thursday', 'PROGRAMMING USING C#.NET', '09:00 AM', '09:55 AM'),
(7, 'V', '2018', 'Friday', 'PROGRAMMING USING C#.NET', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Monday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'V', '2018', 'Tuesday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'III', '2018', 'Wednesday', 'PYTHON PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(8, 'III', '2018', 'Thursday', 'PROGRAMMING USING PYTHON', '11:10 AM', '12:05 PM'),
(8, 'III', '2018', 'Friday', 'PROGRAMMING USING PYTHON', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Saturday', 'STORAGE AREA NETWORKS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Monday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Tuesday', 'SYSTEM SOFTWARE', '11:10 AM', '12:05 PM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Wednesday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Thursday', 'SYSTEM SOFTWARE', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Thursday', 'MOBILE APPLICATIONS', '12:05 PM', '01:00 PM'),
(9, 'V', '2018', 'Friday', 'MOBILE APPLICATIONS', '11:10 AM', '12:05 PM'),
(9, 'III', '2018', 'Saturday', 'SYSTEM SOFTWARE', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '11:10 AM', '12:05 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'II', '2019', 'Monday', 'CORE JAVA LAB', '03:30 PM', '04:25 PM'),
(1, 'IV', '2018', 'Tuesday', 'CYBER SECURITY', '09:00 AM', '09:55 AM'),
(1, 'II', '2019', 'Tuesday', 'CORE JAVA', '02:35 PM', '03:30 PM'),
(1, 'IV', '2018', 'Thursday', 'CYBER SECURITY', '12:05 PM', '01:00 PM'),
(1, 'II', '2019', 'Thursday', 'CORE JAVA', '01:40 PM', '02:35 PM'),
(1, 'IV', '2018', 'Friday', 'CYBER SECURITY', '01:40 PM', '02:35 PM'),
(1, 'II', '2019', 'Wednesday', 'CORE JAVA', '09:00 AM', '09:55 AM'),
(1, 'IV', '2018', 'Wednesday', 'CYBER SECURITY', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Monday', 'ADVANCE JAVA', '09:55 AM', '10:55 AM'),
(2, 'II', '2019', 'Monday', 'OS', '01:40 PM', '02:35 PM'),
(2, 'II', '2019', 'Tuesday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '01:40 PM', '02:35 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '02:35 PM', '03:30 PM'),
(2, 'IV', '2018', 'Tuesday', 'ADVANCE JAVA PROGRAMMING LAB', '03:30 PM', '04:25 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Wednesday', 'ADVANCE JAVA PROGRAMMING LAB', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Friday', 'OS', '09:00 AM', '09:55 AM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '11:10 AM', '12:05 PM'),
(2, 'IV', '2018', 'Friday', 'ADVANCE JAVA', '12:05 PM', '01:00 PM'),
(2, 'II', '2019', 'Saturday', 'OS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Monday', 'BIG DATA ANALYSIS', '12:05 PM', '01:00 PM'),
(3, 'II', '2019', 'Tuesday', 'MP', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Wednesday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Thursday', 'PCE', '11:10 AM', '12:05 PM'),
(3, 'IV', '2018', 'Thursday', 'BIG DATA ANALYSIS', '01:40 PM', '02:35 PM'),
(3, 'IV', '2018', 'Friday', 'BIG DATA ANALYSIS', '09:00 AM', '09:55 AM'),
(3, 'IV', '2018', 'Friday', 'PCE', '02:35 PM', '03:30 PM'),
(3, 'IV', '2018', 'Saturday', 'PCE', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Tuesday', 'DATABASE MANAGEMENT SYSTEM', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Wednesday', 'DBMS LAB', '09:00 AM', '09:55 AM'),
(6, 'III', '2018', 'Thursday', 'DATABASE MANAGEMENT SYSTEM', '09:55 AM', '10:55 AM'),
(6, 'III', '2018', 'Friday', 'DATABASE MANAGEMENT SYSTEM', '11:10 AM', '12:05 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '12:05 PM', '01:00 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '01:40 PM', '02:35 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '02:35 PM', '03:30 PM'),
(7, 'V', '2018', 'Wednesday', 'C#.NET LAB', '03:30 PM', '04:25 PM'),
(7, 'V', '2018', 'Thursday', 'PROGRAMMING USING C#.NET', '09:00 AM', '09:55 AM'),
(7, 'V', '2018', 'Friday', 'PROGRAMMING USING C#.NET', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Monday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'V', '2018', 'Tuesday', 'STORAGE AREA NETWORKS', '09:00 AM', '09:55 AM'),
(8, 'III', '2018', 'Wednesday', 'PYTHON PROGRAMMING LAB', '09:55 AM', '10:55 AM'),
(8, 'III', '2018', 'Thursday', 'PROGRAMMING USING PYTHON', '11:10 AM', '12:05 PM'),
(8, 'III', '2018', 'Friday', 'PROGRAMMING USING PYTHON', '09:55 AM', '10:55 AM'),
(8, 'V', '2018', 'Saturday', 'STORAGE AREA NETWORKS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Monday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Tuesday', 'SYSTEM SOFTWARE', '11:10 AM', '12:05 PM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Wednesday', 'MOBILE APPLICATIONS', '09:55 AM', '10:55 AM'),
(9, '', '', 'Wednesday', '', '03:30 PM', '04:25 PM'),
(9, 'III', '2018', 'Thursday', 'SYSTEM SOFTWARE', '09:00 AM', '09:55 AM'),
(9, 'V', '2018', 'Thursday', 'MOBILE APPLICATIONS', '12:05 PM', '01:00 PM'),
(9, 'V', '2018', 'Friday', 'MOBILE APPLICATIONS', '11:10 AM', '12:05 PM'),
(9, 'III', '2018', 'Saturday', 'SYSTEM SOFTWARE', '12:05 PM', '01:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `internal_exam`
--

CREATE TABLE `internal_exam` (
  `exam_id` varchar(225) NOT NULL,
  `subject_code` varchar(225) NOT NULL,
  `test_name` varchar(225) NOT NULL,
  `start_date_time` varchar(225) NOT NULL,
  `end_date_time` varchar(225) NOT NULL,
  `duration` varchar(225) NOT NULL,
  `attempts` varchar(225) NOT NULL,
  `yes_or_no` varchar(225) NOT NULL,
  `published_date` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `leave_status`
--

CREATE TABLE `leave_status` (
  `date` date DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `id` int(10) DEFAULT NULL,
  `semester` varchar(20) NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `starting_time_slot` varchar(50) DEFAULT NULL,
  `ending_time_slot` varchar(50) DEFAULT NULL,
  `type_of_leave` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `flag` int(11) NOT NULL,
  `notification` int(11) NOT NULL,
  `approval_notification` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_status`
--

INSERT INTO `leave_status` (`date`, `sender_id`, `id`, `semester`, `day`, `starting_time_slot`, `ending_time_slot`, `type_of_leave`, `status`, `flag`, `notification`, `approval_notification`) VALUES
('2020-12-28', 2, 1, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Reject', 2, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '01:40 PM', '02:35 PM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '02:35 PM', '03:30 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Reject', 2, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '01:40 PM', '02:35 PM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '02:35 PM', '03:30 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Reject', 2, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '01:40 PM', '02:35 PM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '02:35 PM', '03:30 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Reject', 2, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '01:40 PM', '02:35 PM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '02:35 PM', '03:30 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Reject', 2, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '01:40 PM', '02:35 PM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '02:35 PM', '03:30 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Reject', 2, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '01:40 PM', '02:35 PM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '02:35 PM', '03:30 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:00 AM', '09:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-28', 2, 1, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Reject', 2, 0, 0),
('2020-12-28', 2, 3, 'IV', 'Monday', '09:55 AM', '10:55 AM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '01:40 PM', '02:35 PM', 'Casual Leave', 'Accept', 1, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '02:35 PM', '03:30 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 1, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0),
('2020-12-29', 2, 3, 'IV', 'Tuesday', '03:30 PM', '04:25 PM', 'Casual Leave', 'Pending', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `material_id` varchar(225) NOT NULL,
  `topic_id` varchar(225) NOT NULL,
  `material_name` varchar(225) NOT NULL,
  `material` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_exam_questions`
--

CREATE TABLE `mcq_exam_questions` (
  `question_id` varchar(225) NOT NULL,
  `exam_id` varchar(225) NOT NULL,
  `question_no` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `option_a` varchar(225) NOT NULL,
  `option_b` varchar(225) NOT NULL,
  `option_c` varchar(225) NOT NULL,
  `option_d` varchar(225) NOT NULL,
  `answer` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_result`
--

CREATE TABLE `mcq_result` (
  `result_id` varchar(225) NOT NULL,
  `test_id` varchar(225) NOT NULL,
  `usn` varchar(225) NOT NULL,
  `correct_answers` varchar(225) NOT NULL,
  `wrong_answers` varchar(225) NOT NULL,
  `no_attempts` varchar(225) NOT NULL,
  `score` varchar(225) NOT NULL,
  `time` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `subject_code` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offcial_information`
--

CREATE TABLE `offcial_information` (
  `emp_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `experience` int(3) DEFAULT NULL,
  `qualification` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain_expert` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_of_papers_international` int(3) DEFAULT NULL,
  `no_of_papers_national` int(3) DEFAULT NULL,
  `no_of_patent` int(3) DEFAULT NULL,
  `funding_project` bigint(11) DEFAULT NULL,
  `date_of_joining` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offcial_information`
--

INSERT INTO `offcial_information` (`emp_id`, `experience`, `qualification`, `domain_expert`, `email_id`, `no_of_papers_international`, `no_of_papers_national`, `no_of_patent`, `funding_project`, `date_of_joining`, `status`) VALUES
('11111', 30, 'PHD', 'MACHINE LEARNING', 'dean_rd@cambridge.edu.in', 1, 1, 1, 1, '2020-02-03', 1),
('abc123', 5, 'PHD', 'CYBER SECURITY', 'amarjeet71060kumar@gmail.com', 1, 33, 2, 22, '2020-09-24', 1),
('cit001', 4, 'MCA', 'DBMS', 'sushmita.18mca20@cambridge.edu.in', 2, 2, 0, 2, '0000-00-00', 1),
('CIT244', 13, 'MCA', 'JAVA', 'diwakar.mca@cambridge.edu.in', 1, 0, 0, 0, '2010-09-13', 1),
('CIT456', 22, 'MCA', 'MACHINE LEARNING', 'hod.mca@cambridge.edu.in', 11, 3, 0, 0, '2012-07-26', 1),
('CIT460', 15, 'MCA', 'ARTIFICIAL INTEGENCE', 'sindhu.mca@cambridge.edu.in', 4, 1, 0, 0, '2012-07-27', 1),
('CIT609', 9, 'M-TECH', 'CYBER SECURITY', 'vijaya.mca@cambridge.edu.in', 0, 0, 0, 0, '2016-12-06', 1),
('CIT745', 9, 'M-TECH', 'CYBER SECURITY', 'rashmi.mca@cambridge.edu.in', 1, 1, 0, 0, '2018-07-23', 1),
('CIT829', 6, 'M-TECH', 'CLOUD COMPUTING', 'sunil.mca@cambridge.edu.in', 1, 2, 0, 0, '2019-07-22', 1),
('citech_123', 4, 'MCA', 'JAVA', 'amarjeet.18mca03@cambridge.edu.in', 0, 0, 0, 0, '0000-00-00', 1),
('citech123', 2, 'MCA', 'CYBER SECURITY', 'akash.19mca54@cambridge.edu.in', 5, 10, 5, 11, '2019-08-01', 1),
('ctech1998', 6, 'MCA', 'MACHINE LEARNING', 'shiva.19mca86@cambridge.edu.in', 10, 5, 8, 4, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `user_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `temporary_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parmanent_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `personal_no` bigint(11) DEFAULT NULL,
  `whatsup_no` bigint(11) DEFAULT NULL,
  `personal_email_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_path` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`user_id`, `name`, `age`, `gender`, `temporary_address`, `parmanent_address`, `personal_no`, `whatsup_no`, `personal_email_id`, `image_path`, `status`) VALUES
('akash.19mca54@cambridge.edu.in', 'Akash kumar', 21, 'Male', '14th crosss,Gaytri layout', 'do', 7277993404, 7277993404, 'infoakashdalmia@gmail.com', 'uploads/1591346206_thump.jpg', 1),
('amarjeet.18mca03@cambridge.edu.in', 'Amarjeet Kumar', 24, 'Male', 'kr puram banglore 560036', 'patna bihar india', 8507779739, 9304161644, 'amarjeet71060kumar@gmail.com', 'uploads/1591341080_thump.jpg', 1),
('amarjeet71060kumar@gmail.com', 'Amarjeet Kumar', 23, 'Male', '14th crosss,Gaytri layout', 'do', 1122334455, 1122334455, 'abc@gmail.com', 'uploads/1601454605_thump.jpg', 1),
('dean_rd@cambridge.edu.in', 'Dr D Antony Louis Piriyakumar', 50, 'Male', '16 SLV layout, Roopena Agarhara, BLR 560068', '16 SLV layout, Roopena Agarhara, BLR 560068', 9845925132, 9845925132, 'dalpk@yahoo.com', 'uploads/1605600523_thump.jpg', 1),
('diwakar.mca@cambridge.edu.in', 'Diwakar Karadi', 37, 'Male', '#38 5th Cross Jai Bhuvaneshwari Layout T C Palya K  R Puram Bangalore 36', '#38 5th Cross Jai Bhuvaneshwari Layout T C Palya K  R Puram Bangalore 36', 9742662576, 9742662576, 'diwakar.mg@gmail.com', 'uploads/1605091480_thump.jpg', 1),
('hod.mca@cambridge.edu.in', 'Dr. Arunadevi M', 47, 'Female', 'B-508, Shriram Greenfield, Budigere Cross, Bangalore', 'B-508, Shriram Greenfield, Budigere Cross, Bangalore', 9538202730, 9538202730, 'arunamauriyan@rediffmail.com', 'uploads/1600248350_thump.jpg', 1),
('monika.mca@cambridge.edu.in', 'MONIKA M', 40, 'Female', '639/54/1357 BACHAPPA LAYOUT, NEAR RAJIV NAGAR, DEVASANDRA, BANGALORE- 36.', '639/54/1357 BACHAPPA LAYOUT, NEAR RAJIV NAGAR, DEVASANDRA, BANGALORE- 36.', 9442521632, 9442521632, 'monika.mohan.09@gmail.com', 'uploads/1600684604_thump.jpg', 1),
('rashmi.mca@cambridge.edu.in', 'Rashmi D', 34, 'Female', '#41 3rd A main', 'Banaswadi', 9740070977, 9740070977, 'rashmi.mca@cambridge.edu.in', 'uploads/1600247707_thump.jpg', 1),
('shiva.19mca86@cambridge.edu.in', 'shivakumar', 22, 'male', 'bangalure', 'bangalure', 9663683597, 9663683597, 'shivakumard30@gmail.com', 'uploads/1591346806_thump.jpg', 1),
('sindhu.mca@cambridge.edu.in', 'Sindhu S', 46, 'Female', 'TC Palya', 'TC Palya', 9880271020, 9880271020, 'sindhu.mca@cambridge.edu.in', 'uploads/1605091011_thump.jpg', 1),
('sunil.mca@cambridge.edu.in', 'SUNIL KUMAR KN', 32, 'Male', 'TC PALYA', '#55, 1st Main, La-Maison Layout, TC Palya, Bangalore', 8892556463, 8892556463, 'sunil.mca@cambridge.edu.in', 'uploads/1605091040_thump.jpg', 1),
('sushmita.18mca20@cambridge.edu.in', 'Sushmita', 23, 'Female', 'citech', 'cithch', 9988554466, 9988554466, 'sushmita.8mca20@cambridge.edu.in', 'uploads/1591348137_thump.jpg', 1),
('vijaya.mca@cambridge.edu.in', 'Vijayalaxmi Yalavigi', 38, 'Female', 'KR Puram', 'KR puram', 1234567876, 1234567876, 'vijaya.mca@cambridge.edu.in', 'uploads/1608716618_thump.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `slno` int(11) NOT NULL,
  `purchase_indent_no` varchar(255) NOT NULL,
  `product_slno` int(25) NOT NULL,
  `description` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `approx_unit_price` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `procured_state` tinyint(3) NOT NULL,
  `procured_date` date NOT NULL,
  `vendor_id` varchar(11) NOT NULL,
  `actual_price` int(11) NOT NULL,
  `tax` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`slno`, `purchase_indent_no`, `product_slno`, `description`, `quantity`, `purpose`, `approx_unit_price`, `order_date`, `procured_state`, `procured_date`, `vendor_id`, `actual_price`, `tax`) VALUES
(8, 'CIT_2020-2021_AC_A1_2', 2, 'monitor', 1, 'to study', '3455', '2020-12-18', 1, '0000-00-00', '', 0, 0),
(7, 'CIT_2020-2021_AC_A1_2', 1, 'Desktop', 1, 'to study', '12', '2020-12-18', 1, '0000-00-00', '', 0, 0),
(6, 'CIT_2020-2021_AC_A1_1', 1, 'monitor', 1, 'to study', '12', '2020-12-18', 1, '2020-12-28', '2/CIT/2019-', 500, 500),
(9, 'CIT_2020-2021_AC_A1_3', 1, 'Desktop', 1, 'to study', '12', '2020-12-18', 0, '0000-00-00', '', 0, 0),
(10, 'CIT_2020-2021_AC_A1_4', 1, 'monitor', 1, 'to study', '12', '2020-12-18', 1, '0000-00-00', '', 0, 0),
(11, 'CIT_2020-2021_AC_A1_5', 1, 'iphone', 1, 'to use', '12', '2020-12-18', 1, '0000-00-00', '', 0, 0),
(12, 'CIT_2020-2021_AC_A1_6', 1, 'monitor', 1, 'to study', '12', '2020-12-19', 0, '0000-00-00', '', 0, 0),
(13, 'CIT_2020-2021_AC_A1_7', 1, 'monitor', 1, 'to study', '12', '2020-12-19', 0, '0000-00-00', '', 0, 0),
(14, 'CIT_2020-2021_AC_A1_8', 1, 'monitor', 1, 'to study', '12', '2020-12-19', 0, '0000-00-00', '', 0, 0),
(15, 'CIT_2020-2021_NAC_A1_1', 1, 'Desktop', 1, 'to study', '12', '2020-12-19', 0, '0000-00-00', '', 0, 0),
(16, 'CIT_2020-2021_NAC_A1_2', 1, 'Desktop', 1, 'to study', '12', '2020-12-19', 0, '2020-12-28', '3/CIT/2019-', 324, 2342),
(17, 'CIT_2020-2021_NAC_A1_2', 2, 'monitor', 1, 'to use', '123', '2020-12-19', 1, '2020-12-28', '3/CIT/2019-', 324, 2342),
(18, 'CIT_2020-2021_NAC_A1_2', 3, 'iphone', 24, 'to use', '12', '2020-12-19', 1, '2020-12-28', '3/CIT/2019-', 4234, 234234),
(19, 'CIT_2020-2021_NAC_A1_3', 1, 'gdfgdf', 1, 'fdg', '16', '2020-12-19', 0, '0000-00-00', '', 0, 0),
(20, 'CIT_2020-2021_NAC_A1_4', 1, 'Desktop', 2, 'safsa', '545', '2020-12-19', 0, '0000-00-00', '', 0, 0),
(21, 'CIT_2020-2021_AC_A1_9', 1, 'apple', 2, 'study', '12', '2020-12-19', 0, '0000-00-00', '', 0, 0),
(22, 'CIT_2020-2021_AC_A1_10', 1, 'desktop', 1, 'fsdafsdaf', '32', '2020-12-21', 1, '0000-00-00', '', 0, 0),
(23, 'CIT_2020-2021_AC_A1_11', 1, 'desktop', 1, 'fsdafsdaf', '32', '2020-12-21', 0, '0000-00-00', '', 0, 0),
(24, 'CIT_2020-2021_RND_A1_1', 1, 'monitor', 1, 'to study', '12', '2020-12-22', 0, '0000-00-00', '', 0, 0),
(25, 'CIT_2020-2021_RND_A1_1', 2, 'monitor', 1, 'to study', '12', '2020-12-22', 0, '0000-00-00', '', 0, 0),
(26, 'CIT_2020-2021_RND_A1_2', 1, 'Desktop', 1, 'to study', '12', '2020-12-22', 0, '0000-00-00', '', 0, 0),
(27, 'CIT_2020-2021_RND_A1_3', 1, 'iphone', 1, 'to use', '12', '2020-12-22', 0, '0000-00-00', '', 0, 0),
(28, 'CIT_2020-2021_RND_A1_1', 3, 'Desktop', 1, 'to study', '12', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(29, 'CIT_2020-2021_RND_A1_2', 2, 'Desktop', 1, 'to study', '12', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(30, 'CIT_2020-2021_AC_A1_12', 1, 'iphone', 1, 'to use', '32', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(31, 'CIT_2020-2021_AC_A1_13', 1, 'Desktop', 1, 'to use', '12', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(32, 'CIT_2020-2021_AC_A1_14', 1, 'laptop', 12, 'to study', '321', '2020-12-23', 1, '2020-12-28', '3/CIT/2019-', 324, 2342),
(33, 'CIT_2020-2021_RND_A1_3', 2, 'laptop', 111, 'to use', '222', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(34, 'CIT_2020-2021_AC_A1_15', 1, 'iphone', 12, 'to use', '12', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(35, 'CIT_2020-2021_RND_A1_4', 1, 'iphone', 12, 'to study', '12', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(36, 'CIT_2020-2021_AC_A1_16', 1, 'apple', 1, 'eat', '10', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(37, 'CIT_2020-2021_AC_A1_17', 1, 'Desktop', 12, 'to study', '12', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(38, 'CIT_2020-2021_RND_A1_5', 1, 'iphone', 12, 'to study', '32', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(39, 'CIT_2020-2021_AC_A1_18', 1, 'monitor', 1, 'to study', '12', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(40, 'CIT_2020-2021_AC_A1_19', 1, 'Desktop', 1, 'to study', '12', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(41, 'CIT_2020-2021_RND_A1_6', 1, 'Desktop', 12, 'to use', '32', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(42, 'CIT_2020-2021_RND_A1_6', 2, 'laptop', 1, 'to study', '32', '2020-12-23', 0, '0000-00-00', '', 0, 0),
(43, 'CIT_2020-2021_AC_A1_20', 1, 'Pens', 5, 'dept', '10', '2020-12-24', 0, '0000-00-00', '', 0, 0),
(44, 'CIT_2020-2021_AC_A1_21', 1, 'Mouse', 2, 'Online class', '400', '2020-12-24', 0, '0000-00-00', '', 0, 0),
(45, 'CIT_2020-2021_AC_A1_21', 2, 'Laptop', 1, 'Online class', '40000', '2020-12-24', 0, '0000-00-00', '', 0, 0),
(46, 'CIT_2020-2021_AC_A1_22', 1, 'chair', 5, 'lab', '1000', '2020-12-24', 0, '0000-00-00', '', 0, 0),
(47, 'CIT_2020-2021_AC_A1_23', 1, 'pen', 10, 'to write', '10', '2020-12-29', 0, '0000-00-00', '', 0, 0),
(48, 'CIT_2020-2021_AC_A1_23', 2, 'text book', 5, 'to study', '200', '2020-12-29', 0, '0000-00-00', '', 0, 0),
(49, 'CIT_2020-2021_AC_A1_23', 3, 'apple', 10, 'ro eat', '40', '2020-12-29', 0, '0000-00-00', '', 0, 0),
(50, 'CIT_2020-2021_NAC_A1_5', 1, 'apple', 1, 'eat', '10', '2020-12-29', 0, '0000-00-00', '', 0, 0),
(51, 'CIT_2020-2021_NAC_A1_5', 2, 'mango', 1, 'eat', '20', '2020-12-29', 0, '0000-00-00', '', 0, 0),
(52, 'CIT_2020-2021_AC_A1_24', 1, 'Pen', 5, 'official', '5', '2020-12-29', 0, '0000-00-00', '', 0, 0),
(53, 'CIT_2020-2021_AC_A1_24', 2, 'notebook', 5, 'official', '5', '2020-12-29', 0, '0000-00-00', '', 0, 0),
(54, 'CIT_2020-2021_AC_A1_25', 1, 'pc', 0, 'lab', '1000', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(55, 'CIT_2020-2021_AC_A1_25', 2, 'mouse', 0, 'lab', '10', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(56, 'CIT_2020-2021_AC_A1_26', 1, 'pc', 0, 'lab', '1000', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(57, 'CIT_2020-2021_AC_A1_26', 2, 'Mouse', 0, 'lab', '10', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(58, 'CIT_2020-2021_AC_A1_27', 1, 'gdfgdf', 0, 'fdg', '16', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(59, 'CIT_2020-2021_AC_A1_27', 2, 'gdfgdf', 0, 'lab', '1000', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(60, 'CIT_2020-2021_NAC_A1_6', 1, 'gdfgdf', 0, 'fdg', '16', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(61, 'CIT_2020-2021_NAC_A1_6', 2, 'g', 0, 'lab', '10', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(62, 'CIT_2020-2021_AC_A1_28', 1, 'h', 0, 'j', '16', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(63, 'CIT_2020-2021_AC_A1_28', 2, 'a', 0, 'lab', '400', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(64, 'CIT_2020-2021_AC_A1_29', 1, 'h', 65, 'j', '16', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(65, 'CIT_2020-2021_AC_A1_29', 2, 'a', 5, 'lab', '400', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(66, 'CIT_2020-2021_NAC_A1_7', 1, 'gdfgdf', 5, 'lab', '16', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(67, 'CIT_2020-2021_NAC_A1_7', 2, 'aaa', 19, 'lab', '10', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(68, 'CIT_2020-2021_NAC_A1_8', 1, 'gdfgdf', 1, 'lab', '16', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(69, 'CIT_2020-2021_NAC_A1_8', 2, 'aaa', 5, 'lab', '1000', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(70, 'CIT_2020-2021_AC_A1_30', 1, 'gdfgdf', 5, 'lab', '16', '2021-03-01', 0, '0000-00-00', '', 0, 0),
(71, 'CIT_2020-2021_AC_A1_30', 2, 'aaa', 2, 'lab', '1000', '2021-03-01', 0, '0000-00-00', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_indent`
--

CREATE TABLE `purchase_indent` (
  `slno` int(200) NOT NULL,
  `purchase_indent_no` varchar(255) NOT NULL,
  `requester_email_id` varchar(255) NOT NULL,
  `purchase_indent_date` date NOT NULL,
  `type_of_purchase` varchar(255) NOT NULL,
  `type_of_material` varchar(255) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `approve_state` tinyint(3) NOT NULL,
  `quotation` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_indent`
--

INSERT INTO `purchase_indent` (`slno`, `purchase_indent_no`, `requester_email_id`, `purchase_indent_date`, `type_of_purchase`, `type_of_material`, `item_category`, `link`, `approve_state`, `quotation`, `comment`) VALUES
(1, 'CIT_2020-2021_AC_A1_1', 'shiva.19mca86@cambridge.edu.in', '2020-12-18', 'ACADEMIC', 'Non-Consumable', 'â®â®â®medicines', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', 3, 'pdf/procurement/shiva.19mca86@cambridge.edu.in/CIT_2020-2021_AC_A1_1 (myfile.pdf).pdf', '0'),
(2, 'CIT_2020-2021_AC_A1_2', 'shiva.19mca86@cambridge.edu.in', '2020-12-18', 'ACADEMIC', 'â®Consumable', 'â®â®â®fire extinguishers', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', 3, '', '0'),
(3, 'CIT_2020-2021_AC_A1_3', 'shiva.19mca86@cambridge.edu.in', '2020-12-18', 'ACADEMIC', 'â®Consumable', 'â®cooling equipment', 'asfsadfwerwer', 3, '', '0'),
(4, 'CIT_2020-2021_AC_A1_4', 'shiva.19mca86@cambridge.edu.in', '2020-12-18', 'ACADEMIC', 'Non-Consumable', 'â®â®â®tools', 'i am shiva kumar', -2, '', '0'),
(5, 'CIT_2020-2021_AC_A1_5', 'shiva.19mca86@cambridge.edu.in', '2020-12-18', 'ACADEMIC', 'Asset(IT)', 'â®â®â®medicines', 'i phone yu want', -3, '', '0'),
(6, 'CIT_2020-2021_AC_A1_6', 'shiva.19mca86@cambridge.edu.in', '2020-12-19', 'ACADEMIC', 'â®Consumable', 'furniture', 'asfsadfwerwer', 0, '', ''),
(7, 'CIT_2020-2021_AC_A1_7', 'shiva.19mca86@cambridge.edu.in', '2020-12-19', 'ACADEMIC', 'CONSUMABLEâ®', 'â®â®â®grocery', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', 0, '', ''),
(8, 'CIT_2020-2021_AC_A1_8', 'shiva.19mca86@cambridge.edu.in', '2020-12-19', 'ACADEMIC', 'CONSUMABLEâ®', 'â®â®â®grocery', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', -1, '', 'no money'),
(1, 'CIT_2020-2021_NAC_A1_1', 'shiva.19mca86@cambridge.edu.in', '2020-12-19', 'NON_ACADEMIC', 'Others', 'â®â®â®grocery', 'i am shiva kumar', 3, '', 'hey shiva sorry for rejecting your message'),
(2, 'CIT_2020-2021_NAC_A1_2', 'shiva.19mca86@cambridge.edu.in', '2020-12-19', 'NON_ACADEMIC', 'Non-Consumable', 'furniture', 'i am shiva kumar', 3, '', ''),
(3, 'CIT_2020-2021_NAC_A1_3', 'shiva.19mca86@cambridge.edu.in', '2020-12-19', 'NON_ACADEMIC', 'CONSUMABLEâ®', 'furniture', '', 3, '', ''),
(4, 'CIT_2020-2021_NAC_A1_4', 'shiva.19mca86@cambridge.edu.in', '2020-12-19', 'NON_ACADEMIC', 'Non-Consumable', 'â®â®â®medicines', 'http://localhost/procurement/purchase_Indent_form.php', 3, '', ''),
(9, 'CIT_2020-2021_AC_A1_9', 'shiva.19mca86@cambridge.edu.in', '2020-12-19', 'ACADEMIC', 'Non-Consumable', 'hardware/plumbing', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess8186182079/3rdparty/phpMyAdmin/sql.php?server=1&db=id13756877_college_database&table=current_academic_year&pos=0', 3, '', ''),
(10, 'CIT_2020-2021_AC_A1_10', 'shiva.19mca86@cambridge.edu.in', '2020-12-21', 'ACADEMIC', 'Non-Consumable', 'â®statione', 'sdafsafewfrw', 0, '', ''),
(11, 'CIT_2020-2021_AC_A1_11', 'shiva.19mca86@cambridge.edu.in', '2020-12-21', 'ACADEMIC', 'Non-Consumable', 'â®â®â®grocery', 'dsgswrgewtg', 0, '', ''),
(12, 'CIT_2020-2021_AC_A1_12', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'ACADEMIC', 'Asset(IT)', 'furniture', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', 0, '', ''),
(1, 'CIT_2020-2021_RND_A1_1', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'R_&_D', 'Non-Consumable', 'furniture', 'i am shiva kumar', 3, '', ''),
(2, 'CIT_2020-2021_RND_A1_2', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'R_&_D', 'Non-Consumable', 'â®cooling equipment', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', -3, '', 'no money'),
(13, 'CIT_2020-2021_AC_A1_13', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'ACADEMIC', 'Non-Consumable', 'furniture', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', 0, '', ''),
(14, 'CIT_2020-2021_AC_A1_14', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'ACADEMIC', 'Non-Consumable', 'furniture', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', 3, 'pdf/procurement/shiva.19mca86@cambridge.edu.in/CIT_2020-2021_AC_A1_14 (SPORTSWEAR E-COMMERCE MOBILE APPLICATION.pdf).pdf', ''),
(3, 'CIT_2020-2021_RND_A1_3', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'R_&_D', 'Non-Consumable', 'furniture', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', 3, 'pdf/procurement/shiva.19mca86@cambridge.edu.in/CIT_2020-2021_RND_A1_3 (myfile (10).pdf).pdf', ''),
(15, 'CIT_2020-2021_AC_A1_15', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'ACADEMIC', 'CONSUMABLEâ®', 'â®electrical / electronic goods', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', 1, '', ''),
(4, 'CIT_2020-2021_RND_A1_4', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'R_&_D', 'Non-Consumable', 'furniture', 'i am shiva kumar', 3, '', ''),
(16, 'CIT_2020-2021_AC_A1_16', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'ACADEMIC', 'CONSUMABLEâ®', 'â®â®â®grocery', '', -3, '', 'money not available'),
(17, 'CIT_2020-2021_AC_A1_17', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'ACADEMIC', 'Non-Consumable', 'â®cooling equipment', 'i am shiva kumar', 1, '', ''),
(5, 'CIT_2020-2021_RND_A1_5', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'R_&_D', 'Non-Consumable', 'â®cooling equipment', 'https://sg3plcpnl0191.prod.sin3.secureserver.net:2083/cpsess4528162248/frontend/paper_lantern/index.html?login=1&post_login=50982768732763', 3, '', ''),
(18, 'CIT_2020-2021_AC_A1_18', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'ACADEMIC', 'CONSUMABLEâ®', 'furniture', 'i am shiva kumar', 1, '', ''),
(19, 'CIT_2020-2021_AC_A1_19', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'ACADEMIC', 'CONSUMABLEâ®', 'furniture', 'asfsadfwerwer', -1, '', 'no money'),
(6, 'CIT_2020-2021_RND_A1_6', 'shiva.19mca86@cambridge.edu.in', '2020-12-23', 'R_&_D', 'Non-Consumable', 'furniture', 'asfsadfwerwer', -3, '', 'dde we dont  have money for your request'),
(20, 'CIT_2020-2021_AC_A1_20', 'rashmi.mca@cambridge.edu.in', '2020-12-24', 'ACADEMIC', 'Asset(IT)', 'â®statione', '', 1, '', ''),
(21, 'CIT_2020-2021_AC_A1_21', 'sindhu.mca@cambridge.edu.in', '2020-12-24', 'ACADEMIC', 'Asset(IT)', 'â®â®â®desktops/Laptops/Printers', '', -3, '', 'no money'),
(22, 'CIT_2020-2021_AC_A1_22', 'diwakar.mca@cambridge.edu.in', '2020-12-24', 'ACADEMIC', 'Others', 'furniture', '', -1, '', 'no money\r\n'),
(23, 'CIT_2020-2021_AC_A1_23', 'shiva.19mca86@cambridge.edu.in', '2020-12-29', 'ACADEMIC', 'CONSUMABLEâ®', 'â®statione', 'http://localhost/procurement/purchase_Indent_form.php', 3, '', ''),
(5, 'CIT_2020-2021_NAC_A1_5', 'shiva.19mca86@cambridge.edu.in', '2020-12-29', 'NON_ACADEMIC', 'Asset(IT)', 'furniture', 'http://fhgfjghjhkjhg', 3, '', ''),
(24, 'CIT_2020-2021_AC_A1_24', 'rashmi.mca@cambridge.edu.in', '2020-12-29', 'ACADEMIC', 'CONSUMABLEâ®', 'â®statione', '', 0, '', ''),
(25, 'CIT_2020-2021_AC_A1_25', 'shiva.19mca86@cambridge.edu.in', '2021-03-01', 'ACADEMIC', 'CONSUMABLEâ®', 'furniture', '', 0, '', ''),
(26, 'CIT_2020-2021_AC_A1_26', 'shiva.19mca86@cambridge.edu.in', '2021-03-01', 'ACADEMIC', 'Asset(IT)', 'â®â®others', 'ggggg', 0, '', ''),
(27, 'CIT_2020-2021_AC_A1_27', 'shiva.19mca86@cambridge.edu.in', '2021-03-01', 'ACADEMIC', 'CONSUMABLEâ®', 'â®statione', 'ggggg', 0, '', ''),
(6, 'CIT_2020-2021_NAC_A1_6', 'shiva.19mca86@cambridge.edu.in', '2021-03-01', 'NON_ACADEMIC', 'CONSUMABLEâ®', 'â®statione', '', 0, '', ''),
(28, 'CIT_2020-2021_AC_A1_28', 'shiva.19mca86@cambridge.edu.in', '2021-03-01', 'ACADEMIC', 'Non-Consumable', 'â®cooling equipment', '', 0, '', ''),
(29, 'CIT_2020-2021_AC_A1_29', 'shiva.19mca86@cambridge.edu.in', '2021-03-01', 'ACADEMIC', 'Non-Consumable', 'â®cooling equipment', '', 0, '', ''),
(7, 'CIT_2020-2021_NAC_A1_7', 'shiva.19mca86@cambridge.edu.in', '2021-03-01', 'NON_ACADEMIC', 'Asset(IT)', 'â®statione', '', 0, '', ''),
(8, 'CIT_2020-2021_NAC_A1_8', 'shiva.19mca86@cambridge.edu.in', '2021-03-01', 'NON_ACADEMIC', 'Others', 'â®cooling equipment', '', 0, '', ''),
(30, 'CIT_2020-2021_AC_A1_30', 'shiva.19mca86@cambridge.edu.in', '2021-03-01', 'ACADEMIC', 'CONSUMABLEâ®', 'â®statione', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `qualification_table`
--

CREATE TABLE `qualification_table` (
  `id` int(11) NOT NULL,
  `qualification` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `qualification_table`
--

INSERT INTO `qualification_table` (`id`, `qualification`) VALUES
(1, 'MCA'),
(2, 'M-TECH'),
(4, 'MSC'),
(5, 'BTECH'),
(6, 'MBA'),
(7, 'PHD'),
(8, 'MSC'),
(9, 'MPHIL');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `slno` int(11) NOT NULL,
  `quiz_id` varchar(225) NOT NULL,
  `quiz_name` varchar(225) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `points` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_options`
--

CREATE TABLE `quiz_options` (
  `option_id` varchar(225) NOT NULL,
  `quiz_id` varchar(225) NOT NULL,
  `question_id` varchar(225) NOT NULL,
  `is_correct` varchar(255) NOT NULL,
  `options` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `question_id` varchar(225) NOT NULL,
  `question_no` varchar(225) NOT NULL,
  `quiz_id` varchar(225) NOT NULL,
  `quiz_text` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_score`
--

CREATE TABLE `quiz_score` (
  `question_id` varchar(225) NOT NULL,
  `question_no` varchar(225) NOT NULL,
  `usn` varchar(225) NOT NULL,
  `score` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`) VALUES
(1, 'I'),
(2, 'II'),
(3, 'III'),
(4, 'IV'),
(5, 'V'),
(6, 'VI'),
(7, 'VII'),
(8, 'VIII');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `slno` int(225) NOT NULL,
  `usn` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `email_id` varchar(225) NOT NULL,
  `department` varchar(225) NOT NULL,
  `batch_id` varchar(225) NOT NULL,
  `profile_pic` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `city` varchar(225) NOT NULL,
  `state` varchar(225) NOT NULL,
  `pincode` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `department` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `semester` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `syllabus_scheme` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `department`, `semester`, `syllabus_scheme`, `subject_code`, `subject_name`) VALUES
(1, 'MCA', 'I', '2016', '16MCA11', 'DATA STRUCTURES USING C'),
(2, 'MCA', 'I', '2016', '16MCA12', 'UNIX PROGRAMMING'),
(3, 'MCA', 'I', '2016', '16MCA13', 'WEB TECHNOLOGIES'),
(4, 'MCA', 'I', '2016', '16MCA14', 'COMPUTER ORGANIZATION'),
(5, 'MCA', 'I', '2016', '16MCA15', 'DISCRETE MATHEMATICAL STRUCTURES'),
(6, 'MCA', 'I', '2016', '16MCA16', 'DATA STRUCTURES USING CLABORATORY'),
(7, 'MCA', 'I', '2016', '16MCA17', 'UNIXPROGRAMMING LABORATORY'),
(8, 'MCA', 'I', '2016', '16MCA18', 'WEB PROGRAMMING LABORATARY'),
(10, 'MCA', 'II', '2016', '16MCA22', 'OBJECT ORIENTED PROGRAMMING USING C++'),
(11, 'MCA', 'II', '2016', '16MCA23', 'DATABASE MANAGEMENT SYSTEMS'),
(12, 'MCA', 'II', '2016', '16MCA24', 'OPERATING SYSTEMS'),
(13, 'MCA', 'II', '2016', '16MCA25', 'SYSTEM SOFTWARE'),
(14, 'MCA', 'II', '2016', '16MCA26', 'PYTHON PROGRAMMING LABORATORY'),
(15, 'MCA', 'II', '2016', '16MCA21', 'PYTHON PROGRAMMING'),
(16, 'MCA', 'II', '2016', '16MCA27', 'OBJECT ORIENTED PROGRAMMING USING C++ LABORATORY'),
(17, 'MCA', 'II', '2016', '16MCA28', 'DBMS LABORATORY'),
(26, 'MCA', 'III', '2016', '16MCA31', 'COMPUTER NETWORKS'),
(27, 'MCA', 'III', '2016', '16MCA32', 'JAVA PROGRAMMING'),
(29, 'MCA', 'III', '2016', '16MCA33', 'ANALYSIS AND DESIGN OF ALGORITHMS'),
(30, 'MCA', 'III', '2016', '16MCA34', 'SOFTWARE ENGINEERING'),
(31, 'MCA', 'III', '2016', '16MCA35', 'ELECTIVE 1'),
(32, 'MCA', 'III', '2016', '16MCA36', 'COMPUTER NETWORKS LABORATORY'),
(33, 'MCA', 'III', '2016', '16MCA37', 'JAVA PROGRAMMING LABORATORY'),
(34, 'MCA', 'III', '2016', '16MCA38', 'ANALYSIS AND DESIGN OF ALGORITHMS LABORATORY'),
(35, 'MCA', 'IV', '2016', '16MCA41', 'ADVANCED JAVA PROGRAMMING'),
(36, 'MCA', 'IV', '2016', '16MCA42', 'ADVANCED WEB PROGRAMMING'),
(37, 'MCA', 'IV', '2016', '14MCA43', 'SOFTWARE TESTING AND PRACTICES'),
(38, 'MCA', 'IV', '2016', '16MCA44', 'ELECTIVE-2'),
(39, 'MCA', 'IV', '2016', '16MCA45', 'ELECTIVE-3'),
(40, 'MCA', 'IV', '2016', '16MCA46', 'ADVANCED JAVA PROGRAMMING LABORATORY'),
(41, 'MCA', 'IV', '2016', '16MCA47', 'ADVANCED WEB PROGRAMMING LABORATORY'),
(42, 'MCA', 'IV', '2016', '16MCA48', 'SOFTWARE TESTING LABORATORY'),
(43, 'MCA', 'IV', '2016', '16MCA49', 'SEMINAR'),
(44, 'MCA', 'V', '2016', '16MCA51', 'OBJECT-ORIENTED MODELING AND DESIGN PATTERNS'),
(45, 'MCA', 'V', '2016', '16MCA52', 'PROGRAMMING USING C# & .NET'),
(46, 'MCA', 'V', '2016', '16MCA53', 'MOBILE APPLICATIONS'),
(47, 'MCA', 'V', '2016', '16MCA541', 'WEB2.0 AND RICH INTERNET APPLICATIONS'),
(48, 'MCA', 'V', '2016', '16MCA542', 'CLOUD COMPUTING'),
(49, 'MCA', 'V', '2016', '16MCA543', 'ARTIFICIAL INTELLIGENCE'),
(50, 'MCA', 'V', '2016', '16MCA544', 'STORAGE AREA NETWORKS'),
(51, 'MCA', 'V', '2016', '16MCA551', 'SOFTWARE DEFINED NETWORKS'),
(52, 'MCA', 'V', '2016', '16MCA552', 'INTERNET OF THINGS(IOT)'),
(53, 'MCA', 'V', '2016', '16MCA553', 'SERVICE ORIENTED ARCHITECTURE'),
(54, 'MCA', 'V', '2016', '16MCA554', 'SOFTWARE PROJECT MANAGEMENT'),
(55, 'MCA', 'V', '2016', '16MCA56', 'SOFTWARE DESIGN LABORATORY'),
(56, 'MCA', 'V', '2016', '16MCA57', '.NET LABORATORY'),
(57, 'MCA', 'V', '2016', '16MCA58', 'MINI PROJECT : MOBILE APPLICATIONS DEVELOPMENT USING ANDROID/IOS/WINDOWS ETC'),
(58, 'MCA', 'V', '2016', '16MCA59', 'SEMINAR'),
(59, 'MCA', 'I', '2018', '18MCA11', 'OBJECT ORIENTED PROGRAMMING WITH C++'),
(60, 'MCA', 'I', '2018', '18MCA12', 'UNIX AND SHELL PROGRAMMING'),
(61, 'MCA', 'I', '2018', '18MCA13', 'WEB TECHNOLOGIES'),
(62, 'MCA', 'I', '2018', '18MCA14', 'SOFTWARE ENGINEERING'),
(63, 'MCA', 'I', '2018', '18MCA15', 'COMPUTER ORGANIZATION'),
(64, 'MCA', 'I', '2018', '18MCA16', 'C++ PROGRAMMING LAB'),
(65, 'MCA', 'I', '2018', '18MCA17', 'UNIX AND SHELL PROGRAMMING LAB'),
(66, 'MCA', 'I', '2018', '18MCA18', 'WEB TECHNOLOGIES LAB'),
(68, 'MCA', 'II', '2018', '18MCA21', 'PROGRAMMING USING JAVA'),
(69, 'MCA', 'II', '2018', '18MCA22', 'DATA STRUCTURES USING C++'),
(70, 'MCA', 'II', '2018', '18MCA23', 'DISCRETE MATHEMATICAL STRUCTURES AND STATISTICS'),
(71, 'MCA', 'II', '2018', '18MCA24', 'COMPUTER NETWORKS'),
(72, 'MCA', 'II', '2018', '18MCA25', 'OPERATING SYSTEMS'),
(73, 'MCA', 'II', '2018', '18MCA26', 'JAVA PROGRAMMING LAB'),
(74, 'MCA', 'II', '2018', '18MCA27', 'DATA STRUCTURES LAB'),
(75, 'MCA', 'II', '2018', '18MCA28', 'COMPUTER NETWORKS LAB'),
(76, 'MCA', 'II', '2018', '18MCA29', 'MINI PROJECT'),
(77, 'MCA', 'III', '2018', '18MCA31', 'DATABASE MANAGEMENT SYSTEM'),
(78, 'MCA', 'III', '2018', '18MCA32', 'PROGRAMMING USING PYTHON'),
(79, 'MCA', 'III', '2018', '18MCA33', 'DESIGN AND ANALYSIS OF ALGORITHMS'),
(80, 'MCA', 'III', '2018', '18MCA34', 'SYSTEM SOFTWARE'),
(81, 'MCA', 'III', '2018', '18MCA351', 'SOFTWARE TESTING'),
(82, 'MCA', 'III', '2018', '18MCA352', 'OPTIMIZATION TECHNIQUES'),
(83, 'MCA', 'III', '2018', '18MCA353', 'ADVANCE COMPUTER NETWORKS'),
(84, 'MCA', 'III', '2018', '18MCA354', 'MANAGEMENT INFORMATION SYSTEMS'),
(85, 'MCA', 'III', '2018', '18MCA36', 'DBMS LAB'),
(86, 'MCA', 'III', '2018', '18MCA37', 'PYTHON PROGRAMMING LAB'),
(87, 'MCA', 'III', '2018', '18MCA38', 'ALGORITHMS LAB'),
(88, 'MCA', 'IV', '2018', '18MCA41', 'ADVANCED JAVA PROGRAMMING'),
(89, 'MCA', 'IV', '2018', '18MCA42', 'ADVANCED WEB PROGRAMMING'),
(90, 'MCA', 'IV', '2018', '18MCA43', 'OBJECT ORIENTED MODELING AND DESIGN'),
(91, 'MCA', 'IV', '2018', '18MCA441', ' WIRELESS COMMUNICATION AND MOBILE TECHNOLOGIES'),
(92, 'MCA', 'IV', '2018', '18MCA442', 'CYBER SECURITY'),
(93, 'MCA', 'IV', '2018', '18MCA443', 'INTERNET OF THINGS(IOT)'),
(94, 'MCA', 'IV', '2018', '18MCA444', 'CLOUD COMPUTING'),
(95, 'MCA', 'IV', '2018', '18MCA451', 'ENTERPRISE RESOURCE PLANNING(ERP)'),
(96, 'MCA', 'IV', '2018', '18MCA452', 'DATA WAREHOUSING AND DATA MINING'),
(97, 'MCA', 'IV', '2018', '18MCA453', 'ADVANCED DATABASE MANAGEMENT SYSTEMS'),
(98, 'MCA', 'IV', '2018', '18MCA454', 'BIG DATA ANALYTICS'),
(99, 'MCA', 'IV', '2018', '18MCA46', 'PROFESSIONAL COMMUNICATION & REPORT WRITING'),
(100, 'MCA', 'IV', '2018', '18MCA47', 'ADVANCED JAVA PROGRAMMING LAB'),
(101, 'MCA', 'IV', '2018', '18MCA48', 'ADVANCED WEB PROGRAMMING LAB'),
(102, 'MCA', 'IV', '2018', '18MCA49', 'OBJECT ORIENTED MODELING AND DESIGN LAB'),
(103, 'MCA', 'V', '2018', '18MCA51', 'PROGRAMMING USING C#.NET'),
(104, 'MCA', 'V', '2018', '18MCA52', 'MOBILE APPLICATIONS'),
(105, 'MCA', 'V', '2018', '18MCA53', 'MACHINE LEARNING'),
(106, 'MCA', 'V', '2018', '18MCA541', 'MULTIMEDIA SYSTEMS'),
(107, 'MCA', 'V', '2018', '18MCA542', 'COMPUTER GRAPHICS'),
(108, 'MCA', 'V', '2018', '18MCA543', 'IMAGE PROCESSING'),
(109, 'MCA', 'V', '2018', '18MCA544', 'PARALLEL COMPUTING'),
(110, 'MCA', 'V', '2018', '18MCA551', 'SYSTEM SIMULATION AND MODELING'),
(111, 'MCA', 'V', '2018', '18MCA552', 'PRINCIPLES OF USER INTERFACE DESIGN'),
(112, 'MCA', 'V', '2018', '18MCA553', 'SOFTWARE ARCHITECTURE'),
(113, 'MCA', 'V', '2018', '18MCA554', 'STORAGE AREA NETWORKS'),
(114, 'MCA', 'V', '2018', '18MCA56', 'C#.NET LAB'),
(115, 'MCA', 'V', '2018', '18MCA57', 'MOBILE APPLICATIONS LAB'),
(116, 'MCA', 'V', '2018', '18MCA58', 'MINI PROJECT'),
(117, 'MCA', 'I', '2020', '20MCA11', 'DATA STRUCTURES WITH ALGORITHMS'),
(118, 'MCA', 'I', '2020', '20MCA12', 'OPERATING SYSTEM WITH UNIX'),
(119, 'MCA', 'I', '2020', '20MCA13', 'COMPUTER NETWORKS'),
(120, 'MCA', 'I', '2020', '20MCA14', 'MATHEMATICAL FOUNDATION FOR COMPUTER APPLICATIONS'),
(121, 'MCA', 'I', '2020', '20MCA15', 'RESEARCH METHODOLOGY & IPR'),
(122, 'MCA', 'I', '2020', '20MCA16', 'DATA STRUCTURES WITH ALGORITHMS LAB'),
(123, 'MCA', 'I', '2020', '20MCA17', 'UNIX PROGRAMMING LAB'),
(124, 'MCA', 'I', '2020', '20MCA18', 'COMPUTER NETWORKS LAB'),
(125, 'MCA', 'I', '2020', '20MCA19', 'BASICS OF PROGRAMMING & CO'),
(126, 'MCA', 'II', '2020', '20MCA21', 'DATABASE MANAGEMENT SYSTEM'),
(127, 'MCA', 'II', '2020', '20MCA22', 'OBJECT ORIENTED PROGRAMMING WITH JAVA'),
(128, 'MCA', 'II', '2020', '20MCA23', 'WEB TECHNOLOGIES'),
(129, 'MCA', 'II', '2020', '20MCA24', 'SOFTWARE ENGINEERING'),
(130, 'MCA', 'II', '2020', '20MCA251', 'CYBERSECURITY'),
(131, 'MCA', 'II', '2020', '20MCA252', 'DATA MINING AND BUSINESS INTELLIGENCE'),
(132, 'MCA', 'II', '2020', '20MCA253', 'ENTERPRISE RESOURCE PLANNING'),
(133, 'MCA', 'II', '2020', '20MCA254', 'USER INTERFACE DESIGN'),
(134, 'MCA', 'II', '2020', '20MCA255', 'OPTIMIZATION TECHNIQUES'),
(135, 'MCA', 'II', '2020', '20MCA261', 'CRYPTOGRAPHY AND NETWORK SECURITY'),
(136, 'MCA', 'II', '2020', '20MCA262', 'ARTIFICIAL INTELLIGENCE'),
(137, 'MCA', 'II', '2020', '20MCA263', 'MOBILE APPLICATION DEVELOPMENT'),
(138, 'MCA', 'II', '2020', '20MCA264', 'DISTRIBUTED OPERATING SYSTEM'),
(139, 'MCA', 'II', '2020', '20MCA265', 'NATURAL LANGUAGE PROCESSING'),
(140, 'MCA', 'II', '2020', '20MCA27', 'DBMS LAB'),
(141, 'MCA', 'II', '2020', '20MCA28', 'JAVA PROGRAMMING LAB.'),
(142, 'MCA', 'II', '2020', '20MCA29', 'WEB TECHNOLOGIES LAB WITH MINI-PROJECT'),
(143, 'MCA', 'III', '2018', '18MCA32', 'DBMS');

-- --------------------------------------------------------

--
-- Table structure for table `subject_mapping`
--

CREATE TABLE `subject_mapping` (
  `id` int(11) NOT NULL,
  `department` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `semester` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `syllabus_scheme` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject_mapping`
--

INSERT INTO `subject_mapping` (`id`, `department`, `semester`, `syllabus_scheme`, `subject_code`, `subject_name`, `email_id`) VALUES
(1, 'MCA', 'I', '2020', '20MCA11', 'DATA STRUCTURES WITH ALGORITHMS', 'sunil.mca@cambridge.edu.in'),
(2, 'MCA', 'I', '2020', '20MCA12', 'OPERATING SYSTEM WITH UNIX', 'diwakar.mca@cambridge.edu.in'),
(3, 'MCA', 'I', '2020', '20MCA13', 'COMPUTER NETWORKS', 'rashmi.mca@cambridge.edu.in'),
(4, 'MCA', 'I', '2020', '20MCA14', 'MATHEMATICAL FOUNDATION FOR COMPUTER APPLICATIONS', 'monika.mca@cambridge.edu.in'),
(5, 'MCA', 'I', '2020', '20MCA15', 'RESEARCH METHODOLOGY & IPR', 'temp.hod.mca@cambridge.edu.in'),
(6, 'MCA', 'I', '2020', '20MCA16', 'DATA STRUCTURES WITH ALGORITHMS LAB', 'sunil.mca@cambridge.edu.in'),
(7, 'MCA', 'I', '2020', '20MCA17', 'UNIX PROGRAMMING LAB', 'diwakar.mca@cambridge.edu.in'),
(8, 'MCA', 'I', '2020', '20MCA18', 'COMPUTER NETWORKS LAB', 'rashmi.mca@cambridge.edu.in'),
(9, 'MCA', 'IV', '2018', '18MCA442', 'CYBER SECURITY', 'amarjeet.18mca03@cambridge.edu.in'),
(10, 'MCA', 'V', '2018', '18MCA53', 'MACHINE LEARNING', 'monika.mca@cambridge.edu.in'),
(11, 'MCA', 'V', '2018', '18MCA51', 'PROGRAMMING USING C#.NET', 'diwakar.mca@cambridge.edu.in'),
(12, 'MCA', 'V', '2018', '18MCA554', 'STORAGE AREA NETWORKS', 'sindhu.mca@cambridge.edu.in'),
(13, 'MCA', 'V', '2018', '18MCA56', 'C#.NET LAB', 'diwakar.mca@cambridge.edu.in'),
(14, 'MCA', 'III', '2018', '18MCA32', 'PROGRAMMING USING PYTHON', 'sindhu.mca@cambridge.edu.in'),
(15, 'MCA', 'III', '2018', '18MCA37', 'PYTHON PROGRAMMING LAB', 'sindhu.mca@cambridge.edu.in'),
(16, 'MCA', 'III', '2018', '18MCA38', 'ALGORITHMS LAB', 'monika.mca@cambridge.edu.in'),
(17, 'MCA', 'III', '2018', '18MCA31', 'DATABASE MANAGEMENT SYSTEM', 'rashmi.mca@cambridge.edu.in'),
(18, 'MCA', 'III', '2018', '18MCA36', 'DBMS LAB', 'rashmi.mca@cambridge.edu.in'),
(19, 'MCA', 'III', '2018', '18MCA351', 'SOFTWARE TESTING', 'sunil.mca@cambridge.edu.in'),
(20, 'MCA', 'III', '2018', '18MCA34', 'SYSTEM SOFTWARE', 'vijaya.mca@cambridge.edu.in'),
(21, 'MCA', 'V', '2018', '18MCA52', 'MOBILE APPLICATIONS', 'vijaya.mca@cambridge.edu.in'),
(22, 'MCA', 'V', '2018', '18MCA57', 'MOBILE APPLICATIONS LAB', 'vijaya.mca@cambridge.edu.in');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `topic_id` varchar(225) NOT NULL,
  `module_id` varchar(225) NOT NULL,
  `topic_title` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_register`
--

CREATE TABLE `user_register` (
  `email_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verification_code` int(11) DEFAULT NULL,
  `verification_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_register`
--

INSERT INTO `user_register` (`email_id`, `designation`, `department`, `password`, `verification_code`, `verification_status`) VALUES
('akash.19mca54@cambridge.edu.in', 'HOD', 'MCA', '1234', 907278, 1),
('amarjeet.18mca03@cambridge.edu.in', 'ASSISTANT PROFESSOR', 'MCA', 'Amarjeet_71060', 239155, 1),
('dean_rd@cambridge.edu.in', 'DEAN R AND D', 'CSE', 'QW12()op', 762507, 1),
('diwakar.mca@cambridge.edu.in', 'ASSISTANT PROFESSOR', 'MCA', 'Diwakar@123', 687326, 1),
('docs@cambridge.edu.in', 'PRINCIPAL', '', '9874567', 148850, 1),
('hod.mca@cambridge.edu.in', 'HOD1', 'MCA', '321', 500373, 1),
('mahendrashivagowda@gmail.com', 'PRINCIPAL1', 'MCA', 'krishna123', 123654, 1),
('monika.mca@cambridge.edu.in', 'ASSISTANT PROFESSOR', 'MCA', 'tharun2012', 147199, 1),
('rashmi.mca@cambridge.edu.in', 'ASSISTANT PROFESSOR', 'MCA', 'shivani123', 118605, 1),
('shiva.19mca86@cambridge.edu.in', 'ASSISTANT PROFESSOR', 'MCA', '123', 115297, 1),
('shivakumard30@gmail.com', 'CFO', 'MCA', '1234', 734728, 1),
('sindhu.mca@cambridge.edu.in', 'ASSISTANT PROFESSOR', 'MCA', 'sindhucitech', 326146, 1),
('sunil.mca@cambridge.edu.in', 'ASSISTANT PROFESSOR', 'MCA', 'Sunil@123', 142379, 1),
('sushmita.18mca20@cambridge.edu.in', 'ASSOCIATE PROFESSOR', 'MCA', 'Happyme@123', 881920, 1),
('tem.mahendrashivagowda@gmail.com', 'DEAN R AND D1', 'MCA', '1234', 294449, 1),
('vijaya.mca@cambridge.edu.in', 'ASSISTANT PROFESSOR', 'MCA', '1234', 104546, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `sl_no` int(225) NOT NULL,
  `vendor_id` varchar(500) NOT NULL,
  `vendor_name` varchar(100) NOT NULL,
  `vendor_phone_no` varchar(50) NOT NULL,
  `vendor_email` varchar(200) NOT NULL,
  `vendor_company_name` varchar(500) NOT NULL,
  `vendor_address` varchar(1000) NOT NULL,
  `dealers_of` varchar(500) NOT NULL,
  `remarks` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`sl_no`, `vendor_id`, `vendor_name`, `vendor_phone_no`, `vendor_email`, `vendor_company_name`, `vendor_address`, `dealers_of`, `remarks`) VALUES
(1, '1/CIT/2019-2020', 'Raghavan', '934123506', 'gdfg12@jff.cpm', 'Ultratech Fine Chemicals', '593  3rd Cross 5th Main Hanumanthanagar  Bangalore-560019', 'sagdsg', 'dsgddggg'),
(2, '2/CIT/2019-2020', 'akash', '1234567891', 'akash@jff.cpm', 'HP', 'sadsdgdfh', 'sagdsg', 'dsgddggg'),
(3, '3/CIT/2019-2020', 'amarjeeth', '64654564', 'sa@kf.com', 'DELL', 'Delhi', 'santosh pani', 'he is too good'),
(7, '4/CIT/2020-2021', 'santosh', '9137846251', 's@gmail.com', 'ASUS', 'bangalore', 'pani', 'he is good'),
(9, '8/CIT/2020-2021', 'balaji', '9348506869', 'b@gmail.cpm', 'DELL', 'andhra predesh', 'pani', 'average');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_year`
--
ALTER TABLE `academic_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_info`
--
ALTER TABLE `base_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`batch_Id`),
  ADD KEY `slno` (`slno`);

--
-- Indexes for table `college_time`
--
ALTER TABLE `college_time`
  ADD PRIMARY KEY (`DAY`);

--
-- Indexes for table `coordinator`
--
ALTER TABLE `coordinator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_academic_year`
--
ALTER TABLE `current_academic_year`
  ADD UNIQUE KEY `index` (`indexs`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SIG_NO` (`SIG_NO`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domain_expert`
--
ALTER TABLE `domain_expert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offcial_information`
--
ALTER TABLE `offcial_information`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `personal_information`
--
ALTER TABLE `personal_information`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `purchase_indent`
--
ALTER TABLE `purchase_indent`
  ADD PRIMARY KEY (`purchase_indent_no`),
  ADD KEY `slno` (`slno`);

--
-- Indexes for table `qualification_table`
--
ALTER TABLE `qualification_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD KEY `slno` (`slno`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`email_id`),
  ADD UNIQUE KEY `usn` (`usn`),
  ADD KEY `slno` (`slno`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_mapping`
--
ALTER TABLE `subject_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_register`
--
ALTER TABLE `user_register`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`sl_no`),
  ADD UNIQUE KEY `vendor_id` (`vendor_id`),
  ADD UNIQUE KEY `vendor_phone_no` (`vendor_phone_no`),
  ADD KEY `sl_no` (`sl_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_year`
--
ALTER TABLE `academic_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `base_info`
--
ALTER TABLE `base_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `slno` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coordinator`
--
ALTER TABLE `coordinator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `domain_expert`
--
ALTER TABLE `domain_expert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `qualification_table`
--
ALTER TABLE `qualification_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `slno` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `subject_mapping`
--
ALTER TABLE `subject_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `sl_no` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
