/*
 Navicat Premium Data Transfer

 Source Server         : Localhost Wamp
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : db_sptq

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001

 Date: 26/01/2021 01:04:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_agenda
-- ----------------------------
DROP TABLE IF EXISTS `tbl_agenda`;
CREATE TABLE `tbl_agenda`  (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_nama` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `agenda_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `agenda_deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `agenda_mulai` date NULL DEFAULT NULL,
  `agenda_selesai` date NULL DEFAULT NULL,
  `agenda_tempat` varchar(90) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `agenda_waktu` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `agenda_keterangan` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `agenda_author` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`agenda_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_agenda
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_album
-- ----------------------------
DROP TABLE IF EXISTS `tbl_album`;
CREATE TABLE `tbl_album`  (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `album_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `album_pengguna_id` int(11) NULL DEFAULT NULL,
  `album_author` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `album_count` int(11) NULL DEFAULT 0,
  `album_cover` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`album_id`) USING BTREE,
  INDEX `album_pengguna_id`(`album_pengguna_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_album
-- ----------------------------
INSERT INTO `tbl_album` VALUES (1, 'Kedatangan Tamu Asing', '2016-09-08 21:00:55', 1, 'M Fikri Setiadi', 3, '202aa754590dfc1070c624bad294abbc.jpg');
INSERT INTO `tbl_album` VALUES (3, 'Pemilu Osis 2016-2017', '2017-01-21 09:58:16', 1, 'M Fikri Setiadi', 2, 'dc088a9fb62333012ff7a601828219d7.jpg');
INSERT INTO `tbl_album` VALUES (4, 'Kegiatan Belajar Siswa', '2017-01-24 09:31:13', 1, 'M Fikri Setiadi', 0, '203bc0411a07ed0430d39bcc38ec2c56.jpg');

-- ----------------------------
-- Table structure for tbl_files
-- ----------------------------
DROP TABLE IF EXISTS `tbl_files`;
CREATE TABLE `tbl_files`  (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_judul` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `file_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `file_oleh` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_download` int(11) NULL DEFAULT 0,
  `file_data` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_files
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_galeri
-- ----------------------------
DROP TABLE IF EXISTS `tbl_galeri`;
CREATE TABLE `tbl_galeri`  (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_judul` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `galeri_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `galeri_gambar` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `galeri_album_id` int(11) NULL DEFAULT NULL,
  `galeri_pengguna_id` int(11) NULL DEFAULT NULL,
  `galeri_author` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`galeri_id`) USING BTREE,
  INDEX `galeri_album_id`(`galeri_album_id`) USING BTREE,
  INDEX `galeri_pengguna_id`(`galeri_pengguna_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_galeri
-- ----------------------------
INSERT INTO `tbl_galeri` VALUES (5, 'Panitia Pemilu Osis', '2017-01-22 12:13:20', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', 3, 1, 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES (6, 'Proses Pemilu Osis', '2017-01-22 12:13:43', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', 3, 1, 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES (7, 'Belajar dengan native speaker', '2017-01-24 09:26:22', '831e5ad43ccc3c851d50c128ff095541.jpg', 1, 1, 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES (8, 'Diskusi dengan native speaker', '2017-01-24 09:27:05', '84afbf1d3ad45932f1d7ac47b8a00949.jpg', 1, 1, 'M Fikri Setiadi');
INSERT INTO `tbl_galeri` VALUES (9, 'Foto bareng native speaker', '2017-01-24 09:27:28', 'a99ab060d5d5bf8c96f24fe385f7dd8b.jpg', 1, 1, 'M Fikri Setiadi');

-- ----------------------------
-- Table structure for tbl_guru
-- ----------------------------
DROP TABLE IF EXISTS `tbl_guru`;
CREATE TABLE `tbl_guru`  (
  `guru_id` int(11) NOT NULL AUTO_INCREMENT,
  `guru_nip` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `guru_nama` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `guru_jenkel` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `guru_mapel` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `guru_photo` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `guru_tgl_input` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`guru_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_guru
-- ----------------------------
INSERT INTO `tbl_guru` VALUES (1, '927482658274982', 'M Fikri Setiadi', 'L', 'Padang', '25 September 1993', 'Teknik Komputer', 'f6bbe1e04e78e0d715e9830a605794aa.jpg', '2017-01-26 15:49:43');
INSERT INTO `tbl_guru` VALUES (2, '927482658274981', 'Thomas Muller', 'L', 'Germany', '25 September 1989', 'Olahgara', NULL, '2017-01-26 21:38:54');
INSERT INTO `tbl_guru` VALUES (6, '927482658274993', 'Ari Hidayat', 'L', 'Padang', '25 September 1993', 'Bahasa Inggris', NULL, '2017-01-26 21:43:46');
INSERT INTO `tbl_guru` VALUES (7, '927482658274998', 'Irma Cantika', 'P', 'Padang', '25 September 1993', 'Bahasa Inggris, IPA', '4200d2514abf45755943526b74474c16.jpg', '2017-01-26 21:45:11');

-- ----------------------------
-- Table structure for tbl_inbox
-- ----------------------------
DROP TABLE IF EXISTS `tbl_inbox`;
CREATE TABLE `tbl_inbox`  (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_nama` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inbox_email` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inbox_kontak` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `inbox_pesan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `inbox_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `inbox_status` int(11) NULL DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat',
  PRIMARY KEY (`inbox_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_inbox
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_kategori
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE `tbl_kategori`  (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kategori_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`kategori_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kategori
-- ----------------------------
INSERT INTO `tbl_kategori` VALUES (1, 'Pendidikan', '2016-09-06 13:49:04');
INSERT INTO `tbl_kategori` VALUES (2, 'Politik', '2016-09-06 13:50:01');
INSERT INTO `tbl_kategori` VALUES (3, 'Sains', '2016-09-06 13:59:39');
INSERT INTO `tbl_kategori` VALUES (5, 'Penelitian', '2016-09-06 14:19:26');
INSERT INTO `tbl_kategori` VALUES (6, 'Prestasi', '2016-09-07 10:51:09');
INSERT INTO `tbl_kategori` VALUES (13, 'Olah Raga', '2017-01-13 21:20:31');

-- ----------------------------
-- Table structure for tbl_kelas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_kelas`;
CREATE TABLE `tbl_kelas`  (
  `kelas_id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas_nama` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kelas_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_kelas
-- ----------------------------
INSERT INTO `tbl_kelas` VALUES (1, 'Kelas X.1');
INSERT INTO `tbl_kelas` VALUES (2, 'Kelas X.2');
INSERT INTO `tbl_kelas` VALUES (3, 'Kelas X.3');
INSERT INTO `tbl_kelas` VALUES (4, 'Kelas X.4');
INSERT INTO `tbl_kelas` VALUES (5, 'Kelas X.5');
INSERT INTO `tbl_kelas` VALUES (6, 'Kelas X.6');
INSERT INTO `tbl_kelas` VALUES (7, 'Kelas X.7');
INSERT INTO `tbl_kelas` VALUES (8, 'Kelas XI IPA.1');
INSERT INTO `tbl_kelas` VALUES (9, 'Kelas XI IPA.2');
INSERT INTO `tbl_kelas` VALUES (10, 'Kelas XI IPA.3');
INSERT INTO `tbl_kelas` VALUES (11, 'Kelas XI IPA.4');
INSERT INTO `tbl_kelas` VALUES (12, 'Kelas XI IPA.5');
INSERT INTO `tbl_kelas` VALUES (13, 'Kelas XI IPA.6');
INSERT INTO `tbl_kelas` VALUES (14, 'Kelas XI IPA.7');
INSERT INTO `tbl_kelas` VALUES (15, 'Kelas XI IPS.1');
INSERT INTO `tbl_kelas` VALUES (16, 'Kelas XI IPS.2');
INSERT INTO `tbl_kelas` VALUES (17, 'Kelas XI IPS.3');
INSERT INTO `tbl_kelas` VALUES (18, 'Kelas XI IPS.4');
INSERT INTO `tbl_kelas` VALUES (19, 'Kelas XI IPS.5');
INSERT INTO `tbl_kelas` VALUES (20, 'Kelas XI IPS.6');
INSERT INTO `tbl_kelas` VALUES (21, 'Kelas XI IPS.7');

-- ----------------------------
-- Table structure for tbl_komentar
-- ----------------------------
DROP TABLE IF EXISTS `tbl_komentar`;
CREATE TABLE `tbl_komentar`  (
  `komentar_id` int(11) NOT NULL AUTO_INCREMENT,
  `komentar_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `komentar_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `komentar_isi` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `komentar_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `komentar_status` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `komentar_tulisan_id` int(11) NULL DEFAULT NULL,
  `komentar_parent` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`komentar_id`) USING BTREE,
  INDEX `komentar_tulisan_id`(`komentar_tulisan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_komentar
-- ----------------------------
INSERT INTO `tbl_komentar` VALUES (1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 23:09:07', '1', 24, 0);
INSERT INTO `tbl_komentar` VALUES (2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 23:14:26', '1', 24, 0);
INSERT INTO `tbl_komentar` VALUES (3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 11:54:56', '1', 24, 1);

-- ----------------------------
-- Table structure for tbl_log_aktivitas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_log_aktivitas`;
CREATE TABLE `tbl_log_aktivitas`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_nama` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `log_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `log_ip` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `log_pengguna_id` int(11) NULL DEFAULT NULL,
  `log_icon` blob NULL,
  `log_jenis_icon` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `log_pengguna_id`(`log_pengguna_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_log_aktivitas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_page
-- ----------------------------
DROP TABLE IF EXISTS `tbl_page`;
CREATE TABLE `tbl_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `is_active` tinyint(5) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page
-- ----------------------------
INSERT INTO `tbl_page` VALUES (1, 'Visi Misi', 'visi-misi', '<h2>Visi dan Misi LPTQ</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Visi:</h1>\r\n\r\n<p>Mewujudkan penghayatan dan pengamalan Al-Qur&rsquo;an dalam masyarakat Indonesia yang ber-Pancasila.</p>\r\n\r\n<h1>Misi:</h1>\r\n\r\n<ul>\r\n	<li>Menyelenggarakan Musabaqah Tilawatil Qur&rsquo;an</li>\r\n	<li>Menyelenggarakan pembinaan tilawah (baca dan lagu), tahfidz (hafalan), khat (tulis indah), puitisasi dan pameran Al-Qur&rsquo;an.</li>\r\n	<li>Meningkatkan pemahaman Al-Qur&rsquo;an melalui penterjemahan, pentafsiran, pengkajian dan klasifikasi ayat-ayat.</li>\r\n	<li>Meningkatkan penghayatan dan pengamalan Al-Qur&rsquo;an dalam kehidupan sehari-hari.</li>\r\n</ul>\r\n', '2021-01-25 03:01:27', '2021-01-26 00:45:34', 1);

-- ----------------------------
-- Table structure for tbl_pengguna
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengguna`;
CREATE TABLE `tbl_pengguna`  (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_moto` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_jenkel` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_username` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_password` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_tentang` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pengguna_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_nohp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_facebook` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_twitter` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_linkdin` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_google_plus` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_status` int(2) NULL DEFAULT 1,
  `pengguna_level` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengguna_register` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `pengguna_photo` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pengguna_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pengguna
-- ----------------------------
INSERT INTO `tbl_pengguna` VALUES (2, 'Admin', NULL, 'L', 'admin', 'admin', NULL, 'admin@mail.com', '081', NULL, NULL, NULL, NULL, 1, '1', '2021-01-25 17:07:06', '7332c3a615a0490c860c53d7bfe15015.jpg');

-- ----------------------------
-- Table structure for tbl_pengumuman
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengumuman`;
CREATE TABLE `tbl_pengumuman`  (
  `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman_judul` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengumuman_deskripsi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `pengumuman_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `pengumuman_author` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pengumuman_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pengumuman
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_pengunjung
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pengunjung`;
CREATE TABLE `tbl_pengunjung`  (
  `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengunjung_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `pengunjung_ip` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pengunjung_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 936 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pengunjung
-- ----------------------------
INSERT INTO `tbl_pengunjung` VALUES (930, '2018-08-09 16:04:59', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (931, '2021-01-14 11:15:30', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (932, '2021-01-15 09:45:57', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (933, '2021-01-17 00:30:54', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (934, '2021-01-25 13:59:57', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (935, '2021-01-26 00:09:20', '::1', 'Chrome');

-- ----------------------------
-- Table structure for tbl_siswa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_siswa`;
CREATE TABLE `tbl_siswa`  (
  `siswa_id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_nis` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `siswa_nama` varchar(70) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `siswa_jenkel` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `siswa_kelas_id` int(11) NULL DEFAULT NULL,
  `siswa_photo` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`siswa_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_siswa
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_slider
-- ----------------------------
DROP TABLE IF EXISTS `tbl_slider`;
CREATE TABLE `tbl_slider`  (
  `id` int(128) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `img_url` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_slider
-- ----------------------------
INSERT INTO `tbl_slider` VALUES (1, 'Slider 1', 'Masukan Deskripsi Slider 1', '5f27a03c5ecb7a6d0c4812bf624df622.png', '2021-01-25 12:01:34', '2021-01-25 21:03:17');
INSERT INTO `tbl_slider` VALUES (2, 'Slider 2', 'Masukan Deskripsi Slider 2', '7ea67d79cfd2d364271df035c149c621.png', '2021-01-25 01:01:46', '2021-01-25 21:03:46');
INSERT INTO `tbl_slider` VALUES (3, 'Judul Slider 3', 'Masukan Slider 3', 'bc6964701d3a8e17870c6950041842a2.jpg', '2021-01-25 01:01:37', '2021-01-25 21:07:37');

-- ----------------------------
-- Table structure for tbl_testimoni
-- ----------------------------
DROP TABLE IF EXISTS `tbl_testimoni`;
CREATE TABLE `tbl_testimoni`  (
  `testimoni_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimoni_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimoni_isi` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimoni_email` varchar(35) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `testimoni_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`testimoni_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_testimoni
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_tulisan
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tulisan`;
CREATE TABLE `tbl_tulisan`  (
  `tulisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tulisan_judul` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tulisan_isi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tulisan_tanggal` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `tulisan_kategori_id` int(11) NULL DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tulisan_views` int(11) NULL DEFAULT 0,
  `tulisan_gambar` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tulisan_pengguna_id` int(11) NULL DEFAULT NULL,
  `tulisan_author` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tulisan_id`) USING BTREE,
  INDEX `tulisan_kategori_id`(`tulisan_kategori_id`) USING BTREE,
  INDEX `tulisan_pengguna_id`(`tulisan_pengguna_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_tulisan
-- ----------------------------
INSERT INTO `tbl_tulisan` VALUES (20, 'Persiapan siswa menjelang ujian nasional', '<p>Banyak metode bejalar yang dilakukan oleh siswa untuk persiapan menghadapi ujian nasional (UN). Biantaranya mengingat dengan metode Mind Map, ataupun bejalar diluar kelas (outdoor).&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 17:24:42', 1, 'Pendidikan', 34, '6d2a4b7239761a69143c0a5ba5417462.png', 2, 'M Lukman Hakim', 0, 'persiapan-siswa-menjelang-ujian-nasional');
INSERT INTO `tbl_tulisan` VALUES (22, 'Prestasi membangga dari siswa MSchool', '<p>Prestasi dan penghargaan merupakan trigger (pemicu) semangat belajar siswa. Ada banyak prestasi yang telah diraih oleh siswa m-sekolah. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 17:38:21', 6, 'Prestasi', 7, '649119b1bec07d68d91e721ec1f0ed73.png', 2, 'M Lukman Hakim', 0, 'prestasi-membangga-dari-siswa-mschool');

SET FOREIGN_KEY_CHECKS = 1;
