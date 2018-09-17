-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2018 at 04:58 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cseku`
--

-- --------------------------------------------------------

--
-- Table structure for table `jms_job`
--

CREATE TABLE `jms_job` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Details` varchar(1000) NOT NULL,
  `LastDateOfApplication` date NOT NULL,
  `Salary` float NOT NULL,
  `Qualification` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

CREATE TABLE `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course`
--

INSERT INTO `reg_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `IsDeleted`) VALUES
('{2A038C6A-B6DA-408D-8458-7493D4EE5D6C}', 'cse-3200', 'Web Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{B17BDB32-6D88-4537-9545-65D940E17EEF}', 'cse-2115', 'Advanced Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_resource`
--

CREATE TABLE `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

CREATE TABLE `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_sessional_type`
--

INSERT INTO `reg_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_student_registration`
--

CREATE TABLE `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `Status`) VALUES
('{31FDEF1E-F280-436A-AFD3-A48BA772D23D}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{3CA3ABF7-7FF8-4A32-B328-235861061B72}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B7F17833-430E-489A-9CA6-E9BBE0EFA0FD}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B8B362F3-D164-4082-AA6C-08F3EC73E2A8}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{C8AE75F9-1644-48C5-87D0-4AFEC777C122}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'submitted'),
('{DBE4ED93-4A97-41CF-B8E3-5E42AEC0246F}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

CREATE TABLE `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher`
--

INSERT INTO `reg_course_teacher` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `NoOfTests`) VALUES
('{0BA78ECC-A6E7-4EA8-9BFA-6C599F88F76D}', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 5),
('{C4490FFA-154B-45FE-9773-744B3E6FDFF7}', '{683A3D91-D124-44AF-82A3-FB43837A4392}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher_registration`
--

CREATE TABLE `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher_registration`
--

INSERT INTO `reg_course_teacher_registration` (`ID`, `TeacherID`, `SessionID`, `YearID`, `TermID`) VALUES
('{4D389527-643B-4B05-80AB-E05A6EF8DE2A}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_type`
--

CREATE TABLE `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_type`
--

INSERT INTO `reg_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'Theory', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_registration_session`
--

CREATE TABLE `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

CREATE TABLE `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_term`
--

INSERT INTO `reg_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `reg_year`
--

CREATE TABLE `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_year`
--

INSERT INTO `reg_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result`
--

CREATE TABLE `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result`
--

INSERT INTO `rms_course_marks_result` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksID`, `MarksValue`, `Status`) VALUES
('{44C3C858-AFC6-4592-B160-10B921BF381C}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '10,25,25,25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result_publish`
--

CREATE TABLE `rms_course_marks_result_publish` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `MarksTotal` varchar(20) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `GradeRanges` varchar(300) NOT NULL,
  `FinalGrade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

CREATE TABLE `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{037E6C4F-CAAE-4587-B3E1-1CC6E59101A4}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020203', '12,20,20'),
('{222F2596-5F55-442C-80EA-F5AE7F466C70}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '15,25,20'),
('{71D63076-9096-4CAA-8D6D-782A25B076A7}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '15,20,20'),
('{B6BB339D-E40B-4CC4-8D34-07017EE2BE44}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '10,30,30,0,0'),
('{DBF1823F-0DF9-4E8F-9233-5AB1545BC1B7}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '20,20,20,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

CREATE TABLE `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_grade_setup`
--

INSERT INTO `rms_grade_setup` (`ID`, `Grades`, `Ranges`, `IsDefault`) VALUES
('{FC3DBA75-AF9C-4533-825E-D8A01D076F60}', 'F,E,D,C,C+,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rms_marks_setup`
--

CREATE TABLE `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_assign`
--

CREATE TABLE `tms_assign` (
  `id` int(11) NOT NULL,
  `assign_to` int(11) NOT NULL,
  `assign_by` int(11) NOT NULL,
  `assing_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tms_task`
--

CREATE TABLE `tms_task` (
  `id` int(11) NOT NULL,
  `task_name` varchar(20) NOT NULL,
  `task_creator` int(11) NOT NULL,
  `task_category` varchar(20) NOT NULL,
  `date_of_assign` date NOT NULL,
  `date_of_submission` date NOT NULL,
  `last_date_of_update` date NOT NULL,
  `progress` int(11) NOT NULL DEFAULT '0',
  `details` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_task`
--

INSERT INTO `tms_task` (`id`, `task_name`, `task_creator`, `task_category`, `date_of_assign`, `date_of_submission`, `last_date_of_update`, `progress`, `details`) VALUES
(24, 'test11', 160230, 'Study', '2018-09-17', '2018-09-20', '2018-09-17', 0, 'DIP'),
(25, 'Class Test', 160230, 'Study', '2018-09-17', '2018-09-20', '2018-09-17', 0, 'DIP Class test'),
(26, 'test11', 160230, 'Study', '2018-08-09', '2018-09-22', '2018-09-17', 0, 'update date test');

-- --------------------------------------------------------

--
-- Table structure for table `tms_task_category`
--

CREATE TABLE `tms_task_category` (
  `id` int(11) NOT NULL,
  `task_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_task_category`
--

INSERT INTO `tms_task_category` (`id`, `task_type`) VALUES
(1, 'Study'),
(2, 'Office'),
(3, 'Appointment'),
(4, 'Programming Contest');

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

CREATE TABLE `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_discipline`
--

INSERT INTO `ums_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_permission`
--

CREATE TABLE `ums_permission` (
  `TableID` int(11) NOT NULL,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(941, 'COURSE_C', 'COURSE_C', 'COURSE'),
(942, 'COURSE_R', 'COURSE_R', 'COURSE'),
(943, 'COURSE_U', 'COURSE_U', 'COURSE'),
(944, 'COURSE_D', 'COURSE_D', 'COURSE'),
(945, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(946, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(947, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(948, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(949, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(950, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(951, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(952, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(953, 'CLUB_C', 'CLUB_C', 'CLUB'),
(954, 'CLUB_R', 'CLUB_R', 'CLUB'),
(955, 'CLUB_U', 'CLUB_U', 'CLUB'),
(956, 'CLUB_D', 'CLUB_D', 'CLUB'),
(957, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(958, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(959, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(960, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(961, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(962, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(963, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(964, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(965, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(966, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(967, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(968, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(969, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(970, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(971, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(972, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(973, 'FILE_C', 'FILE_C', 'FILE'),
(974, 'FILE_R', 'FILE_R', 'FILE'),
(975, 'FILE_U', 'FILE_U', 'FILE'),
(976, 'FILE_D', 'FILE_D', 'FILE'),
(977, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(978, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(979, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(980, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(981, 'POSITION_C', 'POSITION_C', 'POSITION'),
(982, 'POSITION_R', 'POSITION_R', 'POSITION'),
(983, 'POSITION_U', 'POSITION_U', 'POSITION'),
(984, 'POSITION_D', 'POSITION_D', 'POSITION'),
(985, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(986, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(987, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(988, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(989, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(990, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(991, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(992, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(993, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(994, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(995, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(996, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(997, 'RESULT_C', 'RESULT_C', 'RESULT'),
(998, 'RESULT_R', 'RESULT_R', 'RESULT'),
(999, 'RESULT_U', 'RESULT_U', 'RESULT'),
(1000, 'RESULT_D', 'RESULT_D', 'RESULT'),
(1001, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(1002, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(1003, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(1004, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(1005, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(1006, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(1007, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(1008, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(1009, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(1010, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(1011, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(1012, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(1013, 'ROLE_C', 'ROLE_C', 'ROLE'),
(1014, 'ROLE_R', 'ROLE_R', 'ROLE'),
(1015, 'ROLE_U', 'ROLE_U', 'ROLE'),
(1016, 'ROLE_D', 'ROLE_D', 'ROLE'),
(1017, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(1018, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(1019, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(1020, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(1021, 'SESSION_C', 'SESSION_C', 'SESSION'),
(1022, 'SESSION_R', 'SESSION_R', 'SESSION'),
(1023, 'SESSION_U', 'SESSION_U', 'SESSION'),
(1024, 'SESSION_D', 'SESSION_D', 'SESSION'),
(1025, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(1026, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(1027, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(1028, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(1029, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(1030, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(1031, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(1032, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(1033, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(1034, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(1035, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(1036, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(1037, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(1038, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(1039, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(1040, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(1041, 'TERM_C', 'TERM_C', 'TERM'),
(1042, 'TERM_R', 'TERM_R', 'TERM'),
(1043, 'TERM_U', 'TERM_U', 'TERM'),
(1044, 'TERM_D', 'TERM_D', 'TERM'),
(1045, 'USER_C', 'USER_C', 'USER'),
(1046, 'USER_R', 'USER_R', 'USER'),
(1047, 'USER_U', 'USER_U', 'USER'),
(1048, 'USER_D', 'USER_D', 'USER'),
(1049, 'YEAR_C', 'YEAR_C', 'YEAR'),
(1050, 'YEAR_R', 'YEAR_R', 'YEAR'),
(1051, 'YEAR_U', 'YEAR_U', 'YEAR'),
(1052, 'YEAR_D', 'YEAR_D', 'YEAR'),
(1053, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(1054, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(1055, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(1056, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(1057, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(1058, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(1059, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(1060, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(1061, 'TASK_C', 'TASK_C', 'TASK'),
(1062, 'TASK_R', 'TASK_R', 'TASK'),
(1063, 'TASK_U', 'TASK_U', 'TASK'),
(1064, 'TASK_D', 'TASK_D', 'TASK'),
(1065, 'TASK_CATEGORY_C', 'TASK_CATEGORY_C', 'TASK_CATEGORY'),
(1066, 'TASK_CATEGORY_R', 'TASK_CATEGORY_R', 'TASK_CATEGORY'),
(1067, 'TASK_CATEGORY_U', 'TASK_CATEGORY_U', 'TASK_CATEGORY'),
(1068, 'TASK_CATEGORY_D', 'TASK_CATEGORY_D', 'TASK_CATEGORY');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

CREATE TABLE `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_position`
--

INSERT INTO `ums_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role`
--

CREATE TABLE `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role`
--

INSERT INTO `ums_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role_permission`
--

CREATE TABLE `ums_role_permission` (
  `Row` int(11) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(2015, 'student', 'CLUB_C'),
(2016, 'student', 'CLUB_R'),
(2017, 'student', 'CLUB_U'),
(2018, 'student', 'CLUB_D'),
(2019, 'student', 'DISCUSSION_C'),
(2020, 'student', 'DISCUSSION_R'),
(2021, 'student', 'DISCUSSION_U'),
(2022, 'student', 'DISCUSSION_D'),
(2023, 'student', 'DISCUSSION_COMMENT_C'),
(2024, 'student', 'DISCUSSION_COMMENT_R'),
(2025, 'student', 'DISCUSSION_COMMENT_U'),
(2026, 'student', 'DISCUSSION_COMMENT_D'),
(2027, 'student', 'PROJECT_C'),
(2028, 'student', 'PROJECT_R'),
(2029, 'student', 'PROJECT_U'),
(2030, 'student', 'PROJECT_D'),
(2031, 'student', 'QUESTION_C'),
(2032, 'student', 'QUESTION_R'),
(2033, 'student', 'QUESTION_U'),
(2034, 'student', 'QUESTION_D'),
(2035, 'student', 'REGISTRATION_R'),
(2036, 'student', 'RESULT_R'),
(2037, 'student', 'TASK_C'),
(2038, 'student', 'TASK_R'),
(2039, 'student', 'TASK_U'),
(2040, 'student', 'TASK_D'),
(2041, 'student', 'USER_R'),
(2042, 'student', 'VIDEO_C'),
(2043, 'student', 'VIDEO_R'),
(2044, 'student', 'VIDEO_U'),
(2045, 'student', 'VIDEO_D'),
(2046, 'stuff', 'TASK_C'),
(2047, 'stuff', 'TASK_R'),
(2048, 'stuff', 'TASK_U'),
(2049, 'stuff', 'TASK_D'),
(2050, 'teacher', 'COURSE_C'),
(2051, 'teacher', 'COURSE_R'),
(2052, 'teacher', 'COURSE_U'),
(2053, 'teacher', 'COURSE_D'),
(2054, 'teacher', 'DISCUSSION_C'),
(2055, 'teacher', 'DISCUSSION_R'),
(2056, 'teacher', 'DISCUSSION_U'),
(2057, 'teacher', 'DISCUSSION_D'),
(2058, 'teacher', 'DISCUSSION_CAT_C'),
(2059, 'teacher', 'DISCUSSION_CAT_R'),
(2060, 'teacher', 'DISCUSSION_CAT_U'),
(2061, 'teacher', 'DISCUSSION_CAT_D'),
(2062, 'teacher', 'DISCUSSION_COMMENT_C'),
(2063, 'teacher', 'DISCUSSION_COMMENT_R'),
(2064, 'teacher', 'DISCUSSION_COMMENT_U'),
(2065, 'teacher', 'DISCUSSION_COMMENT_D'),
(2066, 'teacher', 'FILE_C'),
(2067, 'teacher', 'FILE_R'),
(2068, 'teacher', 'FILE_U'),
(2069, 'teacher', 'FILE_D'),
(2070, 'teacher', 'PROJECT_C'),
(2071, 'teacher', 'PROJECT_R'),
(2072, 'teacher', 'PROJECT_U'),
(2073, 'teacher', 'PROJECT_D'),
(2074, 'teacher', 'QUESTION_C'),
(2075, 'teacher', 'QUESTION_R'),
(2076, 'teacher', 'QUESTION_U'),
(2077, 'teacher', 'QUESTION_D'),
(2078, 'teacher', 'REGISTRATION_C'),
(2079, 'teacher', 'REGISTRATION_R'),
(2080, 'teacher', 'REGISTRATION_U'),
(2081, 'teacher', 'REGISTRATION_D'),
(2082, 'teacher', 'RESULT_C'),
(2083, 'teacher', 'RESULT_R'),
(2084, 'teacher', 'RESULT_U'),
(2085, 'teacher', 'RESULT_D'),
(2086, 'teacher', 'TASK_C'),
(2087, 'teacher', 'TASK_R'),
(2088, 'teacher', 'TASK_U'),
(2089, 'teacher', 'TASK_D'),
(2090, 'administrator', 'ATTENDANCE_C'),
(2091, 'administrator', 'ATTENDANCE_R'),
(2092, 'administrator', 'ATTENDANCE_U'),
(2093, 'administrator', 'ATTENDANCE_D'),
(2094, 'administrator', 'CLUB_C'),
(2095, 'administrator', 'CLUB_R'),
(2096, 'administrator', 'CLUB_U'),
(2097, 'administrator', 'CLUB_D'),
(2098, 'administrator', 'COURSE_C'),
(2099, 'administrator', 'COURSE_R'),
(2100, 'administrator', 'COURSE_U'),
(2101, 'administrator', 'COURSE_D'),
(2102, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(2103, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(2104, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(2105, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(2106, 'administrator', 'COURSE_TYPE_C'),
(2107, 'administrator', 'COURSE_TYPE_R'),
(2108, 'administrator', 'COURSE_TYPE_U'),
(2109, 'administrator', 'COURSE_TYPE_D'),
(2110, 'administrator', 'DISCIPLINE_C'),
(2111, 'administrator', 'DISCIPLINE_R'),
(2112, 'administrator', 'DISCIPLINE_U'),
(2113, 'administrator', 'DISCIPLINE_D'),
(2114, 'administrator', 'DISCUSSION_C'),
(2115, 'administrator', 'DISCUSSION_R'),
(2116, 'administrator', 'DISCUSSION_U'),
(2117, 'administrator', 'DISCUSSION_D'),
(2118, 'administrator', 'DISCUSSION_CAT_C'),
(2119, 'administrator', 'DISCUSSION_CAT_R'),
(2120, 'administrator', 'DISCUSSION_CAT_U'),
(2121, 'administrator', 'DISCUSSION_CAT_D'),
(2122, 'administrator', 'DISCUSSION_COMMENT_C'),
(2123, 'administrator', 'DISCUSSION_COMMENT_R'),
(2124, 'administrator', 'DISCUSSION_COMMENT_U'),
(2125, 'administrator', 'DISCUSSION_COMMENT_D'),
(2126, 'administrator', 'FILE_C'),
(2127, 'administrator', 'FILE_R'),
(2128, 'administrator', 'FILE_U'),
(2129, 'administrator', 'FILE_D'),
(2130, 'administrator', 'GRADE_SETUP_C'),
(2131, 'administrator', 'GRADE_SETUP_R'),
(2132, 'administrator', 'GRADE_SETUP_U'),
(2133, 'administrator', 'GRADE_SETUP_D'),
(2134, 'administrator', 'MARKS_SETUP_C'),
(2135, 'administrator', 'MARKS_SETUP_R'),
(2136, 'administrator', 'MARKS_SETUP_U'),
(2137, 'administrator', 'MARKS_SETUP_D'),
(2138, 'administrator', 'PERMISSION_C'),
(2139, 'administrator', 'PERMISSION_R'),
(2140, 'administrator', 'PERMISSION_U'),
(2141, 'administrator', 'PERMISSION_D'),
(2142, 'administrator', 'POSITION_C'),
(2143, 'administrator', 'POSITION_R'),
(2144, 'administrator', 'POSITION_U'),
(2145, 'administrator', 'POSITION_D'),
(2146, 'administrator', 'PROJECT_C'),
(2147, 'administrator', 'PROJECT_R'),
(2148, 'administrator', 'PROJECT_U'),
(2149, 'administrator', 'PROJECT_D'),
(2150, 'administrator', 'QUESTION_C'),
(2151, 'administrator', 'QUESTION_R'),
(2152, 'administrator', 'QUESTION_U'),
(2153, 'administrator', 'QUESTION_D'),
(2154, 'administrator', 'REGISTRATION_C'),
(2155, 'administrator', 'REGISTRATION_R'),
(2156, 'administrator', 'REGISTRATION_U'),
(2157, 'administrator', 'REGISTRATION_D'),
(2158, 'administrator', 'RESULT_C'),
(2159, 'administrator', 'RESULT_R'),
(2160, 'administrator', 'RESULT_U'),
(2161, 'administrator', 'RESULT_D'),
(2162, 'administrator', 'ROLE_C'),
(2163, 'administrator', 'ROLE_R'),
(2164, 'administrator', 'ROLE_U'),
(2165, 'administrator', 'ROLE_D'),
(2166, 'administrator', 'SCHOOL_C'),
(2167, 'administrator', 'SCHOOL_R'),
(2168, 'administrator', 'SCHOOL_U'),
(2169, 'administrator', 'SCHOOL_D'),
(2170, 'administrator', 'SESSION_C'),
(2171, 'administrator', 'SESSION_R'),
(2172, 'administrator', 'SESSION_U'),
(2173, 'administrator', 'SESSION_D'),
(2174, 'administrator', 'SURVEY_C'),
(2175, 'administrator', 'SURVEY_R'),
(2176, 'administrator', 'SURVEY_U'),
(2177, 'administrator', 'SURVEY_D'),
(2178, 'administrator', 'SURVEY_QUESTION_C'),
(2179, 'administrator', 'SURVEY_QUESTION_R'),
(2180, 'administrator', 'SURVEY_QUESTION_U'),
(2181, 'administrator', 'SURVEY_QUESTION_D'),
(2182, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(2183, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(2184, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(2185, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(2186, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(2187, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(2188, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(2189, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(2190, 'administrator', 'TASK_C'),
(2191, 'administrator', 'TASK_R'),
(2192, 'administrator', 'TASK_U'),
(2193, 'administrator', 'TASK_D'),
(2194, 'administrator', 'TASK_CATEGORY_C'),
(2195, 'administrator', 'TASK_CATEGORY_R'),
(2196, 'administrator', 'TASK_CATEGORY_U'),
(2197, 'administrator', 'TASK_CATEGORY_D'),
(2198, 'administrator', 'TERM_C'),
(2199, 'administrator', 'TERM_R'),
(2200, 'administrator', 'TERM_U'),
(2201, 'administrator', 'TERM_D'),
(2202, 'administrator', 'USER_C'),
(2203, 'administrator', 'USER_R'),
(2204, 'administrator', 'USER_U'),
(2205, 'administrator', 'USER_D'),
(2206, 'administrator', 'VIDEO_C'),
(2207, 'administrator', 'VIDEO_R'),
(2208, 'administrator', 'VIDEO_U'),
(2209, 'administrator', 'VIDEO_D'),
(2210, 'administrator', 'VIDEO_COMMENT_C'),
(2211, 'administrator', 'VIDEO_COMMENT_R'),
(2212, 'administrator', 'VIDEO_COMMENT_U'),
(2213, 'administrator', 'VIDEO_COMMENT_D'),
(2214, 'administrator', 'YEAR_C'),
(2215, 'administrator', 'YEAR_R'),
(2216, 'administrator', 'YEAR_U'),
(2217, 'administrator', 'YEAR_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

CREATE TABLE `ums_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_school`
--

INSERT INTO `ums_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user`
--

CREATE TABLE `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DisciplineID` varchar(40) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `DisciplineID`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('aysha@gmail.com', '020208', 'aysha@gmail.com', '$2y$10$pJX46d.T.jkANrRShAm0qOMYkYJ/YbNfu09BFmcmMiYGKfuuEcWgO', 'Aysha', 'mrs', 'Akther', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('kashif@gmail.com', '020202', 'kashif@gmail.com', '$2y$10$pM7S85LE300vkDhYnFIz0.WKfpSPJLMNzTS4y1wLCH0TeR0qno27q', 'Kashif', 'Nizam', 'Khan', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$l0gFzILMq03DcwcBGxIdgunnOd9G5kF8J8ucZZvCKkt8mNGlI74/W', 'Kazi', 'Masudul', 'Alam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('naeema@gmail.com', '160231', 'naeema@gmail.com', '$2y$10$GNmdhbwSX54JFkI7vdHsTeTLbtumZKEbNB/ucPeDv77ANwE1.z7ly', 'Naeema', 'Binthe', 'Ashraf', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('ryhan@gmail.com', '160230', 'ryhan@gmail.com', '$2y$10$xqiBs8.uSifFPgOyDJ6./elFZhTVNMeS4UfRky9xzSldeqks/q8zu', 'Ryhan', 'Ahmed', 'Tamim', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('zahid@gmail.com', '020203', 'zahid@gmail.com', '$2y$10$nLZhZRneURR.v2AFqWw9KOe6/J60pCV/ioBnJnruw5H/Xf3x0lFy6', 'Zahidul', '', 'Islam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

CREATE TABLE `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('aysha@gmail.com', 'f', 'm', 'Dr. Kazi Masudul Alam', '12313123123', 'Computer Science and Engineering Discipline, Khulna University', '45 '),
('kashif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('naeema@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('ryhan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('zahid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

CREATE TABLE `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

CREATE TABLE `ums_user_position` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(50, 'aysha@gmail.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(51, 'mkazi078@uottawa.ca', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

CREATE TABLE `ums_user_role` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(122, 'middle@test.com', 'student'),
(123, 'middle@test.com', 'student'),
(124, 'middle@test.com', 'student'),
(125, 'middle@test.com', 'student'),
(126, 'middle@test.com', 'student'),
(127, 'middle@test.com', 'student'),
(128, 'middle@test.com', 'student'),
(129, 'middle@test.com', 'student'),
(130, 'middle@test.com', 'student'),
(131, 'middle@test.com', 'student'),
(132, 'middle@test.com', 'student'),
(133, 'middle@test.com', 'student'),
(134, 'middle@test.com', 'student'),
(135, 'middle@test.com', 'student'),
(136, 'middle@test.com', 'student'),
(137, 'middle@test.com', 'student'),
(138, 'middle@test.com', 'student'),
(142, 'zahid@gmail.com', 'student'),
(144, 'middle1@test.com', 'student'),
(145, 'kashif@gmail.com', 'student'),
(164, 'aysha@gmail.com', 'administrator'),
(165, 'mkazi078@uottawa.ca', 'administrator'),
(166, 'ryhan@gmail.com', 'administrator'),
(167, 'naeema@gmail.com', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jms_job`
--
ALTER TABLE `jms_job`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course`
--
ALTER TABLE `reg_course`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_sessional_type`
--
ALTER TABLE `reg_course_sessional_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_student_registration`
--
ALTER TABLE `reg_course_student_registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_teacher`
--
ALTER TABLE `reg_course_teacher`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_teacher_registration`
--
ALTER TABLE `reg_course_teacher_registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_type`
--
ALTER TABLE `reg_course_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_registration_session`
--
ALTER TABLE `reg_registration_session`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_term`
--
ALTER TABLE `reg_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_year`
--
ALTER TABLE `reg_year`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_course_marks_result`
--
ALTER TABLE `rms_course_marks_result`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_course_marks_result_publish`
--
ALTER TABLE `rms_course_marks_result_publish`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_course_marks_tests`
--
ALTER TABLE `rms_course_marks_tests`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_grade_setup`
--
ALTER TABLE `rms_grade_setup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_marks_setup`
--
ALTER TABLE `rms_marks_setup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tms_assign`
--
ALTER TABLE `tms_assign`
  ADD PRIMARY KEY (`id`,`assign_to`,`assign_by`);

--
-- Indexes for table `tms_task`
--
ALTER TABLE `tms_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tms_task_category`
--
ALTER TABLE `tms_task_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ums_discipline`
--
ALTER TABLE `ums_discipline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_permission`
--
ALTER TABLE `ums_permission`
  ADD PRIMARY KEY (`TableID`);

--
-- Indexes for table `ums_position`
--
ALTER TABLE `ums_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_role`
--
ALTER TABLE `ums_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_role_permission`
--
ALTER TABLE `ums_role_permission`
  ADD PRIMARY KEY (`Row`);

--
-- Indexes for table `ums_user`
--
ALTER TABLE `ums_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `UniversityID` (`UniversityID`);

--
-- Indexes for table `ums_user_details`
--
ALTER TABLE `ums_user_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_user_position`
--
ALTER TABLE `ums_user_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_user_role`
--
ALTER TABLE `ums_user_role`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_task`
--
ALTER TABLE `tms_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tms_task_category`
--
ALTER TABLE `tms_task_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ums_permission`
--
ALTER TABLE `ums_permission`
  MODIFY `TableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1069;
--
-- AUTO_INCREMENT for table `ums_role_permission`
--
ALTER TABLE `ums_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2218;
--
-- AUTO_INCREMENT for table `ums_user_position`
--
ALTER TABLE `ums_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `ums_user_role`
--
ALTER TABLE `ums_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;