-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 04 Des 2024 pada 04.24
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inventory`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_keluar`
--

CREATE TABLE `barang_keluar` (
  `id` int NOT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `kode_barang` varchar(50) DEFAULT NULL,
  `jumlah_keluar` int DEFAULT NULL,
  `note` text,
  `status_approve` enum('pending','approved','rejected') NOT NULL,
  `alasan` varchar(255) DEFAULT NULL,
  `transaksi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `barang_keluar`
--

INSERT INTO `barang_keluar` (`id`, `tanggal_keluar`, `user`, `kode_barang`, `jumlah_keluar`, `note`, `status_approve`, `alasan`, `transaksi`) VALUES
(206, '2024-11-28', 'AGAN PGA', 'MOUSE WIRELESS', 1, 'AGAN PGA', 'approved', 'Disetujui oleh ', 'EMIX-20241128041349'),
(207, '2024-11-28', 'AGAN PGA', 'SSD M2 480 GB', 1, 'AGAN PGA', 'approved', 'Disetujui oleh ', 'EMIX-20241128041349'),
(208, '2024-11-29', 'Galang Tarigan (ACC. Finance)', 'MOUSE WIRELESS', 1, 'Request 28 11 2024', 'approved', 'Disetujui oleh ', 'EMIX-20241129091124'),
(209, '2024-12-04', 'Purchasing', 'CAMERA CCTV', 5, 'A', 'pending', NULL, 'EMIX-20241204015026');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_masuk` int NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `kode_barang` varchar(50) NOT NULL,
  `jumlah_masuk` int NOT NULL,
  `note` text,
  `transaksi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_masuk`, `tanggal_masuk`, `supplier`, `kode_barang`, `jumlah_masuk`, `note`, `transaksi`) VALUES
(37, '2024-11-28', 'INDOCOM', 'HARDISK NAS WD RED', 4, 'PR 20241110', 'EMIX20241128041246'),
(38, '2024-11-28', 'INDOCOM', 'MEMORY LAPTOP 16 GB', 2, 'PR 20241110', 'EMIX20241128041246'),
(39, '2024-11-28', 'INDOCOM', 'MEMORY LAPTOP 8 GB', 2, 'PR 20241110', 'EMIX20241128041246'),
(40, '2024-11-28', 'INDOCOM', 'MOUSE WIRELESS', 5, 'PR 20241110', 'EMIX20241128041246'),
(41, '2024-11-28', 'INDOCOM', 'SSD M2 480 GB', 5, 'PR 20241110', 'EMIX20241128041246');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_barang`
--

CREATE TABLE `master_barang` (
  `kode_barang` varchar(50) NOT NULL,
  `jenis_barang` varchar(100) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `maker` varchar(100) DEFAULT NULL,
  `jumlah` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `master_barang`
--

INSERT INTO `master_barang` (`kode_barang`, `jenis_barang`, `nama_barang`, `deskripsi`, `maker`, `jumlah`) VALUES
('ACCES POINT', 'ACCES POINT', 'DECO M5', 'DECO M5', 'TP-LINK', 0),
('BRACKET', 'BRACKET', 'BRACKET PROJECTOR', 'BRACKET PROJECTOR', 'BRACKET', 0),
('CAMERA CCTV', 'CAMERA CCTV', 'WISENET QNO-6072R', 'WISENET QNO-6072R', 'WISENET', 0),
('CPU FAN', 'CPU FAN', 'COOLER MASTER i30', 'COOLER MASTER i30', 'COOLER MASTER', 0),
('HARDISK NAS WD RED', 'HARDISK NAS WD RED', 'WD RED 4 TB', 'WD RED 4 TB', 'WESTERN DIGITAL', 4),
('HDMI CABLE', 'HDMI CABLE', 'VENTION HDMI CABLE 15 M', 'VENTION HDMI CABLE 15 M', 'VENTION', 0),
('KABEL UTP CAT 4', 'KABEL UTP CAT 5', 'BELDEN UTP CAT 6E', 'BELDEN UTP CAT 6E', 'BELDEN', 0),
('KEYBOARD USB', 'KEYBOARD ', 'KEYBOARD USB', 'KEYBOARD USB', 'LOGITECH', 0),
('LED MONITOR', 'LED MONITOR', 'SAMSUNG S24R350FZE', 'SAMSUNG S24R350FZE', 'SAMSUNG', 0),
('LED TV', 'LED TV', 'SAMSUNG LED TV 32 \'INCH', 'SAMSUNG LED TV 32 \'INCH', 'SAMSUNG', 0),
('MEMORY LAPTOP 16 GB', 'MEMORY LAPTOP 16 GB', 'V-GEN PLATINUM DDR4 RAM 16 GB ', 'V-GEN PLATINUM DDR4 RAM 16 GB ', 'V-GEN', 2),
('MEMORY LAPTOP 8 GB', 'MEMORY LAPTOP 8 GB', 'CORCAIR VENGEANCE 8 GB DDR4', 'CORCAIR VENGEANCE 8 GB DDR4', 'CORSAIR', 2),
('MIXER KOBELCO PC', 'MIXER KOBELCO PC', 'PC MIXER KOBELCO', 'PC MIXER KOBELCO', 'KOBELCO', 0),
('MIXERCHART PC', 'MIXERCHART PC', 'ADVANTECH TPC-1251-T', 'ADVANTECH TPC-1251-T', 'ADVANTECH', 0),
('MOUSE USB', 'MOUSE ', 'MOUSE USB', 'MOUSE USB', 'LOGITECH', 0),
('MOUSE WIRELESS', 'MOUSE WIRELESS', 'MOUSE WIRELESS', 'MOUSE WIRELESS', 'LOGITECH', 3),
('PASTA PROCESSOR', 'PASTA PROCESSOR', 'PASTA PROCESSOR', 'PASTA PROCESSOR', 'TG-4', 0),
('PC TOWER', 'PC TOWER', 'THINKCENTRE NEO 50 T', 'THINKCENTRE NEO 50 T', 'LENOVO', 0),
('PCI EXPRESS LAN CARD', 'PCI EXPRESS LAN CARD', 'PCI EXPRESS LAN CARD', 'PCI EXPRESS LAN CARD', 'UGREEN', 0),
('POWER SUPPLY', 'POWER SUPPLY', 'POWER SUPPLY CORSAIR CX550F', 'POWER SUPPLY CORSAIR CX550F', 'CORSAIR', 0),
('PRINTER ', 'PRINTER ', 'PRINTER EPSON L3250', 'PRINTER EPSON L3250', 'EPSON', 0),
('PRINTER LASER', 'PRINTER LASER', 'HP LASERJET PRO M404-M405', 'HP LASERJET PRO M404-M405', 'HP', 0),
('PROJECTOR INFOCUS', 'PROJECTOR INFOCUS', 'EPSON EB-1785W', 'EPSON EB-1785W', 'EPSON', 0),
('RJ 45 CAT4', 'RJ 45 CAT5', 'RJ 45 CAT7', 'RJ 45 CAT7', 'PROTECH', 0),
('SPARE PC QC DELL OPTIPLEX', 'SPARE PC QC DELL OPTIPLEX', 'DELL OPTIPLEX ', 'DELL OPTIPLEX ', 'DELL', 0),
('SSD 480 GB', 'SSD 480 GB', 'SSD220S 480 GB', 'SSD220S 480 GB', 'TRANSCEND', 0),
('SSD M2 480 GB', 'SSD M2 480 GB', 'CORSAIR FORCE SERIES MP510 NVMe PCIe GEN3 x4 M.2 SSD', 'CORSAIR FORCE SERIES MP510 NVMe PCIe GEN3 x4 M.2 SSD', 'CORSAIR', 4),
('SWITCH HUB 8 PORT', 'SWITCH HUB 8 PORT', 'HPE 1420 SERIES SWITCH JH329A - 8 PORT', 'HPE 1420 SERIES SWITCH JH329A - 8 PORT', 'HP', 0),
('SWITCH HUB POE 8 PORT', 'SWITCH HUB POE 8 PORT', 'TENDA TEG1109P-8-102W', 'TENDA TEG1109P-8-102W', 'TENDA', 0),
('UPS ', 'UPS ', 'APC UPS ', 'APC UPS ', 'APC', 0),
('USB TO LAN', 'USB TO LAN', 'TP-LINK USB 3 TO GIGABIT ETH. ADAPTER', 'TP-LINK USB 3 TO GIGABIT ETH. ADAPTER', 'TP-LINK', 0),
('USB TO RS230', 'USB TO RS231', 'UGREEN USB TO RS232 ', 'UGREEN USB TO RS232 ', 'UGREEN', 0),
('WEIGHING PC', 'WEIGHING PC', 'ADVANTECH TPC-1551T ', 'ADVANTECH TPC-1551T ', 'ADVANTECH', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id` int NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id`, `role_name`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `departemen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `departemen`, `password`, `role_id`, `created_at`) VALUES
(1, 'superadmin', 'Admin', '21232f297a57a5a743894a0e4a801fc3', 1, '2024-11-21 13:42:09'),
(2, 'pengguna', 'User', 'ee11cbb19052e40b07aac0ca060c23ee', 2, '2024-11-21 15:49:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barang_keluar_ibfk_1` (`kode_barang`);

--
-- Indeks untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_masuk`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indeks untuk tabel `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_ibfk_1` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id_masuk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD CONSTRAINT `barang_keluar_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
