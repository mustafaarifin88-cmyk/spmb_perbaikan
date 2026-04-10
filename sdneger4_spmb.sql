-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 09 Apr 2026 pada 09.44
-- Versi server: 11.4.10-MariaDB
-- Versi PHP: 8.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdneger4_spmb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id` int(11) NOT NULL,
  `nama_agama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id`, `nama_agama`) VALUES
(1, 'Islam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berkas_fisik`
--

CREATE TABLE `berkas_fisik` (
  `id` int(11) NOT NULL,
  `nama_berkas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berkas_fisik`
--

INSERT INTO `berkas_fisik` (`id`, `nama_berkas`) VALUES
(1, 'Formulir Pendaftaran Asli '),
(2, 'Fotocopy Akta Kelahiran (3Lembar)'),
(3, 'Fotocopy Kartu Keluarga (3Lembar)'),
(4, 'Fotocopy KTP Ayah (3Lembar)'),
(5, 'Fotocopy KTP Ibu (3Lembar)'),
(6, 'Fotocopy KTP Wali (3Lembar) Tidak Wajib'),
(7, 'Print Out NISN dari Web NISN (3 Lembar)'),
(8, 'Surat Aktif Dari Sekolah Asal (3 Lembar)'),
(9, 'Pas Photo Terbaru 3x4 cm Latar Biru (4 Lembar)'),
(10, 'Map Gantung Plastik Warna Biru (Untuk Masukan Berkas)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berkas_pendaftaran`
--

CREATE TABLE `berkas_pendaftaran` (
  `id` int(11) NOT NULL,
  `id_pendaftaran` int(11) NOT NULL,
  `id_persyaratan` int(11) NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berkas_pendaftaran`
--

INSERT INTO `berkas_pendaftaran` (`id`, `id_pendaftaran`, `id_persyaratan`, `file_path`) VALUES
(3, 2, 3, '1773372342_2ede146f65d2b76e3108.jpg'),
(4, 2, 4, '1773372342_84d3cb5b3d5afe7a8298.jpg'),
(5, 2, 5, '1773372342_5adcc8aa4efa4343eedf.jpg'),
(7, 2, 7, '1773372342_125a1a7786134f45a488.jpg'),
(8, 2, 8, '1773372342_70a727289eb00917b35c.jpg'),
(10, 3, 3, '1773385929_83cdb670a3428e5708cb.jpeg'),
(11, 3, 4, '1773385929_4e574c67c626ca182292.pdf'),
(12, 3, 5, '1773385929_71f3b59c91e8d516e866.pdf'),
(14, 3, 7, '1773385929_11c7efa6ba59c1c330ac.pdf'),
(15, 3, 8, '1773385929_c1c02d43c4872edf2e0f.jpeg'),
(17, 4, 3, '1773406408_9dc4079ebde8a2591ae4.jpg'),
(18, 4, 4, '1773406408_ad131a642d877035825b.pdf'),
(19, 4, 5, '1773406408_8e8f7c14f06fe5f5c802.pdf'),
(21, 4, 7, '1773406408_4eb23b1799cac3e1f567.pdf'),
(22, 4, 8, '1773406408_b6880127dba110e5a2aa.pdf'),
(24, 5, 3, '1773495806_5b0b85327f97a79a036c.jpg'),
(25, 5, 4, '1773495806_ba5ec325bd189fd69e69.pdf'),
(26, 5, 5, '1773495807_3e0d3d14926e15d144c8.pdf'),
(28, 5, 7, '1773495807_a8ebad9a697c046c6794.pdf'),
(29, 5, 8, '1773495807_711a83554de3d26d603e.pdf'),
(30, 5, 10, '1773495807_845138c5ed00f07aa38b.pdf'),
(31, 6, 3, '1773499590_cfee6e7ee96f8c02fb54.jpg'),
(32, 6, 4, '1773499590_5a8f9029b8d38b161186.pdf'),
(33, 6, 5, '1773499590_bcb5104d15d190a51851.pdf'),
(35, 6, 7, '1773499590_705c5b40971823c46c29.pdf'),
(36, 6, 8, '1773499590_670579b908721bff2e3a.pdf'),
(37, 6, 10, '1773499591_014d3d27645d80ba9f27.pdf'),
(38, 7, 3, '1773504119_8b8bee7a73596ffd8afe.jpg'),
(39, 7, 4, '1773504119_7fbf2948fa959ef4a072.pdf'),
(40, 7, 5, '1773504119_b295ae8420e52d7b6b8b.pdf'),
(42, 7, 7, '1773504119_04dd9ca56f8b4ac927c9.pdf'),
(43, 7, 8, '1773504119_562b1bbc6507903b3594.pdf'),
(44, 7, 10, '1773504120_9728e887451bb9cc9b62.pdf'),
(52, 22, 3, '1773585174_243199dfdc5096a25d3b.jpeg'),
(53, 22, 4, '1773585175_0b943c776a5f300b0613.pdf'),
(54, 22, 5, '1773585175_83fae350b03217f9c83c.pdf'),
(56, 22, 7, '1773585175_497d68c261196bf4a2c7.pdf'),
(57, 22, 8, '1773585175_970a851ca2bd8515701a.pdf'),
(58, 22, 10, '1773585175_eb2f14c9fb923f8adaf3.pdf'),
(59, 23, 3, '1773592468_25e4cbdad60e643abbb4.jpg'),
(60, 23, 4, '1773592468_def13ab20f313d7a3002.pdf'),
(61, 23, 5, '1773592468_464b11436c58f0404832.pdf'),
(62, 23, 7, '1773592468_ce3d484f4fdaca4c591c.pdf'),
(63, 23, 8, '1773592469_b8bcd9c53456fa3c7265.pdf'),
(64, 23, 10, '1773592469_c1cff00e99ea2a914157.pdf'),
(71, 25, 3, '1773595493_3eaaf8afdcbb4fdf91c8.jpg'),
(72, 25, 4, '1773595493_c8573a596069a6bf1bc3.jpg'),
(73, 25, 5, '1773595494_2a087a68f4d00e839a25.jpg'),
(74, 25, 7, '1773595494_2528691d811418943314.jpg'),
(75, 25, 8, '1773595495_4e8cec8a7b7550f3dceb.png'),
(76, 26, 3, '1773621920_20a4fa2c176379afcca0.jpg'),
(77, 26, 4, '1773621920_3351c818dfb92d0d102c.pdf'),
(78, 26, 5, '1773621920_db45bfc4920caa5790a4.pdf'),
(79, 26, 7, '1773621920_2ef6969b3c64253da6df.pdf'),
(80, 26, 8, '1773621921_7b31050d262e100ec9ce.pdf'),
(81, 26, 10, '1773621921_303bd2f53fa161a52c50.pdf'),
(82, 30, 3, '1773635512_614b7c886b0560c67f1a.jpeg'),
(83, 30, 4, '1773635512_42bee9c31c720de360de.jpeg'),
(84, 30, 7, '1773635513_245f2cb6da5a981bf6ec.jpeg'),
(85, 30, 8, '1773635514_f2715c766b4276c78a9b.jpeg'),
(86, 30, 10, '1773635514_4b8813e35384a00c3e3e.jpeg'),
(87, 32, 3, '1773636721_66f6b56c79419d288041.jpg'),
(88, 32, 4, '1773636721_9e6a4e28c90a82c436ce.pdf'),
(89, 32, 5, '1773636721_a6aa6973838fa18ada16.pdf'),
(90, 32, 7, '1773636721_69deb777e768721ac1da.pdf'),
(97, 51, 3, '1773642561_cf4e873b98cf6f759061.jpg'),
(98, 51, 4, '1773642561_9a26f3de730741188c09.jpg'),
(99, 51, 5, '1773642561_6af57ab67118f4c46fc7.jpg'),
(100, 51, 7, '1773642561_ba2b640971775a7742cc.jpg'),
(101, 51, 8, '1773642561_21ea90a867b6df4c760a.jpg'),
(102, 51, 10, '1773642561_c47627d7fd9b9061e493.jpg'),
(103, 64, 3, '1773656377_818188d300928cff1923.jpeg'),
(104, 64, 4, '1773656377_dfa1113c93cb06d6c08a.jpg'),
(105, 64, 5, '1773656377_8af5e69c71aea0819ed3.jpg'),
(106, 64, 8, '1773656378_f92ec45e796c61a9141e.pdf'),
(111, 69, 3, '1773667301_a54cec6ec2f788ee04ea.jpeg'),
(112, 69, 4, '1773667301_b2d8f6a597119b23f2fd.pdf'),
(113, 69, 5, '1773667301_d90344bef96088f0edcd.pdf'),
(114, 69, 7, '1773667301_360873f4af3a338f95a9.pdf'),
(115, 69, 8, '1773667302_6c1f931c77fd80d26dde.pdf'),
(116, 69, 10, '1773667302_c9106a6c81f80be49c8b.pdf'),
(117, 71, 3, '1773668369_5002f17520978440c55d.jpeg'),
(118, 71, 4, '1773668369_185e803c5a0f65c03ed9.pdf'),
(119, 71, 5, '1773668369_82cd0f140bf1d612933f.pdf'),
(120, 71, 7, '1773668369_6ebe104db70deb7c053a.pdf'),
(121, 71, 8, '1773668369_0007306d4d0e85c2f95b.pdf'),
(122, 71, 10, '1773668369_05772cc06632823111bf.pdf'),
(123, 72, 3, '1773668582_21e2f56ebf172383d3d1.jpg'),
(124, 72, 4, '1773668582_4a0525fa21d44ca469ac.pdf'),
(125, 72, 5, '1773668582_18f29683141f38cb05e2.pdf'),
(126, 72, 7, '1773668582_6dd63ae71157b5976c39.pdf'),
(127, 72, 8, '1773668582_82bf32302525b404e356.pdf'),
(128, 72, 10, '1773668582_16759da74c79b59343f8.pdf'),
(129, 73, 3, '1773670109_9a426636a74f1f23cb42.pdf'),
(130, 73, 4, '1773670109_19fb547b6998ad994b02.pdf'),
(131, 73, 5, '1773670109_c5483b819863f426d74e.pdf'),
(132, 73, 7, '1773670109_61bf70d56b356b10fb22.pdf'),
(133, 73, 8, '1773670110_c99cf395cdcf4ca49c8d.pdf'),
(134, 73, 10, '1773670110_e53e43df1a16845df77a.pdf'),
(135, 74, 3, '1773671193_66046baeac8b3933e240.jpg'),
(136, 74, 4, '1773671193_7a6bb1ccf257af50c439.pdf'),
(137, 74, 5, '1773671193_8631de19d271e9899952.pdf'),
(138, 74, 7, '1773671193_cd0f03401a0ff4cdda90.pdf'),
(139, 74, 8, '1773671193_d9e0c5c4121a72f92dbe.pdf'),
(140, 74, 10, '1773671194_be1af1872872098d47c1.pdf'),
(141, 75, 3, '1773671611_084832bbb1d040c741ec.jpg'),
(142, 75, 4, '1773671611_88516633f08fce49598d.jpg'),
(143, 75, 5, '1773671611_276c97f8cb6c0de6b0fc.jpg'),
(144, 75, 8, '1773671611_b507dafabd840fccb84c.jpg'),
(145, 75, 10, '1773671611_a8e0fac1cd1c7b30725e.jpg'),
(146, 76, 3, '1773672420_57137ff0619da1bb2b0a.jpeg'),
(147, 76, 4, '1773672421_91a75917d276de1fe679.pdf'),
(148, 76, 5, '1773672421_8e6f3e593149d896787a.pdf'),
(149, 76, 7, '1773672421_6f4b17a8f4548e60c929.pdf'),
(150, 76, 8, '1773672421_c00ef7ccde240e698b50.pdf'),
(151, 76, 10, '1773672421_c5d61a7e037a603e54bb.pdf'),
(152, 77, 3, '1773676007_76192ed5d82f4278aaa0.pdf'),
(153, 77, 4, '1773676007_4f8f4b07dc5a3247b6fa.pdf'),
(154, 77, 5, '1773676007_6934b7c6c1139a5c1d79.pdf'),
(155, 77, 7, '1773676008_93c07614f284a78a9d0e.pdf'),
(156, 77, 8, '1773676008_d8019ba96575176fd5c7.pdf'),
(157, 77, 10, '1773676008_aa101a4962fa672f7705.pdf'),
(158, 78, 3, '1773715685_e4b1bff3edb0adfb841e.pdf'),
(159, 78, 4, '1773715685_f675bcb51d2b4203ce04.pdf'),
(160, 78, 5, '1773715685_6777ad12b33d6736873a.pdf'),
(161, 78, 7, '1773715686_8116956959a0d908161c.pdf'),
(162, 78, 8, '1773715686_5df82627a08240c60702.pdf'),
(163, 78, 10, '1773715686_f27f5d32499c86c8ec72.pdf'),
(164, 82, 3, '1773721241_22f266fb5130fc174e56.jpg'),
(165, 82, 4, '1773721241_242cb209b59d2392743a.jpg'),
(166, 82, 5, '1773721241_66743cf9a1a609e68230.jpg'),
(167, 82, 7, '1773721241_c40e65d1cf57d61ebb2a.jpg'),
(168, 82, 8, '1773721241_3e603ba1c78007406b48.jpg'),
(174, 89, 3, '1773724577_4b0595c891db5f6bf4e9.png'),
(175, 89, 4, '1773724577_b55b93d890bebf89035b.jpg'),
(176, 89, 5, '1773724578_540930b1bb69fc0230b9.jpg'),
(177, 89, 7, '1773724578_6ac8b3c1852c9b39d939.jpg'),
(178, 89, 8, '1773724578_82ad138b914202fb1b37.jpg'),
(185, 96, 3, '1773726584_48364f147990d9a6786c.jpg'),
(186, 96, 4, '1773726584_14582fa3724dff4d6b31.pdf'),
(187, 96, 5, '1773726584_f1c004131a261145196d.pdf'),
(188, 96, 7, '1773726584_ceed61a0ae864f180052.pdf'),
(189, 96, 8, '1773726585_63eb48ba3913923f2b62.png'),
(190, 96, 10, '1773726585_e446b7e7b97679136d53.pdf'),
(191, 97, 3, '1773726591_9b898c0da85553b16a13.jpeg'),
(192, 97, 4, '1773726591_5f83a5d9d436478fe91b.jpeg'),
(193, 97, 5, '1773726591_32af3dc2732a33084384.jpeg'),
(194, 97, 7, '1773726591_d5211fd121f5014870e5.jpeg'),
(195, 97, 8, '1773726592_0dfce0269b2da25f8413.jpeg'),
(196, 97, 10, '1773726592_425fddd0d0d048c8e059.jpeg'),
(197, 98, 3, '1773731435_212a471346e190b6e55b.jpeg'),
(198, 98, 4, '1773731435_2515e9e22c70861a76ff.pdf'),
(199, 98, 5, '1773731435_bcf1d869015479f1b172.pdf'),
(200, 98, 7, '1773731435_45cf3ad6435748c07bea.pdf'),
(201, 98, 8, '1773731435_9c66d1888f0abeff2815.pdf'),
(202, 98, 10, '1773731435_b99c5bd248c95f44e192.pdf'),
(203, 99, 3, '1773731834_a8f7fa5e97c1d33cb8fd.jpeg'),
(204, 99, 4, '1773731834_d22b4ce23d6835d877f6.jpeg'),
(205, 99, 5, '1773731834_9084ebe72fd8161756d7.jpeg'),
(206, 99, 7, '1773731834_5165003363372fc4f69d.jpeg'),
(207, 99, 8, '1773731834_9f67b68d8d9cfd9fba92.jpeg'),
(208, 99, 10, '1773731834_d57796da575472141f0d.jpeg'),
(209, 100, 3, '1773733366_9f8a6adad4a7cd86cf33.jpeg'),
(210, 100, 4, '1773733366_7c49e50a7cee0accafb3.pdf'),
(211, 100, 5, '1773733366_217b061e21ccb55439c9.pdf'),
(212, 100, 7, '1773733366_91c9f29422a2dfe6772e.pdf'),
(213, 100, 8, '1773733366_8d46643d78778cfe3234.pdf'),
(214, 100, 10, '1773733366_2b641b1cc55e3040f238.pdf'),
(215, 101, 3, '1773734457_24d546911a0f6f78d4ef.jpg'),
(216, 101, 4, '1773734457_043a9c4d4b78f4fedeff.jpg'),
(217, 101, 5, '1773734458_29a4bebf4b11d8ba0379.jpg'),
(218, 101, 7, '1773734458_34a703405ab3a357aa1e.jpg'),
(219, 101, 8, '1773734459_5e97cbd13d0ee92dbf6a.jpg'),
(220, 101, 10, '1773734459_adeef5607816762f68ac.jpg'),
(221, 102, 3, '1773735528_419ad952a1c7bfbe5d08.jpeg'),
(222, 102, 4, '1773735528_720c736c7f1525f981a9.pdf'),
(223, 102, 5, '1773735529_c6b1c90b5555d6238153.pdf'),
(224, 102, 7, '1773735529_ec387ce83807b3e4f412.pdf'),
(225, 102, 8, '1773735530_97511f3de63ad463669f.pdf'),
(226, 102, 10, '1773735530_4ef1cf8a173d991d032c.pdf'),
(227, 103, 3, '1773736252_b96c08c7a07d62b6a7ae.jpeg'),
(228, 103, 7, '1773736252_14730a993f165f6cee41.pdf'),
(229, 103, 8, '1773736252_0008a31731529d444589.pdf'),
(230, 103, 10, '1773736252_7202254334ba36892fd2.pdf'),
(231, 104, 3, '1773739778_ff23511a042c8a8a3e32.jpg'),
(232, 104, 4, '1773739778_c9ca51f5bc9d44e26ae7.jpg'),
(233, 104, 5, '1773739778_613a61fa5d21b25688af.jpg'),
(234, 104, 7, '1773739778_9ba64fc74827a7e3536e.pdf'),
(235, 104, 8, '1773739778_3706c50fe57b2efc527c.pdf'),
(236, 104, 10, '1773739779_e56ff9ff252ac09a38d1.pdf'),
(237, 105, 3, '1773747268_4e04eed28d04cba7f6b9.jpeg'),
(238, 105, 4, '1773747268_ef264a04cfe0f699a7e3.pdf'),
(239, 105, 5, '1773747268_287638d8553d551223ed.pdf'),
(240, 105, 7, '1773747268_79534d06c1a877135ab4.pdf'),
(241, 105, 8, '1773747268_29075348c00ee4d93ebf.pdf'),
(242, 105, 10, '1773747268_2bdd4c83dacc8c4c067d.pdf'),
(243, 106, 3, '1773757109_66ee29c040cec4eaed8b.jpg'),
(244, 106, 4, '1773757109_34537160d6478a76a4ef.jpg'),
(245, 106, 5, '1773757109_2c9df27bcbb4d1f28382.jpg'),
(246, 106, 7, '1773757109_3b17a4a556d949668b0e.jpg'),
(247, 106, 8, '1773757109_c08da70a655254d05b82.jpg'),
(248, 106, 10, '1773757109_1c89d5ccfac568dc2913.jpg'),
(249, 107, 3, '1773761220_77bb93ce88659db33596.jpg'),
(250, 107, 4, '1773761220_c113f6f6371d95bca474.jpg'),
(251, 107, 5, '1773761220_6a5e75acb447470c35f4.jpg'),
(252, 107, 7, '1773761220_72e5d6e7880518391ab0.jpg'),
(253, 107, 8, '1773761220_a47cd08417e0476e4740.jpg'),
(254, 107, 10, '1773761220_7b90ddcbd9cdb88107e1.jpg'),
(255, 111, 3, '1773771657_96abd0eafb68ff480e21.jpeg'),
(256, 111, 4, '1773771657_2e90ff5e2b1e3eb368e7.pdf'),
(257, 111, 5, '1773771657_805ceeabe860d12ee382.pdf'),
(258, 111, 7, '1773771657_add82d647eb554887750.pdf'),
(259, 111, 8, '1773771657_1cf94a505a51bd070db8.pdf'),
(260, 111, 10, '1773771657_fb2178682228bb8c348f.pdf'),
(261, 113, 3, '1774865352_e99d9168c3892df1c55c.jpeg'),
(262, 113, 4, '1774865352_a3d48a624b83616ba6f7.pdf'),
(263, 113, 5, '1774865352_0e7325758660bf3378fc.pdf'),
(264, 113, 7, '1774865352_7e8e30878183f05c4459.pdf'),
(265, 113, 8, '1774865352_6d34c6f90a4dc29d656a.pdf'),
(266, 113, 10, '1774865353_0419822ae5b64391ad53.pdf'),
(267, 114, 3, '1773812975_52cdd983ec890917ded4.jpeg'),
(268, 114, 4, '1773812975_399002650d4a3a42ec06.pdf'),
(269, 114, 5, '1773812975_9ae092e9c1b99054a89b.pdf'),
(270, 114, 7, '1773812975_16439c45d92a32141403.pdf'),
(271, 114, 8, '1773812975_fbf898d55b9073534cf9.pdf'),
(272, 114, 10, '1773812975_54567eae63de140125b0.pdf'),
(273, 117, 3, '1773829827_63547e237c813d044697.jpeg'),
(274, 117, 4, '1773829827_609b0b590d1a1b06126d.pdf'),
(275, 117, 5, '1773829827_bdaee6841f0b774a8318.pdf'),
(276, 117, 7, '1773829827_b085c866ce2b2d2f6deb.pdf'),
(277, 117, 8, '1773829827_5790736f968cc275cb2f.pdf'),
(278, 117, 10, '1773829827_48b10faf5128432354cf.pdf'),
(279, 118, 3, '1773870945_95a760e867f6e19b9580.jpeg'),
(280, 118, 4, '1773870945_f3ba93a530c4cd5ea0fc.pdf'),
(281, 118, 5, '1773870945_8f86f5a0b6cdd3316456.pdf'),
(282, 118, 7, '1773870945_24673fd466ed08fd04ca.pdf'),
(283, 118, 8, '1773870945_26e839c12f06034c74a3.pdf'),
(284, 118, 10, '1773870945_84c6da4b9e47259d5243.pdf'),
(285, 119, 3, '1773884677_a87806ae2f293784636f.jpg'),
(286, 119, 4, '1773884677_357ee73d12c4e1fee453.jpg'),
(287, 119, 5, '1773884677_a73a8f2cb7fae686be1d.jpg'),
(288, 119, 7, '1773884677_354792dcf34830274ead.jpg'),
(289, 119, 8, '1773884677_94b9797836b176da8fd4.jpg'),
(290, 119, 10, '1773884677_a430c819139d4bd38375.jpg'),
(297, 121, 3, '1773895597_5e58e6fb37c6998b7666.jpg'),
(298, 121, 4, '1773895597_a7f659ac55b1a0b6240d.pdf'),
(299, 121, 5, '1773895597_d5b071f2ca498876a1e4.pdf'),
(300, 121, 7, '1773895597_3c74cd2be8fc40fbc523.jpg'),
(301, 121, 8, '1773895597_ffafc93a48baac1e631f.jpg'),
(302, 121, 10, '1773895597_9f8d99e54ca1ac320237.jpg'),
(303, 122, 3, '1773902100_0960d4cc0514b8edebfd.jpeg'),
(304, 122, 4, '1773902100_60c66312303cd2f90664.pdf'),
(305, 122, 5, '1773902100_ba5f36d1dd932effa5f7.pdf'),
(306, 122, 7, '1773902100_d6dab2a50f7ff2b2cd56.pdf'),
(307, 122, 8, '1773902100_edb0d4659055531bae25.pdf'),
(308, 122, 10, '1773902100_ed8e321eed80756ac653.pdf'),
(309, 123, 3, '1773913778_f13e791b4eecca7f91af.png'),
(310, 123, 4, '1773913778_d97a3f00d9f287bfe25c.pdf'),
(311, 123, 5, '1773913778_3179d28c807d872be1d4.pdf'),
(312, 123, 7, '1773913779_8d46c0b494b0358f73ab.pdf'),
(313, 123, 8, '1773913779_da2ffe085190df058792.pdf'),
(314, 123, 10, '1773913780_0191318d0f4c895077df.pdf'),
(315, 129, 4, '1773985712_8cbb7d5b4c741a8456f3.jpg'),
(316, 129, 5, '1773985712_ad2a0b3021e74f00d9a0.jpg'),
(317, 129, 7, '1773985712_be591686e53ab6395a0c.jpg'),
(318, 129, 8, '1773985712_a3a5fa648611be4523b6.jpg'),
(319, 129, 10, '1773985712_7c56b03c6cf3d3c83684.jpg'),
(320, 130, 3, '1774163527_ae3ef7c46184cef5d607.jpeg'),
(321, 130, 4, '1774163527_b786d2e0eb9f8757c864.pdf'),
(322, 130, 5, '1774163527_d0821ce0e44e814d3c4d.pdf'),
(323, 130, 7, '1774163527_7f7e7c6ed39d42b0b5dd.pdf'),
(324, 130, 8, '1774163527_342fe2fdb0aa7a54ec8c.pdf'),
(325, 130, 10, '1774163527_19be52cd685315c0d4f1.pdf'),
(326, 131, 3, '1774163945_088e4c3fff7a2a8135ba.jpeg'),
(327, 131, 4, '1774163946_e0ab144e86e8b75f6543.pdf'),
(328, 131, 5, '1774163946_d0e1c83d725efe883354.pdf'),
(329, 131, 7, '1774163946_c59ef69f26f5af014c8e.pdf'),
(330, 131, 8, '1774163946_1bd6995bbf5496ea83bb.pdf'),
(331, 131, 10, '1774163946_618e79ea44f0f3f73da0.pdf'),
(332, 132, 3, '1774527855_6e430dbcd8c6984a9a68.jpeg'),
(333, 132, 4, '1774527855_9879d743fed86225cd93.pdf'),
(334, 132, 5, '1774527855_559457f9f57fc008a831.pdf'),
(335, 132, 7, '1774527855_fe41a6492ef66199c0c6.pdf'),
(336, 132, 8, '1774527855_2879a17d5708a5a3b584.pdf'),
(337, 132, 10, '1774527855_cdb1737b46ba44b130fe.pdf'),
(338, 133, 3, '1774528593_94744cf81634dd30e52e.jpeg'),
(339, 133, 4, '1774528593_539c497d6460b402d1be.pdf'),
(340, 133, 5, '1774528593_fa4f02d27e9545d84b40.pdf'),
(341, 133, 7, '1774528593_c5da1b571401dd53cf2a.pdf'),
(342, 133, 8, '1774528594_7aa945a7282424bcfb3f.pdf'),
(343, 133, 10, '1774528594_8a888f5f8e368ea3ad8c.pdf'),
(344, 134, 3, '1774755689_5aebbf43d882eeaaed1e.jpg'),
(345, 134, 4, '1774755689_ff4eb1b4bc40749486d4.pdf'),
(346, 134, 5, '1774755689_d62e6ce820c2a528f3a7.pdf'),
(347, 134, 7, '1774755689_8c95ce0384acef36894f.pdf'),
(348, 134, 8, '1774755689_4dfe0d33ccfeb29bd956.pdf'),
(349, 134, 10, '1774755689_e363cd0c9f5ba1f550d1.pdf'),
(350, 137, 3, '1774768689_2edfde4ba1fc5bd4855a.jpg'),
(351, 137, 4, '1774768689_e549b49fe49e513b6e08.jpg'),
(352, 137, 5, '1774768689_8e4ae45a7ed6aacd6399.jpg'),
(353, 137, 7, '1774768689_fc28eaa0eb43e5c11316.jpg'),
(354, 137, 8, '1774768689_5c5956b0df3feee288c5.jpg'),
(355, 137, 10, '1774768689_91fc34e7615e8eb48230.jpg'),
(356, 138, 3, '1774768964_0e939a1d4e761db349b7.jpg'),
(357, 138, 4, '1774768964_f53e746cd79bc442591e.pdf'),
(358, 138, 5, '1774768965_c12e3e67732f220e9f8d.pdf'),
(359, 138, 7, '1774768965_6e4ed27ae20cd85446b8.pdf'),
(360, 138, 8, '1774768965_76e6fd2b922cc61caee4.pdf'),
(361, 138, 10, '1774768965_70831bec7d3d0b25e93e.pdf'),
(362, 139, 3, '1774808464_695625a9cd12d94e05ee.png'),
(363, 139, 4, '1774808464_891ba16218ff5bd1d13c.pdf'),
(364, 139, 5, '1774808464_55459f09ceeb04638eee.pdf'),
(365, 139, 7, '1774808465_a5634b2f5f3985926e75.pdf'),
(366, 139, 8, '1774808465_a470a03b885379c7b243.pdf'),
(367, 139, 10, '1774808465_b05fe20c0067fbfe9800.pdf'),
(374, 142, 3, '1774866037_f8592a1fbbbd169e6692.png'),
(375, 142, 4, '1774866037_2ae820fcf234b11beaae.pdf'),
(376, 142, 5, '1774866037_815cf91e9638acf9d952.pdf'),
(377, 142, 7, '1774866038_950ff672b9dc5226500e.pdf'),
(378, 142, 8, '1774866038_df3b3bcfa6a643d5d1e6.pdf'),
(379, 142, 10, '1774866038_b064bc510b6d4415f8bc.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `latar_belakang`
--

CREATE TABLE `latar_belakang` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `latar_belakang`
--

INSERT INTO `latar_belakang` (`id`, `gambar`, `is_active`) VALUES
(2, '1773239014_ef78f26a64e0bd464215.pdf', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` int(11) NOT NULL,
  `nama_pekerjaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `nama_pekerjaan`) VALUES
(1, 'PNS, TNI, POLRI'),
(2, 'Wiraswasta'),
(3, 'Karyawan Swasta'),
(4, 'Karyawan Honorer'),
(5, 'Pensiunan'),
(6, 'Mengurus Rumah Tangga'),
(7, 'Mekanik'),
(8, 'Sopir'),
(9, 'Pedagang'),
(10, 'Petani'),
(11, 'Peternak'),
(12, 'Nelayan'),
(13, 'Wartawan'),
(16, 'Wakil Gubernur '),
(17, 'Gubernur'),
(18, 'Wakil Bupati'),
(19, 'Bupati'),
(20, 'Anggota DPRD Provinsi'),
(21, 'Anggota DPRD Kabupaten'),
(22, 'Karyawan BUMN'),
(23, 'Karyawan Honorer'),
(24, 'Sudah Meninggal (Alm)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `no_kk` varchar(20) NOT NULL,
  `nik_siswa` varchar(20) NOT NULL,
  `nama_peserta_didik` varchar(100) NOT NULL,
  `nama_panggilan` varchar(50) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `id_agama` int(11) NOT NULL,
  `kewarganegaraan` enum('WNI','WNA') NOT NULL,
  `anak_ke` int(11) NOT NULL,
  `jumlah_saudara_kandung` int(11) NOT NULL,
  `jumlah_saudara_angkat` int(11) NOT NULL,
  `bahasa_sehari_hari` varchar(50) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `tempat_tinggal` enum('Orang Tua','Wali','Menumpang','Asrama') NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `nik_ayah` varchar(20) NOT NULL,
  `nik_ibu` varchar(20) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `penghasilan_ayah` varchar(50) NOT NULL,
  `penghasilan_ibu` varchar(50) NOT NULL,
  `id_pekerjaan_ayah` int(11) NOT NULL,
  `id_pekerjaan_ibu` int(11) NOT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `hubungan_wali` varchar(50) DEFAULT NULL,
  `id_pekerjaan_wali` int(11) DEFAULT NULL,
  `masuk_sebagai` varchar(50) DEFAULT 'Murid Baru',
  `asal_peserta_didik` varchar(100) NOT NULL,
  `nama_tk` varchar(100) NOT NULL,
  `tahun_nomor_ijazah` varchar(100) NOT NULL,
  `ttd_ortu` varchar(255) NOT NULL,
  `status_pendaftaran` enum('Menunggu','Diterima','Ditolak','Perbaikan') DEFAULT 'Menunggu',
  `alasan_tolak` text DEFAULT NULL,
  `pesan_perbaikan` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id`, `id_user`, `no_kk`, `nik_siswa`, `nama_peserta_didik`, `nama_panggilan`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `id_agama`, `kewarganegaraan`, `anak_ke`, `jumlah_saudara_kandung`, `jumlah_saudara_angkat`, `bahasa_sehari_hari`, `berat_badan`, `tinggi_badan`, `alamat`, `no_telp`, `tempat_tinggal`, `nama_ayah`, `nama_ibu`, `nik_ayah`, `nik_ibu`, `pendidikan_ayah`, `pendidikan_ibu`, `penghasilan_ayah`, `penghasilan_ibu`, `id_pekerjaan_ayah`, `id_pekerjaan_ibu`, `nama_wali`, `pendidikan_wali`, `hubungan_wali`, `id_pekerjaan_wali`, `masuk_sebagai`, `asal_peserta_didik`, `nama_tk`, `tahun_nomor_ijazah`, `ttd_ortu`, `status_pendaftaran`, `alasan_tolak`, `pesan_perbaikan`, `created_at`, `updated_at`) VALUES
(2, 23, '1115012608220004', '1302066506200002', 'Aurelia Rizqia Leta ', 'Aurel ', 'Perempuan', 'Kota Solok ', '2020-06-25', 1, 'WNI', 2, 2, 0, 'Bahasa Indonesia ', 23, 106, 'Blang Teungoh ', '082267286842', 'Orang Tua', 'M. Nasir ', 'Fitri Yeni ', '1105100101950002', '1302065602940002', 'Tamat sederajat/SD', 'SLTA/sederajat ', '1.000.000 - 2.000.000', '< 1.000.000', 9, 6, '', '', '', NULL, 'Murid Baru', 'TK NEGERI PEMBINA 1 KUALA ', 'TK NEGERI PEMBINA 1 KUALA ', '2025/2026', '69b383b659180.png', 'Diterima', NULL, NULL, '2026-03-13 10:25:42', '2026-03-27 19:11:15'),
(3, 22, '1171020601250003', '1115016304200001', 'Raisya Azzahra Putroe', 'Putroe', 'Perempuan', 'Nagan Raya', '2020-04-23', 1, 'WNI', 3, 2, 1, 'Indonesia', 13, 103, 'Ujong Pasi Kec. Kuala Kab. Nagan Raya', '081360961186', 'Orang Tua', 'Ibrahim', 'Wardiana', '1171022012760008', '115084308890002', 'Diploma-III', 'SMA', '> 2.000.000', '< 1.000.000', 4, 6, '', '', '', NULL, 'Murid Baru', 'TK Negeri Pembina 1 Kuala', 'TK Negeri Pembina 1 Kuala', '2026', '69b3b8c96e236.png', 'Diterima', NULL, NULL, '2026-03-13 14:12:09', '2026-03-27 19:10:02'),
(4, 13, '1107292303180001', '1107292601200001', 'Muhammad Asyraf ', 'Asyraf ', 'Laki-laki', 'Sigli', '2020-01-26', 1, 'WNI', 2, 1, 2, 'Indonesia ', 18, 112, 'Simpang peut kec, Kuala kab,Nagan Raya ', '081279423141', 'Orang Tua', 'Khairunnas ', 'Fitrianum ', '1115012409900002', '1107304608960003', 'SMA ', 'SMA ', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 2, 6, 'Ibnu amin', 'SMA ', 'Wali', 2, 'Murid Baru', 'TKN pembina 1 kuala', 'TKN pembina 1 kuala', '_', '69b408c8194b6.png', 'Diterima', NULL, NULL, '2026-03-13 19:53:28', '2026-03-27 19:08:45'),
(5, 11, '1115063010190001', '1115062604200001', 'Faizul ikhwan ', 'Ikhwan', 'Laki-laki', 'Suak bilie', '2020-04-26', 1, 'WNI', 1, 1, 0, 'Indonesia ', 22, 122, 'Desa Simpang peut,kec kuala,kab nagan raya,prov aceh', '085361198909', 'Orang Tua', 'Sunardi', 'Wismanita', '1105080911900001', '1115064507970001', 'SMA', 'SMA', '< 1.000.000', '< 1.000.000', 2, 6, '', '', '', NULL, 'Murid Baru', 'TK Baiturrahim ', 'Paud Baiturrahim ', '-', '69b565fcb4246.png', 'Diterima', NULL, NULL, '2026-03-14 20:43:24', '2026-03-27 19:07:21'),
(6, 31, '1115022602080004', '1115014303200002', 'ATTAHAYA RAISYA ', 'attahaya', 'Perempuan', 'simpang peut', '2020-03-03', 1, 'WNI', 3, 2, 0, 'Aceh,indonesia', 18, 113, 'desa Simpang peut,kec Kuala,kab Nagan raya,prov aceh', '082211154080', 'Orang Tua', 'hakim nazari', 'kasnidar amelia', '1115020304840005', '1115024506860007', 'Smp', 'MTsN', '< 1.000.000', '< 1.000.000', 2, 6, '', '', '', NULL, 'Murid Baru', 'simpang peut', 'Paud BAITURAHIM ', '-', '69b574c4306fa.png', 'Diterima', NULL, NULL, '2026-03-14 21:46:28', '2026-03-27 19:04:42'),
(7, 12, '1115011404160003', '1115015111190001', 'Qirani Syafiqa Al-mahyra', 'Qirani', 'Perempuan', 'Medan', '2019-11-11', 1, 'WNI', 2, 2, 0, 'Bahasa Indonesia', 24, 120, 'Desa Blang Teungoh, Kecamatan Kuala, Kabupaten Nagan Raya', '082392929263', 'Orang Tua', 'Aan Andrian', 'Syarifah Nurlaila', '1112041608890002', '1115085810900001', 'S1', 'S1', '> 2.000.000', '> 2.000.000', 1, 1, 'Said Zainal Abidin', 'S1', 'Abang kandung dari Ibu peserta didik', 1, 'Murid Baru', 'Paud Khalifah Kids Nagan Raya', 'Paud Khalifah Kids Nagan Raya', '2026', '69b5867578eb3.png', 'Diterima', NULL, NULL, '2026-03-14 23:01:57', '2026-03-27 19:02:52'),
(22, 36, '1115010604200005', '1115015805200001', 'FITRI RAMADHANI. B', 'FITRI ', 'Perempuan', 'ACEH BARAT', '2020-05-18', 1, 'WNI', 1, 1, 0, 'Bahasa Indonesia', 23, 122, 'Desa Blang Muko Kec. Kuala Kab. Nagan Raya', '+62 812-3085-0112', 'Orang Tua', 'EDI SAFRIZAL', 'ZUBAIDAH', '1115010204830006', '1105054107960051', 'SLTP SEDERAJAT', 'SLTP SEDERAJAT', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'PAUD KHALIFAH KIDS', 'PAUD KHALIFAH KIDS', '2026', '69b6c315938e6.png', 'Diterima', NULL, NULL, '2026-03-15 21:32:53', '2026-03-27 19:01:55'),
(23, 30, '1115010705130003', '1115010103200001', 'Azhar', 'Azhar', 'Laki-laki', 'Simpangpeut', '2020-03-01', 1, 'WNI', 2, 2, 0, 'Bahasa daerah', 15, 9511, 'Simpangpeut', '081370842488', 'Orang Tua', 'Abdullah', 'Mutia', '1115012005800005', '1115015206850001', 'SLTA', 'SD', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'TK', 'TK permata bunda', '2026', '69b6df94c7a05.png', 'Diterima', NULL, NULL, '2026-03-15 23:34:28', '2026-03-27 19:00:36'),
(25, 34, '1115011902190002', '1115012809190002', 'AL-HAFIZ', 'AL-HAFIZ', 'Laki-laki', 'ACEH SINGKIL', '2019-09-28', 1, 'WNI', 1, 0, 0, 'Bahasa Indonesia ', 26, 122, 'Gampong Simpang Peut Kecamatan Kuala Kabupaten Nagan Raya ', '082360009243', 'Orang Tua', 'MUHAMMAD SAUMIL', 'NURHALIMAH', '1115011503920003', '1110045306920001', 'S-1 Teknik Informatika', 'S-1 Kesehatan Masyarakat', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 9, 6, '', '', '', NULL, 'Murid Baru', 'TK', 'TK NEGERI PEMBINA 1 KUALA', '2026', '69b6eb659443f.png', 'Diterima', NULL, NULL, '2026-03-16 00:24:53', '2026-03-27 18:58:04'),
(26, 37, '1115012901260002', '1115015209190001', 'KAISYA AZKA AMIRA', 'KAISYA', 'Perempuan', 'SIMPANG PEUT', '2019-09-12', 1, 'WNI', 4, 4, 0, 'INDONESIA ', 23, 115, 'SIMPANG PEUT,KECAMATAN KUALA', '081273736553', 'Orang Tua', 'MAWARDI S', 'EKA WATI', '1115011210790001', '1115014708830004', 'SLTP', 'SLTA', 'Tidak Berpenghasilan', 'Tidak Berpenghasilan', 2, 6, 'ISKANDAR S', 'SLTP', 'WALI', 2, 'Murid Baru', 'SIMPANG PEUT', 'TK PEMBINA 1 KUALA', '-', '69b752a068e22.png', 'Diterima', NULL, NULL, '2026-03-16 07:45:20', '2026-03-27 18:54:33'),
(30, 9, '1105042308230001', '1115010906200001', 'm. rizieq asykar', 'rizieq', 'Laki-laki', 'ujong patihan', '2020-06-09', 1, 'WNI', 1, 1, 3, 'indonesia', 13, 45, 'simpang peut', '085267212900/0812691', 'Orang Tua', 'mahdoni irwanda', 'sri ratna dewi', '1105041202930001', '1115016509870001', 'sma', 'sma', '< 1.000.000', '< 1.000.000', 2, 2, '', '', '', NULL, 'Murid Baru', 'simpangpeut ujong rambong', 'ra permata bunda', 'belum ada', '69b787b8b2afe.png', 'Diterima', NULL, NULL, '2026-03-16 11:31:52', '2026-03-27 18:52:28'),
(32, 41, '1115010801200001', '3203708949', 'SHEILLA ZAIDA FEBRILIA ', 'SHEILLA ', 'Perempuan', 'Kuta makmue ', '2020-02-18', 1, 'WNI', 1, 1, 0, 'Bahasa Indonesia ', 15, 115, 'Dusun paya ie tajam desa Kuta makmue kec.kuala kan. Nagan Raya ', '082284591422', 'Orang Tua', 'UDIN SATRIO ', 'MARDIANA ', '3507041403940002', '1115017110940001', 'Smp', 'S1', '> 2.000.000', 'Tidak Berpenghasilan', 10, 6, '', '', '', NULL, 'Murid Baru', 'Paut Khalifah kids', 'Paut Khalifah kids', '2026', '69b78c71ca64c.png', 'Diterima', NULL, NULL, '2026-03-16 11:52:01', '2026-03-27 18:51:03'),
(51, 38, '1115030608190005', '1115030411190001', 'Muhammad Azia Munanda', 'Nanda', 'Laki-laki', 'Ujong patihah', '2019-11-04', 1, 'WNI', 1, 0, 0, 'Aceh dan Indonesia ', 28, 90, 'Desa Ujong pasi ,dusun Barona jaya\r\nKecamatan Kuala kabupaten Nagan Raya ', '085280705794', 'Orang Tua', 'Zulkifli', 'Erna dewi', '1115010403910005', '1115035403940001', 'Tidak/ belum sekolah ', 'SLTA/Sederajat ', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'PAUD', 'PAUD Arrahman', '-', '69b7a341096ff.png', 'Diterima', NULL, NULL, '2026-03-16 13:29:21', '2026-03-27 18:49:52'),
(64, 35, '1115012203190003', '1115011610190002', 'FAZILUL ABIZAR ', 'ABIZAR', 'Laki-laki', 'Simpang peut ', '2019-10-16', 1, 'WNI', 1, 2, 1, 'Bahasa Indonesia ', 21, 115, 'Simpang peut', '082167455801', 'Orang Tua', 'KHAIRUL AGUSRIZAR ', 'SURIYATI ', '1115011708910002', '1115016908950001', 'Diploma IV/stratai I', 'SLTA sederajat ', '> 2.000.000', 'Tidak Berpenghasilan', 2, 6, 'KHAIRINA MUNANDAR', 'Diploma IV ', 'Wali', 2, 'Murid Baru', 'Simpang peut', 'TK permata bunda', '2026', '', 'Diterima', NULL, NULL, '2026-03-16 17:19:37', '2026-03-27 18:48:27'),
(69, 50, '1105090401210001', '1115011404200001', 'M. ARQAF ALFARIS', 'ARQAF', 'Laki-laki', 'BLANG BARO', '2020-04-14', 1, 'WNI', 1, 0, 0, 'Bahasa Indonesia', 21, 122, 'Desa Balee Kec. Meureubo Kab. Aceh Barat', '+62 821-3287-1926', 'Orang Tua', 'JAUHARI', 'KASMIYANTI', '1115010410950003', '1115026607970001', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'TK NEGERI PEMBINA 1 KUALA', 'TK NEGERI PEMBINA 1 KUALA', '2026', '69b803e51d1f6.png', 'Diterima', NULL, NULL, '2026-03-16 20:21:41', '2026-03-27 18:46:33'),
(71, 51, '1115023009190002', '1115022803200001', 'ELLZIO PRANATA W', 'ELLZIO', 'Laki-laki', 'SIMPANG PEUT', '2020-05-08', 1, 'WNI', 1, 1, 0, 'Bahasa Indonesia', 22, 122, 'Desa Krueng Ceuko Kec. Seunagan Kab. Nagan Raya', '+62 813-9406-7939', 'Orang Tua', 'ADI RAHMAN WINANDA', 'FITRI ANI', '1112020303920001', '1115016410960001', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'PAUD BAITURRAHIM', 'PAUD BAITURRAHIM', '2026', '69b8081135699.png', 'Diterima', NULL, NULL, '2026-03-16 20:39:29', '2026-03-27 18:45:34'),
(72, 40, '1115011307160001', '1115014606200003', 'Raihan Natasya', 'Tasya', 'Perempuan', 'Nagan Raya', '2020-06-06', 1, 'WNI', 2, 2, 0, 'Aceh', 18, 107, 'Gampong Ujong Pasi', '082304424346', 'Orang Tua', 'Alia Rahmat', 'Afrida', '1115010310880001', '1115024202940004', 'SLTA', 'SLTA', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'Paud Syaikhuna ', 'Paud Syaikhuna ', '2026', '69b808e655683.png', 'Diterima', NULL, NULL, '2026-03-16 20:43:02', '2026-03-27 18:42:45'),
(73, 20, '1115010912160002', '1115011105200002', 'Muhammad Faris Asad', 'Asad', 'Laki-laki', 'Alue ie mameh', '2020-05-11', 1, 'WNI', 1, 0, 2, 'Indonesia', 15, 104, 'Desa Alue ie mameh kec. Kuala kb. Nagan Raya', '082267558795', 'Orang Tua', 'Dedi fardansyah', 'Nursawari', '1109010101880007', '1115016011900001', 'SMA', 'S1', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 2, 6, 'Badri alaina', 'S1', 'Paman ', 4, 'Murid Baru', 'Alue ie mameh', 'TK R. A PERMATA BUNDA', '2025-2026', '69b80eddaffd9.png', 'Diterima', NULL, NULL, '2026-03-16 21:08:29', '2026-03-27 18:40:01'),
(74, 21, '1115022511160001', '1115021406200001', 'Ahmad hukama', 'Ahmad', 'Laki-laki', 'Latong', '2020-06-14', 1, 'WNI', 1, 0, 0, 'Indonesia', 16, 106, 'Desa.alue ie mameh kec.kuala kab. Nagan raya', '082268256609', 'Orang Tua', 'Ismail', 'Evi yuliana', '1115011010900012', '1115025008950002', 'SMA', 'SMA', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, 'M.daud', 'SMP', 'Pak woe', 10, 'Murid Baru', 'Alue ie mameh', 'R A. Permata bunda', '2025-2026', '69b813191f3cd.png', 'Diterima', NULL, NULL, '2026-03-16 21:26:33', '2026-03-27 18:38:11'),
(75, 45, '1115012301240002', '1107041209190001', 'muhammad rasya', 'rasya', 'Perempuan', 'sigli', '2019-09-12', 1, 'WNI', 2, 2, 0, 'aceh', 35, 110, 'Desa. Simpang Peut, kec. kuala, kab. nagan raya, prov. aceh ', '082340806174', 'Orang Tua', 'Muhammad Arifin', 'Nurul Arfina', '1107040209880002', '1107047009900001', 'SLTA/sederajat ', 'Sarjana', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'simpang peut', 'Tk Negeri Pembina 1 kuala ', '2026 ', '69b814bb330f8.png', 'Diterima', NULL, NULL, '2026-03-16 21:33:31', '2026-03-27 18:34:52'),
(76, 53, '1115011602150005', '1115010905200001', 'M. ARSYA RAMADHAN SYAH', 'ARSYA', 'Laki-laki', 'SIMPANG PEUT', '2020-05-09', 1, 'WNI', 2, 1, 0, 'Bahasa Indonesia', 22, 122, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '+62 823-6774-4883', 'Orang Tua', 'DARMANSYAH', 'SUKRINA', '1115011307860006', '1115055404890002', 'STRATA 1', 'STRATA 1', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'PAUD BAITURRAHIM', 'PAUD BAITURRAHIM', '2026', '69b817e4676fb.png', 'Diterima', NULL, NULL, '2026-03-16 21:47:00', '2026-03-27 18:33:39'),
(77, 25, '1115011210200001', '1115012605200001', 'Muhammad al- farids', 'Farids', 'Laki-laki', 'Simpang peut', '2020-05-26', 1, 'WNI', 1, 0, 0, 'Indonesia', 14, 110, 'Simpang peut kec. Kuala kab. Nagan raya', '082260715558', 'Orang Tua', 'Feri iwan gunawan', 'Ridha. R', '1115010101990002', '1115014605020003', ' Tamat SD/ sederajat', 'Tidak/ belom sekolah', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 10, 6, 'Linda', 'SMA', 'Kakak kandung ayah', 6, 'Murid Baru', 'Tk', 'R.A permata bunda', '2025-2026', '69b825e78cd16.png', 'Diterima', NULL, NULL, '2026-03-16 22:46:47', '2026-03-27 18:32:17'),
(78, 26, '1115010804190001', '1115012710190002', 'Abdul Hadi', 'Hadi', 'Laki-laki', 'Nagan Raya ', '2019-10-27', 1, 'WNI', 1, 0, 0, 'Indonesia ', 14, 110, 'Simpang peut', '085270571566', 'Orang Tua', 'Muhammad ', 'Nurhayati ', '1115011906880001', '1115045406960004', 'SMA', 'SMA', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'TK', 'RA PERMATA Bunda ', '2025-2026', '69b8c0e54d675.png', 'Diterima', NULL, NULL, '2026-03-17 09:48:05', '2026-03-27 18:30:23'),
(82, 58, '1115032702190001', '1115031206190001', 'zaki maulana al-fatih', 'zaki', 'Laki-laki', 'lhok pange', '2019-06-12', 1, 'WNI', 1, 0, 0, 'bahasa indonesia', 14, 110, 'desa ujong pasi kecamatan kuala kabupaten nagan raya', '085361511696', 'Orang Tua', 'tripoli', 'santi wahyuni', '1115031404880006', '1115014206930005', 's-1', 's-1', '< 1.000.000', '< 1.000.000', 4, 4, '', '', '', NULL, 'Murid Baru', 'tk', 'tk negeri pembina 1 kuala', '421/25/TKNP-1K/2026', '69b8d698eb9ff.png', 'Diterima', NULL, NULL, '2026-03-17 11:20:40', '2026-03-27 18:27:55'),
(89, 49, '1116032605090012', '1115011909190002', 'Muhammad adam', 'Adam', 'Laki-laki', 'Ujong patihah', '2019-09-19', 1, 'WNI', 3, 2, 0, 'Bahasa Indonesia', 18, 80, 'Simpang peut', '085207069028', 'Orang Tua', 'Sunardi', 'Maulidawati', '1116031807820001', '1116036511850001', 'SLTA sederajat', 'SLTA sederajat', '> 2.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'Taman kanak-kanak', 'RA permata bunda', '2025_2026', '', 'Diterima', NULL, NULL, '2026-03-17 12:16:17', '2026-03-27 18:26:12'),
(96, 47, '1115012106060072', '1105045707200001', 'ANNISA HUMAIRA', 'MAIRA', 'Perempuan', 'NAGAN RAYA', '2020-07-17', 1, 'WNI', 2, 3, 0, 'BAHASA', 17, 78, 'Jln. H. Samsudin, Lr. Lo Baha II, Desa Simpang Peut Kec. Kuala', '085373803499', 'Orang Tua', 'BASIRUN NAZIR', 'DEVI SUTIA', '1106042001870001', '1115016312900001', 'SMA', 'S-I', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 1, 6, '', '', '', NULL, 'Murid Baru', 'SIMPANG PEUT', 'TK NEGERI PEMBINA 1 KUALA', '-', '69b8eb769f9a8.png', 'Diterima', NULL, NULL, '2026-03-17 12:49:42', '2026-03-27 18:22:51'),
(97, 52, '1115012311100004', '1115010608190001', 'M.Azzam Al Ghifari', 'Azzam', 'Laki-laki', 'Simpang peut,Nagan raya', '2019-08-06', 1, 'WNI', 2, 2, 0, 'Indonesia', 30, 125, 'Simpang peut,Nagan raya', '085370086859', 'Orang Tua', 'Farijan Junaidi', 'HERA FITRIA', '1115012302850001', '1115015706850002', 'SLTA', 'S1 Keperawatan', '> 2.000.000', '> 2.000.000', 1, 1, 'Mirwan Saputra', 'S1', 'Wali', 2, 'Murid Baru', 'Simpang peut,Nagan raya', 'TK Pembina 2 Kuala', '2025/2026', '69b8eb7fdd759.png', 'Diterima', NULL, NULL, '2026-03-17 12:49:51', '2026-03-27 18:20:41'),
(98, 56, '1115012710140002', '1115013105200001', 'ALFA SAMUDRA', 'ALFA', 'Laki-laki', 'NAGAN RAYA', '2020-05-31', 1, 'WNI', 2, 1, 0, 'BAHASA INDONESIA', 23, 122, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '+62 822-7986-4612', 'Orang Tua', 'MAUDIN', 'NELI SADRIZAL', '1115071201870001', '1115016004910001', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', '< 1.000.000', 'Tidak Berpenghasilan', 9, 6, '', '', '', NULL, 'Murid Baru', 'RA PERMATA BUNDA', 'RA PERMATA BUNDA', '2026', '69b8fe6b87c25.png', 'Diterima', NULL, NULL, '2026-03-17 14:10:35', '2026-03-27 18:19:02'),
(99, 63, '1115012912140002', '1115012902200001', 'Rahmat Rianda', 'Rahmat', 'Laki-laki', 'Simpang peut', '2020-02-29', 1, 'WNI', 2, 2, 0, 'Indonesia', 23, 115, 'Simpang peut,Nagan Raya', '082174120903', 'Orang Tua', 'Rian Maulana', 'Risnawati', '1115023108910004', '1115016705920002', 'SLTA', 'SLTA', '1.000.000 - 2.000.000', '< 1.000.000', 10, 6, '', '', '', NULL, 'Murid Baru', 'simpang peut', 'TK Pembina 2 Kuala', '2025/2026', '69b8fff97dc3a.png', 'Diterima', NULL, NULL, '2026-03-17 14:17:13', '2026-03-27 18:17:51'),
(100, 64, '1115031707190001', '1115036801200001', 'AJA AULIA PUTRI', 'AJA', 'Perempuan', 'PEULEUKUNG', '2020-01-28', 1, 'WNI', 1, 1, 0, 'BAHASA INDONESIA', 23, 122, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '+62 822-3783-5151', 'Orang Tua', 'SAID MUNTADA', 'OFIDA SYARI PUTRI', '1115010101820005', '1115034410950001', 'SD SEDERAJAT', 'SLTA SEDERAJAT', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'TK', 'TK', '2026', '69b905f529000.png', 'Diterima', NULL, NULL, '2026-03-17 14:42:45', '2026-03-27 18:16:36'),
(101, 39, '1115011306060049', '1115015303200001', 'Nadhira thafana', 'Nadhira', 'Perempuan', 'Simpang peut nagan raya', '2020-03-13', 1, 'WNI', 4, 3, 1, 'Aceh ', 18, 100, 'Jl. peukan sp4 lorong pasar simpang peut,kuala,nagan raya ', '085234787813', 'Orang Tua', 'Mustajab', 'Salmiyanti', '1115010404800002', '1115016010850002', 'Sma', 'Sma', '> 2.000.000', 'Tidak Berpenghasilan', 9, 6, 'Ema wati', 'Sarjanah', 'Adik kk', 2, 'Murid Baru', 'Tk negeri', ' Tk PERMATA BUNDA', '2026', '69b90a37e66f6.png', 'Diterima', NULL, NULL, '2026-03-17 15:00:55', '2026-03-27 18:14:21'),
(102, 65, '1115010709210005', '1115012808200002', 'MUHAMMAD ALIF RIZKY', 'ALIF', 'Laki-laki', 'NAGAN RAYA', '2020-06-28', 1, 'WNI', 1, 0, 0, 'BAHASA INDONESIA', 22, 122, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '+62 822-9957-0026', 'Orang Tua', 'MUHIBBUS SABRI', 'DESI RATNA SARI', '1115022106900005', '1112016012930001', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', 'Tidak Berpenghasilan', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'TK', 'TK', '2026', '69b90e686f32b.png', 'Diterima', NULL, NULL, '2026-03-17 15:18:48', '2026-03-27 18:12:19'),
(103, 66, '1115010601120010', '1115010112190001', 'MUHAMMAD ATHAR ARRAYYAN', 'ATHAR', 'Laki-laki', 'UJONG PATIHAH', '2019-12-01', 1, 'WNI', 3, 3, 0, 'BAHASA INDONESIA', 23, 122, 'Desa Ujong Patihah Kec. Kuala Kab. Nagan Raya', '+62 852-6054-4498', 'Orang Tua', 'SUWARDI', 'ZUNIARTI', '1115012811840003', '1115015906840002', 'STRATA 1', 'STRATA 1', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'TK PEMBINA 1 KUALA', 'TK PEMBINA 1 KUALA', '2026', '69b9113c54657.png', 'Diterima', NULL, NULL, '2026-03-17 15:30:52', '2026-03-27 18:11:22'),
(104, 19, '1115011512170002', '1115010910190001', 'NAUFAL ASH SHIDDIQ', 'NAUFAL', 'Laki-laki', 'TANGAN-TANGAN', '2019-09-10', 1, 'WNI', 1, 0, 0, 'Indonesia', 20, 120, 'Dusun Beringin Jaya Desa Simpang Peut Kec.Kuala Kab. Nagan Raya Prov. Aceh', '085206522220', 'Orang Tua', 'RUSMIYADI', 'NUR AZIZAH', '1115014406910005', '1112026104930001', 'S-1', 'SMA', '> 2.000.000', '> 2.000.000', 2, 6, '', '', '', NULL, 'Murid Baru', 'NAGAN RAYA', 'PAUD BAITURRAHIM', '2026', '69b91f02aa4cd.png', 'Diterima', NULL, NULL, '2026-03-17 16:29:38', '2026-03-27 18:08:52'),
(105, 67, '1115011609150001', '1115011710190001', 'ABDUL MUIS', 'ABDUL', 'Laki-laki', 'SIMPANG PEUT', '2019-10-17', 1, 'WNI', 2, 1, 0, 'Bahasa Indonesia', 22, 122, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '+62 813-5006-4048', 'Orang Tua', 'HERRY FARMI', 'FATIMAH', '1115011208820004', '1115016601930002', 'SLTA SEDERAJAT', 'STRATA 1', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 10, 6, '', '', '', NULL, 'Murid Baru', 'TK PEMBINA 1 KUALA', 'TK PEMBINA 1 KUALA', '2026', '69b93c42e6068.png', 'Diterima', NULL, NULL, '2026-03-17 18:34:26', '2026-03-27 18:06:03'),
(106, 54, '1115010402110006', '1115015905200001', 'Milka aleena', 'Milka', 'Perempuan', 'Simpang peut', '2020-05-19', 1, 'WNI', 2, 2, 0, 'Bahasa indonesia', 20, 135, 'simpang peut', '081394917690', 'Orang Tua', 'Sofianto', 'Irawati', '1115010802790003', '1115014805890005', 'D2 PGSD', 'SMA', '< 1.000.000', 'Tidak Berpenghasilan', 10, 6, '', '', '', NULL, 'Murid Baru', 'TK', 'TK NEGERI PEMBINA 3 kuala', '2026', '69b962b512a97.png', 'Diterima', NULL, NULL, '2026-03-17 21:18:29', '2026-03-27 17:55:21'),
(107, 7, '1115010308180002', '1115014404200001', 'Cut Khansa Aulia', 'Khansa', 'Perempuan', 'Ujong Fatihah ', '2020-04-04', 1, 'WNI', 2, 2, 0, 'Indonesia ', 17, 120, 'Desa Ujong pasi kec. Kuala kab. Nagan raya', '082211797438', 'Orang Tua', 'Muhammad khairuludin ', 'Sri muliyani', '1115010108900001', '1111134411870001', 'SMA ', 'D2 PGTK', '> 2.000.000', 'Tidak Berpenghasilan', 1, 6, '', '', '', NULL, 'Murid Baru', 'Desa Ujong pasi', 'TK negeri 1 pembina kuala', '0', '69b972c461b43.png', 'Diterima', NULL, NULL, '2026-03-17 22:27:00', '2026-03-27 17:53:18'),
(111, 68, '1115010109200007', '1115011606200001', 'HARIS PERMADI', 'HARIS', 'Laki-laki', 'KUTA MAKMUE', '2020-06-16', 1, 'WNI', 3, 2, 0, 'Bahasa Indonesia', 23, 122, 'Desa Kuta Makmue Kec. Kuala Kab. Nagan Raya', '085348715065', 'Orang Tua', 'MUSWADI', 'ASNIDAR', '1114050102860003', '11140561119000001', 'SLTP SEDERAJAT', 'SLTP SEDERAJAT', 'Tidak Berpenghasilan', 'Tidak Berpenghasilan', 10, 6, '', '', '', NULL, 'Murid Baru', 'PAUD CAHAYA ILMU', 'PAUD CAHAYA ILMU', '2026', '69b99b86f02c9.png', 'Diterima', NULL, NULL, '2026-03-18 01:20:54', '2026-03-27 17:51:15'),
(113, 70, '1115011204160002', '1115012907190002', 'MUHAMMAD IMAM MAULANA', 'IMAM', 'Laki-laki', 'UJONG PATIHAH', '2019-07-29', 1, 'WNI', 2, 3, 0, 'Bahasa Indonesia', 22, 123, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '0', 'Orang Tua', 'DEDI IVANDRI', 'JURAIDA', '110511207810005', '1115014511900003', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', '< 1.000.000', '< 1.000.000', 12, 2, '', '', '', NULL, 'Murid Baru', 'RA. PERMATA BUNDA', 'RA. PERMATA BUNDA', '2026', '69ba3834989e5.png', 'Diterima', NULL, NULL, '2026-03-18 12:29:24', '2026-03-30 17:13:50'),
(114, 71, '1115012604180001', '1115011305200002', 'KENZIE KHAIRAN HAFIZH', 'HAFIZH', 'Laki-laki', 'NAGAN RAYA', '2020-05-13', 1, 'WNI', 1, 0, 0, 'Bahasa Indonesia', 23, 123, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '082255936660', 'Orang Tua', 'YUSUF AGAM FONNA', 'IDA MARLINA', '111501811920001', '1115014502920001', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', '1.000.000 - 2.000.000', '1.000.000 - 2.000.000', 2, 2, '', '', '', NULL, 'Murid Baru', 'TK PEMBINA 1 KUALA', 'TK PEMBINA 1 KUALA', '2026', '69ba3cef4ee79.png', 'Diterima', NULL, NULL, '2026-03-18 12:49:35', '2026-03-27 17:46:16'),
(117, 75, '1115011411150001', '1115014511190001', 'ZHAFIRA GHANIA', 'ZHAFIRA', 'Perempuan', 'UJONG PATIHAH', '2019-11-05', 1, 'WNI', 2, 1, 0, 'Bahasa Indonesia', 22, 122, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '+62 823-1213-8366', 'Orang Tua', 'HENDRA FERI IRAWAN', 'ERIYANTI', '1115010610870004', '111501570910002', 'SLTA SEDERAJAT', 'D-II', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'TK PEMBINA 1 KUALA', 'TK PEMBINA 1 KUALA', '2026', '69ba7ec30abac.png', 'Diterima', NULL, NULL, '2026-03-18 17:30:27', '2026-03-27 17:44:48'),
(118, 77, '1115012101120006', '1115011909790001', 'ABDUL RAHMAN', 'ABDUL', 'Laki-laki', 'UJONG PASI', '2019-09-19', 1, 'WNI', 4, 3, 0, 'Bahasa Indonesia', 23, 122, 'Desa Ujong Pasi Kec. Kuala Kab. Nagan Raya', '+62 823-1060-6169', 'Orang Tua', 'ANWAR', 'YANTI', '1115010404720006', '1115014805840006', 'SLTA SEDERAJAT', 'BELUM TAMAT SD SEDERAJAT', '< 1.000.000', 'Tidak Berpenghasilan', 10, 6, '', '', '', NULL, 'Murid Baru', 'RA.permata bunda', 'RA.permata bunda', '2026', '69bb1f61c22e8.png', 'Diterima', NULL, NULL, '2026-03-19 04:55:45', '2026-03-27 17:43:32'),
(119, 55, '1115012111170002', '1115011108190001', 'muhammad rayhan qalyubi nazir', 'rayhan', 'Laki-laki', 'nagan raya', '2019-08-11', 1, 'WNI', 3, 4, 0, 'bahasa aceh', 25, 70, 'simpang peut', '082239072845', 'Orang Tua', 'nazir', 'epa endri', '1115011204840003', '1115065402890001', 'smp', 's1', '< 1.000.000', 'Tidak Berpenghasilan', 9, 6, '', '', '', NULL, 'Murid Baru', 'paud', 'paud baiturrahim', '2026⁷', '69bb55052f637.png', 'Diterima', NULL, NULL, '2026-03-19 08:44:37', '2026-03-27 17:39:43'),
(121, 80, '1106071005230003', '1210026503190001', 'Aisyah Afiqah Sembiring', 'Rantauprapat', 'Perempuan', 'Rantauprapat', '2019-03-25', 1, 'WNI', 2, 3, 0, 'Bahasa Indonesia', 30, 97, 'Simpang Peut Dusun Ingin Jaya', '082276105594', 'Orang Tua', 'Ade Tempati Sembiring', 'Lasminah', '1210012910890003', '1223054112900007', 'SMA', 'SMP', '> 2.000.000', 'Tidak Berpenghasilan', 3, 6, '', '', '', NULL, 'Murid Baru', 'PAUD', 'PAUD BAITURRAHMAN', '2026', '69bb7fad16b59.png', 'Diterima', NULL, NULL, '2026-03-19 11:46:37', '2026-03-27 17:13:39'),
(122, 82, '1115012609180002', '1115014304200001', 'SYIFA MUNARAH', 'SYIFA', 'Perempuan', 'UJONG PASI', '2020-04-03', 1, 'WNI', 1, 1, 0, 'Bahasa Indonesia', 23, 122, 'Desa Ujong Pasi Kec. Kuala Kab. Nagan Raya', '+62 852-7064-9117', 'Orang Tua', 'SALAHUDDIN', 'SRI ANJAR NURI', '1114031006920001', '1115015008970001', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'PAUD SYAIKHUNA', 'PAUD SYAIKHUNA', '2026', '69bb99144b172.png', 'Diterima', NULL, NULL, '2026-03-19 13:35:00', '2026-03-27 17:12:49'),
(123, 81, '1115011801140002', '1115014808200001', 'Ayra Humayra Adida', 'Ayra', 'Perempuan', 'Alue Ie Mameh', '2020-08-08', 1, 'WNI', 1, 0, 0, 'Bahasa Indonesia', 16, 92, 'Gampong Alue Ie Mameh Kecamatan Kuala Kabupaten Nagan Raya', '085297018792', 'Orang Tua', 'Suardi', 'Idawati', '1101023112760004', '1115014506870005', 'S-1 PGSD', 'S-1 PGSD', '> 2.000.000', '> 2.000.000', 1, 1, '', '', '', NULL, 'Murid Baru', 'RA', 'RA Permata Bunda', '-', '69bbc6b2d4e24.png', 'Diterima', NULL, NULL, '2026-03-19 16:49:38', '2026-03-27 17:12:04'),
(129, 60, '1115013003120005', '1115014104200001', 'CUT ZIADATI EDJA ', 'Cut zia', 'Perempuan', 'Ujong pasi', '2020-04-01', 1, 'WNI', 4, 4, 0, 'Indonesia/aceh', 15, 105, 'dusun barona jaya, Gampong ujong pasi, kecamatan kuala', '082215013690', 'Orang Tua', 'T.EDDY SYAMSUAR ', 'AJA SRIYANI ', '1115012504710001', '1115015002810005', 'S1', 'S1', '< 1.000.000', '> 2.000.000', 2, 1, 'SAID KHAIRUDDIN ', 'S1', '', 1, 'Murid Baru', 'TK negeri pembina 1 Kuala ', 'TK negeri pembina 1 Kuala ', '-', '69bcdfb0dfce0.png', 'Diterima', NULL, NULL, '2026-03-20 12:48:32', '2026-03-27 17:11:37'),
(130, 86, '1115011412170005', '1115016212190002', 'PUTRI NUR HALIZA', 'PUTRI', 'Perempuan', 'UJONG PATIHAH', '2019-12-22', 1, 'WNI', 2, 1, 0, 'bahasa Indonesia', 22, 122, 'Desa Simpang Peut Kc. Kuala Kab. Nagan Raya', '0823-1130-8471', 'Orang Tua', 'NURDIN', 'KASURIANA', '1115021509880006', '1115015010950002', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', '< 1.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'RA PERMATA BUNDA', 'RA PERMATA BUNDA', '2026', '69bf9647a855d.png', 'Diterima', NULL, NULL, '2026-03-22 14:12:07', '2026-03-27 17:10:16'),
(131, 87, '1115013012110003', '1115011712190002', 'M. FARID MAULANA', 'FARID', 'Laki-laki', 'UJONG PASI', '2019-12-17', 1, 'WNI', 2, 1, 0, 'bahasa Indonesia', 22, 122, 'Desa Ujong Pasi Kec. Kuala Kab. Nagan Raya', '+62 852-8598-9004', 'Orang Tua', 'BAHRI', 'AGUS NIAR', '1115011009900001', '1115015708940002', 'SLTP SEDERAJAT', 'SLTP SEDERAJAT', 'Tidak Berpenghasilan', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'PAUD SYAIKHUNA', 'PAUD SYAIKHUNA', '2026', '69bf97e9e054e.png', 'Diterima', NULL, NULL, '2026-03-22 14:19:05', '2026-03-27 17:10:04'),
(132, 88, '1115011002110001', '1115010309190001', 'AHMAD DAFA ARYANTO', 'DAFA', 'Laki-laki', 'GUHANG', '2019-09-03', 1, 'WNI', 1, 2, 0, 'bahasa Indonesia', 22, 122, 'Desa Simpang Peut Kec. Kuala Kab, Nagan Raya', '+62 812-6424-3969', 'Orang Tua', 'DANI ARYANTO', 'ULFA FAJRINA', '1115011804840002', '1112016408950002', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'PAUD KHALIFAH KIDS', 'PAUD KHALIFAH KIDS', '2026', '69c5256f06b3f.png', 'Diterima', NULL, NULL, '2026-03-26 19:24:15', '2026-03-27 17:09:47'),
(133, 89, '1115020210190002', '1115025011190001', 'NUR MAULIDA AULIA', 'MAULIDA', 'Perempuan', 'SIMPANG PEUT', '2019-11-10', 1, 'WNI', 1, 1, 0, 'bahasa Indonesia', 22, 122, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '+62 853-5520-3094', 'Orang Tua', 'EDI KAMAL', 'KARMIJAH', '1115020302860004', '1115016504910003', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', 'Tidak Berpenghasilan', 'Tidak Berpenghasilan', 2, 6, '', '', '', NULL, 'Murid Baru', 'TK PEMBINA 1 KUALA', 'TK PEMBINA 1 KUALA', '2026', '69c52851a5542.png', 'Diterima', NULL, NULL, '2026-03-26 19:36:33', '2026-03-27 17:09:11'),
(134, 90, '1115012708210001', '1115011610190001', 'MUHAMMAD YUSUF', 'YUSUF', 'Laki-laki', 'UJONG PATIHAH', '2019-10-16', 1, 'WNI', 2, 1, 0, 'Bahasa Indonesia', 22, 122, 'Desa Ujong Pasi Kec. Kuala Kab. Nagan Raya', '081370206295', 'Orang Tua', 'SAMSUL BAHRI', 'NURHABIBI', '1115012505750006', '1115016404840001', 'SLTA / SEDERAJAT', 'SLTA / SEDERAJAT', 'Tidak Berpenghasilan', '< 1.000.000', 24, 6, '', '', '', NULL, 'Murid Baru', 'TK PEMBINA 1 KUALA', 'TK PEMBINA 1 KUALA', '2026', '69c89f67574f9.png', 'Diterima', NULL, NULL, '2026-03-29 10:41:27', '2026-03-29 10:42:22'),
(137, 93, '1115062111190001', '1115066802200001', 'Najwa Khaira wilda ', 'Najwa', 'Perempuan', 'Nagan raya', '2020-02-28', 1, 'WNI', 1, 0, 0, 'Indonesia ', 23, 120, 'Ujong pasi', '085262627052', 'Orang Tua', 'Erolah', 'Rosnita', '1115071605830001', '1115015805000004', 'SD sederajat ', 'SLTA sederajat ', '< 1.000.000', '< 1.000.000', 10, 6, '', '', '', NULL, 'Murid Baru', 'TK pembina I', 'TK pembina I ', '2026', '69c8d2318011d.png', 'Diterima', NULL, NULL, '2026-03-29 14:18:09', '2026-03-29 14:24:20'),
(138, 94, '1115011502160002', '1115014501200001', 'MELIYA SYAKIRA', '1115014501200001', 'Perempuan', 'SIMPANG PEUT', '2020-01-05', 1, 'WNI', 2, 1, 0, 'Bahasa Indonesia', 22, 122, 'Desa Simpang Peut Kec. Kuala Kab. Nagan Raya', '0852-7096-6622', 'Orang Tua', 'HERI ZULFAHMI', 'ROHANI', '1115013112820007', '1115014307820001', 'SD SEDERAJAT', 'SD SEDERAJAT', '< 1.000.000', 'Tidak Berpenghasilan', 8, 6, '', '', '', NULL, 'Murid Baru', 'RA PERMATA BUNDA', 'RA PERMATA BUNDA', '2026', '69c8d34459609.png', 'Diterima', NULL, NULL, '2026-03-29 14:22:44', '2026-03-29 14:23:08'),
(139, 92, '1115010411190001', '1115012911190001', 'BERIL RIZKI MAULIDAN', 'BERIL', 'Laki-laki', 'SIMPANG PEUT', '2019-11-29', 1, 'WNI', 1, 1, 0, 'Bahasa Indonesia', 22, 122, 'Desa Kuta Makmue Kec. Kuala Kab. Nagan Raya', '082282719330', 'Orang Tua', 'AGUS LAIDI', 'GUSTI WIDIANI', '1115011308890001', '1115015708910006', 'STRATA 1', 'D-III', '1.000.000 - 2.000.000', 'Tidak Berpenghasilan', 2, 6, 'KASWADI', 'STRATA 1', 'PAMAN', 1, 'Murid Baru', 'TK', 'TK', '2026', '69c96d8e91471.png', 'Diterima', NULL, NULL, '2026-03-30 01:21:02', '2026-03-30 01:22:01'),
(142, 95, '1105092711140003', '110591902200001', 'MUHAMMAD SALMAN', 'SALMAN', 'Laki-laki', 'ACEH BARAT', '2020-03-19', 1, 'WNI', 2, 1, 0, 'Bahasa Indonesia', 23, 125, 'Desa Buloh Kec. Meurebo Kab. Aceh Barat', '+62 823-6015-1767', 'Orang Tua', 'HENDRI MULIYANTO', 'HALIMATUN SAKDIAH', '1115061402830001', '1115065905880001', 'SLTA SEDERAJAT', 'SLTA SEDERAJAT', '< 1.000.000', '< 1.000.000', 2, 2, '', '', '', NULL, 'Murid Baru', 'PAUD BAITURRAHIM', 'PAUD BAITURRAHIM', '2026', '69ca4e75d77cd.png', 'Diterima', NULL, NULL, '2026-03-30 17:20:37', '2026-03-30 17:21:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) DEFAULT 0,
  `tgl_buka` date DEFAULT NULL,
  `tgl_tutup` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `is_open`, `tgl_buka`, `tgl_tutup`) VALUES
(1, NULL, '2026-03-16', '2026-03-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persyaratan`
--

CREATE TABLE `persyaratan` (
  `id` int(11) NOT NULL,
  `nama_persyaratan` varchar(100) NOT NULL,
  `is_wajib` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `persyaratan`
--

INSERT INTO `persyaratan` (`id`, `nama_persyaratan`, `is_wajib`) VALUES
(3, 'Pas Photo Terbaru 3X4 Cm Latar Biru', 1),
(4, 'Scan Asli Ktp Ayah', 1),
(5, 'Scan Asli Ktp Ibu', 1),
(7, 'Scan Asli Kartu Keluarga', 1),
(8, 'Scan Laman NISN Calon Siswa dari Web NISN (Pencarian Nama)', 1),
(10, 'Scan Asli Akta Kelahiran', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil_sekolah`
--

CREATE TABLE `profil_sekolah` (
  `id` int(11) NOT NULL,
  `nama_dinas` varchar(150) DEFAULT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `nama_kepsek` varchar(100) NOT NULL,
  `nip_kepsek` varchar(50) NOT NULL,
  `ttd_kepsek` varchar(255) DEFAULT NULL,
  `logo_pemda` varchar(255) DEFAULT NULL,
  `logo_sekolah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `profil_sekolah`
--

INSERT INTO `profil_sekolah` (`id`, `nama_dinas`, `nama_sekolah`, `alamat_lengkap`, `desa`, `kabupaten`, `nama_kepsek`, `nip_kepsek`, `ttd_kepsek`, `logo_pemda`, `logo_sekolah`) VALUES
(1, 'DINAS PENDIDIKAN DAN KEBUDAYAAN', 'SEKOLAH DASAR NEGERI 1 SIMPANG PEUT', 'Jl. Simpang Peut - Jeuram Desa Simpang Peut Kecamatan Kuala Kabupaten Nagan Raya', 'Simpang Peut', 'PEMERINTAH KABUPATEN NAGAN RAYA', 'Mawardi, S.Pd., M.Pd.', '196905041991101002', NULL, '1774607098_0425a1f393c84ddcb725.png', '1774607098_85c2e1d5dbf5012aea2c.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(150) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `slideshow`
--

INSERT INTO `slideshow` (`id`, `gambar`, `judul`, `keterangan`) VALUES
(3, '1773696163_febf2fb5c8c3749e6d4e.png', 'Guru dan Tenaga Kependidikan', 'Guru dan tenaga kependidikan SD Negeri 1 Simpang Peut berperan dalam melaksanakan proses pendidikan serta membimbing siswa agar belajar dengan baik dan berkarakter.'),
(4, '1773557333_a7d6f87587f73429aa53.png', 'Struktur Organisasi SD Negeri 1 Simpang Peut T.A 2026/2027', 'Struktur organisasi SD Negeri 1 Simpang Peut merupakan susunan pembagian tugas dan tanggung jawab antara kepala sekolah, guru, dan tenaga kependidikan dalam mengelola serta menjalankan kegiatan pendidikan di sekolah secara efektif dan terarah.'),
(5, '1773696656_1e34287bd507a3bd6f49.png', 'Daftarkan Anak Anda ke SD Negeri 1 Simpang Peut', 'Mari bergabung bersama SD Negeri 1 Simpang Peut untuk memberikan pendidikan terbaik bagi putra-putri Anda dalam lingkungan belajar yang aman, nyaman, dan berkualitas.'),
(6, '1773830718_82e87592c0d750166c7b.png', 'Selamat Hari Raya Idul Fitri 1447 H', 'Mari kita jadikan ilmu sebagai jalan kebaikan, mendidik dengan hati, membimbing dengan keteladanan,  agar setiap langkah kita bernilai ibadah dan melahirkan generasi yang berilmu, berakhlak, serta bermanfaat bagi sesama. '),
(7, '1774617239_b6c0b976e242526079b3.png', ' ', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_profil` varchar(255) DEFAULT 'default.png',
  `level` enum('admin','siswa') NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama_lengkap`, `username`, `password`, `foto_profil`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Verijal Jamal', 'verijal', '$2y$10$0QLcU0w7fng3ECJtd22KheJ0XzTy24uTLzXpy.ks9LBBIbzEV5I.y', '1773772829_285ebb99d203fe490dc7.jpg', 'admin', '2026-03-11 00:50:28', '2026-03-18 01:40:29'),
(2, 'Mustafa Arifin', 'siswa', '$2y$10$ee0ujDdIbWTox7WCPgPqceXr6HqCieb7/ZtQ6ZmtEE5mrgVVJ5EgW', '1773214998_ab01670a3e6cc715e50c.png', 'siswa', '2026-03-11 14:38:26', '2026-03-11 14:43:18'),
(3, 'verijal jamal', 'verijaljamal', '$2y$10$5A29XxyXFO2woXExhsgBUOYXnuLV14angsRER7tBxgB9/0oBCWwNW', 'default.png', 'siswa', '2026-03-11 21:35:00', '2026-03-11 21:35:00'),
(4, 'Razan Azzahra', 'Razan', '$2y$10$IAPRqNPR99IG.ynTvWhSTOr6vLzqaYZPgwsFS1IojjNGafyjXWB8.', 'default.png', 'siswa', '2026-03-12 08:36:09', '2026-03-12 08:36:09'),
(5, 'Wahyuni', '199203122022212007', '$2y$10$uG6Ru107HBgj0o3kFBF1GOswfa0/0Ge3.0bxY..EihHc8E7dV0xhO', '1773282288_04619f3eb74955a8f9af.jpeg', 'admin', '2026-03-12 09:24:48', '2026-03-12 09:24:48'),
(6, 'Cut Khansa Aulia', 'Cut Khansa Aulia', '$2y$10$KNH1RjJBaJq5kw/smFb.E.rB1TIC3sFOAY5od7jcKBmZof3dOCgcm', 'default.png', 'siswa', '2026-03-12 10:09:59', '2026-03-12 10:09:59'),
(7, 'Cut Khansa Aulia', 'Khansa', '$2y$10$kqchDRnQQOAa84.LX2kj8.ylKS12hl6jTqj7nYBXOPSz6TUBColzW', 'default.png', 'siswa', '2026-03-12 10:11:13', '2026-03-12 10:11:13'),
(8, 'Kenzie Khairan Hafizh', 'Kenzie', '$2y$10$d92rjvWIF7xEvFzOumneIOt41jJXjnN3PAd8OX8o4reNeQr/74jSa', 'default.png', 'siswa', '2026-03-12 13:06:17', '2026-03-12 13:06:17'),
(9, 'M.rizieq asykar', 'Rizieq', '$2y$10$oqhkZNOYtlYeXxhA0ridhu/GEG11.2h7MCtEF/dLnHOxhSDkmpdKK', 'default.png', 'siswa', '2026-03-12 15:31:13', '2026-03-12 15:31:13'),
(10, 'Faizul ikhwan', 'faizul.ikhwan08@gmail.com', '$2y$10$2bJ4Uc9dnOoCINh/iBqTIu8f4E7IODUcef3Fs0OYvLKnx.ymO6Gky', 'default.png', 'siswa', '2026-03-12 15:49:04', '2026-03-12 15:49:04'),
(11, 'Faizul ikhwan', 'Faizulikhwan08', '$2y$10$qIyXvYahWhpvlOVk75/ZzuKOZqCnoE.zRso/RqWghOxFYLUiyMv1W', 'default.png', 'siswa', '2026-03-12 15:56:08', '2026-03-12 15:56:08'),
(12, 'Qirani Syafiqa Al-mahyra', 'Qirani', '$2y$10$p8DH0W.rjO6klAxevLvb7.OL0S3ZU/kkK7rmeC1fMWu4L1uWhxdVq', 'default.png', 'siswa', '2026-03-12 16:31:55', '2026-03-12 16:31:55'),
(13, 'Muhammad Asyraf ', 'Muhammad Asyraf ', '$2y$10$/duz59cn7U00ZVPTmJhkvuXqjzN1D2ovAEkBFZr/nd/NQb.noLNPO', 'default.png', 'siswa', '2026-03-12 19:35:54', '2026-03-12 19:35:54'),
(14, 'M.ARQAF ALFARIS', 'M.ARQAF', '$2y$10$QBt8Ni7eyLwPRSvOew8hEessGSZhcJkS/axMxxQ5RILC0UMs8trdS', 'default.png', 'siswa', '2026-03-12 19:48:14', '2026-03-12 19:48:14'),
(15, 'Muhammad adam', 'Adam', '$2y$10$t18EnhjsXgjiCCA8bHnuaOBaMBN3szi4DG9s/el/NDp.eL2hUQF/6', 'default.png', 'siswa', '2026-03-12 21:13:21', '2026-03-12 21:13:21'),
(16, 'ATTAHAYA RAISYA', 'Attaya', '$2y$10$tgqs5ghqx/p.zcgLfr9RgeUsaslWy7QDiKqAiUUHXiObb3EjLXkPW', 'default.png', 'siswa', '2026-03-12 21:34:39', '2026-03-12 21:34:39'),
(17, 'ATTAHAYA RAISYA', 'attahaya', '$2y$10$khmpCDZ3CpkreCyF6e52HOK62FG4xiSREXXUAL60mZs9vdx1F7Uli', 'default.png', 'siswa', '2026-03-12 21:39:47', '2026-03-12 21:39:47'),
(18, 'ELLZIO PRANATA W', 'ELLZIO', '$2y$10$zMHhqH27EA9ZnM//PMPfzOT8Fcuze.NdwLE/3DX8jtJJ7BOLYYWte', 'default.png', 'siswa', '2026-03-12 22:12:57', '2026-03-12 22:12:57'),
(19, 'Naufal Ash Shiddiq ', 'Naufal2019', '$2y$10$277Jy.RWrswluc/Sj74rWO4CLJHk8ICcXLffH5IJLz1WVdR.efgJW', 'default.png', 'siswa', '2026-03-13 03:26:57', '2026-03-13 03:26:57'),
(20, 'Muhammad faris asad', 'Asad', '$2y$10$PSPdHdt3C8Bv7esi1ZdAu.UCg7vQ.xEh/8zZEkqHy/r65uRS.lc16', '1773640395_e2295651e8f5172ade7b.jpg', 'siswa', '2026-03-13 08:53:56', '2026-03-16 21:09:18'),
(21, 'Ahmad hukama', 'Ahmad', '$2y$10$k/I5AgL/ePs1AAjU7CarquPAWpL4P75hvKjXoebSxdz2wwEn29h72', 'default.png', 'siswa', '2026-03-13 08:55:59', '2026-03-13 08:55:59'),
(22, 'Raisya Azzahra Putroe', 'Rara', '$2y$10$SvlKW7hDics0RIKdEt49Se4VsloRhv5qQ5CKSsllfOP6Sl.foK52i', '1773402306_09e24dd92c3f79e8de93.jpeg', 'siswa', '2026-03-13 09:10:31', '2026-03-13 18:45:23'),
(23, 'AURELIA RIZQIA LETA ', 'Aurelia rizqia leta', '$2y$10$fSHJBCnSAx3/IUzR2Co8euEsTgMpoGmC0cW6NL6CPqZJ54BRCWk8q', 'default.png', 'siswa', '2026-03-13 09:49:06', '2026-03-13 09:49:06'),
(24, 'M.sulthan sayyar arsyaq', 'Sulthan', '$2y$10$ZKexf5QJ5vQjDZMxkf7bgOXAj.BkWss0OIHi9517btDngG7zSyuy.', 'default.png', 'siswa', '2026-03-13 13:29:58', '2026-03-13 13:29:58'),
(25, 'Muhammad Al farids', 'Farids', '$2y$10$5NRIizi34pTu3k8O0QKfru5YAFlv67Lt8Rmyoe8PMmHu5Uh3mmgKW', 'default.png', 'siswa', '2026-03-14 09:21:33', '2026-03-14 09:21:33'),
(26, 'ABDUL HADI', 'HADi', '$2y$10$OsOeI1/4OLkAKHsf/g/XluDjbBAe8XT3tG/5LKinjxowhsuc4TwP.', 'default.png', 'siswa', '2026-03-14 09:31:19', '2026-03-14 09:31:19'),
(27, 'Raihan natasya', 'Tasya', '$2y$10$PLL/O5Pu5AQtlMJbSLAdIebs5PtxluAEL0PSCyh8VqkAitK6iWeA6', 'default.png', 'siswa', '2026-03-14 10:33:05', '2026-03-14 10:33:05'),
(28, 'Suwardi', 'Suwardi', '$2y$10$yjt6AYb.Y2Fyd5Ab2S8zZO.0x0yi1X/yiCjCSvIt6iXAjjxxIVtk2', 'default.png', 'siswa', '2026-03-14 11:47:38', '2026-03-14 11:47:38'),
(29, 'ERWAN', 'ernawatimbo23@gmail.com', '$2y$10$040meWOeewEKyxXcMJZ7M.dhJth2Php46uybX4fcGJX/JJPZBgnFG', 'default.png', 'siswa', '2026-03-14 11:48:28', '2026-03-14 11:48:28'),
(30, 'Azhar', 'Azhar', '$2y$10$kLsxZHVXY9phkV71nIshrOz1hTREtku0Y64j.rmu6zFasQ1DZJJaW', 'default.png', 'siswa', '2026-03-14 13:22:56', '2026-03-14 13:22:56'),
(31, 'ATTAHAYA RAISYA', 'attahaya03', '$2y$10$38v4vhMZVn8/Hkcdt.KOhuCEtCFKWl9x5SvmdC3FKhmfReYbzRDEu', 'default.png', 'siswa', '2026-03-14 21:24:36', '2026-03-14 21:24:36'),
(32, 'Mustafa', 'mustafa', '$2y$10$57qSO2MRSClHSBp5.EDyTepRDkkgNiAHUKmUq5YnLeDVTjYd0g4AS', '1773237616_252665a3eb250f9b41d3.png', 'admin', '2026-03-11 00:50:28', '2026-03-11 21:00:16'),
(33, 'coba', 'coba', '$2y$10$FxkogqVTh8ZUk.0g11zjN.9f7NAKCNn6VJEKPdNDtu5fzMYvNnVqC', 'default.png', 'siswa', '2026-03-15 01:12:44', '2026-03-15 01:12:44'),
(34, 'Al-Hafiz', 'Al-Hafiz', '$2y$10$7d6MnzNQFFYBHgovpoYZAOz25uHTcNihFsnmqanDZTFsGRlFgUdQy', '1773566740_7a9a642fbafbe751d85b.jpg', 'siswa', '2026-03-15 15:29:48', '2026-03-15 16:25:40'),
(35, 'FAZILUL ABIZAR', 'FAZILUL abizar', '$2y$10$i8DZDJZCm2k7U4j6FvDZpOn4JbaKuk4aL0lapMMA0nY9O.j5lYIEu', 'default.png', 'siswa', '2026-03-15 18:31:50', '2026-03-15 18:31:50'),
(36, 'FITRI RAMADHAN', 'FITRI', '$2y$10$38AfRlivwB8OPhlRt4yISuEhqKcn23hxcrRbi.3GWvUirMRtRJXtm', 'default.png', 'siswa', '2026-03-15 20:49:11', '2026-03-15 20:49:11'),
(37, 'KAISYA AZKA AMIRA', 'Kaisyaazka', '$2y$10$6gi68RDLfNs55RcKISTXP.LAa6cwKty4Y1Y/kRjAAmdNV/xhSF4Tq', 'default.png', 'siswa', '2026-03-16 07:25:55', '2026-03-16 07:25:55'),
(38, 'Muhammad Azia Munanda', 'Azia111', '$2y$10$hheuRVJ/zJJDsNEaKakvF.chY0zubT31A9g2zrdfhGFAUuATuZJ6C', 'default.png', 'siswa', '2026-03-16 10:10:52', '2026-03-25 13:27:41'),
(39, 'Nadhira thafana', 'Nadhira66', '$2y$10$eLa8xloxOkPCBMSLiUQeku.TrRWdShAluDdUpUr3vJtTxWcpxfwCa', 'default.png', 'siswa', '2026-03-16 10:42:31', '2026-03-16 10:42:31'),
(40, 'Raihan Natasya', 'Raihan Natasya', '$2y$10$OwUQCJBIhzz6acwEiUg1ouhugd1n4/7IAUU.DJskK/z4beeI.MgIO', '1773644866_1ed6a06d0a4d479bc0e2.jpg', 'siswa', '2026-03-16 10:55:29', '2026-03-16 14:08:40'),
(41, 'SHEILLA ZAIDA FEBRILIA', 'SHEILLA', '$2y$10$kqF./X3Z5YenW3qrswelhO70mAEBw2W6TtHce04W1S/FFZAY4C3N6', '1773636873_9bf074bc1f5387e4b8dd.jpg', 'siswa', '2026-03-16 10:57:25', '2026-03-16 11:55:02'),
(42, 'Muhammad Zaid', 'MZAID18', '$2y$10$svhSYR7LqNuVCPQiitVBYeZujf/8D8bPfiMBsNzqiQllp2p8umKdm', 'default.png', 'siswa', '2026-03-16 11:41:17', '2026-03-16 11:41:17'),
(43, 'ELLZIO PRANATA W', 'ELLZIO PRANATA W', '$2y$10$FAIrlsTe.uWLw7mIB.DJcOaZ/2RdamGRpNcIiMC.GvljkpILZhX.G', 'default.png', 'siswa', '2026-03-16 12:31:22', '2026-03-16 12:31:22'),
(44, 'Aisyah afiqah sembiring', 'Afiqah250319@gmail.com', '$2y$10$ibrCc.SZBxzlczUE1.gPdO4LWkeGjlGvCO5Ur9OEpvGLWD7ho00zm', 'default.png', 'siswa', '2026-03-16 13:01:32', '2026-03-16 13:01:32'),
(45, 'muhammad rasya', 'muhammad rasya', '$2y$10$KumCOSuOFAjz8h.TMed8tOjOcLKHeNWB5ssE0e8IuHSFvlDWEq.dO', 'default.png', 'siswa', '2026-03-16 13:56:42', '2026-03-16 13:56:42'),
(46, 'Abdul hadi', 'Abdul', '$2y$10$dwcIog6X/O4vuEIb03/5H.6B8FK8bLnB0Alcn96Rl1RdT7azni4pC', 'default.png', 'siswa', '2026-03-16 14:11:29', '2026-03-16 14:11:29'),
(47, 'annisa humaira', 'annisa2020', '$2y$10$EuheEmEORQQcC3g46c4uxukNg9zIr69b4iY6QjZRaYMInl//St/fi', '1773726661_6ed61a621f74449cb5c8.jpg', 'siswa', '2026-03-16 16:45:45', '2026-03-17 12:51:01'),
(48, 'M.ARSYA RAMADHAN SYAH', 'Rama01', '$2y$10$iZ4Fx0XDSHUO1J1TJvfL8.KDur8yUQTaRFSvux.6NHL9LfAAgGEvO', 'default.png', 'siswa', '2026-03-16 16:54:44', '2026-03-16 16:54:44'),
(49, 'Muhammad adam', 'Muhammad adam', '$2y$10$llY4cg.lRQSOs1fuE4MISuoLbSbMMd676rqC9TlQqSf7AyzpgK1De', 'default.png', 'siswa', '2026-03-16 16:56:30', '2026-03-16 16:56:30'),
(50, 'M. ARQAF ALFARIS', 'Arqaf', '$2y$10$rm2whG.lAN1tTOWctr11BOb22kTyjAOrNhOoshBu.FTQ5gqMDeGYW', 'default.png', 'siswa', '2026-03-16 18:44:13', '2026-03-16 18:44:13'),
(51, 'ELLZIO PRANATA W', 'ELLZIOPRANATAW', '$2y$10$Zv2L0zMAtVvxDnrWOApHJOZmOfnPzbUIHDrbUcRaYGggH0NUDNQ8G', 'default.png', 'siswa', '2026-03-16 20:29:08', '2026-03-16 20:29:08'),
(52, 'M Azzam Al Ghifari', 'AZZAM AL GHIFARI', '$2y$10$FrTqCxICvb3.gBraZ3tU7O7PB30GS5PYPKwHVxbY4TkbcUbN20oCi', 'default.png', 'siswa', '2026-03-16 21:12:17', '2026-03-16 21:12:17'),
(53, 'M. ARSYA RAMADHAN SYAH', 'rama', '$2y$10$6axqrTdCASPqTIz33XGbZOKBO5Cg9Lc0qDhob/GqphbjmXsWLjqzq', 'default.png', 'siswa', '2026-03-16 21:39:00', '2026-03-16 21:39:00'),
(54, 'Milka aleena', 'Milka', '$2y$10$VdR72oHxCFaJ5vhm2buMg.jQQsERgNAyjHUyVc.hJpaSU/cGC8Jc.', 'default.png', 'siswa', '2026-03-16 23:04:07', '2026-03-16 23:04:07'),
(55, 'muhammad rayhan qalyubi nazir', 'rayhan', '$2y$10$YMdAuRn4UEcAzTuMWprDL.sITQKnb9hcipUKqk/DnvyhVIQt9BH46', 'default.png', 'siswa', '2026-03-16 23:36:20', '2026-03-16 23:36:20'),
(56, 'ALFA SAMUDRA', 'alfa', '$2y$10$xzoiA1RLZfuuthZaZW5kauRxb/4KB/Q8tFVvv/yXb5ZbRCgVqbzFy', 'default.png', 'siswa', '2026-03-17 08:53:19', '2026-03-17 08:53:19'),
(57, 'AJA AULIA PUTRI', 'aja2020', '$2y$10$ArgEcDeSy3E7mwYoM2/ooer/v75JtRaG4JFUligj4gCDU1ZwGJZjW', 'default.png', 'siswa', '2026-03-17 10:45:33', '2026-03-17 10:45:33'),
(58, 'zaki maulana al-fatih', 'zaki maulana al-fatih', '$2y$10$GspL8thLR3uc9ebXEQMXrueoo9P09YPEGfvIccmchoMIqHFeu6T2e', 'default.png', 'siswa', '2026-03-17 10:54:02', '2026-03-17 10:54:02'),
(59, 'Rahmad rianda', 'Rahmad', '$2y$10$VV1jHSAOryWHh5xVR9/uOOnCfkPIrhHsjLQEmeov5GqyBM0kVaT0u', 'default.png', 'siswa', '2026-03-17 11:32:18', '2026-03-17 11:32:18'),
(60, 'Cut ziadati edja ', 'cut ziadati edja ', '$2y$10$5UVMqZyo6tMftQVxlBxZn.GI6YuGNrVTXeVXxFZL1z5vTl6o5dGrK', 'default.png', 'siswa', '2026-03-17 11:58:10', '2026-03-17 11:58:10'),
(61, 'Muhammad Alif Rizky', 'desinagan020@gmail.com', '$2y$10$xo1KFslHxupL4Wchl1Anseg2pUJaIWEwgys5cQ4lrtqgJyz86ka1S', 'default.png', 'siswa', '2026-03-17 12:18:50', '2026-03-17 12:18:50'),
(62, 'Aisyah Afiqah Sembiring', 'Aisyah Afiqah S', '$2y$10$s6dCb078e0MMCHFYfmh7x.zyKHJbbt5LoSP60AnnqYrgGUyGxWTHy', 'default.png', 'siswa', '2026-03-17 12:23:15', '2026-03-17 12:23:15'),
(63, 'Rahmat Rianda', 'Rahmat Rianda', '$2y$10$jRaAj6r6znsJp5gaQ2DQSeSP0W.1aKUwxPNj8V4wl5k1HyMpj/NTK', 'default.png', 'siswa', '2026-03-17 14:07:23', '2026-03-17 14:07:23'),
(64, 'AJA AULIA PUTRI', 'aja', '$2y$10$yVENAOa4tHCZThfsHAglhOw2jhhF3GdzA5/sLfijpG3vk3.1pTo.u', '1773733381_7ef43a2e9b3ac6978776.jpeg', 'siswa', '2026-03-17 14:31:34', '2026-03-17 14:43:02'),
(65, 'MUHAMMAD ALIF RIZKY', 'alif', '$2y$10$Z0uxGqp8u.8bmIxStrmqpeLlA.CcjR3fAhxD/kDA.6gH/4JPbk7eC', 'default.png', 'siswa', '2026-03-17 14:48:44', '2026-03-17 14:48:44'),
(66, 'MUHAMMAD ATHAR ARRAYYAN', 'athar', '$2y$10$fu1/Dow6aIG1YX0CQDbUAuyAiQiBxA98LST5vmNBY2GTVc76Rc6zG', 'default.png', 'siswa', '2026-03-17 15:19:48', '2026-03-17 15:19:48'),
(67, 'ABDUL MUIS', 'muis', '$2y$10$N4YSkSQCj6RZWgD4lrXcLOcPWNPvg9vNeXcS66yDV8RuC7wcnBKoW', 'default.png', 'siswa', '2026-03-17 18:07:49', '2026-03-17 18:07:49'),
(68, 'HARIS PERMADI', 'haris', '$2y$10$paVVjqCLmAlMDuvWwMAZLOCEe/ofKTGhMHF7ZCsFQGSw6hDaXIT6W', 'default.png', 'siswa', '2026-03-18 01:05:25', '2026-03-18 01:05:25'),
(69, 'Asyifa cut putri', 'Asyifa cut putri', '$2y$10$o0c3qOR4a7eVD.0hCKlq4ubKnmmP4dZY32J3ZwgyPAnestpef5l5m', 'default.png', 'siswa', '2026-03-18 09:18:17', '2026-03-18 09:18:17'),
(70, 'MUHAMMAD IMAM MAULANA', 'maulana', '$2y$10$.fuCTXHkVwz.CwdcII.1k.zbToWWPvZeR4znfNGTgw14XGBvlwXui', 'default.png', 'siswa', '2026-03-18 12:18:09', '2026-03-18 12:18:09'),
(71, 'KENZIE KHAIRAN HAFIZH', 'hafizh', '$2y$10$VC0YEe2XOdhFXtPJCSO61.1eQ0wzp0MsgQHYtjdRSmYtYTkAEEF22', 'default.png', 'siswa', '2026-03-18 12:31:08', '2026-03-18 12:31:08'),
(72, 'Putri nur haliza', 'Liza', '$2y$10$X21LXOlaurDEXH0xMJohEOx4kFPeH3UjcctZRNMvqezQZW88xMCWa', 'default.png', 'siswa', '2026-03-18 15:50:05', '2026-03-18 15:50:05'),
(73, 'Putri nur haliza', 'Haliza', '$2y$10$SsKdP/XMdv41Mhe1m3t4JOB7zCEkmdFKgedC7UkhnI4SXo49YT4Ny', 'default.png', 'siswa', '2026-03-18 15:53:23', '2026-03-18 15:53:23'),
(74, 'Abdul rahman', '@Abdulrahman', '$2y$10$vJMej4Ie/24/.EMFkU1J.ePgsYc2WCLyfYsFTAqe8vj5SmbBK0pmu', 'default.png', 'siswa', '2026-03-18 16:28:15', '2026-03-18 16:28:15'),
(75, 'ZHAFIRA GHANIA', 'zhafira', '$2y$10$yYxu31QRil0wNNAcohXyn.Xyiyn0NsmAddnoj1LWbSs5xJTGUVPOq', 'default.png', 'siswa', '2026-03-18 17:13:12', '2026-03-18 17:13:12'),
(76, 'Ahmad Dafa Aryanto', 'Dafa_2019', '$2y$10$IK0hPam6QjyhslEFkH6.hudWYFbFqQv1.sZurrVwLx/cuUxaAuzey', 'default.png', 'siswa', '2026-03-18 21:55:08', '2026-03-18 21:55:08'),
(77, 'ABDUL RAHMAN', 'rahman', '$2y$10$GhKM5dkhMR6aTjaAGU2sJOQW3NCAbBg2.ySs9perg.c.HLNQP8HCS', 'default.png', 'siswa', '2026-03-19 04:49:35', '2026-03-19 04:49:35'),
(78, 'Safia Miftahul Jannah', 'safiamiftahuljannah@gmail.com', '$2y$10$A.gXKS9b82W93lmA.Fe4EOcnmlMrlvffKyQmQwn94kI2xRubagh/C', 'default.png', 'siswa', '2026-03-19 09:44:30', '2026-03-19 09:44:30'),
(79, 'Aisyah Afiqah Sembiring', 'Aisyah Afiqah Sembiring', '$2y$10$XKnqZ.HdtHk4JeeYl3Eu4e08AotzvnxrnKikcQgC9.VubsfTIyho2', 'default.png', 'siswa', '2026-03-19 11:34:28', '2026-03-19 11:34:28'),
(80, 'Aisyah Afiqah Sembiring', 'Aisyah A S', '$2y$10$x1wbra66MJWdbLWsRSTz.ujN1A4zZZmPsOn04NRa0ve45POiGJLQ.', 'default.png', 'siswa', '2026-03-19 11:36:11', '2026-03-19 11:36:11'),
(81, 'Ayra Humayra Adida', 'Ayra2020', '$2y$10$nodAKWJp088LZl6u7dX6o.YMaNRN6qy9iCSxQiDAc0JMd1hbWtXvW', 'default.png', 'siswa', '2026-03-19 11:40:06', '2026-03-19 11:40:06'),
(82, 'SYIFA MUNARAH', 'syifa', '$2y$10$rsJIfCD2Qo6e56eTjfbaDuXCIo/i/CvNMTMouxx7TyCA1TApLECw2', 'default.png', 'siswa', '2026-03-19 13:16:22', '2026-03-19 13:16:22'),
(83, 'M faridmaulana', 'M.faridmaulana', '$2y$10$pBvD9hl66U0mUkD.4k72I.0BC1hq0UX9pTGATZvaHjIuBz8MzGbay', 'default.png', 'siswa', '2026-03-19 20:25:33', '2026-03-19 20:25:33'),
(84, 'M.farid maulana', 'M. Farid maulana', '$2y$10$12Iu9HwWDYsE0AkTNQeQLe9PBpqQ7PH4m.POaHeWOpaAlr/8ckftO', 'default.png', 'siswa', '2026-03-19 20:31:11', '2026-03-19 20:31:11'),
(85, 'M.farid maulana@gmail. Com', 'M.farid maulana', '$2y$10$6xThd4WgG6l6QemYoyqpTeJX34eMDbdaooyi6L.OXUmAK.1Yk3M9a', 'default.png', 'siswa', '2026-03-19 20:49:30', '2026-03-20 11:36:49'),
(86, 'PUTRI NUR HALIZA', 'putri', '$2y$10$Cgwv9J7lIxdjWYpQS.nC0upuQ.TZcX7KfVDpNfsp.nHkwR2vME4G2', 'default.png', 'siswa', '2026-03-22 13:43:46', '2026-03-22 13:43:46'),
(87, 'M. FARID MAULANA', 'farid', '$2y$10$hbfenj4hJtTzmFHEE5DpQOc.PgYox/oa0ejU70JmDY2J1DyCfjJnW', 'default.png', 'siswa', '2026-03-22 14:13:25', '2026-03-22 14:13:25'),
(88, 'AHMAD DAFA ARYANTO', 'dafa', '$2y$10$T757vk/db0NDEZcOjnIq/uIo/GseHuPYW3ZeVFsoxRBvRfy.NFCGq', 'default.png', 'siswa', '2026-03-26 19:14:22', '2026-03-26 19:14:22'),
(89, 'NUR MAULIDA AULIA', 'maulida', '$2y$10$fOlT9b685ktsauMEd9ZMo.5FZ8iK5RqzHHdt38p6cBAaRm1sLfOxq', 'default.png', 'siswa', '2026-03-26 19:28:26', '2026-03-26 19:28:26'),
(90, 'MUHAMMAD YUSUF', 'yusuf', '$2y$10$G3Hwf45pimiMNJMSk3RUYOUblYYC.TRSC5he1ie//osaCds2nyixK', 'default.png', 'siswa', '2026-03-29 10:25:27', '2026-03-29 10:25:27'),
(91, 'Meliya syakiraa', 'Syakiraa', '$2y$10$3XNemOyB0Iiiv7Y0Ex22NOYY.PXgaY6TIBUt3xpWmin8OWNRAa6MO', 'default.png', 'siswa', '2026-03-29 10:47:42', '2026-03-29 10:47:42'),
(92, 'Beril Rizki Maulidan', 'Beril', '$2y$10$z0JGRVkEQHlnwwcpWnLBu.hPjB3wUCVCirqVcOI2HIVKCFMDsWH6i', 'default.png', 'siswa', '2026-03-29 12:29:09', '2026-03-29 12:29:09'),
(93, 'Najwa Khaira wilda', 'Najwa', '$2y$10$3EB/Y5V0VBgy4Rsaz8I5F.KzoionUGHTWnTaH4SagNRSeAHwWkGyC', 'default.png', 'siswa', '2026-03-29 13:46:47', '2026-03-29 13:46:47'),
(94, 'MELIYA SYAKIRA', 'meliya', '$2y$10$US0fJkoOJAdtT3YG/mvzwOLjM714ylfej9Q6jqrOeeWjvsxcFiBfi', 'default.png', 'siswa', '2026-03-29 14:11:33', '2026-03-29 14:11:33'),
(95, 'MUHAMMAD SALMAN', 'salman', '$2y$10$NhEUHwEnbKn8QoRme59ECubAfFR4NZYyPsJGkkxMvJecCbVgSEGe6', 'default.png', 'siswa', '2026-03-30 16:57:38', '2026-03-30 16:57:38');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berkas_fisik`
--
ALTER TABLE `berkas_fisik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berkas_pendaftaran`
--
ALTER TABLE `berkas_pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pendaftaran` (`id_pendaftaran`),
  ADD KEY `id_persyaratan` (`id_persyaratan`);

--
-- Indeks untuk tabel `latar_belakang`
--
ALTER TABLE `latar_belakang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_pekerjaan_ayah` (`id_pekerjaan_ayah`),
  ADD KEY `id_pekerjaan_ibu` (`id_pekerjaan_ibu`),
  ADD KEY `id_pekerjaan_wali` (`id_pekerjaan_wali`);

--
-- Indeks untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `persyaratan`
--
ALTER TABLE `persyaratan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profil_sekolah`
--
ALTER TABLE `profil_sekolah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agama`
--
ALTER TABLE `agama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `berkas_fisik`
--
ALTER TABLE `berkas_fisik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `berkas_pendaftaran`
--
ALTER TABLE `berkas_pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT untuk tabel `latar_belakang`
--
ALTER TABLE `latar_belakang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `persyaratan`
--
ALTER TABLE `persyaratan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `profil_sekolah`
--
ALTER TABLE `profil_sekolah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berkas_pendaftaran`
--
ALTER TABLE `berkas_pendaftaran`
  ADD CONSTRAINT `fk_berkas_pendaftaran` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_berkas_persyaratan` FOREIGN KEY (`id_persyaratan`) REFERENCES `persyaratan` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `fk_pendaftaran_agama` FOREIGN KEY (`id_agama`) REFERENCES `agama` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pendaftaran_p_ayah` FOREIGN KEY (`id_pekerjaan_ayah`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pendaftaran_p_ibu` FOREIGN KEY (`id_pekerjaan_ibu`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pendaftaran_p_wali` FOREIGN KEY (`id_pekerjaan_wali`) REFERENCES `pekerjaan` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_pendaftaran_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
