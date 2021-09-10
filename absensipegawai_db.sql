-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 05:43 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensipegawai_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `waktu` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absen`, `tgl`, `waktu`, `keterangan`, `id_user`) VALUES
(4, '2019-07-25', '07:21:53', 'Masuk', 6),
(5, '2019-07-26', '09:00:47', 'Masuk', 6),
(6, '2019-07-26', '16:01:03', 'Pulang', 6),
(7, '2019-07-25', '17:01:28', 'Pulang', 6);

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `id_jam` tinyint(1) NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`id_jam`, `start`, `finish`, `keterangan`) VALUES
(1, '06:00:00', '08:15:00', 'Masuk'),
(2, '09:00:00', '10:00:00', 'Pulang');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` smallint(3) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'Marketing'),
(2, 'IT '),
(3, 'Akuntan'),
(4, 'Kebersihan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(20) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(20) DEFAULT 'no-foto.png',
  `kelas` smallint(5) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` enum('Admin','Siswa') NOT NULL DEFAULT 'Siswa'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nisn`, `nama`, `telp`, `email`, `foto`, `kelas`, `username`, `password`, `level`) VALUES
(1, '', 'Ahmad Fadillah', '08139212092', 'ahm.fadil@mail.com', '1631192869.jpg', NULL, 'ahmad', '$2y$10$UwqloCX7PFLM3aQvgQxh6e9UgifqwQOZiF1zdogtLF6iVDR7Yr7IW', 'Admin'),
(6, '', 'Anissa Ca', '08151231902', 'anissa.rhm31@mail.com', '1631242828.jpg', NULL, 'anissa', '$2y$10$2kexYaZKVXX/5Liljm2FXO0Zk7BI5LUQgOTz1bRIf211eraxpju2a', 'Siswa'),
(7, '1231231231231123', 'Willy', '081231238', 'willy@mail.com', 'no-foto.png', 2, 'willy', '$2y$10$zGwtkQ8uCLBCmXEbPjJWF.vZkVlf7nmxhbe9iYu08wE8qkJNPdMb.', 'Siswa'),
(8, '8931289124891', 'Manager 1', '', '', 'no-foto.png', NULL, 'manager_1', '$2y$10$XtMY01KEOd5I065s8Exs0OcQ373RvRNG1JznORr6TmmBNWnZ3vjjK', 'Admin'),
(9, '1231231238900', 'Manager 2', '', '', 'no-foto.png', NULL, 'manager_2', '$2y$10$iJWUOXDznGEmxo.bqnhtmeFL51jN5130LfDlKg8VROfoEmlgC.cFW', 'Admin'),
(10, '908121310291', 'Manager 3', '', '', 'no-foto.png', NULL, 'manager_3', '$2y$10$uGsLvgl.6ji2iZ7tWkNvPelTwZdLQ6QA81Yawa20wsLairCXqV8BO', 'Admin'),
(11, '123801204012', 'Manager 4', '', '', 'no-foto.png', NULL, 'master_4', '$2y$10$Kot81WNqrho4WlcYI13kT.Y5V2sMg1ZSAXcITrp8cj3dqHpbl4vrS', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `id_jam` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
