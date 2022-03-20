-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 12:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `isbn` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `null` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `authors`, `publisher`, `publication_year`, `isbn`, `cover`, `description`, `url`, `created_at`, `user_id`, `null`, `updated_at`) VALUES
(1, 'Bahasa Indonesia Kelas 10', 'Indah Wukir Setiarini, MG. Santi Artini', 'Yudhistira', 0, '0', 'bahasa_indonesia_10.jpg', 'Buku mata pelajaran Bahasa Indonesia untuk kelas 1 SMA', 'https://drive.google.com/file/d/1YAOf6Yuuoe9Ag3mKVlrqqGsOZ-eRSk-q/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Ekonomi Kelas 10', 'Endang Mulyadi, Erick Wicaksono', 'Yudhistira', 2017, '9', 'ekonomi_10.jpg', 'Buku mata pelajaran Ekonomi untuk kelas 1 SMA', 'https://heyzine.com/flip-book/0e6fe8b4d9.html', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Geografi Kelas 10', 'Yulmadia Yulir', 'Yudhistira', 0, '0', '61c989c79b78c.jpg', 'Buku mata pelajaran Geografi untuk kelas 1 SMA, Grade 10', 'https://heyzine.com/flip-book/806e3a0030.html', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'PAI Kelas 10', 'Choirul Ansori, S.Ag., M.Pd.I. &amp; Nur Hasaniyah Hasaniyah, S.Ag., M.A.', 'Yudhistira', 0, '0', '61c98af13f42b.jpg', 'Buku mata pelajaran Pendidikan Agama Islam Kelas 1 SMA', 'https://drive.google.com/file/d/17oPodsmIJEcfKQV5roCQkg3TmQ1lJlj-/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Penjasorkes Kelas 10', 'Agus Mukholid', 'Yudhistira', 0, '0', '61ca65c34cc0f.jpg', 'Buku mata pelajaran Penjasorkes untuk kelas 1 SMA', 'https://drive.google.com/file/d/15mwyNjKoYGfPGYwr0iaaz08xY_IO7wq2/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'PPKn Kelas 10', 'Nur Wahy Rochmadi', 'Yudhistira', 0, '0', '61ca66e862d27.jpg', 'Buku mata pelajaran Pendidikan Pancasila dan Kewarganegaraan untuk kelas 1 SMA', 'https://drive.google.com/file/d/1BixxWWxd-BKpcxQlavcpuwPqL_b5z4Ol/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Seni Budaya Kelas 10', 'Rina Laelasari, Suwarna, Kun Setyaning Astuti, Yuli Sectiorini, Suroso', 'Yudhistira', 0, '0', '61ca67b598e81.jpg', 'Buku mata pelajaran Seni Budaya untuk kelas 1 SMA', 'https://drive.google.com/file/d/1hcEyV_E_XutfEBdX68kdC0MUenkfGTaU/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Sosiologi Kelas 10', 'Yad Mulyadi dkk.', 'Yudhistira', 0, '0', '61cae173e2eec.jpg', 'Buku mata pelajaran Sosiologi untuk kelas 1 SMA', 'https://drive.google.com/file/d/1rZsjI90PJfkNy--ILlU_3lZabejS1Bmm/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Ekonomi Kelas 11', 'Endang Mulyadi, Erick Wicaksono', 'Yudhistira', 0, '0', '61cae80e0a3c8.jpg', 'Buku mata pelajaran Ekonomi untuk siswa kelas 2 SMA', 'https://drive.google.com/file/d/1nf_rVyv_IuD7eEFJp40Wubee_x-uCDAl/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'PPKn Kelas 11', 'Nur Wahy Rochmadi &amp; Siti Hanifah', 'Yudhistira', 0, '0', '61cae9fb61d40.jpg', 'Buku mata pelajaran Pendidikan Pancasila dan Kewarganegaraan untuk siswa kelas 2 SMA', 'https://drive.google.com/file/d/1wnx__EBRSNrRfonG9L9uDeNwHMCk1Hom/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Bahasa Indonesia Kelas 11', 'Indah Wukir Setiarini &amp; MG. Santi Artini', 'Yudhistira', 0, '0', '61caeaa8bbeb2.jpg', 'Buku mata pelajaran Bahasa Indonesia untuk siswa kelas 2 SMA', 'https://drive.google.com/file/d/1fhGK7k-PymRBGBFCnbYGsA2l1LRvn9oV/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Sosiologi Kelas 11', 'Yad Mulyadi, dkk.', 'Yudhistira', 0, '0', '61d64cfd2013b.jpg', 'Buku mata pelajaran Soiologi untuk kelas 2 SMA', 'https://drive.google.com/file/d/1Xs-QmTqEwPGEN0IyebkH12QwciW1gLjr/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Seni Budaya Kelas 11', 'Pita Nuasari, Suwarna, Kun Setyaning Astuti, Yuli Sectiorini, Suroso', 'Yudhistira', 0, '0', '61d64d542e167.jpg', 'Buku mata pelajaran Seni Budaya untuk kelas 2 SMA', 'https://drive.google.com/file/d/1NZc76FsYDGpZ5Hv_rfrVTzxNAEj0G5cw/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Penjasorkes Kelas 11', 'Agus Mukholid', 'Yudhistira', 0, '0', '61d64db659665.jpg', 'Buku mata pelajaran Penjasorkes untuk kelas 2 SMA', 'https://drive.google.com/file/d/1CQ9D1L5waBnxwYPQjKXh72KYVcj1jfxq/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Geografi Kelas 11', 'Yulmadia Yulir', 'Yudhistira', 0, '0', '61d64dfbe320c.jpg', 'Buku mata pelajaran Geografi untuk kelas 2 SMA', 'https://drive.google.com/file/d/1CSd3b79Ai0sGxPI1nYxDsc9cuW60MlP_/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Seni Budaya Kelas 12', 'Putri Nurfitriati Iswardani', 'Yudhistira', 0, '0', '61d6531d36a95.jpg', 'Buku mata pelajaran Seni Budaya untuk kelas 3 SMA', 'https://drive.google.com/file/d/1HDUZC4iQIpmVyxecD1XW0vopBgCVXDW7/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'PPKn Kelas 12', 'Nur Wahy Rochmadi &amp; Tuti Tresnawati', 'Yudhistira', 0, '0', '61d65362206eb.jpg', 'Buku mata pelajaran Pendidikan Pancasila dan Kewarganegaraan untuk siswa kelas 3 SMA', 'https://drive.google.com/file/d/1IiT5xwEy8Eldv-pRMilqU8UkfMILW2my/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Penjasorkes Kelas 12', 'Agus Mukholid', 'Yudhistira', 0, '0', '61d653a5bc42b.jpg', 'Buku mata pelajaran Penjasorkes untuk kelas 3 SMA', 'https://drive.google.com/file/d/1hTlTWMOCYPrx9tCr8Wy-D_v8sKYmPdZw/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'PAI Kelas 12', 'Choirul Ansori, S.Ag., M.Pd.I. &amp; Nur Hasaniyah Hasaniyah, S.Ag., M.A.', 'Yudhistira', 0, '0', '61d653e533eef.jpg', 'Buku mata pelajaran Pendidikan Agama Islam Kelas 3 SMA', 'https://drive.google.com/file/d/1mgr-7gB1kKib6-6lVdncoIensRZWOmCe/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Geografi Kelas 12', 'M Nursaban &amp; Arif Ashari', 'Yudhistira', 0, '0', '61d65458179b2.jpg', 'Buku mata pelajaran Geografi untuk kelas 3 SMA, grade 12', 'https://drive.google.com/file/d/1-lK0lN5Jk5R7WBb2cCDOrHAQ4n3TEAu-/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Ekonomi Kelas 12', 'Endang Mulyadi, Erick Wicaksono', 'Yudhistira', 2020, '978', '61e0fa967222b.jpg', 'Buku mata pelajaran Ekonomi untuk siswa kelas 2 SMA', 'https://drive.google.com/file/d/1OtpnWySvOkVRW_z9gX8UN99km_SBghaM/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bahasa Indonesia Kelas 12', 'Indah Wukir Setiarini &amp; MG. Santi Artini', 'Yudhistira', 0, '0', '61da36fee64cf.jpg', 'Buku mata pelajaran Bahasa Indonesia untuk siswa kelas 3 SMA', 'https://drive.google.com/file/d/1CNqLOcHkLNhr1BXyWHAKV-9Bi026lRBB/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Empower B1 Plus Bahasa Inggris Kelas 10 SMA', 'Adrian Doff, Craig Thaine Herbert Puchta, Jeff Stranks, Peter Lewis-Jones', 'Cambridge UNIVERSITY PRESS', 0, '0', '61e572673039e.png', 'Buku Empower B1+ Bahasa Inggris Kelas 1 SMA', 'https://drive.google.com/drive/folders/1qsblXR4VPL-LtzMduuz4FoJz1nGgqH3X?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Modul Bahasa Indonesia Kelas 10 Semester 1', 'Eka Okta', 'Kementerian Pendidikan dan Kebudayaan', 2020, '0', '61ea5268b9e92.png', 'Modul Bahasa Indonesia Kelas 10\nBAB 1 Teks Observasi ', 'https://drive.google.com/drive/folders/14RDdCmieEqtg1FYJ2VAeZbOyDGcvswFf?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Buku Bahasa Sunda Kelas 12 Semester I', 'Drs. H. Dadi Suryana, M.Pd.', 'MGMP Basa Sunda SMA ', 0, '0', '61ea5aa8745aa.jpeg', 'Buku Bahasa Sunda SMA Kelas 3 Semester I', 'https://drive.google.com/drive/folders/1_xco3YvFPzP2kAszgw-c9zvd9nvBoVra?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Modul Bahasa Indonesia Kelas 10 \nSemester 2', 'Eka Okta ', 'Diknas ', 2020, '0', '61ea6f74a2257.png', 'Modul Bahasa Indonesia Kelas 10 \nSemester 2', 'https://drive.google.com/file/d/12pWWtPRailgwTGQHgkEQoS-771w6EhxZ/view?usp=sharing, https://drive.google.com/file/d/1Dm3u-1bAZP2bstJVebBad7QiupqluWbZ/view?usp=sharing, https://drive.google.com/file/d/1FT-W8KOm3YvOaanbmI3VHhc0-h732acL/view?usp=sharing, htt', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Buku Bahasa Sunda Kelas 12 Semester II', 'Drs. H. Dadi Suryana, M.Pd.', 'MGMP Basa Sunda SMA ', 2022, '0', '61eb7d1c66973.jpg', 'Buku Modul Bahasa Sunda Kelas 12 Semester II', 'https://drive.google.com/file/d/1-V-D6JcbmSi3H7Apw8fxJFf4OyCwKCVu/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'PPKn Kelas 7', 'Lukman Surya Saputra, Aa Nurdiaman, dan Salikun', 'Kementerian Pendidikan dan Kebudayaan', 2017, '978', '61ec132c50d35.jpg', 'Buku ini merupakan buku siswa yang dipersiapkan Pemerintah dalam rangka\nimplementasi Kurikulum 2013', 'https://drive.google.com/drive/folders/1PMM3gekuI4A8KMIX4_UKYYFtZFYMz6-i?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Penjasorkes kelas VII', 'Sujarwadi, Dwi sarjiyanto', 'PT Intan Pariwara', 2010, '978', '61edfa7fd0f81.png', 'Buku mata pelajaran Penjasorkes untuk kelas 7 SMP', 'https://drive.google.com/file/d/1ndm_xK2FDM-2zMHPucbTvlnR2AjT9tQi/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Penjasorkes kelas VIII', 'Dwisarjiyanto, Sujarwadi', 'PT Intan Pariwara', 2010, '978', '61edfb223d88f.png', 'Buku penjasorkes untuk kelas 8 SMA', 'https://drive.google.com/file/d/1pCH69J98RY_D8O3Tx-hR5onZTXHAcKtg/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Penjasorkes kelas IX', 'Suherman, Darmadji', 'Pusat kurikulum dan perbukuan, Balitbang, Kemendikbud', 2018, '978', '61edfac54a3ac.png', 'Buku penjasorkes untuk kelas 9 SMA', 'https://drive.google.com/file/d/1q4g6m73A5ZuT5v_NzKua1iav4rhKVEBr/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Buku Wiwaha Basa pikeun kelas 7 Semester I', 'Anita Rohani, M.Pd, Hj. Daningsih Kurniasari, M.Pd', 'MGMP Basa Sunda SMA ', 2017, '0', '61ed100fd2530.jpeg', 'Buku Modul Bahasa Sunda untuk kelas 7 SMA Semester I', 'https://drive.google.com/file/d/19IRr4RalUaEXF-y8CqAI8Xl10fjj6L2W/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Wiwaha Basa Pikeun Kelas 7  Semester II', 'Anita Rohani, M.Pd, Hj. Daningsih Kurniasari, M.Pd', 'MGMP Basa Sunda SMA ', 2017, '0', '61ed64692af22.jpeg', 'Buku Modul Bahasa Sunda Untuk Kelas 7 Semester II', 'https://drive.google.com/file/d/1341d-HaN-YrTZLkgT5ZSEmz9WceSjvdc/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Wiwaha Basa Pikeun Kelas 8 Semester I ', 'Anita Rohani, M.Pd, Hj. Daningsih Kurniasari, M.Pd', 'MGMP Basa Sunda SMA ', 2017, '0', '61ed68b9b6c4a.jpeg', 'Buku Modul Bahasa Sunda Kelas 8 Semester I', 'https://drive.google.com/file/d/1p1km0co5mImhEmEa_iqjmaJe2oh-ax-t/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Bahasa Indonesia Kelas 7', 'E.B. Devitta Ekawati dan Siti Isnatun M.', 'Yudhistira', 2019, '978', '61ee1bd025aba.png', 'Kelas VII, Kelas 1 SMP, Grade 7', 'https://drive.google.com/drive/folders/1MX-59uc0LI4wgYNWAXYcvC_1howCU0HW?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'IPS Terpadu Kelas 7', 'Anwar Kurnia', 'Yudhistiraa', 2019, '978', '61ee1c837a723.png', 'Ilmu Pengetahuan Sosial Terpadu kelas VII, kelas 1 SMP, Grade 7', 'https://drive.google.com/drive/folders/1HF2vfG5nGTHGN2QG4OOxhfDDlyNb0Fho?usp=sharing', '2022-03-13 17:00:00', 1, '0000-00-00 00:00:00', '2022-03-14 01:52:23'),
(60, 'PAI Kelas 7', 'Drs. H. Multahim, M.Pd.I. dkk.', 'Yudhistira', 2017, '978', '61ee1d34b3d41.png', 'Pendidikan Agama Islam dan Budi Pekerti Kelas 1 SMP, kelas VII, grade 7', 'https://drive.google.com/drive/folders/1b9cwpVJ2WNrulnymbu-YuMlXb-2edrmv?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Penjasorkes Kelas 7', 'Muhajir', 'Yudhistira', 2016, '978', '61ee1de459cc8.png', 'Pendidikan Jasmani Olahraga dan Kesehatan kelas 1 SMP, kelas VII, grade 7', 'https://drive.google.com/drive/folders/1KT-OdvelT04aPVxyPuaRlRYBsAfBKPJV?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'PPkn Kelas 7', 'Agus Dwiyono dkk.', 'Yudhistira', 2016, '978', '61ee1eecd084f.png', 'Pendidikan Pancasila dan Kewarganegaraan kelas VII, kelas 1 SMP, Grade 7', 'https://drive.google.com/drive/folders/1c5a8P5BFOQhj7DmjkLnNrd3G9gMWmdMI?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Seni Budaya Kelas 7', 'Sri Murtono, Atika Meitasari, Tanti Firmansyah', 'Yudhistira', 2016, '978', '61ee2498c041a.png', 'Seni Budaya Kelas 1 SMP, Kelas VII, Grade 7', 'https://drive.google.com/drive/folders/1ddfgAEyEMeEkKD7HgxiWBgL8td-fZ29q?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Bahasa Indonesia Kelas 8', 'E.B. Devitta Ekawati dan Siti Isnatun M.', 'Yudhistira', 2019, '978', '61ee253864329.png', 'Bahasa Indonesia Kelas 2 SMP, Kelas VIII, Grade 8', 'https://drive.google.com/drive/folders/1kaOeaUwXxiabktqV8Wt9_raUFIefu_8_?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'PAI Kelas 8', 'Drs. H. Multahim, M.Pd.I. dkk.', 'Yudhistira', 2019, '978', '61ee25cf66f90.png', 'Pendidikan Agama Islam kelas 2 SMP, Kelas VIII, Grade 8', 'https://drive.google.com/drive/folders/1AWUca0V_U5kybUeoIy3TFnZsvi6tKGYl?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Penjasorkes Kelas 8', 'Muhajir', 'Yudhistira', 2017, '978', '61ee26890ac7a.png', 'Pendidikan Jasmani Olahraga dan Kesehatan kelas 2 SMP, Kelas VIII, Grade 8', 'https://drive.google.com/drive/folders/1f8dlkcMtjPPqU6v9_0nG_1oUVFPr2Z9n?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'PPKn Kelas 8', 'Agus Dwiyono dkk.', 'Yudhistira', 2017, '978', '61ee26fad1469.png', 'Pendidikan Pancasila dan Kewarganegaraan kelas 2 SMP, kelas VIII, Grade 8', 'https://drive.google.com/drive/folders/1EI3oeQ6SsNVETG2I4Plp7vjBOZ2NfFCP?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Seni Budaya Kelas 8', 'Sri Murtono, Atika Meitasari, Tanti Firmansyah', 'Yudhistira', 2017, '978', '61ee29935dd2c.png', 'Seni Budaya Kelas 2 SMP, Kelas VIII, Grade 8', 'https://drive.google.com/drive/folders/1GuWBAuRJKTjcFz-kAMrDkAKci92yH7qh?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'IPS Terpadu Kelas 8', 'Anwar Kurnia', 'Yudhistira', 2019, '978', '61ee2d2002e5e.png', 'Ilmu Pengetahuan Sosial Terpadu Kelas 2 SMP, Kelas VIII, Grade 8', 'https://heyzine.com/flip-book/e6d5a6430f.html', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Bahasa Indonesia Kelas 9', 'E.B. Devitta Ekawati dan Siti Isnatun M.', 'Yudhistira', 2019, '978', '61ee32c7402c3.png', 'Bahasa Indonesia Kelas 3 SMP, Kelas IX, Grade 9', 'https://drive.google.com/drive/folders/1H8Q7YMxgFr3soIlCRwjsYNHQfuJrVegj?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'PAI Kelas 9', 'Drs. H. Multahim, M.Pd.I. dkk.', 'Yudhistira', 2018, '978', '61ee33f49e02f.png', 'Pendidikan Agama Islam Kelas 3 SMP, Kelas IX, Grade 9', 'https://drive.google.com/drive/folders/12MFHEV-q01bqircWveJE14AaM-LYeJUi?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Penjasorkes Kelas 9', 'Muhajir', 'Yudhistira', 2018, '978', '61ee34645cf02.png', 'Pendidikan Jasmani Olahraga dan Kesehatan kelas 3 SMP, Kelas IX, Grade 9', 'https://drive.google.com/drive/folders/1z47h8SBZeiqn1rl6d06zsHBjWCNy636K?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Seni Budaya Kelas 9', 'Ichsan Suhada dan Dody Kusmana', 'Yudhistira', 2018, '978', '61ee352abc189.png', 'Seni Budaya Kelas 3 SMP, Kelas IX, Grade 9', 'https://drive.google.com/drive/folders/1PRvH4ZvMRf0Uekp13bYEr4O-BdyeodLd?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'PPKn Kelas 8', 'Lukman Surya Saputra, Ida Rohayani, dan Salikun', 'Kementerian Pendidikan dan Kebudayaan', 2017, '978', '61ee43e3207bc.jpg', 'Buku ini merupakan buku siswa yang dipersiapkan Pemerintah dalam rangka\nimplementasi Kurikulum 2013', 'https://drive.google.com/drive/folders/15-D8JU99vC5nKgCFoUeE_By_4A8GEVrH?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'PPKn Kelas 11', 'Yusnawan Lubis dan Mohamad Sodeli', 'Kementerian Pendidikan dan Kebudayaan', 2017, '978', '61ee4750af1bb.jpg', 'Buku ini merupakan buku siswa yang dipersiapkan Pemerintah dalam rangka\nimplementasi Kurikulum 2013', 'https://drive.google.com/drive/folders/11NkavxyNx-LFJxWz-tc2bCiUPhcM2OPq?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'PPKn Kelas 9', 'Ai Tin Sumartini, Asep Sutisna Putra', 'Kementerian Pendidikan dan Kebudayaan', 2018, '978', '620852439798a.jpg', 'Buku ini merupakan buku siswa yang dipersiapkan Pemerintah dalam rangka\nimplementasi Kurikulum 2013', 'https://drive.google.com/drive/folders/1DMCyOGklKSSSXH1tVOAW3YBx2qWa_Bax?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'PPKn Kelas 12', 'Yusnawan Lubis dan Mohamad Sodeli', 'Kementerian Pendidikan dan Kebudayaan', 2018, '978', '61eea798a215d.jpg', 'Buku ini merupakan buku siswa yang dipersiapkan Pemerintah dalam rangka\nimplementasi Kurikulum 2013', 'https://drive.google.com/drive/folders/17S8JesA2dPFyctrRxM0mBv72vltDgX_3?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Modul Bahasa Indonesia kelas 11 Semester 1', 'Eka Okta ', 'Diknas ', 2020, '0', '61ef7c16f1d1d.jpg', 'Modul kelas 11 Bahasa Indonesia Semester 1, kelas XI, Grade 11', 'https://drive.google.com/file/d/10CPhtcbMsbH6HJaoWdaCyMtBs9OIi2b8/view?usp=sharing, https://drive.google.com/file/d/14-nr8tjaSUMXPv-dXEieXQeXhvFpK524/view?usp=sharing, https://drive.google.com/file/d/1D0gS8Op68-Y0YbMqFwODnNBPiN75nzYW/view?usp=sharing, htt', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Modul Bahasa Indonesia Kelas 11 Semester 2', 'Eka Okta ', 'Diknas ', 2020, '0', '61ef7f8a7d04c.jpg', 'Modul Bahasa Indonesia Kelas 11 Semester 2', 'https://drive.google.com/file/d/191hvve7XKYlEB5Y90hjaNp1d_JFSTJU5/view?usp=sharing, https://drive.google.com/file/d/1BLuhiBv95HQiKINtMkOkgPiZ4Wtly_st/view?usp=sharing, https://drive.google.com/file/d/1NWo6ZATBCcJNsf8u2fG3m6X5S90pjolm/view?usp=sharing, htt', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Cambrige Checkpoint Science Coursebook Stage 8', 'Mary Jones, Diane Fellowers-Freeman and David Sang ', 'Cambridge University Press', 2014, '0', '61f95238a7662.jpg', 'Introduction Welcome to Cambridge Checkpoint Science stage 8 The Cambridge Checkpoint Science course covers the Cambridge Secondary 1 Science framework and is divided into three branch : Biology, Chemistry, and Physics. This book covers all you need to know for stage 8. ', 'https://drive.google.com/file/d/1YkFfKri_bDKS465O4tK3JI85GCKqJutf/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Cambridge Checkpoint Science Coursebook 9', 'Mary Jones, Diane Fellowers-Freeman and David Sang', 'Cambridge University Press', 2013, '0', '61f79e9e87189.jpg', 'Introduction Welcome to Cambridge Checkpoint Science stage 9 The Cambridge Checkpoint Science course covers the Cambridge Secondary 1 science framework and is divided into three stages: 7, 8 and 9. This book covers all you need to know for stage 9.', 'https://drive.google.com/file/d/1O27QRljAEoU5Okndc1qm23n3A6AsOcgN/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Cambridge IGCSE Physics Coursebook Second  Edition', 'David Sang ', 'Cambridge University Press', 2010, '0', '61f7a26bbb8d4.jpg', 'This book contains very clear and complete physics material. This book helps students in understanding the material to be studied.', 'https://drive.google.com/file/d/180euCJIyqP8FWDOSRmE5ZzhgmqkKhGci/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Cambridge IGCSE Physics Workbook Second Edition', 'David Sang ', 'Cambridge University Press', 2010, '0', '61f7a34e102c8.jpg', 'This book contains practice exercises on physics questions that will make students understand more about the material that has been studied.', 'https://drive.google.com/file/d/13g-B3NMqHYPjFPq1FrcAqEwMjGutmPXS/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Cambridge IGCSE Physics Practical Workbook ', 'Gillian Nightingale', 'Cambridge University Press', 2017, '0', '61f7a3d1b1dd1.jpg', 'This book contains practice exercises on physics questions that will make students understand more about the material that has been studied.', 'https://drive.google.com/file/d/1LOT_asgzSrr63a7CtwGw_OCgRR11vxuJ/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Cambridge IGCSE Physics Third Edition', 'Tom Duncan and Heather Kennett', 'Cambridge University Press', 2014, '0', '61f7a48471243.png', 'This book contains physics material that helps students understand the material being studied', 'https://drive.google.com/file/d/1jaUoWwBrdiKJJRgPmliMrcj5LBmBI4Wb/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Cambridge Checkpoint Science Workbook Stage 9', 'Mary Jones, Diane Fellowers-Freeman and David Sang', 'Cambridge University Press', 2013, '0', '61f7a701dde6a.jpg', 'This book contains practice exercises for physics questions, so that students can better understand the material being taught.', 'https://drive.google.com/file/d/1SSxSBKUV0P0BWAe1HNFAaSX8MGBTj-hz/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Pendidikan Agama Islam dan Budi Pekerti - Kelas 9', 'Menteri Pendidikan dan Kebudayaan', 'Menteri Pendidikan dan Kebudayaan', 2015, '0', '61fa2f22c0486.jpg', 'Pendidikan Agama Islam dan Budi Pekerti', 'https://drive.google.com/drive/folders/1rR4jtZZiTYniSLD9ytV6gPkEnW2gOBN_?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Pendidikan Agama Islam dan Budi Pekerti - Kelas 10', 'Menteri Pendidikan dan Kebudayaan', 'Menteri Pendidikan dan Kebudayaan', 2019, '0', '61fa307a1fd21.jpg', 'Pendidikan Agama Islam dan Budi Pekerti - Kelas 10', 'https://drive.google.com/drive/folders/1Gq4g8BM6RGqcCuB8V5EwzKzNIkHgw9VE?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Buku Paket Siswa Kelas 7', 'Kemendikbud', 'Kemendikbud', 2013, '0', '61fb3f9d722bb.png', 'Buku Siswa', 'https://drive.google.com/file/d/14frwFdAbgoOmzjk9fM4Jr4y28_I9iLWN/view?usp=sharing, https://drive.google.com/file/d/1DtzfW6Yoxq2omO5QK8wXRD_C2579pokF/view?usp=sharing, https://drive.google.com/file/d/1EfenN8so9y3tA0ZTmaT344eKO2LYhsgz/view?usp=sharing, htt', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Buku Paket Siswa Kelas 8', 'Kemendikbud', 'Kemendikbud', 2013, '0', '61fb3f78567f9.png', 'Buku Siswa Kelas 8', 'https://drive.google.com/file/d/15RtiksC_r2C8Zs8GYinwONIp_1iwU0Pu/view?usp=sharing, https://drive.google.com/file/d/15bGmOUgSQSLJVQgKlySQys4piwCzNsnr/view?usp=sharing, https://drive.google.com/file/d/1Ca5NJoEsBJonI2hQ2A6ANxe426cRW_Fh/view?usp=sharing, htt', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Pendidikan Agama Islam dan Budi Pekerti - Kelas 11', 'Menteri Pendidikan dan Kebudayaan', 'Menteri Pendidikan dan Kebudayaan', 2019, '0', '61fa822c34e7b.jpg', 'Pendidikan Agama Islam dan Budi Pekerti', 'https://drive.google.com/drive/folders/1pwgMNEGAnWjAeBR2sQjQRvbgxNIoQ4hN?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Buku Modul  Bahasa Sunda Kelas 10 Semester I', 'Drs. H. Dadi Suryana, M.Pd.', 'MGMP Basa Sunda SMA ', 2022, '0', '61fb3ea75dd2a.jpeg', 'Buku Modul Bahasa Sunda Kelas 10 Semester I', 'https://drive.google.com/drive/folders/1USPBLmPN3ymqWjzxtYwodLzLoCqVzbXz?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Buku Modul Bahasa Sunda Kelas XI Semester I ', 'Drs. H. Dadi Suryana, M.Pd.', 'MGMP Basa Sunda SMA ', 2022, '0', '61fb40d31be55.jpeg', 'Buku Modul Bahasa Sunda Kelas XI Semester I', 'https://drive.google.com/drive/folders/1r86XbliPnW5ZaNpxy-AAKTqxmMEAH-Te?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Buku Modul Kelas 8 B Semester II', 'Anita Rohani, M.Pd, Hj. Daningsih Kurniasari, M.Pd', 'MGMP Basa Sunda SMP', 2017, '0', '61fb453de6686.jpeg', 'Buku Modul Bahasa Sunda Kelas 8 B Semester II', 'https://drive.google.com/drive/folders/1M9HBBYrMfP4kYKpf7WDEbGVZrWwUUNqf?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Buku Modul Bahasa Sunda Kelas 10 B Semester II', 'Drs. H. Dadi Suryana, M.Pd.', 'MGMP Basa Sunda SMA ', 2022, '0', '61fb4669c21d9.jpeg', 'Buku Modul Bahasa Sunda Kelas 10 B Semester II', 'https://drive.google.com/drive/folders/1TFe_eSi4d2hKv7wrP50-nhnCwv5BhOQK?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Buku Modul Bahasa Sunda Kelas XI Semester  II', 'Drs. H. Dadi Suryana, M.Pd.', 'MGMP Basa Sunda SMA ', 2022, '0', '61fb46e024601.jpeg', 'Buku Modul Bahasa Sunda Kelas XI Semester II', 'https://drive.google.com/drive/folders/1TFe_eSi4d2hKv7wrP50-nhnCwv5BhOQK?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Buku Modul Bahasa Sunda Kelas IX Semester II', 'Anita Rohani, M.Pd, Hj. Daningsih Kurniasari, M.Pd', 'MGMP Basa Sunda SMP', 2021, '0', '61fb48491d047.jpeg', 'Buku Modul Bahasa Sunda Kelas IX Semester II', 'https://drive.google.com/drive/folders/1TFe_eSi4d2hKv7wrP50-nhnCwv5BhOQK?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'CAMBRIDGE BIOLOGY AS AND A LEVEL', 'CAMBRIDGE', 'CAMBRIDGE UNIVERSITY PRESS', 0, '0', '61fb4e6b6d2b0.jpg', 'ONLY FOR GRADE 11 AND 12', 'https://drive.google.com/drive/folders/19eJk9JFxbvCJdRN9Q_D7XL8WFmvtaGDf?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'MODUL MATERI KELAS 9 \nSEMESTER 2', 'Eka Okta ', 'Diknas ', 2022, '0', '6205bfdbc6d5f.png', 'Modul materi kelas 9 semester 2', 'https://drive.google.com/file/d/11Dvt5Lac7tYq2A53GHyRmmDbYxIBU6wC/view?usp=sharing, https://drive.google.com/file/d/1dkEIoJkL5JSL68qrm1NSuo93AAwHcx21/view?usp=sharing, https://drive.google.com/file/d/1gZC8UOp3U7AJ2-Hs5E_vlgNgSITTcT5s/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'MODUL PEMBELAJARAN KELAS 9 SEMESTER 1', 'Eka Okta ', 'Diknas ', 2022, '0', '6205bf122a1d8.png', 'Modul materi pembelajaran kelas 9 semester 1', 'https://drive.google.com/file/d/1V-CteSysW2hJO3wvy3AIhl4YE71MGViL/view?usp=sharing, https://drive.google.com/file/d/1tJl921c7jEVw0cCP8od5WQI7bSOBxBo2/view?usp=sharing, https://drive.google.com/file/d/1xjyzKPbJqLURm8StJmCHVATqbBxtJmfQ/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Cambridge Checkpoint Science 8', 'Mary Jones, Diane Fellowes-Freeman and David Sang', 'Cambridge University Press', 2012, '978', '61fbf97fb7635.png', 'This book is for grade 7 and 8 ', 'https://drive.google.com/drive/folders/1IesROr-ISnIbmnrZ-ZEoodaouNaAy-SZ?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Cambridge IGCSE ', 'Richard Harwood and Ian Lodge', 'Cambridge University Press', 2014, '978', '61fbfdef0391c.png', 'Only topics for grade 9 is available', 'https://drive.google.com/drive/folders/1Ct1sgUu-n8rMl1KnWhKgldReUmvuOnHA?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'PPKn Kelas 10', 'Nuryadi dan Tolib', 'Kementerian Pendidikan dan Kebudayaan', 2017, '0', '61fdbeb4ad10e.jpg', 'Buku ini merupakan buku siswa yang dipersiapkan Pemerintah dalam rangka implementasi Kurikulum 2013.', 'https://drive.google.com/drive/folders/1GRceKQG62Q-yC-VD9IHTXctdvxb2wuiq?usp=sharing', '2022-03-13 17:00:00', 1, '0000-00-00 00:00:00', '2022-03-14 00:16:40'),
(106, 'Buku Paket Kelas 12', 'Kemendikbud', 'Kemendikbud', 2013, '0', '6200a69a98939.jpg', 'Buku kelas ', 'https://drive.google.com/file/d/1euUo-VFZCwtoVd-Ag-JF-Q-K1vkLgL8H/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Prepare Second Edition Level 4', 'James Strying and Nicholas Tims', 'Cambridge University Press', 2019, '978', '6202014fa7cdc.jpg', 'Prepare Second Edition Level 4 Unit 20', 'https://drive.google.com/drive/folders/1riltQXO4bRmecG1YCQHiwyx1Gf5hSLsm?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Risalah Miraj', 'Bediuzzaman Said Nursi', 'Anatolia', 2010, '3423', '62023d504e4d4.jpg', 'Risalah Miraj - Bediuzzaman Said Nursi', 'https://drive.google.com/file/d/1uNOiyYVRmBJpboDTP_9gAy3nC14_BlZ_/view?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Cambridge Lower Secondary Matematics Learners Book 7', 'Greg Byrd, Lynn Byrd &amp; Chris Pearce', ' Cambridge University Press', 2020, '978', '62074f594f3be.png', 'Book for Math Grade 7', 'https://drive.google.com/drive/folders/1uqIqcxncudaDK1zVL9BuVSGMc8kXdA3F?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Cambridge Lower Secondary Mathematics Learners Book 8', 'Greg Byrd, Lynn Byrd &amp; Chris Pearce', ' Cambridge University Press', 2021, '978', '6213a63bf32ae.jpg', 'Math book', 'https://drive.google.com/drive/folders/1tlvjzibd4lFe_NIIed2p-QWYQQYF75SM?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Pendidikan Agama Islam dan Budi Pekerti-Kelas 8', 'Menteri Pendidikan dan Kebudayaan ', 'Menteri Pendidikan dan Kebudayaan ', 2017, '0', '621599b0c40a7.jpg', 'Menteri Pendidikan dan Kebudayaan ', 'https://drive.google.com/drive/folders/1emVaYFI6esCPDBkLAVvT9VmaR0HEwUcv?usp=sharing', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Cambridge IGCSE', 'Karen Morrison and Nick Hamshaw', 'Cambridge University Presss', 2018, '978', '6215af75c1830.jpg', 'Math Book for grade 9 and 10', 'https://drive.google.com/file/d/1AGsCVJvJWrYvsozbWqXIaROd91h4FZMQ/view?usp=sharing', '2022-03-16 17:00:00', 1, '0000-00-00 00:00:00', '2022-03-17 04:07:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_10_043233_create_books_table', 1),
(6, '2022_03_10_043300_create_profiles_table', 1),
(7, '2022_03_16_075556_create_logs_table', 2),
(8, '2022_03_16_084903_create_reviews_table', 3),
(9, '2022_03_17_024447_create_logs_table', 4),
(10, '2022_03_17_025454_create_records_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `image`, `first_name`, `last_name`, `gender`, `occupation`, `grade`, `user_id`, `created_at`, `updated_at`) VALUES
(11, NULL, 'Super', 'Admin', 'male', 'management', NULL, 1, '2022-03-11 00:31:59', '2022-03-11 00:31:59'),
(12, NULL, 'Reno', 'Oppo', 'female', 'student', '7', 10, '2022-03-14 23:14:06', '2022-03-14 23:14:06'),
(13, NULL, 'Digital', 'Library', 'male', 'management', '', 11, '2022-03-15 00:04:22', '2022-03-15 00:04:22'),
(14, NULL, 'Female', 'Character', 'female', 'student', '9', 12, '2022-03-16 00:45:09', '2022-03-16 00:45:09'),
(15, NULL, 'Male', 'Character', 'male', 'student', '12', 13, '2022-03-16 00:45:09', '2022-03-16 00:45:09'),
(16, NULL, 'Guest', 'Account', 'female', 'teacher', '', 15, '2022-03-18 01:42:07', '2022-03-18 01:42:07'),
(23, NULL, 'Laravel', 'Pro', 'male', 'student', '12', 16, '2022-03-19 02:19:38', '2022-03-19 02:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `user_email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`user_email`, `user_id`, `book_id`, `action`, `created_at`, `updated_at`) VALUES
('digital@pribadidepok.sch.id', 11, 106, 'visit', '2022-03-18 14:01:00', '2022-03-18 14:01:00'),
('digital@pribadidepok.sch.id', 11, 105, 'visit', '2022-03-18 14:01:03', '2022-03-18 14:01:03'),
('digital@pribadidepok.sch.id', 11, 130, 'visit', '2022-03-18 14:01:09', '2022-03-18 14:01:09'),
('digital@pribadidepok.sch.id', 11, 131, 'visit', '2022-03-18 14:03:01', '2022-03-18 14:03:01'),
('laravel@gmail.com', 16, 89, 'visit', '2022-03-20 04:49:24', '2022-03-20 04:49:24'),
('laravel@gmail.com', 16, 88, 'visit', '2022-03-20 04:49:30', '2022-03-20 04:49:30'),
('laravel@gmail.com', 16, 6, 'visit', '2022-03-20 04:49:43', '2022-03-20 04:49:43'),
('digital@pribadidepok.sch.id', 11, 131, 'visit', '2022-03-20 04:54:46', '2022-03-20 04:54:46'),
('digital@pribadidepok.sch.id', 11, 131, 'visit', '2022-03-20 04:54:52', '2022-03-20 04:54:52'),
('digital@pribadidepok.sch.id', 11, 59, 'visit', '2022-03-20 04:55:00', '2022-03-20 04:55:00'),
('digital@pribadidepok.sch.id', 11, 59, 'visit', '2022-03-20 04:55:38', '2022-03-20 04:55:38'),
('digital@pribadidepok.sch.id', 11, 105, 'visit', '2022-03-20 07:36:04', '2022-03-20 07:36:04'),
('digital@pribadidepok.sch.id', 11, 106, 'visit', '2022-03-20 07:38:39', '2022-03-20 07:38:39'),
('digital@pribadidepok.sch.id', 11, 130, 'visit', '2022-03-20 07:38:47', '2022-03-20 07:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `book_id`, `score`, `comment`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 4, 'Very Good!', '2022-03-16 02:02:53', '2022-03-16 02:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', NULL, 'password', 'admin', NULL, '2022-03-11 00:31:59', '2022-03-11 00:31:59'),
(10, 'Reno@pribadidepok.sch.id', NULL, '$2y$10$OB1/7L12QDttWp9Px1TJn.SSQ7SIKi6y4xZDIFY8xJAk1dfdIFyLG', 'admin', NULL, '2022-03-14 23:14:06', '2022-03-20 07:59:09'),
(11, 'digital@pribadidepok.sch.id', NULL, '$2y$10$GIUqT0Z/SMZsc2SjwAaWyusDXxlG5jKHhZAwzCXkL9Oe3EjGEt6Ge', 'admin', '5irvYdlgPx9FdvOLShsjMOrlFPWCJtx3r2KWtJpzSJc5DGYUFQBeGGUFhKCt', '2022-03-15 00:04:22', '2022-03-15 00:04:22'),
(12, 'female@pribadidepok.sch.id', NULL, '$2y$10$7rJoKlXDyQVSaSheV8u.CetgDGrajAUvArNMmDkN.kxwebIF0y21m', 'user', NULL, '2022-03-16 00:45:09', '2022-03-20 07:59:16'),
(13, 'male@pribadidepok.sch.id', NULL, '$2y$10$5ueZ1n4Lv4VjIkLTipGV.uUUc2XUFTQgTfC80uYnDW1PKM.UUoqaK', 'user', NULL, '2022-03-16 00:49:38', '2022-03-17 14:01:19'),
(15, 'guest@pribadidepok.sch.id', NULL, '$2y$10$Xl7e1/dLNcb82zfZ9uq/beTL1829AR1fDRd9eNLJjF2TaoO6CwVuy', 'user', NULL, '2022-03-18 01:42:07', '2022-03-18 01:42:07'),
(16, 'laravel@gmail.com', NULL, '$2y$10$50aiVSvOM84tYGJiPB8kvOG9Ypqt51qJuCRMwFZqtNWFhXmLdFK2e', 'user', NULL, '2022-03-19 02:19:38', '2022-03-19 02:19:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
