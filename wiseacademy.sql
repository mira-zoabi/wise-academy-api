-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2025 at 09:56 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wiseacademy`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `sex` varchar(30) NOT NULL,
  `grade_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `previous_school` varchar(75) NOT NULL,
  `phase` varchar(20) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `last_name`, `sex`, `grade_level`, `previous_school`, `phase`, `notes`, `updated_at`, `created_at`) VALUES
(0000000001, 'John', 'Doe', 'Male', 'Preschool', 'Little Scholars Academy', 'Pending', 'Note', '2025-05-04 08:25:32', '2025-05-03 05:37:50'),
(0000000002, 'Jane', 'Smith', 'Female', 'Pre-K', 'Sunshine Learning Center', 'Pending', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000003, 'Mark', 'Johnson', 'Male', 'Kindergarten', 'Tiny Tots School', 'Approved', 'Note', '2025-05-04 09:25:46', '2025-05-03 05:37:50'),
(0000000004, 'Emily', 'Davis', 'Female', 'Grade 1', 'Bright Future Academy', 'Rejected', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000005, 'Michael', 'Brown', 'Male', 'Grade 2', 'Greenfield School', 'Approved', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000006, 'Sarah', 'Wilson', 'Female', 'Grade 3', 'Maple Leaf Academy', 'Pending', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000007, 'James', 'Taylor', 'Male', 'Grade 4', 'Westside Primary School', 'Approved', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000008, 'Olivia', 'Anderson', 'Female', 'Grade 5', 'Riverdale School', 'Rejected', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000009, 'Daniel', 'Thomas', 'Male', 'Grade 6', 'Mountain View Academy', 'Approved', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000010, 'Sophia', 'Jackson', 'Female', 'Grade 7', 'Pinehill School', 'Pending', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000011, 'Matthew', 'White', 'Male', 'Grade 8', 'Green Valley School', 'Pending', 'Note', '2025-05-04 09:25:56', '2025-05-03 05:37:50'),
(0000000012, 'Liam', 'Harris', 'Male', 'Grade 9', 'Horizon Academy', 'Approved', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000013, 'Ava', 'Martin', 'Female', 'Grade 10', 'Ocean Breeze High School', 'Rejected', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000014, 'Noah', 'Garcia', 'Male', 'Grade 11', 'Maplewood High School', 'Approved', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000015, 'Isabella', 'Martinez', 'Female', 'Grade 12', 'Silver Creek High School', 'Pending', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000016, 'Ethan', 'Rodriguez', 'Male', 'Preschool', 'Little Learners Academy', 'Approved', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000017, 'Charlotte', 'Lee', 'Female', 'Pre-K', 'Sunflower Preschool', 'Pending', 'Note', '2025-05-04 09:26:26', '2025-05-03 05:37:50'),
(0000000018, 'Mason', 'Walker', 'Male', 'Kindergarten', 'Oakwood School', 'Pending', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000019, 'Amelia', 'Perez', 'Female', 'Grade 1', 'Willow Creek Academy', 'Approved', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000020, 'Alexander', 'Gonzalez', 'Male', 'Grade 2', 'Happy Days School', 'Rejected', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000021, 'Harper', 'Nelson', 'Female', 'Grade 3', 'Bright Horizons School', 'Approved', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000022, 'Benjamin', 'Carter', 'Male', 'Grade 4', 'Forest Hills Academy', 'Pending', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000023, 'Ella', 'Mitchell', 'Female', 'Grade 5', 'Blue Ridge School', 'Pending', 'Note', '2025-05-04 09:26:17', '2025-05-03 05:37:50'),
(0000000024, 'Sebastian', 'Roberts', 'Male', 'Grade 6', 'Sunset Hills School', 'Approved', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50'),
(0000000025, 'Chloe', 'Evans', 'Female', 'Grade 7', 'Parkview Academy', 'Rejected', 'Note', '2025-05-03 05:37:50', '2025-05-03 05:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

DROP TABLE IF EXISTS `system_log`;
CREATE TABLE IF NOT EXISTS `system_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `error` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`id`, `file`, `error`, `extra`, `created_at`) VALUES
(1, 'search-students', 'You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ILIKE \'%joh%\' OR `student`.`last_name` ILIKE \'%joh%\'\' at line 1', 'QueryFailedError: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'ILIKE \'%joh%\' OR `student`.`last_name` ILIKE \'%joh%\'\' at line 1\n    at Query.onResult (C:\\wamp64\\www\\wise-academy-api\\node_modules\\typeorm\\driver\\src\\driver\\mysql\\MysqlQueryRunner.ts:243:33)\n    at Query.execute (C:\\wamp64\\www\\wise-academy-api\\node_modules\\mysql2\\lib\\commands\\command.js:36:14)\n    at PoolConnection.handlePacket (C:\\wamp64\\www\\wise-academy-api\\node_modules\\mysql2\\lib\\base\\connection.js:475:34)\n    at PacketParser.onPacket (C:\\wamp64\\www\\wise-academy-api\\node_modules\\mysql2\\lib\\base\\connection.js:93:12)\n    at PacketParser.executeStart (C:\\wamp64\\www\\wise-academy-api\\node_modules\\mysql2\\lib\\packet_parser.js:75:16)\n    at Socket.<anonymous> (C:\\wamp64\\www\\wise-academy-api\\node_modules\\mysql2\\lib\\base\\connection.js:100:25)\n    at Socket.emit (node:events:524:28)\n    at addChunk (node:internal/streams/readable:561:12)\n    at readableAddChunkPushByteMode (node:internal/streams/readable:512:3)\n    at Readable.push (node:internal/streams/readable:392:5)', '2025-05-03 18:12:33');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
