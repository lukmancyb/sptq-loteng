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

 Date: 27/01/2021 21:58:36
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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_agenda
-- ----------------------------
INSERT INTO `tbl_agenda` VALUES (1, 'Tes Agnda', '2021-01-26 10:44:45', 'Ini merupakan test agenda', '2021-01-01', '2021-01-31', 'Hotel - Jakarta', '00:00 - 24:00', 'Kterangan', 'Admin');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_album
-- ----------------------------
INSERT INTO `tbl_album` VALUES (7, 'MTQ Loteng 2020', '2021-01-26 11:02:44', 2, 'Admin', 1, 'f18961cbdf1da8eb47a020a1af1b52f1.png');

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
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_files
-- ----------------------------
INSERT INTO `tbl_files` VALUES (13, 'File SOP bla bla', 'Deskripis file Sop', '2021-01-26 11:04:57', 'Prof. Mahfud Md', 0, '1c4757956ad2cfd3e059718f0fd4afd8.zip');

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
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_galeri
-- ----------------------------
INSERT INTO `tbl_galeri` VALUES (19, 'Acara MTQ Pada Tahun 2020 dihadiri oleh', '2021-01-26 11:03:33', '6cb5bfd894f61e50a5fc3339e5c1421a.png', 7, 2, 'Admin');

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
INSERT INTO `tbl_kategori` VALUES (3, 'Agama', '2016-09-06 13:59:39');
INSERT INTO `tbl_kategori` VALUES (5, 'Penelitian', '2016-09-06 14:19:26');
INSERT INTO `tbl_kategori` VALUES (6, 'Prestasi', '2016-09-07 10:51:09');
INSERT INTO `tbl_kategori` VALUES (13, 'Olah Raga', '2017-01-13 21:20:31');

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
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_komentar
-- ----------------------------
INSERT INTO `tbl_komentar` VALUES (1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 23:09:07', '1', 24, 0);
INSERT INTO `tbl_komentar` VALUES (2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 23:14:26', '1', 24, 0);
INSERT INTO `tbl_komentar` VALUES (3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 11:54:56', '1', 24, 1);
INSERT INTO `tbl_komentar` VALUES (4, 'M LUKMAN HAKIM', 'admin@me.com', ' Komentar Contoh<br />\r\n', '2021-01-27 10:29:12', '1', 23, 0);

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
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_page
-- ----------------------------
INSERT INTO `tbl_page` VALUES (1, 'Visi Misi', 'visi-misi', '<h2>Visi dan Misi LPTQ</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h1>Visi:</h1>\r\n\r\n<p>Mewujudkan penghayatan dan pengamalan Al-Qur&rsquo;an dalam masyarakat Indonesia yang ber-Pancasila.</p>\r\n\r\n<h1>Misi:</h1>\r\n\r\n<ul>\r\n	<li>Menyelenggarakan Musabaqah Tilawatil Qur&rsquo;an</li>\r\n	<li>Menyelenggarakan pembinaan tilawah (baca dan lagu), tahfidz (hafalan), khat (tulis indah), puitisasi dan pameran Al-Qur&rsquo;an.</li>\r\n	<li>Meningkatkan pemahaman Al-Qur&rsquo;an melalui penterjemahan, pentafsiran, pengkajian dan klasifikasi ayat-ayat.</li>\r\n	<li>Meningkatkan penghayatan dan pengamalan Al-Qur&rsquo;an dalam kehidupan sehari-hari.</li>\r\n</ul>\r\n', '2021-01-25 03:01:27', '2021-01-27 13:59:15', 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pengguna
-- ----------------------------
INSERT INTO `tbl_pengguna` VALUES (2, 'Admin', NULL, 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', NULL, 'admin@mail.com', '081', NULL, NULL, NULL, NULL, 1, '1', '2021-01-25 17:07:06', 'd10566818b50a4992face6b0c34ce423.png');
INSERT INTO `tbl_pengguna` VALUES (6, 'Author', NULL, 'L', 'author', '02bd92faa38aaa6cc0ea75e59937a1ef', NULL, 'author@mail.com', '1111', NULL, NULL, NULL, NULL, 1, '2', '2021-01-26 23:21:35', '0467242b81195bc282576bfe48d88b8b.png');

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pengumuman
-- ----------------------------
INSERT INTO `tbl_pengumuman` VALUES (2, 'Test Pengumuman', 'Pengumuman Itu Apa', '2021-01-26 11:14:51', 'Admin');

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
) ENGINE = InnoDB AUTO_INCREMENT = 937 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_pengunjung
-- ----------------------------
INSERT INTO `tbl_pengunjung` VALUES (930, '2018-08-09 16:04:59', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (931, '2021-01-14 11:15:30', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (932, '2021-01-15 09:45:57', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (933, '2021-01-17 00:30:54', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (934, '2021-01-25 13:59:57', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (935, '2021-01-26 00:09:20', '::1', 'Chrome');
INSERT INTO `tbl_pengunjung` VALUES (936, '2021-01-27 10:23:29', '::1', 'Chrome');

-- ----------------------------
-- Table structure for tbl_prestasi
-- ----------------------------
DROP TABLE IF EXISTS `tbl_prestasi`;
CREATE TABLE `tbl_prestasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_prestasi` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan_prestasi` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tahun_prestasi` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `created_by` int(11) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `img_url` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_prestasi
-- ----------------------------
INSERT INTO `tbl_prestasi` VALUES (5, 'Nanang Sofyan', 'Juara 1 MTQ Tingkat Kabupaten Lombok Tengah', '2021', '2021-01-27 01:17:46', 2, '2021-01-27 21:30:51', '804068cbe2d2b991c1c514339844f40f.png');
INSERT INTO `tbl_prestasi` VALUES (6, 'Taufik Hidayat', 'Juara 1 MTQ Tingkat Nasional', '2019', '2021-01-27 01:20:59', 2, '2021-01-27 21:20:59', 'a4b5753d59ec60a25eec0d44c3c9557a.jpg');

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
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_tulisan
-- ----------------------------
INSERT INTO `tbl_tulisan` VALUES (23, 'Hujan', '<p>Daun-daun gugur menderai. Menutupi bangku yang ada di sisi utara sebuah taman yang berjarak tak jauh dari sebuah jalan. Jalan itu tak pernah lepas dari pandanganku. Pohon-pohon cemara yang kemarin tingginya tak lebih tinggi dari pohon ceri itu sudah lama ditebang. Kayu-kayu nya masih ada di sana, di sebelah pintu masuk taman yang bergapura bambu-bambu berwarna biru langit. Sedari tadi angin berhembus ganas. Daun-daun yang tadinya masih bertengger di ujung ranting, akhirnya terlepas juga. Bunga-bunga yang sewaktu aku datang masih berbaris rapi membentuk tulisan &lsquo;Taman Kaca&rsquo; kini lemas tak beraturan.</p>\r\n\r\n<p>Di sisi langit barat, banyak awan yang menggantung berkerumun. Abu-abu warnanya. Matahari yang tadi seakan menyeringai panas, kini tertutup awan yang mungkin saja membawa kabar akan datangnya badai malam ini. Angin bertambah kencang. Air-air mulai turun perlahan. Saluran irigasi kembali pada pekerjaan semula. Aku pergi ke seberang jalan depan taman untuk berteduh di depan toko barang-barang plastik. Aku heran, pada cuaca seperti ini masih ada saja orang yang bepergian. Termasuk aku. Jalan kini basah kuyup. Banyak genangan di sana-sini.</p>\r\n\r\n<p>Aku berniat menunggu seseorang yang kupanggil Eshter. Aku selalu menunggunya di taman itu setiap televisi memberitakan akan datangnya hujan lebat. Pagi tadi, televisi di&nbsp;<em>channel</em>&nbsp;tiga belas memberitakan bahwa di kota ini akan terjadi badai yang lumayan besar. Suhu yang tercatat pada termometer menunjukkan angka 23&deg;C. Badanku terasa dingin. Bajuku basah tersiram air yang dicipratkan oleh mobil yang lewat dari arah barat tadi.</p>\r\n\r\n<p>Tiba-tiba ada seorang gadis berkacamata bundar ikut berteduh di sebelahku. Bajunya basah kuyup setelah diguyur hujan yang baru saja turun. Tas jinjing berwarna hitam yang terbuat dari kain beludru juga basah. Gadis itu beruntung, isi dalam tas itu tidak ikut basah.</p>\r\n\r\n<p>&ldquo;Permisi tuan. Bolehkah saya berteduh di sini bersama tuan?&rdquo; tanya gadis itu seketika membuat aku tersadar dari lamunanku tentang Eshter.</p>\r\n\r\n<p>&ldquo;Boleh saja, nona. Teritisan ini masih bisa menampung kita berdua.&rdquo; Aku bergeser sedikit ke kiri, memberikan isyarat kepada gadis itu agar berteduh di sebelahku.</p>\r\n\r\n<p>Aku kembali memandang jalan. Perasaanku mengatakan bahwa hujan akan turun cukup lama.</p>\r\n\r\n<p>&ldquo;Hujannya mulai deras,&rdquo; ucapanku membuka pembicaraan setelah kami berdua terdiam sekitar sepuluh menit.</p>\r\n\r\n<p>&ldquo;Iya, sepertinya hujan akan turun cukup lama,&rdquo; jawabnya ramah. Gigi-gigi yang berderet rapi membentuk sebuah senyum yang hangat.</p>\r\n\r\n<p>Benar saja, hujan turun bertambah deras. Gaduh air yang mengalir ke atap kami terdengar menggerutu. Langit sepertinya sedang sangat bersedih. Entah karena ditinggal kemarau atau karena sebab lainnya. Beginilah saat hujan turun mengguyur, aku yang bebas menjadi tahanan yang dikurung di dalam rinai-rinai air yang telah diuapkan oleh matahari siang tadi.</p>\r\n\r\n<p>Kami berbincang-bincang seperti laiknya orang yang baru saja bertemu dan baru saja berkenalan. Dia bercerita tentang kesibukan yang sedang ia lakukan. Aku pun sama, aku menceritakan sedikit tentang kegiatanku menulis buku.</p>\r\n\r\n<p>Tiba-tiba. Gadis itu menanyakan sebuah pertanyaan yang membuat aku begitu bingung.</p>\r\n\r\n<p>&ldquo;Bagaimana menurutmu tentang hujan?&rdquo; sederet kalimat tanya muncul dari sela-sela bibir gadis itu</p>\r\n\r\n<p>&ldquo;Aku tak terlalu menyukai hujan. Hujan selalu menjadikanku perhitungan terhadap waktu,&rdquo; jawabku dengan muka kebingungan</p>\r\n\r\n<p>&ldquo;Bagiku, hujan itu terlalu kejam,&rdquo; sebuah pernyataan keluar dari mulut gadis itu sambil membuka ikatan rambutnya yang basah. Rambutnya menutupi bahunya yang tak cukup lebar. Tas beludru kini ia pindahkan ke pangkuannya sembari mengeluarkan kain yang digunakannya untuk membersihkan kacamatanya yang berembun akibat hujan.</p>\r\n\r\n<p>&ldquo;Iya, seperti itulah hujan. Dia selalu datang saat tak diharapkan. Burung-burung pun tak menyukainya,&rdquo; pangkasku</p>\r\n\r\n<p>Aku tak terlalu paham mengapa gadis itu menganggap hujan sebagai sesuatu yang kejam. Apakah ada sesuatu yang ia sembunyikan dariku tentang hujan?</p>\r\n\r\n<p>Kami kembali terdiam dalam kerasnya suara hujan.</p>\r\n\r\n<p><strong>/II/</strong></p>\r\n\r\n<p>Di dekat toko barang-barang plastik tempat kami berteduh, ada sebuah kedai teh yang tak cukup ramai. Hal itu lumrah karena di kota ini kedai teh menjadi salah satu tempat destinasi untuk para penikmat malam.</p>\r\n\r\n<p>&ldquo;Bagaimana kalau kita ke sana, ke kedai teh di sebelah toko ini? Mungkin segelas teh inggris bisa menemani kita sembari menunggu hujan reda,&rdquo; seruku mengajak gadis itu menuju kedai teh di sebelah toko tempat kami berteduh.</p>\r\n\r\n<p>&ldquo;Hm?&rdquo; sahut gadis itu sambil mendekatkan telinganya ke bibirku meminta pengulangan.</p>\r\n\r\n<p>&ldquo;Mari ke kedai teh sebelah toko ini, ku dengar ada jenis teh baru yang kini menjadi minuman favorit orang-orang,&rdquo; nadaku bertambah tinggi. Aku tak berniat memarahinya, hanya saja suara hujan begitu gaduh. Suaraku menciut dibuatnya.</p>\r\n\r\n<p>&ldquo;Boleh,&rdquo; jawab gadis itu menyetujui.</p>\r\n\r\n<p>Gadis itu berjalan di depanku. Aku mengikutinya di belakang. Rambutnya yang mengkilat basah terlihat sangat indah. Tas jinjing beludru itu kini ada di bahu kirinya. Langkah kami beriringan mencari tempat kering yang tidak tergenang air. Tak terasa, kami sudah berada di depan pintu masuk kedai itu. Gedungnya cukup bagus, terlihat seperti bangunan kuno yang mencolok mata. Bangunan di sekitarnya sudah setinggi dua kali bangunan kedai itu. Di depannya tertulis &lsquo;Kedai Kaca&rsquo;. Tanpa pikir lama, kami masuk, dan terdengar bel yang menandakan ada pelanggan yang datang.</p>\r\n\r\n<p>Di dalam kedai, hanya ada beberapa orang yang saling berpasangan. Raut wajah mereka menyiratkan rasa terima kasih kepada hujan. Mungkin karena hujan, mereka bisa menghabiskan sedikit waktu untuk bersama dengan seseorang yang mereka kasihi.</p>\r\n\r\n<p>Dua gelas teh inggris hangat kami pesan untuk sekadar menghangatkan tubuh yang kedinginan karena hujan dan angin yang turun secara bersamaan. Gadis itu perlahan mencicipinya. Tangan yang tadinya menggigil kedinginan, kini sudah terlihat sedikit mendingan. Mungkin karena hangatnya teh telah merasuk ke dalam aliran darahnya.</p>\r\n\r\n<p>Menurut buku yang kupinjam dari seorang teman, dijelaskan bahwa orang Inggris memiliki sebuah tradisi meminum teh yang disebut&nbsp;<em>afternoon tea</em>.&nbsp;<em>Afternoon tea</em>&nbsp;adalah sebuah tradisi meminum teh di saat sore hari. Selain untuk mengisi waktu jeda antara makan siang dan makan malam,&nbsp;<em>afternoon tea</em>&nbsp;adalah ajang bersosialisasi bagi kaum bangsawan Inggris di masa itu.</p>\r\n\r\n<p><strong>/III/</strong></p>\r\n\r\n<p>Gadis itu melepas kacamata bundarnya yang berembun, ditaruhnya di atas meja sebelah gelas tehku yang sudah ku minum separuhnya.</p>\r\n\r\n<p>&ldquo;Tuan, bolehkah saya tahu nama Tuan?&rdquo; tanyanya sambil menyelidiki mukaku yang basah.</p>\r\n\r\n<p>&ldquo;Oh iya, nona. Maaf saya lupa untuk mengenalkan diri saya. Panggil saja saya Arya,&rdquo; jawabku sambil membenarkan posisi dudukku.</p>\r\n\r\n<p>&ldquo;Nama saya Sandhya,&rdquo; sahutnya sambil mengulurkan tangannya, pertanda mengenalkan dirinya. Tangannya lembut, kuku-kukunya bersih, dan cantik.</p>\r\n\r\n<p>Kami tenggelam pada sebuah dialog yang hangat. Hujan di luar tak kunjung reda. Rintiknya semakin menjadi-jadi, hembus anginnya semakin membabi buta. Namun, syukurlah karena kami menemukan sebuah kedai teh yang hangat di dalamnya.</p>\r\n\r\n<p>Setelah empat puluh lima menit, kami kehabisan pokok pembicaraan. Gadis itu kembali terdiam, begitu pula dengan aku. Kembali, suasana menjadi asing bagi kami berdua. Ku lihat di luar jendela kaca, hujan semakin menjadi-jadi. Gemuruh yang menggelegar menggetarkan kaca kedai. Ingin sekali aku kembali berbincang dengan Sandhya, seorang gadis manis yang baru ku kenal tadi. Mungkin hujan bisa jadi pokok pembicaraan yang menarik bagi kami berdua.</p>\r\n\r\n<p>Setelah cukup lama kami berdua terdiam memandangi jalanan di luar yang basah, ku beranikan untuk menyambung pembicaraan.</p>\r\n\r\n<p>&ldquo;Oh iya, tadi kau berkata jika hujan itu kejam? Mengapa bisa seperti itu?&rdquo; aku berpindah posisi ke sebelah jendela dan mataku tak pernah terlepas darinya.</p>\r\n\r\n<p>&ldquo;Hujan pernah merebut seseorang dariku. Beberapa tahun lalu, seorang lelaki pernah berkata kepadaku bahwa aku ini seperti hujan yang rintiknya menyejukkan mata siapa saja yang memandangnya. Aku sungguh mencintai hujan saat itu. Tapi setelah beberapa lama, lelaki itu pergi entah ke mana. Mungkin dia sudah menemukan hujan yang lebih menyejukkan hatinya daripada aku. Selepasnya, hingga saat ini aku tak lagi terlalu menyukai hujan,&rdquo; wajahnya berpaling dari jendela, lalu menatapku. Dia terlihat sedih. Matanya yang tadinya sayu, kini berkaca-kaca memperlihatkan kerinduan yang teramat sangat pada seseorang.</p>\r\n\r\n<p>Aku pun sama, aku pernah mencintai hujan dengan sangat. Mungkin melebihi aku mencintai diriku sendiri. Berkatnya, aku pernah terjebak di suatu tempat bersama orang yang sangat aku cintai. Orang itu adalah Eshter. Seorang perempuan yang telah aku titipkan hatiku padanya. Sudah sembilan bulan Eshter pergi ke pusat kota. Katanya, dia ingin menamatkan sekolahnya menjadi sarjana ekonomi dan akan kembali menemui aku saat sewindu setelah ia pamit akan pergi ke kota. Dia berkata akan kembali saat hujan benar-benar lebat, dan saat angin benar-benar kacau. Sudah beberapa kali hujan seperti ini turun mengguyur kota, tapi ia tak kunjung pulang. Aku tak tahu berapa lama lagi aku harus menunggunya untuk pulang. Kabarnya pun aku tak tahu, mungkin dia sudah melupakan aku untuk selamanya. Sejak saat itu, aku sudah tak lagi mencintai hujan dengan sangat. Menurutku, setiap hujan mengguyur kota, aku hanya akan kembali mengingat tentang Eshter yang mungkin tak akan kembali kepadaku.</p>\r\n\r\n<p>Gadis ini cantik, rambutnya pun menarik. Sepertinya aku mulai tertarik padanya. Baris giginya yang putih tertata rapi. Besit senyumnya sungguh manis melebihi gula-gula. Aku menyukainya. Mungkin dengan mengenalnya, aku akan kembali mencintai hujan.</p>\r\n\r\n<p><strong>/IV/</strong></p>\r\n\r\n<p>Rasa benciku kepada hujan, sepertinya akan berangsur-angsur menghilang. Sebab dengan hujan kali ini, aku bertemu dengan Sandhya. Seorang gadis berkacamata bundar yang manis pada lengkung senyumannya. Tanpa sadar, aku tak lagi memikirkan Eshter lagi sedari tadi. Mungkin hujan sengaja mengurungku bersama Sandhya di hari ini. Terima kasih hujan, untuk waktu dan kesempatan yang kau berikan kepadaku saat harapanku kepada Eshter sudah sampai pada puncaknya. Setidaknya, setengah hati yang Eshter tinggalkan akan menemukan pasangannya kembali.</p>\r\n\r\n<p>Aku heran, sudah satu jam setengah hujan tak kunjung reda. Mungkin siang tadi, matahari sedang terik-teriknya. Atau mungkin laut yang sedang jahil-jahilnya sehingga mengganggu matahari yang sedang cemburu kepada gunung-gunung yang selalu mendapat perhatian dari angin muson yang berhembus manja. Di luar jendela, di seberang jalan sana, seorang laki-laki berumur sekitar dua puluh tahunan duduk di bangku taman. Tempat aku duduk menunggu Eshter tadi. Sandhya tak pernah melepas pandang pada lelaki itu.</p>\r\n\r\n<p>&ldquo;Nona, kasihan lelaki itu. Dia kehujanan,&rdquo; seruku membangunkan Sandhya dari lamunannya.</p>\r\n\r\n<p>&ldquo;Tidak, mungkin dia menyukai hujan. Atau mungkin ia sedang menunggu orang yang dicintainya.&rdquo;</p>\r\n\r\n<p>&ldquo;Mana mungkin ada orang yang rela duduk di bawah rinai hujan yang lebat ini?&rdquo; tanyaku penasaran.</p>\r\n\r\n<p>&ldquo;Mungkin saja. Aku pernah seperti dia. Aku pernah duduk berjam-jam hanya untuk menunggu seseorang. Sudah aku katakan kepadamu tadi kan? Aku pernah mencintai hujan dengan sangat,&rdquo; jawabannya sungguh mengguncangku.</p>\r\n\r\n<p>Aku tak tahu, ternyata masih ada orang lain yang seperti aku dulu. Mencintai hujan dengan sungguh-sungguh. Rela menghabiskan waktu yang sangat berharga demi menunggu seseorang yang dicintainya di bawah rintik hujan yang selalu membisikkan agar seseorang menyerah untuk bersabar menunggu. Sandhya wanita hebat. Masihkah dia berharap pada seseorang yang pernah ditunggunya?</p>\r\n\r\n<p>&ldquo;Lalu, bagaimana kabar seseorang yang kau tunggu nona?&rdquo; tanyaku menyambung pernyataan Sandhya.</p>\r\n\r\n<p>&ldquo;Aku sudah lama menyerah untuk terus menunggunya.&rdquo;</p>\r\n\r\n<p>&ldquo;Sepertinya kita sama, nona. Kau sudah menyerah untuk menunggu seseorang. Aku pun sama. Aku juga sudah menyerah menunggu seseorang.&rdquo;</p>\r\n\r\n<p>&ldquo;Ha-ha. Ternyata kita sama-sama menyerah soal tunggu-menunggu, tuan?&rdquo;</p>\r\n\r\n<p>&ldquo;Ha-ha. Benar, nona,&rdquo; tawaku menutup perbincangan sesaat.</p>\r\n\r\n<p>Bertepatan dengan akhir tawaku. Hujan di luar mulai reda. Reda hujannya sungguh tiba-tiba. Padahal aku kembali menyukai rintik air yang turun tanpa diminta.</p>\r\n\r\n<p>&ldquo;Tuan, sepertinya hujan di luar sudah berhenti. Maukah kau temani aku jalan-jalan ke kantor pos?&rdquo; tanyanya sambil kembali mengikat rambutnya yang sudah mulai mengering.</p>\r\n\r\n<p>&ldquo;Hmm, boleh. Aku juga sedang tidak ada kesibukan akhir-akhir ini,&rdquo; jawabku mengakhiri kunjungan ke kedai teh ini.</p>\r\n\r\n<p><strong>/V/</strong></p>\r\n\r\n<p>Setelah membayar tagihan teh yang kami minum, kami keluar dari kedai. Orang-orang yang tadi ada di kedai, kini masih di sana. Tawa mereka sungguh lucu, menggambarkan kebahagiaan yang besar. Aku iri dengan mereka. Sudah sangat lama aku tak tertawa seperti itu.</p>\r\n\r\n<p>Kami berjalan bersebelahan. Aku di kiri, dan Sandhya di kananku. Tinggi Sandhya tak menyamai tinggiku. Tingginya hanya setinggi bahuku. Baju kami sudah sama-sama mengering. Kini di setiap jalanan yang kami lewati, selalu ada burung-burung gereja yang keluar dari sarang merayakan hujan yang sudah reda. Tanpa kami sadari, burung-burung itu menjadi pokok pembicaraan kami.</p>\r\n\r\n<p>&ldquo;Lihatlah burung-burung itu, tuan! Mereka sangat senang hujan sudah reda.&rdquo; Tangan Sandhya diangkatnya setinggi mataku. Menunjuk ke arah burung-burung gereja tadi.</p>\r\n\r\n<p>&ldquo;Iya, nona. Burung-burung itu sungguh bahagia melihat jalanan tak lagi menggenang,&rdquo; jawabku menyetujui pernyataan Sandhya.</p>\r\n\r\n<p>Tak puas dengan jawabanku, Sandhya kembali bertanya. Kini tangannya sudah tak lagi menunjuk burung-burung itu.</p>\r\n\r\n<p>&ldquo;Lalu, pernahkan mereka mencintai hujan seperti kita?&rdquo; Pandangannya kini kosong melihat ke depan. Entah apa yang sedang dipikirnya.</p>\r\n\r\n<p>&ldquo;Mungkin pernah nona. Saat kemarau misalnya. Semua yang hidup pasti membutuhkan hujan, nona! Mungkin burung-burung itu sama seperti orang yang kita tunggu. Dia hanya membutuhkan hujan sesaat. Namun jika ia sudah tak membutuhkannya, ia akan berpaling dan berbalik membenci hujan.&rdquo;</p>\r\n\r\n<p>&ldquo;Benar tuan, mungkin mereka hanya cinta secukupnya kepada hujan. Tak seperti kita. Kita benar-benar mencintai hujan dengan sangat. Seperti cinta sungai kepada sawah-sawah yang ikhlas.&rdquo;</p>\r\n\r\n<p>Sandhya sepertinya sependapat denganku.</p>\r\n\r\n<p>&ldquo;Oh ya nona. Tadi kau mengajakku ke kantor pos? Sepertinya kau ingin mengirim surat ke seseorang?&rdquo; tanyaku kepada Sandhya yang sedari tadi melihat burung-burung.</p>\r\n\r\n<p>&ldquo;Iya tuan. Setiap akhir pekan, aku selalu mengirim surat untuk langit. Aku tahu, orang lain menganggap aku gila sebab aku selalu mengirim surat untuk langit. Aku selalu menceritakan sepekan terakhirku kepadanya. Aku juga meminta kepadanya agar bisa mengantarkan aku kepada seseorang yang benar-benar mencintaiku,&rdquo; jawaban Sandhya mengejutkanku. Rupanya, dia wanita yang tak bisa ku tebak. Menurutku dia luar biasa.</p>\r\n\r\n<p>Tak terasa, kami sudah sampai di persimpangan tempat kantor pos itu berada. Di depan kantor pos, terdapat kotak surat yang cukup besar. Warnanya hijau kehitaman. Tingginya hampir menyamai tinggi Sandhya. Terdapat empat lubang persegi panjang di setiap sisinya.</p>\r\n\r\n<p>&ldquo;Lihat, tuan. Kita sudah sampai. Mari kita ke sana, ke kotak surat di sudut persimpangan.&rdquo; Sandhya berlari menuju kotak surat yang ditunjuknya.</p>\r\n\r\n<p>&ldquo;Hati-hati, nona. Jalanan licin akibat hujan.&rdquo; Aku menyusul Sandhya. Dia tak menghiraukan perkataanku. Dia masih saja berlari tanpa takut tergelincir, karena jalan yang licin.</p>\r\n\r\n<p>Sebelum dia memasukkan sebuah amplop yang sudah ia siapkan, dia mengepalkan tangan. Sepertinya ia berdoa kepada Tuhan agar langit membalas semua surat yang ia kirimkan. Aku berdiri di belakangnya. Menunggunya selesai berdoa dan memasukkan amplop putihnya ke dalam kotak surat itu.</p>\r\n\r\n<p>&ldquo;Semoga langit membalas suratku dengan caranya sendiri. Mungkin langit tak akan membalas suratku dengan tertulis, tapi aku yakin suratku sampai padanya. Mungkin lewat kehendak Tuhan, langit mempertemukan seseorang yang bisa mencintaiku dengan sungguh dan tak sekedar singgah.&rdquo; Kata-kata Sandhya sungguh luar biasa. Mungkinkah orang yang dikirim langit untuk bisa mencintainya adalah aku?</p>\r\n\r\n<p>Kami berjalan pulang menyusuri jalan yang sama dengan jalan yang tadi kami lalui bersama. Kini sudah tak ada burung-burung yang berkeliaran. Pelangi menghiasi langit kota. Jingga senja menutup hari ini, hari baik di bulan yang tak terlalu buruk.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Ma&rsquo;aarij Eka Gangga,</strong></p>\r\n\r\n<p>mahasiswa D3 Teknik Sipil SV UGM &rsquo;15, mencintai dunia tulis menulis sejak semester 3 lalu. Sekarang, ia sedang mengerjakan buku kumpulan cerpen karyanya sendiri</p>\r\n', '2021-01-26 12:14:21', 3, 'Sains', 30, '6def0e0e0d1d111b2f8c959d74a514d7.jpg', 2, 'Admin', 0, 'hujan');

SET FOREIGN_KEY_CHECKS = 1;
