-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2025 at 07:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rapepepi`
--

-- --------------------------------------------------------

--
-- Table structure for table `stok_barang`
--

CREATE TABLE `stok_barang` (
  `id_barang` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `kategori` varchar(30) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `waktu_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lokasi` varchar(255) DEFAULT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok_barang`
--

INSERT INTO `stok_barang` (`id_barang`, `id_user`, `kategori`, `nama_barang`, `jumlah`, `waktu_update`, `lokasi`, `harga`) VALUES
(1, 0, 'Peralatan dapur', 'Sendok', 4, '2025-10-14 04:39:04', NULL, 100000),
(5, 67, 'Peralatan Mandi', 'Sabun', 10, '2025-10-14 05:32:42', NULL, 150000),
(6, NULL, '', NULL, NULL, '2025-10-14 05:33:18', NULL, 0),
(9, 35466, 'Makanan enak', 'Gado-gado', 3, '2025-10-02 05:40:04', 'Yogyakarta', 15000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telpon` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `telpon`, `level`) VALUES
(0, 'admin', '$2y$10$vkd1CdV7wszGaJTXXE15yOpi1ZCwarxI/HvnDHEqaerPaGfi0dKCy', 'Admin30', '1334', 'admin'),
(0, 'aduhaii', '$2y$10$wn0VYP.7NsSp8jD1LCx0juQtMabGwu5jVvkSAezriTOaxk7gkhOiC', 'aduhaii', '11114555', 'admin'),
(0, 'apaya', '$2y$10$BhpVR3VhUkcYDLzgc3AM4.Pk2a7dHnp4gPoGnlNybwOe0Kh8yhgCK', '2@gmail.com', '2', 'pengunjung'),
(0, 'aw', '$2y$10$tIoQjQzOC4biARFcv2i8beQGiE/Mpb.hl8rPxsICuogq4rjmpPNra', 'aw@gmail.com', 'aw', 'admin'),
(0, 'elek', '$2y$10$5YG3YwAcW/3s.77/NnKyEORJTpKj78lVCzpUZooGjiNfbKUB.2fOO', 'elek', '0666', 'admin'),
(0, 'gtau', '$2y$10$El4S3E4zyxcCsYFOkYqIEeQMvcjTSgEcAj5dyA6b0nTm1hp4VyWoW', 'Sapiderman', '1165', 'admin'),
(0, 'user30', '$2y$10$2p8HELDjwKtgkQFqVw70s.c2Z18b5kaw2L4MXuzXJPcRcUZ/GxR0C', 'user30@gmail.com', '2222', 'pengunjung'),
(0, 'yaudah', '$2y$10$qB7O29cEi5L7gw.JX2iSAOppS2H0LQ6bIl3F.gaZLEZg7nuqZC4YO', 'yaudah@gmail.com', '2643', 'pengunjung');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stok_barang`
--
ALTER TABLE `stok_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stok_barang`
--
ALTER TABLE `stok_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
