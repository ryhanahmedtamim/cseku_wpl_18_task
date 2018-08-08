-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 08, 2018 at 04:53 AM
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
-- Table structure for table `tms_task`
--

CREATE TABLE `tms_task` (
  `id` int(11) NOT NULL,
  `task_name` varchar(20) NOT NULL,
  `task_category` varchar(20) NOT NULL,
  `assign_to` varchar(20) NOT NULL,
  `assign_by` varchar(20) NOT NULL,
  `date_of_assign` date NOT NULL,
  `date_of_submission` date NOT NULL,
  `details` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_task`
--

INSERT INTO `tms_task` (`id`, `task_name`, `task_category`, `assign_to`, `assign_by`, `date_of_assign`, `date_of_submission`, `details`) VALUES
(1, 'test', 'test', 'test', 'test', '2018-08-01', '2018-08-17', 'test'),
(2, 'tast2', 'Study', '160230', '160230', '2018-08-07', '2018-08-31', 'Last of Pager Submission'),
(3, 'Class Test', 'Study', '160230', '160230', '2018-08-07', '2018-08-12', 'You have to study more.');

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
(4, 'Program');

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
(689, 'COURSE_C', 'COURSE_C', 'COURSE'),
(690, 'COURSE_R', 'COURSE_R', 'COURSE'),
(691, 'COURSE_U', 'COURSE_U', 'COURSE'),
(692, 'COURSE_D', 'COURSE_D', 'COURSE'),
(693, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(694, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(695, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(696, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(697, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(698, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(699, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(700, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(701, 'CLUB_C', 'CLUB_C', 'CLUB'),
(702, 'CLUB_R', 'CLUB_R', 'CLUB'),
(703, 'CLUB_U', 'CLUB_U', 'CLUB'),
(704, 'CLUB_D', 'CLUB_D', 'CLUB'),
(705, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(706, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(707, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(708, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(709, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(710, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(711, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(712, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(713, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(714, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(715, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(716, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(717, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(718, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(719, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(720, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(721, 'FILE_C', 'FILE_C', 'FILE'),
(722, 'FILE_R', 'FILE_R', 'FILE'),
(723, 'FILE_U', 'FILE_U', 'FILE'),
(724, 'FILE_D', 'FILE_D', 'FILE'),
(725, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(726, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(727, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(728, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(729, 'POSITION_C', 'POSITION_C', 'POSITION'),
(730, 'POSITION_R', 'POSITION_R', 'POSITION'),
(731, 'POSITION_U', 'POSITION_U', 'POSITION'),
(732, 'POSITION_D', 'POSITION_D', 'POSITION'),
(733, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(734, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(735, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(736, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(737, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(738, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(739, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(740, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(741, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(742, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(743, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(744, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(745, 'RESULT_C', 'RESULT_C', 'RESULT'),
(746, 'RESULT_R', 'RESULT_R', 'RESULT'),
(747, 'RESULT_U', 'RESULT_U', 'RESULT'),
(748, 'RESULT_D', 'RESULT_D', 'RESULT'),
(749, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(750, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(751, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(752, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(753, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(754, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(755, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(756, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(757, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(758, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(759, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(760, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(761, 'ROLE_C', 'ROLE_C', 'ROLE'),
(762, 'ROLE_R', 'ROLE_R', 'ROLE'),
(763, 'ROLE_U', 'ROLE_U', 'ROLE'),
(764, 'ROLE_D', 'ROLE_D', 'ROLE'),
(765, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(766, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(767, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(768, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(769, 'SESSION_C', 'SESSION_C', 'SESSION'),
(770, 'SESSION_R', 'SESSION_R', 'SESSION'),
(771, 'SESSION_U', 'SESSION_U', 'SESSION'),
(772, 'SESSION_D', 'SESSION_D', 'SESSION'),
(773, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(774, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(775, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(776, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(777, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(778, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(779, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(780, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(781, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(782, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(783, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(784, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(785, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(786, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(787, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(788, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(789, 'TERM_C', 'TERM_C', 'TERM'),
(790, 'TERM_R', 'TERM_R', 'TERM'),
(791, 'TERM_U', 'TERM_U', 'TERM'),
(792, 'TERM_D', 'TERM_D', 'TERM'),
(793, 'USER_C', 'USER_C', 'USER'),
(794, 'USER_R', 'USER_R', 'USER'),
(795, 'USER_U', 'USER_U', 'USER'),
(796, 'USER_D', 'USER_D', 'USER'),
(797, 'YEAR_C', 'YEAR_C', 'YEAR'),
(798, 'YEAR_R', 'YEAR_R', 'YEAR'),
(799, 'YEAR_U', 'YEAR_U', 'YEAR'),
(800, 'YEAR_D', 'YEAR_D', 'YEAR'),
(801, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(802, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(803, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(804, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(805, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(806, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(807, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(808, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(809, 'TASK_C', 'TASK_C', 'TASK'),
(810, 'TASK_R', 'TASK_R', 'TASK'),
(811, 'TASK_U', 'TASK_U', 'TASK'),
(812, 'TASK_D', 'TASK_D', 'TASK');

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
(1891, 'administrator', 'ATTENDANCE_C'),
(1892, 'administrator', 'ATTENDANCE_R'),
(1893, 'administrator', 'ATTENDANCE_U'),
(1894, 'administrator', 'ATTENDANCE_D'),
(1895, 'administrator', 'CLUB_C'),
(1896, 'administrator', 'CLUB_R'),
(1897, 'administrator', 'CLUB_U'),
(1898, 'administrator', 'CLUB_D'),
(1899, 'administrator', 'COURSE_C'),
(1900, 'administrator', 'COURSE_R'),
(1901, 'administrator', 'COURSE_U'),
(1902, 'administrator', 'COURSE_D'),
(1903, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(1904, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(1905, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(1906, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(1907, 'administrator', 'COURSE_TYPE_C'),
(1908, 'administrator', 'COURSE_TYPE_R'),
(1909, 'administrator', 'COURSE_TYPE_U'),
(1910, 'administrator', 'COURSE_TYPE_D'),
(1911, 'administrator', 'DISCIPLINE_C'),
(1912, 'administrator', 'DISCIPLINE_R'),
(1913, 'administrator', 'DISCIPLINE_U'),
(1914, 'administrator', 'DISCIPLINE_D'),
(1915, 'administrator', 'DISCUSSION_C'),
(1916, 'administrator', 'DISCUSSION_R'),
(1917, 'administrator', 'DISCUSSION_U'),
(1918, 'administrator', 'DISCUSSION_D'),
(1919, 'administrator', 'DISCUSSION_CAT_C'),
(1920, 'administrator', 'DISCUSSION_CAT_R'),
(1921, 'administrator', 'DISCUSSION_CAT_U'),
(1922, 'administrator', 'DISCUSSION_CAT_D'),
(1923, 'administrator', 'DISCUSSION_COMMENT_C'),
(1924, 'administrator', 'DISCUSSION_COMMENT_R'),
(1925, 'administrator', 'DISCUSSION_COMMENT_U'),
(1926, 'administrator', 'DISCUSSION_COMMENT_D'),
(1927, 'administrator', 'FILE_C'),
(1928, 'administrator', 'FILE_R'),
(1929, 'administrator', 'FILE_U'),
(1930, 'administrator', 'FILE_D'),
(1931, 'administrator', 'GRADE_SETUP_C'),
(1932, 'administrator', 'GRADE_SETUP_R'),
(1933, 'administrator', 'GRADE_SETUP_U'),
(1934, 'administrator', 'GRADE_SETUP_D'),
(1935, 'administrator', 'MARKS_SETUP_C'),
(1936, 'administrator', 'MARKS_SETUP_R'),
(1937, 'administrator', 'MARKS_SETUP_U'),
(1938, 'administrator', 'MARKS_SETUP_D'),
(1939, 'administrator', 'PERMISSION_C'),
(1940, 'administrator', 'PERMISSION_R'),
(1941, 'administrator', 'PERMISSION_U'),
(1942, 'administrator', 'PERMISSION_D'),
(1943, 'administrator', 'POSITION_C'),
(1944, 'administrator', 'POSITION_R'),
(1945, 'administrator', 'POSITION_U'),
(1946, 'administrator', 'POSITION_D'),
(1947, 'administrator', 'PROJECT_C'),
(1948, 'administrator', 'PROJECT_R'),
(1949, 'administrator', 'PROJECT_U'),
(1950, 'administrator', 'PROJECT_D'),
(1951, 'administrator', 'QUESTION_C'),
(1952, 'administrator', 'QUESTION_R'),
(1953, 'administrator', 'QUESTION_U'),
(1954, 'administrator', 'QUESTION_D'),
(1955, 'administrator', 'REGISTRATION_C'),
(1956, 'administrator', 'REGISTRATION_R'),
(1957, 'administrator', 'REGISTRATION_U'),
(1958, 'administrator', 'REGISTRATION_D'),
(1959, 'administrator', 'RESULT_C'),
(1960, 'administrator', 'RESULT_R'),
(1961, 'administrator', 'RESULT_U'),
(1962, 'administrator', 'RESULT_D'),
(1963, 'administrator', 'ROLE_C'),
(1964, 'administrator', 'ROLE_R'),
(1965, 'administrator', 'ROLE_U'),
(1966, 'administrator', 'ROLE_D'),
(1967, 'administrator', 'SCHOOL_C'),
(1968, 'administrator', 'SCHOOL_R'),
(1969, 'administrator', 'SCHOOL_U'),
(1970, 'administrator', 'SCHOOL_D'),
(1971, 'administrator', 'SESSION_C'),
(1972, 'administrator', 'SESSION_R'),
(1973, 'administrator', 'SESSION_U'),
(1974, 'administrator', 'SESSION_D'),
(1975, 'administrator', 'SURVEY_C'),
(1976, 'administrator', 'SURVEY_R'),
(1977, 'administrator', 'SURVEY_U'),
(1978, 'administrator', 'SURVEY_D'),
(1979, 'administrator', 'SURVEY_QUESTION_C'),
(1980, 'administrator', 'SURVEY_QUESTION_R'),
(1981, 'administrator', 'SURVEY_QUESTION_U'),
(1982, 'administrator', 'SURVEY_QUESTION_D'),
(1983, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(1984, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(1985, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(1986, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(1987, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(1988, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(1989, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(1990, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(1991, 'administrator', 'TASK_C'),
(1992, 'administrator', 'TASK_R'),
(1993, 'administrator', 'TASK_U'),
(1994, 'administrator', 'TASK_D'),
(1995, 'administrator', 'TERM_C'),
(1996, 'administrator', 'TERM_R'),
(1997, 'administrator', 'TERM_U'),
(1998, 'administrator', 'TERM_D'),
(1999, 'administrator', 'USER_C'),
(2000, 'administrator', 'USER_R'),
(2001, 'administrator', 'USER_U'),
(2002, 'administrator', 'USER_D'),
(2003, 'administrator', 'VIDEO_C'),
(2004, 'administrator', 'VIDEO_R'),
(2005, 'administrator', 'VIDEO_U'),
(2006, 'administrator', 'VIDEO_D'),
(2007, 'administrator', 'VIDEO_COMMENT_C'),
(2008, 'administrator', 'VIDEO_COMMENT_R'),
(2009, 'administrator', 'VIDEO_COMMENT_U'),
(2010, 'administrator', 'VIDEO_COMMENT_D'),
(2011, 'administrator', 'YEAR_C'),
(2012, 'administrator', 'YEAR_R'),
(2013, 'administrator', 'YEAR_U'),
(2014, 'administrator', 'YEAR_D'),
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
(2089, 'teacher', 'TASK_D');

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
(166, 'ryhan@gmail.com', 'administrator');

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
-- Indexes for table `tms_task`
--
ALTER TABLE `tms_task`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ums_permission`
--
ALTER TABLE `ums_permission`
  MODIFY `TableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=813;
--
-- AUTO_INCREMENT for table `ums_role_permission`
--
ALTER TABLE `ums_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2090;
--
-- AUTO_INCREMENT for table `ums_user_position`
--
ALTER TABLE `ums_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `ums_user_role`
--
ALTER TABLE `ums_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;