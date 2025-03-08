/*
 Navicat Premium Data Transfer

 Source Server         : old
 Source Server Type    : MySQL
 Source Server Version : 50716 (5.7.16-log)
 Source Host           : localhost:3306
 Source Schema         : firecomic_db

 Target Server Type    : MySQL
 Target Server Version : 50716 (5.7.16-log)
 File Encoding         : 65001

 Date: 28/02/2025 23:13:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artists
-- ----------------------------
DROP TABLE IF EXISTS `artists`;
CREATE TABLE `artists`  (
  `id` decimal(65, 30) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artists
-- ----------------------------
INSERT INTO `artists` VALUES (1.000000000000000000000000000000, '강풀', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for authors
-- ----------------------------
DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors`  (
  `id` decimal(65, 30) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authors
-- ----------------------------
INSERT INTO `authors` VALUES (1.000000000000000000000000000000, '강풀', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for chapters
-- ----------------------------
DROP TABLE IF EXISTS `chapters`;
CREATE TABLE `chapters`  (
  `id` decimal(65, 30) NOT NULL,
  `publish_at` datetime NULL DEFAULT NULL,
  `free_at` datetime NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chapter_number` int(11) NOT NULL,
  `next_chapter_id` bigint(20) NULL DEFAULT NULL,
  `prv_chapter_id` bigint(20) NULL DEFAULT NULL,
  `comic_id` bigint(20) NOT NULL,
  `chapter_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slug` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `link_small_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_small_icon_backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chapters
-- ----------------------------
INSERT INTO `chapters` VALUES (1.000000000000000000000000000000, '2024-09-07 23:17:57', NULL, NULL, 1, 2, NULL, 2, 'chapter1', 'chapter1', 'https://lh3.googleusercontent.com/d/1Z4RsRcG68JS5XOWvxsCAeSye8vKZHkYs=w1000-rw', 'https://lh3.googleusercontent.com/d/1Z4RsRcG68JS5XOWvxsCAeSye8vKZHkYs=w1000-rw', NULL, NULL, '2024-09-07 23:18:24', '2024-09-07 23:18:40');
INSERT INTO `chapters` VALUES (2.000000000000000000000000000000, '2024-09-07 23:17:57', NULL, NULL, 2, NULL, 1, 2, 'chapter2', 'chapter2', 'https://lh3.googleusercontent.com/d/1ncZMrjFdPYdsBQZfGTBQ6fXHk5ZWQY6r=w1000-rw', 'https://lh3.googleusercontent.com/d/1ncZMrjFdPYdsBQZfGTBQ6fXHk5ZWQY6r=w1000-rw', NULL, NULL, '2024-09-07 23:18:40', '2024-09-07 23:18:40');

-- ----------------------------
-- Table structure for comics
-- ----------------------------
DROP TABLE IF EXISTS `comics`;
CREATE TABLE `comics`  (
  `id` decimal(65, 30) NOT NULL,
  `comic_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comic_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `link_bg_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_avatar_backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_comic_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_comic_name_backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tranfer_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_bg_backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ggdrive_id` bigint(20) NULL DEFAULT NULL,
  `link_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_banner_backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_video_banner_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_video_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_comic_small_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_comic_small_name_backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_view` int(11) NOT NULL,
  `total_like` int(11) NOT NULL,
  `genre_id` bigint(20) NULL DEFAULT NULL,
  `bg_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `artist_id` bigint(20) NULL DEFAULT NULL,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `publisher_id` bigint(20) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `comics_comic_code_unique`(`comic_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comics
-- ----------------------------
INSERT INTO `comics` VALUES (2.000000000000000000000000000000, 'COMIC-2', 'Shogun', 'shogun', NULL, 'https://lh3.googleusercontent.com/d/1LKO0lpFjddQH51G1VGVYZkbKUvaha678=w1000-rw', 'https://lh3.googleusercontent.com/d/1LKO0lpFjddQH51G1VGVYZkbKUvaha678=w1000-rw', 'https://lh3.googleusercontent.com/d/1ztmM-kaS-G7ilabLMePAEKARPBYpZ_e0=w1000-rw', 'https://lh3.googleusercontent.com/d/1ztmM-kaS-G7ilabLMePAEKARPBYpZ_e0=w1000-rw', 'background:linear-gradient(to bottom, rgba(25,45,60,0) 2%, rgba(25,45,60,0.7) 50%,  rgba(25,45,60))', 'https://lh3.googleusercontent.com/d/1J-TOAYglSZiVBG5YZPDg1uO2UJ4FwPeH=w1000-rw', 'https://lh3.googleusercontent.com/d/1J-TOAYglSZiVBG5YZPDg1uO2UJ4FwPeH=w1000-rw', NULL, 'https://lh3.googleusercontent.com/d/1Yf3Dx3tI0xlmyzQ-d3AD2PrwikkKU_rr=w1000-rw', 'https://lh3.googleusercontent.com/d/1Yf3Dx3tI0xlmyzQ-d3AD2PrwikkKU_rr=w1000-rw', NULL, NULL, 'https://lh3.googleusercontent.com/d/13kmdc0buuFaRKz2A5JQOlxLIbin20mNU=w1000-rw', 'https://lh3.googleusercontent.com/d/13kmdc0buuFaRKz2A5JQOlxLIbin20mNU=w1000-rw', 5, 0, NULL, 'rgba(25,45,60)', NULL, NULL, NULL, NULL, NULL, '2024-09-07 23:18:16', '2025-01-16 15:18:54');

-- ----------------------------
-- Table structure for content_images
-- ----------------------------
DROP TABLE IF EXISTS `content_images`;
CREATE TABLE `content_images`  (
  `id` decimal(65, 30) NOT NULL,
  `link_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link_img_backup` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ggdrive_id` bigint(20) NULL DEFAULT NULL,
  `chapter_id` bigint(20) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content_images
-- ----------------------------
INSERT INTO `content_images` VALUES (1.000000000000000000000000000000, 'https://lh3.googleusercontent.com/d/1UMb5m6D7CIJLnkeuvQrzq6M68D7xUxQI=w1000-rw', 'https://lh3.googleusercontent.com/d/1UMb5m6D7CIJLnkeuvQrzq6M68D7xUxQI=w1000-rw', NULL, 1, NULL, NULL, '2024-09-07 23:18:34', '2024-09-07 23:18:34');
INSERT INTO `content_images` VALUES (2.000000000000000000000000000000, 'https://lh3.googleusercontent.com/d/1-_O9f6NIbzxSd6WaW2jDAqnLPHpgx7R9=w1000-rw', 'https://lh3.googleusercontent.com/d/1-_O9f6NIbzxSd6WaW2jDAqnLPHpgx7R9=w1000-rw', NULL, 1, NULL, NULL, '2024-09-07 23:18:34', '2024-09-07 23:18:34');
INSERT INTO `content_images` VALUES (3.000000000000000000000000000000, 'https://lh3.googleusercontent.com/d/1ej0osSe4GuFWz5K9qcF3SI8JzhwhdxuG=w1000-rw', 'https://lh3.googleusercontent.com/d/1ej0osSe4GuFWz5K9qcF3SI8JzhwhdxuG=w1000-rw', NULL, 1, NULL, NULL, '2024-09-07 23:18:34', '2024-09-07 23:18:34');
INSERT INTO `content_images` VALUES (4.000000000000000000000000000000, 'https://lh3.googleusercontent.com/d/1YFH-scvuTUF2iJFA4PRBbjVryOnv_aOl=w1000-rw', 'https://lh3.googleusercontent.com/d/1YFH-scvuTUF2iJFA4PRBbjVryOnv_aOl=w1000-rw', NULL, 2, NULL, NULL, '2024-09-07 23:18:50', '2024-09-07 23:18:50');
INSERT INTO `content_images` VALUES (5.000000000000000000000000000000, 'https://lh3.googleusercontent.com/d/1QgMeauFjQZaf7jqeKC1qJveX6rjlkyPg=w1000-rw', 'https://lh3.googleusercontent.com/d/1QgMeauFjQZaf7jqeKC1qJveX6rjlkyPg=w1000-rw', NULL, 2, NULL, NULL, '2024-09-07 23:18:50', '2024-09-07 23:18:50');
INSERT INTO `content_images` VALUES (6.000000000000000000000000000000, 'https://lh3.googleusercontent.com/d/1SVqNpNyCRBdsBsuflc3REaLj1tklUUx8=w1000-rw', 'https://lh3.googleusercontent.com/d/1SVqNpNyCRBdsBsuflc3REaLj1tklUUx8=w1000-rw', NULL, 2, NULL, NULL, '2024-09-07 23:18:50', '2024-09-07 23:18:50');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` decimal(65, 30) NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `connection` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `queue` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `failed_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for genres
-- ----------------------------
DROP TABLE IF EXISTS `genres`;
CREATE TABLE `genres`  (
  `id` decimal(65, 30) NOT NULL,
  `genre_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `genres_genre_code_unique`(`genre_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of genres
-- ----------------------------
INSERT INTO `genres` VALUES (1.000000000000000000000000000000, 'g1', 'Mới cập nhật', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for hashtags
-- ----------------------------
DROP TABLE IF EXISTS `hashtags`;
CREATE TABLE `hashtags`  (
  `id` decimal(65, 30) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hashtags
-- ----------------------------
INSERT INTO `hashtags` VALUES (1.000000000000000000000000000000, 'Action', 'action', NULL, NULL, '2024-04-13 04:03:06', '2024-04-13 04:03:06');
INSERT INTO `hashtags` VALUES (2.000000000000000000000000000000, 'Manhua', 'manhua', NULL, NULL, '2024-04-13 04:03:18', '2024-04-13 04:03:18');
INSERT INTO `hashtags` VALUES (3.000000000000000000000000000000, 'Manhwa', 'manhwa', NULL, NULL, '2024-04-13 04:03:26', '2024-04-13 04:03:26');
INSERT INTO `hashtags` VALUES (4.000000000000000000000000000000, 'Fantasy', 'fantasy', NULL, NULL, '2024-04-13 04:03:41', '2024-04-13 04:03:41');
INSERT INTO `hashtags` VALUES (5.000000000000000000000000000000, 'Supernatural', 'supernatural', NULL, 1, '2024-04-14 08:12:38', '2024-04-29 12:51:54');
INSERT INTO `hashtags` VALUES (6.000000000000000000000000000000, 'Mystery', 'mystery', NULL, NULL, '2024-04-14 08:44:48', '2024-04-14 08:44:48');
INSERT INTO `hashtags` VALUES (7.000000000000000000000000000000, 'Adventure', 'adventure', NULL, NULL, '2024-04-14 09:08:11', '2024-04-14 09:08:11');
INSERT INTO `hashtags` VALUES (8.000000000000000000000000000000, 'Historical', 'historical', NULL, NULL, '2024-04-14 09:09:36', '2024-04-14 09:09:36');
INSERT INTO `hashtags` VALUES (9.000000000000000000000000000000, 'Vật Phẩm/Thăng Cấp', 'vat-phamthang-cap', NULL, NULL, '2024-04-14 22:54:28', '2024-04-14 22:54:28');
INSERT INTO `hashtags` VALUES (10.000000000000000000000000000000, 'Hành Động/Võ Thuật', 'hanh-dongvo-thuat', NULL, NULL, '2024-04-14 23:19:27', '2024-04-14 23:19:27');
INSERT INTO `hashtags` VALUES (11.000000000000000000000000000000, 'Trùng Sinh', 'trung-sinh', 1, 1, '2024-04-25 14:16:34', '2024-04-25 14:16:43');
INSERT INTO `hashtags` VALUES (12.000000000000000000000000000000, 'Xuyên Không', 'xuyen-khong', 1, 1, '2024-04-25 15:45:51', '2024-04-25 15:45:51');
INSERT INTO `hashtags` VALUES (13.000000000000000000000000000000, 'Học Đường', 'hoc-duong', 1, 1, '2024-04-27 14:46:59', '2024-04-27 14:46:59');
INSERT INTO `hashtags` VALUES (14.000000000000000000000000000000, 'Drama', 'drama', 1, 1, '2024-04-27 21:04:28', '2024-04-27 21:04:28');
INSERT INTO `hashtags` VALUES (15.000000000000000000000000000000, 'Psychological', 'psychological', 1, 1, '2024-04-29 12:51:22', '2024-04-29 12:51:22');
INSERT INTO `hashtags` VALUES (16.000000000000000000000000000000, 'Comedy', 'comedy', 1, 1, '2024-04-29 12:56:11', '2024-04-29 12:56:11');
INSERT INTO `hashtags` VALUES (17.000000000000000000000000000000, 'Shounen', 'shounen', 1, 1, '2024-04-29 12:56:28', '2024-04-29 12:56:28');
INSERT INTO `hashtags` VALUES (18.000000000000000000000000000000, 'School Life', 'school-life', 1, 1, '2024-04-29 15:25:20', '2024-04-29 15:25:20');
INSERT INTO `hashtags` VALUES (19.000000000000000000000000000000, 'Webtoon', 'webtoon', 1, 1, '2024-05-04 22:12:45', '2024-05-04 22:12:45');
INSERT INTO `hashtags` VALUES (20.000000000000000000000000000000, 'Horror', 'horror', 1, 1, '2024-05-04 22:15:02', '2024-05-04 22:15:02');
INSERT INTO `hashtags` VALUES (21.000000000000000000000000000000, 'Mature', 'mature', 1, 1, '2024-05-23 17:32:37', '2024-05-23 17:32:37');
INSERT INTO `hashtags` VALUES (22.000000000000000000000000000000, 'Psychological', 'psychological-1', 1, 1, '2024-05-23 17:32:54', '2024-05-23 17:32:54');
INSERT INTO `hashtags` VALUES (23.000000000000000000000000000000, 'Seinen', 'seinen', 1, 1, '2024-05-23 17:33:13', '2024-05-23 17:33:13');

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`  (
  `id` decimal(65, 30) NOT NULL,
  `number_like` int(11) NOT NULL,
  `chapter_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of likes
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` bigint(20) NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_03_28_163459_create_comics_table', 1);
INSERT INTO `migrations` VALUES (6, '2024_03_28_163541_create_artists_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_03_28_163552_create_publishers_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_03_28_163602_create_authors_table', 1);
INSERT INTO `migrations` VALUES (9, '2024_03_28_163720_create_summary_contents_table', 1);
INSERT INTO `migrations` VALUES (10, '2024_03_28_163733_create_views_table', 1);
INSERT INTO `migrations` VALUES (11, '2024_03_28_163742_create_likes_table', 1);
INSERT INTO `migrations` VALUES (12, '2024_03_28_163753_create_content_images_table', 1);
INSERT INTO `migrations` VALUES (13, '2024_03_28_164247_create_genres_table', 1);
INSERT INTO `migrations` VALUES (14, '2024_03_28_164311_create_chapters_table', 1);
INSERT INTO `migrations` VALUES (15, '2024_03_28_164332_create_taggeds_table', 1);
INSERT INTO `migrations` VALUES (16, '2024_03_28_164358_create_hashtags_table', 1);
INSERT INTO `migrations` VALUES (17, '2024_03_29_045046_add_col_chapter_name_chapters_table', 1);
INSERT INTO `migrations` VALUES (18, '2024_03_29_050452_add_col_chapter_id_content_images_table', 1);
INSERT INTO `migrations` VALUES (19, '2024_03_29_152019_add_col_link_bg_comics_table', 1);
INSERT INTO `migrations` VALUES (20, '2024_03_31_111742_add_col_link_small_icon_chapters_table', 1);
INSERT INTO `migrations` VALUES (21, '2024_04_03_104554_change_col_content_summary_contents_table', 1);
INSERT INTO `migrations` VALUES (22, '2024_04_03_122446_add_col_slug_hashtags_table', 1);
INSERT INTO `migrations` VALUES (23, '2024_04_04_153051_change_col_comics_table', 1);
INSERT INTO `migrations` VALUES (24, '2024_04_04_163051_change_col_status_chapters_table', 1);
INSERT INTO `migrations` VALUES (25, '2024_04_05_120348_add_col_link_comic_small_name_comics_table', 1);
INSERT INTO `migrations` VALUES (26, '2024_04_05_152616_add_col_link_banner_comics_table', 1);
INSERT INTO `migrations` VALUES (27, '2024_04_07_035440_add_col_ggdrive_id_comics_table', 1);
INSERT INTO `migrations` VALUES (28, '2024_04_07_035509_add_col_ggdrive_id_content_images_table', 1);
INSERT INTO `migrations` VALUES (29, '2024_04_09_080413_create_traffics_table', 1);
INSERT INTO `migrations` VALUES (30, '2024_04_09_163051_change_col_link_content_images_table', 1);
INSERT INTO `migrations` VALUES (31, '2024_04_17_234724_add_col_is_main_tag_taggeds_table', 1);
INSERT INTO `migrations` VALUES (32, '2024_04_23_135455_add_col_link_video_banner_comics_table', 1);
INSERT INTO `migrations` VALUES (33, '2024_04_25_205824_add_col_link_video_banner_2_comics_table', 1);
INSERT INTO `migrations` VALUES (34, '2024_04_27_190840_add_col_slug_comics_table', 1);
INSERT INTO `migrations` VALUES (35, '2024_04_27_190852_add_col_slug_chapters_table', 1);
INSERT INTO `migrations` VALUES (36, '2024_06_01_235954_add_cols_ex_id_comics_table', 1);
INSERT INTO `migrations` VALUES (37, '2024_06_02_000028_add_cols_ex_id_content_images_table', 1);
INSERT INTO `migrations` VALUES (38, '2024_06_02_000052_add_cols_ex_id_chapters_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` decimal(65, 30) NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tokenable_id` decimal(65, 30) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `abilities` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `last_used_at` datetime NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for publishers
-- ----------------------------
DROP TABLE IF EXISTS `publishers`;
CREATE TABLE `publishers`  (
  `id` decimal(65, 30) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of publishers
-- ----------------------------

-- ----------------------------
-- Table structure for summary_contents
-- ----------------------------
DROP TABLE IF EXISTS `summary_contents`;
CREATE TABLE `summary_contents`  (
  `id` decimal(65, 30) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comic_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of summary_contents
-- ----------------------------
INSERT INTO `summary_contents` VALUES (1.000000000000000000000000000000, 'Tin nhanh Việt Nam và thế giới hôm nay, liên tục cập nhật tin tức online 24h từ các báo và trang tin điện tử hàng đầu', 2, NULL, NULL, '2024-09-07 23:18:17', '2024-09-07 23:18:17');

-- ----------------------------
-- Table structure for taggeds
-- ----------------------------
DROP TABLE IF EXISTS `taggeds`;
CREATE TABLE `taggeds`  (
  `id` decimal(65, 30) NOT NULL,
  `comic_id` bigint(20) NOT NULL,
  `hashtag_id` bigint(20) NOT NULL,
  `is_main_tag` smallint(6) NULL DEFAULT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of taggeds
-- ----------------------------
INSERT INTO `taggeds` VALUES (1.000000000000000000000000000000, 2, 4, 1, NULL, NULL, '2024-09-07 23:18:17', '2024-09-07 23:18:17');
INSERT INTO `taggeds` VALUES (2.000000000000000000000000000000, 2, 6, 0, NULL, NULL, '2024-09-07 23:18:17', '2024-09-07 23:18:17');
INSERT INTO `taggeds` VALUES (3.000000000000000000000000000000, 2, 7, 0, NULL, NULL, '2024-09-07 23:18:17', '2024-09-07 23:18:17');

-- ----------------------------
-- Table structure for traffics
-- ----------------------------
DROP TABLE IF EXISTS `traffics`;
CREATE TABLE `traffics`  (
  `id` decimal(65, 30) NOT NULL,
  `visitor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `visits` bigint(20) NOT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of traffics
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` decimal(65, 30) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email_verified_at` datetime NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1.000000000000000000000000000000, 'admin', 'asd@asd.asd', NULL, '$2y$10$CrxpNnWKJlj7DQTI8aK9ZexM6JvRknw6vbwS/nHtQfWig3WAyEN4W', NULL, '2024-09-07 23:03:50', '2024-09-07 23:03:50');

-- ----------------------------
-- Table structure for views
-- ----------------------------
DROP TABLE IF EXISTS `views`;
CREATE TABLE `views`  (
  `id` decimal(65, 30) NOT NULL,
  `number_view` int(11) NOT NULL,
  `chapter_id` bigint(20) NOT NULL,
  `created_by` bigint(20) NULL DEFAULT NULL,
  `updated_by` bigint(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of views
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
