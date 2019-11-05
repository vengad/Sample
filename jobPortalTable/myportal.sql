-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for jobportal
CREATE DATABASE IF NOT EXISTS `jobportal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jobportal`;

-- Dumping structure for table jobportal.education_detail
CREATE TABLE IF NOT EXISTS `education_detail` (
  `user_account_id` int(11) NOT NULL,
  `degree_name` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `university` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `cgpa` decimal(2,0) DEFAULT NULL,
  `resume` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.employer
CREATE TABLE IF NOT EXISTS `employer` (
  `idemployer` int(11) NOT NULL,
  `usertypeid` int(11) DEFAULT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `profile` varchar(50) DEFAULT NULL,
  `website` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.experience_detail
CREATE TABLE IF NOT EXISTS `experience_detail` (
  `user_account_id` int(11) NOT NULL,
  `is_current_job` char(10) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `job_city` varchar(45) NOT NULL,
  `job_state` varchar(45) NOT NULL,
  `job_country` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.job_apply
CREATE TABLE IF NOT EXISTS `job_apply` (
  `user_account_id` int(11) DEFAULT NULL,
  `job_post_id` int(11) DEFAULT NULL,
  `apply_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.job_location
CREATE TABLE IF NOT EXISTS `job_location` (
  `idjob_location` int(11) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idjob_location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.job_post
CREATE TABLE IF NOT EXISTS `job_post` (
  `idjob_post` int(11) NOT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `job_type` int(11) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `is_active` char(10) DEFAULT NULL,
  PRIMARY KEY (`idjob_post`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.job_post_skill_set
CREATE TABLE IF NOT EXISTS `job_post_skill_set` (
  `idjob_post_skill_set` int(11) DEFAULT NULL,
  `job_post_id` int(11) DEFAULT NULL,
  `job_post_skill_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.job_type
CREATE TABLE IF NOT EXISTS `job_type` (
  `idjob_type` int(11) NOT NULL,
  `job_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idjob_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.seeker
CREATE TABLE IF NOT EXISTS `seeker` (
  `idseeker` int(11) NOT NULL,
  `usertypeid` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `contactno` int(11) DEFAULT NULL,
  PRIMARY KEY (`idseeker`),
  KEY `usertypeid` (`usertypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.seeker_skillset
CREATE TABLE IF NOT EXISTS `seeker_skillset` (
  `idseeker_skillset` int(11) DEFAULT NULL,
  `seeker_skillset_id` int(11) DEFAULT NULL,
  `seeker_skillset_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.skillset
CREATE TABLE IF NOT EXISTS `skillset` (
  `idskillset` int(11) NOT NULL,
  `skillset_name` varchar(45) DEFAULT NULL,
  `skillset_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`idskillset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
-- Dumping structure for table jobportal.user_type
CREATE TABLE IF NOT EXISTS `user_type` (
  `iduser_type` int(11) NOT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`iduser_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
