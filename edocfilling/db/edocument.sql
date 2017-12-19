-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Des 2017 pada 14.57
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edocument`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `disposisi_file`
--

CREATE TABLE `disposisi_file` (
  `idfile` varchar(100) NOT NULL,
  `id_pengirim` varchar(100) NOT NULL,
  `iduser` varchar(100) NOT NULL,
  `kode_file` varchar(100) NOT NULL,
  `tgl_disposisi` date NOT NULL,
  `jam_disposisi` time NOT NULL,
  `tgl_deadline` date NOT NULL,
  `status_dibaca` tinyint(1) NOT NULL,
  `status_dikerjakan` tinyint(1) NOT NULL,
  `view` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `disposisi_file`
--

INSERT INTO `disposisi_file` (`idfile`, `id_pengirim`, `iduser`, `kode_file`, `tgl_disposisi`, `jam_disposisi`, `tgl_deadline`, `status_dibaca`, `status_dikerjakan`, `view`) VALUES
('EDF_SE020603_20171027_024249_ED014509', 'SE020603', 'ED014509', 'EDF_SE020603_20171027_024249', '2017-12-01', '02:19:32', '2017-12-01', 0, 0, 0),
('EDF_SE020603_20171027_040426_ED014509', 'SE020603', 'ED014509', 'EDF_SE020603_20171027_040426', '2017-11-30', '08:36:47', '2017-12-01', 1, 0, 5),
('EDF_SE020603_20171124_050717_ED014509', 'AF020046', 'ED014509', 'EDF_SE020603_20171124_050717', '2017-12-01', '08:50:04', '2017-12-13', 0, 0, 0),
('EDF_SE020603_20171128_065047_ED014509', 'AF020046', 'ED014509', 'EDF_SE020603_20171128_065047', '2017-12-01', '08:49:15', '2017-12-30', 1, 0, 1),
('EDF_SE020603_20171130_082612_ED014509', 'SE020603', 'ED014509', 'EDF_SE020603_20171130_082612', '2017-12-01', '02:28:14', '2017-11-02', 1, 0, 41);

-- --------------------------------------------------------

--
-- Struktur dari tabel `file`
--

CREATE TABLE `file` (
  `idfile` varchar(100) NOT NULL,
  `iduser` varchar(100) NOT NULL,
  `asal_file` varchar(100) NOT NULL,
  `no_file` varchar(100) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tgl_asal_file` date NOT NULL,
  `tgl_upload` date NOT NULL,
  `jenis_file` varchar(100) NOT NULL,
  `size_file` int(11) NOT NULL,
  `status_disposisi` tinyint(1) NOT NULL,
  `status_share` tinyint(1) NOT NULL,
  `status_simpan` tinyint(1) NOT NULL,
  `detail_dokumen` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `file`
--

INSERT INTO `file` (`idfile`, `iduser`, `asal_file`, `no_file`, `nama_file`, `tgl_asal_file`, `tgl_upload`, `jenis_file`, `size_file`, `status_disposisi`, `status_share`, `status_simpan`, `detail_dokumen`) VALUES
('EDF_SE020603_20171027_024249', 'SE020603', 'Anggraini Finitia', 'SK//02345//IVV/2018', 'Memo Keluar Keuangan', '2017-09-22', '2017-09-15', 'Memo Keluar', 849003, 0, 0, 1, 'Surat Presiden'),
('EDF_SE020603_20171027_040426', 'SE020603', 'Anggraini Finitia', 'SK//02345//IVV/2017 ', 'Memo 1', '2017-09-29', '2017-09-30', 'Memo Masuk', 556902, 0, 0, 1, 'Memo 1.1'),
('EDF_SE020603_20171027_113914', 'SE020603', 'Stefany Pischa', '123456789', 'asdfghjkl', '2017-09-24', '2017-09-27', 'Memo Masuk', 556902, 0, 0, 1, '<p style="text-align: center;">Harus Segera Diselesaikan</p>'),
('EDF_SE020603_20171101_040057', 'SE020603', 'Rizky Andika', '23/567/VV./MM', 'Surat Dinas II', '2017-10-13', '2017-11-25', 'Memo Keluar', 638413, 0, 0, 1, 'Surat Dinas'),
('EDF_SE020603_20171124_050717', 'SE020603', 'Stefany Pischa', 'II-SE-241117-AA', 'Surat Edaran Divisi Pelayanan', '2017-11-24', '2017-11-09', 'Surat Edaran', 138995, 0, 0, 1, '<p>Surat Edaran dari Divisi Pelayanan, bahwa berdasarkan peraturan baru, agar surat ini bisa diperhatikan dalam pelaksanaan dan penerapannya.</p>'),
('EDF_SE020603_20171124_110900', 'SE020603', 'Amanda Marsih', 'SE-II-8800-23112017-V1', 'SK1', '2017-11-24', '2017-11-08', 'Surat Keputusan', 429744, 0, 0, 1, '<p>Perihal Surat Keputusan dari Kepala Pusat BPJS.</p>'),
('EDF_SE020603_20171128_065047', 'SE020603', 'Stefany Pischa', '01112345-SEEDF-90101', 'Surat Edaran Terbaru', '2017-11-28', '2017-11-18', 'Peraturan Difeksi', 1184276, 0, 0, 1, '<p style="text-align: center;"><strong>Surat Edaran mohon untuk dicermati.</strong><br />Terima Kasih.</p>'),
('EDF_SE020603_20171129_062642', 'SE020603', 'Amanda Marsih', '12345-III-MKL-9900', 'Surat Keluar Kacab 01 Jaksel', '2017-11-29', '2017-11-18', 'Surat Keluar', 548453, 0, 0, 1, '<p>Surat bertujuan untuk undangan kacab dalam acara gathering.</p>'),
('EDF_SE020603_20171130_082612', 'SE020603', 'Daniel Pradana', '123456789-II', 'Memo Masuk Kacab Jaksel I', '2017-12-01', '2017-11-30', 'Surat Masuk', 61643, 0, 0, 1, '<p>memo masuk kacab ver 1</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala`
--

CREATE TABLE `kepala` (
  `idfile` varchar(100) NOT NULL,
  `iduser_kepala` varchar(100) NOT NULL,
  `iduser_staf` varchar(100) NOT NULL,
  `kode_file_asal` varchar(100) NOT NULL,
  `tgl_disposisi` date NOT NULL,
  `jam_disposisi` time NOT NULL,
  `status_dibaca` tinyint(1) NOT NULL,
  `tgl_dibaca` date NOT NULL,
  `tgl_dikerjakan` date NOT NULL,
  `view` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kepala`
--

INSERT INTO `kepala` (`idfile`, `iduser_kepala`, `iduser_staf`, `kode_file_asal`, `tgl_disposisi`, `jam_disposisi`, `status_dibaca`, `tgl_dibaca`, `tgl_dikerjakan`, `view`) VALUES
('EDF_SE020603_20171130_082612_AM030102', 'ED014509', 'AM030102', 'EDF_SE020603_20171130_082612', '2017-12-01', '03:02:41', 1, '2017-12-01', '0000-00-00', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `share_file`
--

CREATE TABLE `share_file` (
  `idfile` varchar(100) NOT NULL,
  `id_pengirim` varchar(100) NOT NULL,
  `iduser` varchar(100) NOT NULL,
  `kode_file` varchar(100) NOT NULL,
  `tgl_share` date NOT NULL,
  `status_dibaca` tinyint(1) NOT NULL,
  `tgl_dibaca` date NOT NULL,
  `jam_dibaca` time NOT NULL,
  `view` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `share_file`
--

INSERT INTO `share_file` (`idfile`, `id_pengirim`, `iduser`, `kode_file`, `tgl_share`, `status_dibaca`, `tgl_dibaca`, `jam_dibaca`, `view`) VALUES
('EDF_SE020603_20171027_040426_DE030609', 'SE020603', 'DE030609', 'EDF_SE020603_20171027_040426', '2017-11-30', 1, '2017-12-01', '04:08:06', 4),
('EDF_SE020603_20171027_040426_ED014509', 'SE020603', 'ED014509', 'EDF_SE020603_20171027_040426', '2017-12-01', 1, '2017-12-01', '10:31:42', 3),
('EDF_SE020603_20171124_050717_CV031290', 'AF020046', 'CV031290', 'EDF_SE020603_20171124_050717', '2017-12-01', 0, '0000-00-00', '00:00:00', 0),
('EDF_SE020603_20171124_050717_DE030609', 'AF020046', 'DE030609', 'EDF_SE020603_20171124_050717', '2017-12-01', 0, '0000-00-00', '00:00:00', 0),
('EDF_SE020603_20171128_065047_AM030102', 'SE020603', 'AM030102', 'EDF_SE020603_20171128_065047', '2017-12-01', 0, '0000-00-00', '00:00:00', 0),
('EDF_SE020603_20171128_065047_CV031290', 'SE020603', 'CV031290', 'EDF_SE020603_20171128_065047', '2017-12-01', 0, '0000-00-00', '00:00:00', 0),
('EDF_SE020603_20171129_062642_AM030102', 'SE020603', 'AM030102', 'EDF_SE020603_20171129_062642', '2017-12-01', 1, '2017-12-01', '10:37:57', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `iduser` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `unit_kerja` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`iduser`, `nama`, `password`, `no_hp`, `email`, `jabatan`, `unit_kerja`) VALUES
('AF020046', 'Anggraini Finitia', '827ccb0eea8a706c4c34a16891f84e7b', '+6281226938121', 'r.andika@gmail.com', 'Penata Muda Pelayanan BPJSTK', 'cab04'),
('AM030102', 'Amanda Marsih', '827ccb0eea8a706c4c34a16891f84e7b', '+6281226938121', 'amandamarsihs@gmail.com', 'Penata Muda Pelayanan BPJSTK', 'cab04'),
('CV031290', 'Cantika Valent', '827ccb0eea8a706c4c34a16891f84e7b', '+6281226938121', 'ofrivalent@gmail.com', 'Staf BPJS', 'cab03'),
('DE030609', 'Debora Yinki Virgonia', '827ccb0eea8a706c4c34a16891f84e7b', '+6281226938121', 'deborayvs@gmail.com', 'Staf Penata Muda Pelayanan BPJSTK', 'cab03'),
('DP041012', 'Daniel Pradana', '827ccb0eea8a706c4c34a16891f84e7b', '+6281226938121', 'r.andika@gmail.com', 'Penata Muda Pelayanan BPJSTK', 'cab04'),
('ED014509', 'Edwin Kurniawan', '827ccb0eea8a706c4c34a16891f84e7b', '+6281226938121', 'edwinkrwn@gmail.com', 'Kepala BPJSTK', 'cab04'),
('KE031400', 'Kurniawan Edi', '827ccb0eea8a706c4c34a16891f84e7b', '+6281226938121', 'rizkyandikasra@gmail.com', 'Staf BPJS', 'cab03'),
('RA040502', 'Rizky Andika', '827ccb0eea8a706c4c34a16891f84e7b', '+6281226938121', 'ofricantika@gmail.com', 'Penata Muda Pelayanan BPJSTK', 'cab04'),
('SE020603', 'Stefany Pischa', '827ccb0eea8a706c4c34a16891f84e7b', '+6281226938121', 'ofricantika@gmail.com', 'Sekretaris BPJSTK', 'cab02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disposisi_file`
--
ALTER TABLE `disposisi_file`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`idfile`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `kepala`
--
ALTER TABLE `kepala`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `share_file`
--
ALTER TABLE `share_file`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
