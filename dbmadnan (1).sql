-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2023 pada 10.46
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmadnan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(2) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `periode` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`id`, `nama`, `periode`, `jenis_kelamin`) VALUES
(1, 'GILANG AKBAR NUGRAHA', '2022', 'Laki-Laki'),
(2, 'ANNISA SALSA MENTARI', '2022', 'Perempuan'),
(3, 'ERWIN ADITYA', '2022', 'Laki-Laki'),
(4, 'LAILA MAIFANI', '2022', 'Perempuan'),
(5, 'RENDI ERLANGGA', '2022', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `id` int(5) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `class`
--

INSERT INTO `class` (`id`, `kelas`) VALUES
(1, 'X PPLG A'),
(2, 'X ORACLE'),
(3, 'XI RPL'),
(4, 'XI ORACLE'),
(5, 'XII RPL'),
(6, 'XII ORACLE'),
(7, 'X PPLG B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `nip` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `pelajaran` varchar(15) NOT NULL,
  `jabatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `nama`, `pelajaran`, `jabatan`) VALUES
('1', 'Cahyadi S.Kom', 'PBO', 'Kepala Program'),
('2', 'Erik Pratama S.Pd.MT', 'DATABASE', 'Staf Kurikulum'),
('3', 'Tedi Gunawan M.Kom', 'WEB', 'Staf Sarana Prasaran'),
('4', 'Tamam Fuadi S.Sos', 'MOBILE', 'Guru Produktif'),
('5', 'Rita Sangra S.T', 'KWU', 'Guru Produktif'),
('6', 'Inggit Sumirah S. Kom', 'PKK', 'Guru Produktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nisn`, `id_kelas`, `nama`, `jenis_kelamin`) VALUES
('0063688976', 1, 'CAKRA NURHIDAYAH', 'Laki-Laki'),
('0065988498', 1, 'FERA LAELA RAMDANIA', 'Perempuan'),
('0071907799', 1, 'DICKY APRIZAL', 'Laki-Laki'),
('0074093667', 1, 'FIKRI DZAKI ALI', 'Laki-Laki'),
('3079073990', 1, 'ADINDA PUTRI KIRANA', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa1`
--

CREATE TABLE `siswa1` (
  `nisn` varchar(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa1`
--

INSERT INTO `siswa1` (`nisn`, `id_kelas`, `nama`, `jenis_kelamin`) VALUES
('0052259888', 3, 'MUTIARA RAHAYU', 'Perempuan'),
('0054705629', 3, 'DAUD ARBY RAHADIANSYAH YUSUF', 'Laki Laki'),
('0058167756', 3, 'TAUFIK FADILLAH', 'Laki-Laki'),
('0061907942', 3, 'MUHAMMAD REVALIZA AKBAR', 'Laki-Laki'),
('0069663064', 3, 'NADIA NUR AINI', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa2`
--

CREATE TABLE `siswa2` (
  `nisn` varchar(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa2`
--

INSERT INTO `siswa2` (`nisn`, `id_kelas`, `nama`, `jenis_kelamin`) VALUES
('0051805079', 5, 'ANGGI LENDRAWATI', 'Perempuan'),
('0051950032', 5, 'ANDDIRA VALENTZY PANAREALLIM B', 'Laki-Laki'),
('0053792655', 5, 'ABIEL FAIQ ZIQRILLAH', 'Laki-Laki'),
('0054085435', 5, 'ALVIAN MUHAMMAD REIHAN', 'Laki-Laki'),
('0057817899', 5, 'ALMIRA FITRIA', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa3`
--

CREATE TABLE `siswa3` (
  `nisn` varchar(10) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa3`
--

INSERT INTO `siswa3` (`nisn`, `id_kelas`, `nama`, `jenis_kelamin`) VALUES
('0065510142', 2, 'CITRA GADIS MARINDAU', 'Perempuan'),
('0066340299', 2, 'DEMAS PUTRA SWASTIKE', 'Laki-Laki'),
('0076777774', 2, 'DAFFANISA NURUL FAJRIN', 'Perempuan'),
('0079174536', 2, 'DESTA JULPAESAL', 'Laki-Laki'),
('0079212640', 2, 'DEVANDRA APRILIAN GUSTIANTO', 'Laki-Laki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa4`
--

CREATE TABLE `siswa4` (
  `nisn` varchar(10) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa4`
--

INSERT INTO `siswa4` (`nisn`, `id_kelas`, `nama`, `jenis_kelamin`) VALUES
('0065683044', 7, 'ASEP SAEPUDIN', 'Laki-Laki'),
('0071289822', 7, 'ALFIYAN YUSUF', 'Laki-Laki'),
('0074155966', 7, 'CANTIKA PARAMITA SIREGAR', 'Perempuan'),
('0078388749', 7, 'AILSA SAHDA DWI SHABIRA', 'Perempuan'),
('0079597281', 7, 'DELLA ASMARA', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa5`
--

CREATE TABLE `siswa5` (
  `nisn` varchar(10) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa5`
--

INSERT INTO `siswa5` (`nisn`, `id_kelas`, `nama`, `jenis_kelamin`) VALUES
('0059581504', 4, 'DAFFA GILANG RAMADHAN', 'Laki-Laki'),
('0061934727', 4, 'AULIA PUTRI RAMADHAN', 'Perempuan'),
('0065191391', 4, 'ABY ROFIQY', 'Laki-Laki'),
('0065347759', 4, 'ALIVIAN ISMAIL', 'Laki-Laki'),
('0065393674', 4, 'BUNGA PUTRI CAHYANINGRUM', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa6`
--

CREATE TABLE `siswa6` (
  `nisn` varchar(10) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa6`
--

INSERT INTO `siswa6` (`nisn`, `id_kelas`, `nama`, `jenis_kelamin`) VALUES
('0048351119', 6, 'ALFIN FADLAN KABIR', 'Laki-Laki'),
('0054453478', 6, 'MIRNA AZZAHRA', 'Perempuan'),
('0054785803', 6, 'FAHRI PRATAMA NUGRAHA', 'Laki-Laki'),
('0058030929', 6, 'ALDY HARDIANSYAH', 'Laki-Laki'),
('0058659480', 6, 'AIRIN RISTIANA', 'Perempuan');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vdata`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vdata` (
`nisn` varchar(10)
,`nama` varchar(45)
,`kelas` varchar(10)
,`jenis_kelamin` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vdata1`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vdata1` (
`nisn` varchar(11)
,`nama` varchar(45)
,`kelas` varchar(10)
,`jenis_kelamin` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vdata2`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vdata2` (
`nisn` varchar(11)
,`nama` varchar(45)
,`kelas` varchar(10)
,`jenis_kelamin` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vdata3`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vdata3` (
`nisn` varchar(10)
,`nama` varchar(45)
,`kelas` varchar(10)
,`jenis_kelamin` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vdata4`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vdata4` (
`nisn` varchar(10)
,`nama` varchar(45)
,`kelas` varchar(10)
,`jenis_kelamin` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vdata5`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vdata5` (
`nisn` varchar(10)
,`nama` varchar(45)
,`kelas` varchar(10)
,`jenis_kelamin` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vdata6`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vdata6` (
`nisn` varchar(10)
,`nama` varchar(45)
,`kelas` varchar(10)
,`jenis_kelamin` varchar(15)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `vdata`
--
DROP TABLE IF EXISTS `vdata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdata`  AS SELECT `siswa`.`nisn` AS `nisn`, `siswa`.`nama` AS `nama`, `class`.`kelas` AS `kelas`, `siswa`.`jenis_kelamin` AS `jenis_kelamin` FROM (`siswa` left join `class` on(`siswa`.`id_kelas` = `class`.`id`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vdata1`
--
DROP TABLE IF EXISTS `vdata1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdata1`  AS SELECT `siswa1`.`nisn` AS `nisn`, `siswa1`.`nama` AS `nama`, `class`.`kelas` AS `kelas`, `siswa1`.`jenis_kelamin` AS `jenis_kelamin` FROM (`siswa1` join `class` on(`siswa1`.`id_kelas` = `class`.`id`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vdata2`
--
DROP TABLE IF EXISTS `vdata2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdata2`  AS SELECT `siswa2`.`nisn` AS `nisn`, `siswa2`.`nama` AS `nama`, `class`.`kelas` AS `kelas`, `siswa2`.`jenis_kelamin` AS `jenis_kelamin` FROM (`siswa2` join `class` on(`siswa2`.`id_kelas` = `class`.`id`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vdata3`
--
DROP TABLE IF EXISTS `vdata3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdata3`  AS SELECT `siswa4`.`nisn` AS `nisn`, `siswa4`.`nama` AS `nama`, `class`.`kelas` AS `kelas`, `siswa4`.`jenis_kelamin` AS `jenis_kelamin` FROM (`siswa4` left join `class` on(`siswa4`.`id_kelas` = `class`.`id`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vdata4`
--
DROP TABLE IF EXISTS `vdata4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdata4`  AS SELECT `siswa5`.`nisn` AS `nisn`, `siswa5`.`nama` AS `nama`, `class`.`kelas` AS `kelas`, `siswa5`.`jenis_kelamin` AS `jenis_kelamin` FROM (`siswa5` left join `class` on(`siswa5`.`id_kelas` = `class`.`id`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vdata5`
--
DROP TABLE IF EXISTS `vdata5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdata5`  AS SELECT `siswa6`.`nisn` AS `nisn`, `siswa6`.`nama` AS `nama`, `class`.`kelas` AS `kelas`, `siswa6`.`jenis_kelamin` AS `jenis_kelamin` FROM (`siswa6` left join `class` on(`siswa6`.`id_kelas` = `class`.`id`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vdata6`
--
DROP TABLE IF EXISTS `vdata6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vdata6`  AS SELECT `siswa3`.`nisn` AS `nisn`, `siswa3`.`nama` AS `nama`, `class`.`kelas` AS `kelas`, `siswa3`.`jenis_kelamin` AS `jenis_kelamin` FROM (`siswa3` left join `class` on(`siswa3`.`id_kelas` = `class`.`id`))  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `siswa1`
--
ALTER TABLE `siswa1`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `siswa2`
--
ALTER TABLE `siswa2`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `siswa3`
--
ALTER TABLE `siswa3`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `siswa4`
--
ALTER TABLE `siswa4`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `siswa5`
--
ALTER TABLE `siswa5`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `siswa6`
--
ALTER TABLE `siswa6`
  ADD PRIMARY KEY (`nisn`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
