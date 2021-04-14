-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 07:30 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cambridge`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` varchar(200) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `department_description` varchar(100) DEFAULT NULL,
  `department_vision` varchar(100) DEFAULT NULL,
  `department_mission` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` varchar(200) NOT NULL,
  `designation_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` varchar(200) NOT NULL,
  `faculty_first_name` varchar(200) NOT NULL,
  `faculty_middle_name` varchar(200) NOT NULL,
  `faculty_last_name` varchar(200) NOT NULL,
  `faculty_email_id` varchar(200) NOT NULL,
  `faculty_mobile_no` int(12) DEFAULT NULL,
  `faculty_phone_no` int(12) DEFAULT NULL,
  `faculty_permanent_address` varchar(200) DEFAULT NULL,
  `faculty_temporary_address` varchar(200) DEFAULT NULL,
  `faculty_marital_status` varchar(10) DEFAULT NULL,
  `faculty_gender` varchar(10) DEFAULT NULL,
  `faculty_profile_picture` blob,
  `faculty_date_of_birth` date DEFAULT NULL,
  `faculty_personal_email_id` varchar(200) DEFAULT NULL,
  `faculty_qualification` varchar(200) DEFAULT NULL,
  `faculty_domain_experties` varchar(200) DEFAULT NULL,
  `faculty_no_of_national_paper` int(200) DEFAULT NULL,
  `faculty_no_of_international_paper` int(200) DEFAULT NULL,
  `faculty_date_of_joining` date DEFAULT NULL,
  `faculty_created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `faculty_status` int(10) DEFAULT NULL,
  `faculty_password` varchar(50) NOT NULL,
  `faculty_username` varchar(50) DEFAULT NULL,
  `designation_id` varchar(200) NOT NULL,
  `department_id` varchar(200) NOT NULL,
  `department_admin` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `scheme_id` int(20) NOT NULL,
  `scheme_name` varchar(200) NOT NULL,
  `syllabus_scheme` date NOT NULL,
  `department_id` varchar(200) NOT NULL,
  `semester_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(20) NOT NULL,
  `semester` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_email_id` varchar(200) NOT NULL,
  `student_id` varchar(200) NOT NULL,
  `student_name` varchar(300) NOT NULL,
  `scheme_id` int(20) NOT NULL,
  `department_id` varchar(200) NOT NULL,
  `student_usn` varchar(50) NOT NULL,
  `student_profile_picture` blob,
  `student_phone_number` int(12) DEFAULT NULL,
  `student_guardian_name` varchar(200) DEFAULT NULL,
  `student_guardian_phone_number` int(12) DEFAULT NULL,
  `student_permanent_address` varchar(500) DEFAULT NULL,
  `student_temporary_address` varchar(500) DEFAULT NULL,
  `student_nationality` varchar(20) DEFAULT NULL,
  `student_state` varchar(20) DEFAULT NULL,
  `student_city` varchar(20) DEFAULT NULL,
  `student_address_pin_code` varchar(20) DEFAULT NULL,
  `student_medical_status` varchar(20) DEFAULT NULL,
  `student_blood_group` varchar(20) DEFAULT NULL,
  `student_personal_email` varchar(200) DEFAULT NULL,
  `student_date_of_birth` date DEFAULT NULL,
  `student_date_of_joining` date NOT NULL,
  `student_date_of_passing` date DEFAULT NULL,
  `student_status` int(10) DEFAULT NULL,
  `student_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(200) NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `subject_code` varchar(200) NOT NULL,
  `scheme_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `faculty_email_id` varchar(200) NOT NULL,
  `student_email_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_email_id`),
  ADD UNIQUE KEY `unique_faculty` (`faculty_id`),
  ADD UNIQUE KEY `faculty_personal_email_id` (`faculty_personal_email_id`),
  ADD KEY `foreign_key1` (`designation_id`),
  ADD KEY `foreign_key2` (`department_id`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`scheme_id`),
  ADD KEY `foreign_key4` (`semester_id`),
  ADD KEY `foreign_key5` (`department_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_email_id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `student_personal_email_unique` (`student_personal_email`),
  ADD KEY `foreign_key3` (`department_id`),
  ADD KEY `foreign_key7` (`scheme_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `foreign_key6` (`scheme_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD KEY `foreign_key8` (`faculty_email_id`),
  ADD KEY `foreign_key9` (`student_email_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `scheme_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(200) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `foreign_key1` FOREIGN KEY (`designation_id`) REFERENCES `designation` (`designation_id`),
  ADD CONSTRAINT `foreign_key2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `scheme`
--
ALTER TABLE `scheme`
  ADD CONSTRAINT `foreign_key4` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`),
  ADD CONSTRAINT `foreign_key5` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `foreign_key3` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `foreign_key7` FOREIGN KEY (`scheme_id`) REFERENCES `scheme` (`scheme_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `foreign_key6` FOREIGN KEY (`scheme_id`) REFERENCES `scheme` (`scheme_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `foreign_key8` FOREIGN KEY (`faculty_email_id`) REFERENCES `faculty` (`faculty_email_id`),
  ADD CONSTRAINT `foreign_key9` FOREIGN KEY (`student_email_id`) REFERENCES `student` (`student_email_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
