-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 28 Μαρ 2026 στις 13:54:28
-- Έκδοση διακομιστή: 10.4.32-MariaDB
-- Έκδοση PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `koureiodb`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `about`
--

CREATE TABLE `about` (
  `about_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `about`
--

INSERT INTO `about` (`about_id`, `title`, `content`) VALUES
(1, 'Το Κουρείο μας', 'Το κουρείο μας λειτουργεί εδώ και χρόνια και προσφέρει επαγγελματικές υπηρεσίες περιποίησης ανδρών με στυλ και ποιότητα.'),
(2, 'Το κουρειο μας', 'Είμαστε επαγγελματίες κουρείς'),
(3, 'Το Κουρείο μας', 'Είμαστε ένα σύγχρονο κουρείο που συνδυάζει την παράδοση με το μοντέρνο στυλ. Προσφέρουμε επαγγελματικά κουρέματα, περιποίηση γενειάδας και εξατομικευμένες υπηρεσίες για κάθε πελάτη.\r\n\r\nΔημιουργούμε έναν χώρο άνετο και φιλικό, όπου κάθε επίσκεψη γίνεται εμπειρία. Η ποιότητα, η λεπτομέρεια και η συνέπεια είναι αυτά που μας χαρακτηρίζουν.');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `calendar`
--

CREATE TABLE `calendar` (
  `calendar_id` int(11) NOT NULL,
  `day` varchar(50) DEFAULT NULL,
  `hours` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Άδειασμα δεδομένων του πίνακα `calendar`
--

INSERT INTO `calendar` (`calendar_id`, `day`, `hours`) VALUES
(1, 'Δευτέρα', '08:00-13:00 & 17:00-20:00'),
(2, 'Τρίτη', '08:00-20:00'),
(3, 'Τετάρτη', 'Κλειστά'),
(4, 'Πέμπτη', '08:00-13:00 & 17:00-20:00'),
(5, 'Παρασκευή', '08:00-20:00'),
(6, 'Σάββατο', '09:00-14:00'),
(7, 'Κυριακή', 'Κλειστά');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`about_id`);

--
-- Ευρετήρια για πίνακα `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`calendar_id`);

--
-- Ευρετήρια για πίνακα `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `about`
--
ALTER TABLE `about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT για πίνακα `calendar`
--
ALTER TABLE `calendar`
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT για πίνακα `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
