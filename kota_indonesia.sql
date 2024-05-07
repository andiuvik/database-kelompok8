-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Bulan Mei 2024 pada 06.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kota_indonesia`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `Kecamatan_Id` int(11) NOT NULL,
  `Nama_Kecamatan` varchar(50) NOT NULL,
  `Kota_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`Kecamatan_Id`, `Nama_Kecamatan`, `Kota_Id`) VALUES
(678, 'Baiturrahman', 233),
(679, 'Denpasar Selatan', 234),
(680, 'Sukolio', 235),
(681, 'Semarang Tengah', 236);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelurahan`
--

CREATE TABLE `kelurahan` (
  `Kelurahan_Id` int(11) NOT NULL,
  `Nama_Kelurahan` varchar(50) NOT NULL,
  `Kecamatan_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelurahan`
--

INSERT INTO `kelurahan` (`Kelurahan_Id`, `Nama_Kelurahan`, `Kecamatan_Id`) VALUES
(444, 'Lueng Bata', 678),
(445, 'Sidakarya', 679),
(446, 'Gayungan', 680),
(447, 'Tugu', 681);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kode_pos`
--

CREATE TABLE `kode_pos` (
  `Kodepos_Id` int(11) NOT NULL,
  `Kode_Pos` varchar(5) NOT NULL,
  `Kelurahan_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kode_pos`
--

INSERT INTO `kode_pos` (`Kodepos_Id`, `Kode_Pos`, `Kelurahan_Id`) VALUES
(111, '23111', 444),
(112, '80224', 445),
(113, '60122', 446),
(114, '50131', 447);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `Kota_Id` int(11) NOT NULL,
  `Nama_Kota` varchar(50) NOT NULL,
  `Provinsi_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`Kota_Id`, `Nama_Kota`, `Provinsi_Id`) VALUES
(233, 'Banda Aceh', 123),
(234, 'Denpasar', 124),
(235, 'Surabaya', 125),
(236, 'Semarang', 126);

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `Provinsi_Id` int(11) NOT NULL,
  `Nama_Provinsi` varchar(50) NOT NULL,
  `Ibukota_Provinsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`Provinsi_Id`, `Nama_Provinsi`, `Ibukota_Provinsi`) VALUES
(123, 'Aceh', 'Banda Aceh'),
(124, 'Bali', 'Denpasar'),
(125, 'Jawa Timur', 'Surabaya'),
(126, 'Jawa Tengah', 'Semarang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`Kecamatan_Id`),
  ADD UNIQUE KEY `Nama_Kecamatan` (`Nama_Kecamatan`),
  ADD KEY `Kota_Id` (`Kota_Id`);

--
-- Indeks untuk tabel `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`Kelurahan_Id`),
  ADD UNIQUE KEY `Nama_Kelurahan` (`Nama_Kelurahan`),
  ADD KEY `Kecamatan_Id` (`Kecamatan_Id`);

--
-- Indeks untuk tabel `kode_pos`
--
ALTER TABLE `kode_pos`
  ADD PRIMARY KEY (`Kodepos_Id`),
  ADD UNIQUE KEY `Kode_Pos` (`Kode_Pos`),
  ADD KEY `Kelurahan_Id` (`Kelurahan_Id`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`Kota_Id`),
  ADD UNIQUE KEY `Nama_Kota` (`Nama_Kota`),
  ADD KEY `Provinsi_Id` (`Provinsi_Id`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`Provinsi_Id`),
  ADD UNIQUE KEY `Nama_Provinsi` (`Nama_Provinsi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `Kecamatan_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

--
-- AUTO_INCREMENT untuk tabel `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `Kelurahan_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=448;

--
-- AUTO_INCREMENT untuk tabel `kode_pos`
--
ALTER TABLE `kode_pos`
  MODIFY `Kodepos_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `Kota_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `Provinsi_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD CONSTRAINT `kecamatan_ibfk_1` FOREIGN KEY (`Kota_Id`) REFERENCES `kota` (`Kota_Id`);

--
-- Ketidakleluasaan untuk tabel `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD CONSTRAINT `kelurahan_ibfk_1` FOREIGN KEY (`Kecamatan_Id`) REFERENCES `kecamatan` (`Kecamatan_Id`);

--
-- Ketidakleluasaan untuk tabel `kode_pos`
--
ALTER TABLE `kode_pos`
  ADD CONSTRAINT `kode_pos_ibfk_1` FOREIGN KEY (`Kelurahan_Id`) REFERENCES `kelurahan` (`Kelurahan_Id`);

--
-- Ketidakleluasaan untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `kota_ibfk_1` FOREIGN KEY (`Provinsi_Id`) REFERENCES `provinsi` (`Provinsi_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
