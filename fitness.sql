-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 04, 2023 at 05:58 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitness`
--

-- --------------------------------------------------------

--
-- Table structure for table `calorie_tracker`
--

CREATE TABLE `calorie_tracker` (
  `serial_no` int(255) NOT NULL,
  `calorie_burnt` int(255) NOT NULL,
  `time` timestamp(2) NOT NULL DEFAULT current_timestamp(2) ON UPDATE current_timestamp(2),
  `user_sno` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calorie_tracker`
--

INSERT INTO `calorie_tracker` (`serial_no`, `calorie_burnt`, `time`, `user_sno`) VALUES
(1, 122, '2022-11-08 23:22:50.12', 1),
(2, 121212121, '2022-11-09 00:41:46.18', 1),
(3, 121212121, '2022-11-09 00:41:54.86', 1),
(4, 121212121, '2022-11-09 00:41:58.08', 1),
(5, 121212121, '2022-11-09 00:42:08.87', 1),
(7, 1212, '2022-11-09 01:04:28.00', 1),
(8, 1212, '2022-11-09 01:05:26.00', 1),
(9, 99999, '2022-11-09 05:42:34.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pose`
--

CREATE TABLE `pose` (
  `serial_no` int(88) NOT NULL,
  `pose_id` int(88) NOT NULL,
  `pose_name` varchar(88) NOT NULL,
  `pose_desc` varchar(2000) NOT NULL,
  `cat_id` int(89) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pose`
--

INSERT INTO `pose` (`serial_no`, `pose_id`, `pose_name`, `pose_desc`, `cat_id`) VALUES
(1, 1, 'POSES FOR YOUR ABS', 'Step-by-step instructions for the best yoga poses to firm your abs and fire up your core.', 1),
(2, 2, 'POSES FOR YOUR ARMS', '', 1),
(3, 3, 'POSES FOR YOUR HAMSTRINGS', 'Big Toe Pose gently lengthens and strengthens even tight hamstrings, while Heron Pose gives you a more intense stretch.', 1),
(4, 4, 'POSES FOR YOUR HIPS', 'Feel like a Happy Baby again: These yoga poses will open tight hips, freeing your body, mind, and spirit and alleviating back pain.', 1),
(5, 5, 'POSES FOR YOUR KNEES', 'Weak in the knees? When performed mindfully, these yoga poses can help prevent knee problems and disease and help you regain strength and flexibility after an injury.', 1),
(6, 6, 'POSES FOR YOUR LOWER BACK', 'Looking to target your lower back? Try asanas like Downward-Facing Dog and Extended Triangle Pose, which strengthen and stretch your back. Plus, yoga for lower back pain.', 1),
(7, 7, 'POSES FOR YOUR LUNGS', 'Yoga breathing begins with strong, healthy lungs. Poses like Bridge, Cobra, Wheel, and Upward-Facing Dog open and stretch the chest, stimulate the lungs, and can even be therapeutic for asthma.', 1),
(8, 8, 'POSES FOR YOUR UPPER BACK', 'Modern-day screen time makes strengthening and opening the upper back crucial for a healthy body. Use these yoga poses to counteract the effects of daily life and relieve pain and tightness in your upper back.', 1),
(9, 9, 'POSES FOR YOUR LEGS', 'From yoga squats to Chair, these key poses sculpt strong, lean legs and build strength.', 1),
(10, 1, 'YOGA FOR ANXIETY', 'Feeling anxious or overwhelmed? These yoga poses for anxiety can help you calm down and find your center.', 2),
(11, 2, 'YOGA FOR BACK PAIN', 'Yoga can not only help you tune in to your body, but many poses are effective in stretching and toning the muscles that support your spine.', 2),
(12, 3, 'YOGA FOR CALM', 'Everyone needs a little more calm in their life. Yoga for Calm will help you ground and find your center.', 2),
(13, 4, 'YOGA FOR DIGESTION', 'When you’re gut is off, your whole day can follow suit. Use these yoga poses for digestion to regulate your bowels and decrease bloat.', 2),
(14, 5, 'YOGA FOR FLEXIBILITY', 'These yoga poses for flexibility will help you lengthen and stretch your muscles in a safe, effective way. Include these poses in your practice regularly to see improvements.', 2),
(15, 6, 'YOGA FOR HEADACHES', 'Getting on your mat when you’re suffering from a headache can help relieve some of the symptoms. By adding more circulation to your head and taking deep breaths, you might see improvements.', 2),
(16, 7, 'YOGA FOR HIGH BLOOD PRESSURE', 'Improve your circulation by adding these yoga for high blood pressure poses into your daily practice.', 2),
(17, 8, 'YOGA FOR NECK PAIN', 'If you’re experiencing serious neck pain, consult a physician. For minor kinks and cricks, try these yoga for neck pain poses to relieve muscle tension.', 2),
(18, 9, 'YOGA FOR SCIATICA', 'Sciatica and its excruciating pain can seem inescapable. Although there are several yoga poses and stretches that can help you find relief. Ease your way into and out of each pose and notice what feels best in your body. Repeat often.', 2),
(19, 1, 'ARM BALANCE YOGA', 'Move past fear, build better balance, and strengthen your body with arm balance yoga poses like Crow Pose, Firefly Pose, Eight Angle Pose, and more.', 3),
(20, 2, 'BALANCING YOGA', 'Build a strong foundation for your asana practice with these balancing yoga poses. Get step-by-step instructions and reap the benefits.', 3),
(21, 3, 'STANDING YOGA', 'Build strength and set the foundation for a safe yoga practice. Get step-by-step instructions and reap the benefits of standing yoga poses here.', 3),
(22, 4, 'SEATED YOGA POSES', 'Get grounded in your yoga practice with seated poses that help you find better alignment, increase your flexibility, and relieve lower back pain and discomfort. And best of all? Many of these postures are accessible even for beginners.', 3),
(23, 5, 'CORE YOGA POSES', 'Engage your abdominal muscles with core yoga poses that build a strong and stable center like Boat Pose, Dolphin Pose and Side Plank Pose.', 3),
(24, 6, 'FORWARD BEND YOGA POSES', 'Learn how to work stiff muscles safely, promote lower-body flexibility, and find correct alignment with these forward bend yoga poses.', 3),
(25, 7, 'TWIST YOGA POSES', 'Aid digestion, and relieve lower back pain with twist yoga poses like Bharadvaja’s Twist, Half Lord of the Fishes Pose, and Revolved Triangle Pose.', 3),
(26, 8, 'HIP-OPENING YOGA POSES', 'Loosen tight hips, improve your range of motion and circulation, alleviate back pain, & more in these hip-opening yoga poses. These hip openers promote flexibility and are important for injury prevention.', 3),
(27, 9, 'YOGA BACKBENDS', 'Discover the powerful effects of yoga backbends with step-by-step instructions, sequences, and expert advice to keep your practice pain-free.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_sno` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_pass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `yoga`
--

CREATE TABLE `yoga` (
  `yoga_id` int(88) NOT NULL,
  `yoga_name` varchar(88) NOT NULL,
  `pose_of` int(88) NOT NULL,
  `cat_id` int(88) NOT NULL,
  `yoga_link` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `yoga`
--

INSERT INTO `yoga` (`yoga_id`, `yoga_name`, `pose_of`, `cat_id`, `yoga_link`) VALUES
(1, 'Crow Pose | Crane Pose', 1, 3, 'https://www.youtube.com/watch?v=FBzWk1bx9P8'),
(2, 'Dolphin Pose', 1, 3, 'https://www.youtube.com/watch?v=W9qEcTjmA78'),
(3, 'Eight-Angle Pose', 1, 3, 'https://www.youtube.com/watch?v=8PZJYywclA8'),
(4, 'Firefly Pose', 1, 3, 'https://www.youtube.com/watch?v=ClFVzbD9QAY'),
(5, 'Four-Limbed Staff Pose | Chaturanga Dandasana', 1, 3, 'https://www.youtube.com/watch?v=3Xc0YFltRWs'),
(6, 'Peacock Pose', 1, 3, 'https://www.youtube.com/watch?v=ASNK54226ts'),
(7, 'Plank Pose', 1, 3, 'https://www.youtube.com/watch?v=OMR5ikcgWaI'),
(8, 'Pose Dedicated to the Sage Koundinya I', 1, 3, 'https://www.youtube.com/watch?v=KW9ofw6uM0U'),
(9, 'Pose Dedicated to the Sage Koundinya II', 1, 3, 'https://www.youtube.com/watch?v=q-oOypfCuYM'),
(10, 'Scale Pose', 1, 3, 'https://www.youtube.com/watch?v=xpnp45KWUak'),
(11, 'Shoulder-Pressing Pose', 1, 3, 'https://www.youtube.com/watch?v=ljxXmGzt-Dc'),
(12, 'Side Crow Pose | Side Crane Pose', 1, 3, 'https://www.youtube.com/watch?v=Mc6D2OrMTX0'),
(13, 'Side Plank Pose', 1, 3, 'https://www.youtube.com/watch?v=_ByCVx-WxfQ'),
(14, 'Wild Thing', 1, 3, 'https://www.youtube.com/watch?v=dSQF5O3dLOk'),
(15, 'Eagle Pose', 2, 3, 'https://www.youtube.com/watch?v=9wwtGegsD4E'),
(16, 'Extended Hand-to-Big-Toe Pose', 2, 3, 'https://www.youtube.com/watch?v=G8dFCt9V6yo'),
(17, 'Half Moon Pose', 2, 3, 'https://www.youtube.com/watch?v=csErxVR7dpA'),
(18, 'Handstand', 2, 3, 'https://www.youtube.com/shorts/zTU8cG9S8c0'),
(19, 'Dancer Pose | Lord of the Dance Pose', 2, 3, 'https://www.youtube.com/watch?v=TXNgRNsqcPo'),
(20, 'Side Plank Pose', 2, 3, 'https://www.youtube.com/watch?v=_ByCVx-WxfQ'),
(21, 'Side-Reclining Leg Lift (Anantasana)', 2, 3, 'https://www.youtube.com/watch?v=49N1m_RZmVQ'),
(22, 'Supported Headstand', 2, 3, 'https://www.youtube.com/shorts/ZU85yRo2uwU'),
(23, 'Supported Shoulderstand', 2, 3, 'https://www.youtube.com/watch?v=UjHTOW9x3WM'),
(24, 'Warrior 3 Pose', 2, 3, 'https://www.youtube.com/watch?v=uEc5hrgIYx4'),
(25, 'Big Toe Pose', 3, 3, 'https://www.youtube.com/watch?v=INtjr2jjtmU'),
(26, 'Chair Pose', 3, 3, 'https://www.youtube.com/watch?v=Pb9Xx7o__os'),
(27, 'Dolphin Pose', 3, 3, 'https://www.youtube.com/watch?v=fbxtdLxYQfM'),
(28, 'Eagle Pose', 3, 3, 'https://www.youtube.com/watch?v=FTWFM-lL5jQ'),
(29, 'Bharadvaja’s Twist', 4, 3, 'https://www.youtube.com/watch?v=PneqOh9TvzI'),
(30, 'Boat Pose', 4, 3, 'https://www.youtube.com/watch?v=QVEINjrYUPU'),
(31, 'Bound Angle Pose', 4, 3, 'https://www.youtube.com/watch?v=hRcvSEtoecg'),
(32, 'Easy Pose', 4, 3, 'https://www.youtube.com/watch?v=4J97THGPxoc'),
(33, 'Fire Log Pose', 4, 3, 'https://www.youtube.com/watch?v=6P263Jp5sXk'),
(34, 'Boat Pose', 5, 3, 'https://www.youtube.com/watch?v=QVEINjrYUPU'),
(35, 'Cat Pose', 5, 3, 'https://www.youtube.com/watch?v=kqnua4rHVVA'),
(36, 'Chair Pose', 5, 3, 'https://www.youtube.com/watch?v=3cmRrQAZqRU'),
(37, 'Crow Pose | Crane Pose', 5, 3, 'https://www.youtube.com/watch?v=GeAHINIZfXY'),
(38, 'Forearm Plank | Dolphin Plank Pose', 5, 3, 'https://www.youtube.com/watch?v=mH5Sfb_KTGg'),
(39, 'Big Toe Pose', 6, 3, 'https://www.youtube.com/watch?v=aYIfSGGE85I'),
(40, 'Bound Angle Pose', 6, 3, 'https://www.youtube.com/watch?v=hRcvSEtoecg'),
(41, 'Child’s Pose', 6, 3, 'https://www.youtube.com/watch?v=qYvYsFrTI0U'),
(42, 'Extended Puppy Pose', 6, 3, 'https://www.youtube.com/watch?v=mytWLo8fHbw'),
(43, 'Head-to-Knee Pose', 6, 3, 'https://www.youtube.com/watch?v=JY2DuVBbskA'),
(44, 'Bharadvaja’s Twist', 7, 3, 'https://www.youtube.com/watch?v=PneqOh9TvzI'),
(45, 'Half Lord of the Fishes Pose', 7, 3, 'https://www.youtube.com/watch?v=8nIVfIo8sXA'),
(46, 'Pose Dedicated to the Sage Marichi III', 7, 3, 'https://www.youtube.com/watch?v=atbR50zzUSc'),
(47, 'Rope Pose', 7, 3, 'https://www.youtube.com/watch?v=0kTi_pFw75c'),
(48, 'Pose Dedicated to the Sage Koundinya I', 7, 3, 'https://www.youtube.com/watch?v=3QeO1Y0GLFY'),
(49, 'Bharadvaja’s Twist', 8, 3, 'https://www.youtube.com/watch?v=PneqOh9TvzI'),
(50, 'Bound Angle Pose', 8, 3, 'https://www.youtube.com/watch?v=hRcvSEtoecg'),
(51, 'Child’s Pose', 8, 3, 'https://www.youtube.com/watch?v=2MJGg-dUKh0'),
(52, 'Cow Face Pose', 8, 3, 'https://www.youtube.com/watch?v=6j3vnZEF_Oc'),
(53, 'Eagle Pose', 8, 3, 'https://www.youtube.com/watch?v=fC9XQWc6ukk'),
(54, 'Bow Pose', 9, 3, 'https://www.youtube.com/watch?v=4P2mYcOGxbU'),
(55, 'Bridge Pose', 9, 3, 'https://www.youtube.com/watch?v=6HYNo1YQsUk'),
(56, 'Camel Pose', 9, 3, 'https://www.youtube.com/watch?v=8q7GxnIFsQo'),
(57, 'Cobra Pose', 9, 3, 'https://www.youtube.com/watch?v=fOdrW7nf9gw'),
(58, 'Cow Pose', 9, 3, 'https://www.youtube.com/watch?v=W5KVx0ZbB_4'),
(59, 'Boat Pose', 1, 1, 'https://www.youtube.com/watch?v=QVEINjrYUPU'),
(60, 'Bridge Pose', 1, 1, 'https://www.youtube.com/watch?v=6HYNo1YQsUk'),
(61, 'Crow Pose | Crane Pose', 1, 1, 'https://www.youtube.com/watch?v=GeAHINIZfXY'),
(62, 'Forearm Plank | Dolphin Plank Pose', 1, 1, 'https://www.youtube.com/watch?v=wCBOqf-HrTI'),
(63, 'Eight-Angle Pose', 1, 1, 'https://www.youtube.com/watch?v=8PZJYywclA8'),
(64, 'Extended Puppy Pose', 1, 1, 'https://www.youtube.com/watch?v=mytWLo8fHbw'),
(65, 'Extended Side Angle Pose', 1, 1, 'https://www.youtube.com/watch?v=CPbp3o6jD7s'),
(66, 'Extended Triangle Pose', 1, 1, 'https://www.youtube.com/watch?v=dllfZZp0k_8'),
(67, 'Firefly Pose', 1, 1, 'https://www.youtube.com/watch?v=8K0ghCn8O_E'),
(68, 'Fish Pose', 1, 1, 'https://www.youtube.com/watch?v=J0e-vOG8sLI'),
(69, 'Four-Limbed Staff Pose | Chaturanga Dandasana', 1, 1, 'https://www.youtube.com/watch?v=3Xc0YFltRWs'),
(70, 'Gate Pose', 1, 1, 'https://www.youtube.com/watch?v=rI_AyQsLUNs'),
(71, 'Half Frog Pose', 1, 1, 'https://www.youtube.com/watch?v=giGl3EpvP68'),
(72, 'Half Moon Pose', 1, 1, 'https://www.youtube.com/watch?v=csErxVR7dpA'),
(73, 'High Lunge, Crescent Variation', 1, 1, 'https://www.youtube.com/watch?v=zaongQlYTto'),
(74, 'King Pigeon Pose', 1, 1, 'https://www.youtube.com/watch?v=S2q3csSzdsA'),
(75, 'Dancer Pose | Lord of the Dance Pose', 1, 1, 'https://www.youtube.com/watch?v=TXNgRNsqcPo'),
(76, 'Sacroiliac Joint Pain', 1, 1, 'https://www.youtube.com/watch?v=l6Vzuvx3nrI'),
(77, 'Pose Dedicated to the Sage Marichi III', 1, 1, 'https://www.youtube.com/watch?v=bGzlOXYDkxg'),
(78, 'Rope Pose', 1, 1, 'https://www.youtube.com/watch?v=0kTi_pFw75c'),
(79, 'One-Legged King Pigeon Pose II', 1, 1, 'https://www.youtube.com/shorts/QHuCJklmTE8'),
(80, 'Peacock Pose', 1, 1, 'https://www.youtube.com/watch?v=ASNK54226ts'),
(81, 'Plank Pose', 1, 1, 'https://www.youtube.com/watch?v=k1eqBkQQP3g'),
(82, 'Pose Dedicated to the Sage Koundinya I', 1, 1, 'https://www.youtube.com/watch?v=DRAtys_tyFA'),
(83, 'Pose Dedicated to the Sage Koundinya II', 1, 1, 'https://www.youtube.com/watch?v=q-oOypfCuYM'),
(84, 'Crow Pose | Crane Pose', 2, 1, 'https://www.youtube.com/watch?v=rp2DrHe_Zdk'),
(85, 'Forearm Plank | Dolphin Plank Pose', 2, 1, 'https://www.youtube.com/watch?v=mH5Sfb_KTGg'),
(86, 'Dolphin Pose', 2, 1, 'https://www.youtube.com/watch?v=W9qEcTjmA78'),
(87, 'Downward-Facing Dog Pose', 2, 1, 'https://www.youtube.com/watch?v=EC7RGJ975iM'),
(88, 'Eight-Angle Pose', 2, 1, 'https://www.youtube.com/watch?v=8PZJYywclA8'),
(89, 'Extended Hand-to-Big-Toe Pose', 2, 1, 'https://www.youtube.com/watch?v=kcRs6Bm4kFo'),
(90, 'Feathered Peacock Pose | Forearm Balance', 2, 1, 'https://www.youtube.com/watch?v=XIjCi88digI'),
(91, 'Firefly Pose', 2, 1, 'https://www.youtube.com/watch?v=8K0ghCn8O_E'),
(92, 'Four-Limbed Staff Pose | Chaturanga Dandasana', 2, 1, 'https://www.youtube.com/watch?v=3Xc0YFltRWs'),
(93, 'Half Frog Pose', 2, 1, 'https://www.youtube.com/watch?v=giGl3EpvP68'),
(94, 'Handstand', 2, 1, 'https://www.youtube.com/watch?v=LZT4hWVFErs'),
(95, 'Locust Pose', 2, 1, 'https://www.youtube.com/watch?v=ZQpHR5GvTgo'),
(96, 'Salutation Seal', 2, 1, 'https://www.youtube.com/watch?v=4bR8iTECIXo'),
(97, 'Upward Facing Two-Foot Staff Pose', 2, 1, 'https://www.youtube.com/watch?v=SdsrVmnrhJE'),
(98, 'Wheel Pose | Upward-Facing Bow Pose', 2, 1, 'https://www.youtube.com/watch?v=ZmqZQBv5dJE'),
(99, 'Big Toe Pose', 3, 1, 'https://www.youtube.com/watch?v=aYIfSGGE85I'),
(100, 'Bound Angle Pose', 3, 1, 'https://www.youtube.com/watch?v=IP6sRvvleuw'),
(101, 'Downward-Facing Dog Pose', 3, 1, 'https://www.youtube.com/watch?v=EC7RGJ975iM'),
(102, 'Extended Hand-to-Big-Toe Pose', 3, 1, 'https://www.youtube.com/watch?v=kcRs6Bm4kFo'),
(103, 'Firefly Pose', 3, 1, 'https://www.youtube.com/watch?v=8K0ghCn8O_E'),
(104, 'Gate Pose', 3, 1, 'https://www.youtube.com/watch?v=rI_AyQsLUNs'),
(105, 'Head-to-Knee Pose', 3, 1, 'https://www.youtube.com/watch?v=dIvn6YyIaWc'),
(106, 'Heron Pose', 3, 1, 'https://www.youtube.com/watch?v=G8zNa2lR0KM'),
(107, 'Pyramid Pose | Intense Side Stretch Pose', 3, 1, 'https://www.youtube.com/watch?v=ldJsEyxA5cI'),
(108, 'Bharadvaja’s Twist', 4, 1, 'https://www.youtube.com/watch?v=PneqOh9TvzI'),
(109, 'Big Toe Pose', 4, 1, 'https://www.youtube.com/watch?v=aYIfSGGE85I'),
(110, 'Boat Pose', 4, 1, 'https://www.youtube.com/watch?v=QVEINjrYUPU'),
(111, 'Bound Angle Pose', 4, 1, 'https://www.youtube.com/watch?v=hRcvSEtoecg'),
(112, 'Cat Pose', 4, 1, 'https://www.youtube.com/watch?v=kqnua4rHVVA'),
(113, 'Big Toe Pose', 5, 1, 'https://www.youtube.com/watch?v=aYIfSGGE85I'),
(114, 'Bound Angle Pose', 5, 1, 'https://www.youtube.com/watch?v=hRcvSEtoecg'),
(115, 'Garland or Squat Pose', 5, 1, 'https://www.youtube.com/watch?v=G06cqof5LqQ'),
(116, 'Hero Pose', 5, 1, 'https://www.youtube.com/watch?v=7cyGaY07SCM'),
(117, 'Heron Pose', 5, 1, 'https://www.youtube.com/watch?v=G8zNa2lR0KM'),
(118, 'Lion Pose', 5, 1, 'https://www.youtube.com/watch?v=RmJJ4T_FG5M'),
(119, 'Mountain Pose', 6, 1, 'https://www.youtube.com/watch?v=2HTvZp5rPrg'),
(120, 'Sacroiliac Joint Pain', 6, 1, 'https://www.youtube.com/watch?v=l6Vzuvx3nrI'),
(121, 'Half Lord of the Fishes Pose', 6, 1, 'https://www.youtube.com/watch?v=8nIVfIo8sXA'),
(122, 'Half Frog Pose', 6, 1, 'https://www.youtube.com/watch?v=K2QimPsO8zw'),
(123, 'Extended Puppy Pose', 6, 1, 'https://www.youtube.com/watch?v=mytWLo8fHbw'),
(124, 'Locust Pose', 6, 1, 'https://www.youtube.com/watch?v=-1gHGOSYujY'),
(125, 'Cobra Pose', 7, 1, 'https://www.youtube.com/watch?v=fOdrW7nf9gw'),
(126, 'Dancer Pose | Lord of the Dance Pose', 7, 1, 'https://www.youtube.com/watch?v=TXNgRNsqcPo'),
(127, 'Supported Shoulderstand', 7, 1, 'https://www.youtube.com/watch?v=UjHTOW9x3WM'),
(128, 'Sphinx Pose', 7, 1, 'https://www.youtube.com/watch?v=KWi1YgyxDaQ'),
(129, 'Revolved Side Angle Pose', 7, 1, 'https://www.youtube.com/watch?v=NfVX3yUKORA'),
(130, 'Staff Pose', 7, 1, 'https://www.youtube.com/watch?v=g9zt9Vx6WBo'),
(131, 'Upward Facing Two-Foot Staff Pose', 7, 1, 'https://www.youtube.com/watch?v=SdsrVmnrhJE'),
(132, 'Upward-Facing Dog Pose', 7, 1, 'https://www.youtube.com/watch?v=tbh0qyLJRaI'),
(133, 'Seated Forward Bend', 8, 1, 'https://www.youtube.com/watch?v=T8sgVyF4Ux4'),
(134, 'Sphinx Pose', 8, 1, 'https://www.youtube.com/watch?v=KWi1YgyxDaQ'),
(135, 'Revolved Triangle Pose', 8, 1, 'https://www.youtube.com/watch?v=IuwhGXTc2f0'),
(136, 'Side Crow Pose | Side Crane Pose', 8, 1, 'https://www.youtube.com/watch?v=Mc6D2OrMTX0'),
(137, 'Pose Dedicated to the Sage Koundinya I', 8, 1, 'https://www.youtube.com/watch?v=DRAtys_tyFA'),
(138, 'Pose Dedicated to the Sage Koundinya II', 8, 1, 'https://www.youtube.com/watch?v=YExZpxFpKns'),
(139, 'Easy Pose', 8, 1, 'https://www.youtube.com/watch?v=4J97THGPxoc'),
(140, 'Wheel Pose | Upward-Facing Bow Pose', 9, 1, 'https://www.youtube.com/watch?v=MRz-wazAoYU'),
(141, 'Supported Headstand', 9, 1, 'https://www.youtube.com/watch?v=IROECzO6-9k'),
(142, 'Staff Pose', 9, 1, 'https://www.youtube.com/watch?v=g9zt9Vx6WBo'),
(143, 'Revolved Triangle Pose', 9, 1, 'https://www.youtube.com/watch?v=IuwhGXTc2f0'),
(144, 'Revolved Side Angle Pose', 9, 1, 'https://www.youtube.com/watch?v=8X1ZNMYVK7Y'),
(145, 'Mountain Pose', 9, 1, 'https://www.youtube.com/watch?v=2HTvZp5rPrg'),
(146, 'Dancer Pose | Lord of the Dance Pose', 9, 1, 'https://www.youtube.com/watch?v=TXNgRNsqcPo'),
(147, 'Legs Up the Wall Pose', 9, 1, 'https://www.youtube.com/watch?v=xmcDj4Bf--0'),
(148, 'Pyramid Pose | Intense Side Stretch Pose', 9, 1, 'https://www.youtube.com/watch?v=ldJsEyxA5cI'),
(149, 'Upward Salute', 1, 2, 'https://www.youtube.com/watch?v=Ob8AooJZOvg'),
(150, 'Standing Forward Bend', 1, 2, 'https://www.youtube.com/watch?v=hrp6Q_QyDkc'),
(151, 'Staff Pose', 1, 2, 'https://www.youtube.com/watch?v=g9zt9Vx6WBo'),
(152, 'Seated Forward Bend', 1, 2, 'https://www.youtube.com/watch?v=T8sgVyF4Ux4'),
(153, 'Salutation Seal', 1, 2, 'https://www.youtube.com/watch?v=4bR8iTECIXo'),
(154, 'Revolved Head-to-Knee Pose', 1, 2, 'https://www.youtube.com/watch?v=iwbnx6p_yT4'),
(155, 'Legs Up the Wall Pose', 1, 2, 'https://www.youtube.com/watch?v=xmcDj4Bf--0'),
(156, 'Head-to-Knee Pose', 1, 2, 'https://www.youtube.com/watch?v=dIvn6YyIaWc'),
(157, 'Half Moon Pose', 1, 2, 'https://www.youtube.com/watch?v=csErxVR7dpA'),
(158, 'Fish Pose', 1, 2, 'https://www.youtube.com/watch?v=J0e-vOG8sLI'),
(159, '\r\nExtended Triangle Pose', 1, 2, 'https://www.youtube.com/watch?v=dllfZZp0k_8'),
(160, 'Extended Puppy Pose', 1, 2, 'https://www.youtube.com/watch?v=mytWLo8fHbw'),
(161, 'Easy Pose', 1, 2, 'https://www.youtube.com/watch?v=zLvJD7iKVhw'),
(162, 'Cow Pose', 1, 2, 'https://www.youtube.com/watch?v=kqnua4rHVVA'),
(163, 'Nadi Shodhana Pranayama- Channel-Cleaning Breath', 1, 2, 'https://www.youtube.com/watch?v=VvU6yGVh4DI'),
(164, 'Revolved Triangle Pose', 2, 2, 'https://www.youtube.com/watch?v=IuwhGXTc2f0'),
(165, 'Revolved Side Angle Pose', 2, 2, 'https://www.youtube.com/watch?v=8X1ZNMYVK7Y'),
(166, 'Revolved Head-to-Knee Pose', 2, 2, 'https://www.youtube.com/watch?v=iwbnx6p_yT4'),
(167, 'Reclining Hand-to-Big-Toe Pose I', 2, 2, 'https://www.youtube.com/watch?v=lpG9bVkeVP4'),
(168, 'Plow Pose', 2, 2, 'https://www.youtube.com/watch?v=ClE1necHjUs'),
(169, 'Pose Dedicated to the Sage Marichi III', 2, 2, 'https://www.youtube.com/watch?v=bGzlOXYDkxg'),
(170, 'Locust Pose', 2, 2, 'https://www.youtube.com/watch?v=ZQpHR5GvTgo'),
(171, 'Legs Up the Wall Pose', 2, 2, 'https://www.youtube.com/watch?v=xmcDj4Bf--0'),
(172, 'Half Moon Pose', 2, 2, 'https://www.youtube.com/watch?v=csErxVR7dpA'),
(173, 'Half Lord of the Fishes Pose', 2, 2, 'https://www.youtube.com/watch?v=8nIVfIo8sXA'),
(174, 'Fish Pose', 2, 2, 'https://www.youtube.com/watch?v=J0e-vOG8sLI'),
(175, 'Fire Log Pose', 2, 2, 'https://www.youtube.com/watch?v=6P263Jp5sXk'),
(176, 'Child’s Pose', 3, 2, 'https://www.youtube.com/watch?v=qYvYsFrTI0U'),
(177, 'Corpse Pose', 3, 2, 'https://www.youtube.com/watch?v=1VYlOKUdylM'),
(178, 'Easy Pose', 3, 2, 'https://www.youtube.com/watch?v=4J97THGPxoc'),
(179, 'Head-to-Knee Pose', 3, 2, 'https://www.youtube.com/watch?v=JY2DuVBbskA'),
(180, 'Legs Up the Wall Pose', 3, 2, 'https://www.youtube.com/watch?v=xmcDj4Bf--0'),
(181, 'Reclining Bound Angle Pose', 3, 2, 'https://www.youtube.com/watch?v=0_B_Ld_ArzM'),
(182, 'Reclining Hand-to-Big-Toe Pose I', 3, 2, 'https://www.youtube.com/watch?v=AL0zdW207dE'),
(183, 'Reclining Hero Pose', 3, 2, 'https://www.youtube.com/watch?v=Q1oFOJ8pfNg'),
(184, 'Seated Forward Bend', 3, 2, 'https://www.youtube.com/watch?v=T8sgVyF4Ux4'),
(185, 'Standing Forward Bend', 3, 2, 'https://www.youtube.com/watch?v=hrp6Q_QyDkc'),
(186, 'Standing Half Forward Bend', 3, 2, 'https://www.youtube.com/watch?v=s888DrdU_Gw'),
(187, 'Wide-Legged Standing Forward Bend', 3, 2, 'https://www.youtube.com/watch?v=xO65_FHbEr0'),
(188, 'Bharadvaja’s Twist', 4, 2, 'https://www.youtube.com/watch?v=PneqOh9TvzI'),
(189, 'Big Toe Pose', 4, 2, 'https://www.youtube.com/watch?v=aYIfSGGE85I'),
(190, 'Boat Pose', 4, 2, 'https://www.youtube.com/watch?v=QVEINjrYUPU'),
(191, 'Bow Pose', 4, 2, 'https://www.youtube.com/watch?v=FCuSE4oS9xc'),
(192, 'Bridge Pose', 4, 2, 'https://www.youtube.com/watch?v=6HYNo1YQsUk'),
(193, 'Cobra Pose', 4, 2, 'https://www.youtube.com/watch?v=zgvolE4NAH0'),
(194, 'Downward-Facing Dog Pose', 4, 2, 'https://www.youtube.com/watch?v=EC7RGJ975iM'),
(195, 'Extended Side Angle Pose', 4, 2, 'https://www.youtube.com/watch?v=CPbp3o6jD7s'),
(196, 'Extended Triangle Pose', 4, 2, 'https://www.youtube.com/watch?v=dllfZZp0k_8'),
(197, 'Big Toe Pose', 5, 2, 'https://www.youtube.com/watch?v=aYIfSGGE85I'),
(198, 'Bound Angle Pose', 5, 2, 'https://www.youtube.com/watch?v=hRcvSEtoecg'),
(199, 'Child’s Pose', 5, 2, 'https://www.youtube.com/watch?v=qYvYsFrTI0U'),
(200, 'Cow Face Pose', 5, 2, 'https://www.youtube.com/watch?v=kN6ITw_AHQQ'),
(201, 'Downward-Facing Dog Pose', 5, 2, 'https://www.youtube.com/watch?v=EC7RGJ975iM'),
(202, 'Extended Puppy Pose', 5, 2, 'https://www.youtube.com/watch?v=mytWLo8fHbw'),
(203, 'Extended Triangle Pose', 5, 2, 'https://www.youtube.com/watch?v=dllfZZp0k_8'),
(204, 'Fire Log Pose', 5, 2, 'https://www.youtube.com/watch?v=6P263Jp5sXk'),
(205, 'Garland or Squat Pose', 5, 2, 'https://www.youtube.com/watch?v=G06cqof5LqQ'),
(206, 'Big Toe Pose', 6, 2, 'https://www.youtube.com/watch?v=aYIfSGGE85I'),
(207, 'Bridge Pose', 6, 2, 'https://www.youtube.com/watch?v=g78vfuC4QBI'),
(208, 'Corpse Pose', 6, 2, 'https://www.youtube.com/watch?v=1VYlOKUdylM'),
(209, 'Dolphin Pose', 6, 2, 'https://www.youtube.com/watch?v=W9qEcTjmA78'),
(210, 'Downward-Facing Dog Pose', 6, 2, 'https://www.youtube.com/watch?v=EC7RGJ975iM'),
(211, 'Extended Puppy Pose', 6, 2, 'https://www.youtube.com/watch?v=mytWLo8fHbw'),
(212, 'Bound Angle Pose', 7, 2, 'https://www.youtube.com/watch?v=hRcvSEtoecg'),
(213, 'Bridge Pose', 7, 2, 'https://www.youtube.com/watch?v=g78vfuC4QBI'),
(214, 'Hero Pose', 7, 2, 'https://www.youtube.com/watch?v=ncYm6eqa1NA'),
(215, 'Legs Up the Wall Pose\r\n', 7, 2, 'https://www.youtube.com/watch?v=xmcDj4Bf--0'),
(216, 'Reclining Hand-to-Big-Toe Pose I', 7, 2, 'https://www.youtube.com/watch?v=oxIKwgo9l_A'),
(217, 'Reclining Hero Pose', 7, 2, 'https://www.youtube.com/watch?v=Q1oFOJ8pfNg'),
(218, 'Bharadvaja’s Twist', 8, 2, 'https://www.youtube.com/watch?v=PneqOh9TvzI'),
(219, 'Cat Pose', 8, 2, 'https://www.youtube.com/watch?v=kqnua4rHVVA'),
(220, 'Child’s Pose', 8, 2, 'https://www.youtube.com/watch?v=nMp3MlTz9fA'),
(221, 'Corpse Pose', 8, 2, 'https://www.youtube.com/watch?v=1VYlOKUdylM'),
(222, 'Cow Pose', 8, 2, 'https://www.youtube.com/watch?v=W5KVx0ZbB_4'),
(223, 'Extended Puppy Pose', 8, 2, 'https://www.youtube.com/watch?v=mytWLo8fHbw'),
(224, 'Extended Triangle Pose', 8, 2, 'https://www.youtube.com/watch?v=dllfZZp0k_8'),
(225, 'Bharadvaja’s Twist', 9, 2, 'https://www.youtube.com/watch?v=PneqOh9TvzI'),
(226, 'Bound Angle Pose', 9, 2, 'https://www.youtube.com/watch?v=hRcvSEtoecg'),
(227, 'Cobra Pose', 9, 2, 'https://www.youtube.com/watch?v=fOdrW7nf9gw'),
(228, 'Dolphin Pose', 9, 2, 'https://www.youtube.com/watch?v=W9qEcTjmA78'),
(229, 'Downward-Facing Dog Pose', 9, 2, 'https://www.youtube.com/watch?v=EC7RGJ975iM'),
(230, 'Eagle Pose', 9, 2, 'https://www.youtube.com/watch?v=fC9XQWc6ukk'),
(231, 'Extended Side Angle Pose', 9, 2, 'https://www.youtube.com/watch?v=CPbp3o6jD7s'),
(232, 'Extended Triangle Pose', 9, 2, 'https://www.youtube.com/watch?v=dllfZZp0k_8'),
(233, 'Fire Log Pose', 9, 2, 'https://www.youtube.com/watch?v=6P263Jp5sXk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calorie_tracker`
--
ALTER TABLE `calorie_tracker`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `pose`
--
ALTER TABLE `pose`
  ADD PRIMARY KEY (`serial_no`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `yoga`
--
ALTER TABLE `yoga`
  ADD PRIMARY KEY (`yoga_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calorie_tracker`
--
ALTER TABLE `calorie_tracker`
  MODIFY `serial_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pose`
--
ALTER TABLE `pose`
  MODIFY `serial_no` int(88) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `yoga`
--
ALTER TABLE `yoga`
  MODIFY `yoga_id` int(88) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
