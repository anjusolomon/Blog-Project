-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2018 at 06:21 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djangoproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add posts', 7, 'add_posts'),
(26, 'Can change posts', 7, 'change_posts'),
(27, 'Can delete posts', 7, 'delete_posts'),
(28, 'Can view posts', 7, 'view_posts'),
(29, 'Can add profile', 8, 'add_profile'),
(30, 'Can change profile', 8, 'change_profile'),
(31, 'Can delete profile', 8, 'delete_profile'),
(32, 'Can view profile', 8, 'view_profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$ACIBLdmK0QS8$BLW+dPoX+ihy3ile2DSiwd+ra/XOqIxfvKLc7OOGSPA=', '2018-11-01 17:05:35.352230', 1, 'anju', '', '', 'anju@gmail.com', 1, 1, '2018-10-16 16:45:13.325599'),
(5, 'pbkdf2_sha256$120000$Z0FXUv61HdGp$L3W0PxZzNySVgjvHIiHM+jqgMORde8nfwpEMCQTSivk=', NULL, 0, 'sneha', '', '', 'sneha@gmail.com', 0, 1, '2018-10-29 18:03:02.837308'),
(12, 'pbkdf2_sha256$120000$2qXqLyTVj3bq$EgW5zxmYb94AKO5klJ8pOYIJz8I0CYEb5bSXJiUuXTI=', '2018-11-01 16:10:31.307207', 0, 'newuser', '', '', 'admin@gmail.com', 0, 1, '2018-11-01 16:08:11.487611'),
(13, 'pbkdf2_sha256$120000$px2J9Yjj2rI3$CmCvYAYZNuroy1E/VClvh9Tn7d9YGZpOmNEill5XWGE=', '2018-11-01 16:59:16.091826', 0, 'anjusolomon', '', '', 'aaanjujose66@gmail.com', 0, 1, '2018-11-01 16:16:24.727413');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-10-17 17:36:01.058129', '1', 'Posts object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2018-10-17 17:52:47.082498', '1', 'post1', 2, '[{\"changed\": {\"fields\": [\"body\"]}}]', 7, 1),
(3, '2018-10-17 17:58:21.903073', '2', 'post 2', 1, '[{\"added\": {}}]', 7, 1),
(4, '2018-10-18 16:42:39.533601', '2', 'post 2', 2, '[]', 7, 1),
(5, '2018-10-18 16:48:24.181081', '1', 'post1', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 7, 1),
(6, '2018-10-23 18:17:47.113492', '2', 'sneha', 1, '[{\"added\": {}}]', 4, 1),
(7, '2018-10-23 18:22:11.680701', '3', 'post 3', 1, '[{\"added\": {}}]', 7, 1),
(8, '2018-10-23 18:22:36.565461', '2', 'sneha', 3, '', 4, 1),
(9, '2018-10-25 17:26:43.731892', '3', 'post 3', 1, '[{\"added\": {}}]', 7, 1),
(10, '2018-10-29 17:38:04.651289', '4', 'jose', 2, '[{\"changed\": {\"fields\": [\"is_superuser\"]}}]', 4, 1),
(11, '2018-10-29 17:38:20.821144', '4', 'jose', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1),
(12, '2018-10-29 17:38:36.103071', '4', 'jose', 2, '[{\"changed\": {\"fields\": [\"is_staff\"]}}]', 4, 1),
(13, '2018-10-29 18:05:22.726683', '1', 'post1', 2, '[{\"changed\": {\"fields\": [\"author\"]}}]', 7, 1),
(14, '2018-10-29 18:05:34.893464', '2', 'post 2', 2, '[{\"changed\": {\"fields\": [\"author\", \"picture\"]}}]', 7, 1),
(15, '2018-10-29 18:05:50.479645', '3', 'post 3', 2, '[{\"changed\": {\"fields\": [\"author\", \"picture\"]}}]', 7, 1),
(16, '2018-10-29 18:06:41.351123', '1', 'post1', 2, '[{\"changed\": {\"fields\": [\"picture\"]}}]', 7, 1),
(17, '2018-10-29 18:07:24.658340', '1', 'Blog 1', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 7, 1),
(18, '2018-10-29 18:07:32.076459', '2', 'Blog 2', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 7, 1),
(19, '2018-10-29 18:07:42.410623', '3', 'Blog 3', 2, '[{\"changed\": {\"fields\": [\"title\"]}}]', 7, 1),
(20, '2018-10-31 16:31:24.791377', '1', 'anju Profile', 1, '[{\"added\": {}}]', 8, 1),
(21, '2018-10-31 17:19:06.382141', '1', 'anju Profile', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(22, '2018-10-31 17:20:22.587442', '1', 'anju Profile', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 8, 1),
(23, '2018-10-31 18:09:59.419585', '1', 'jose Profile', 2, '[{\"changed\": {\"fields\": [\"user\"]}}]', 8, 1),
(24, '2018-10-31 18:23:12.009902', '2', 'anju Profile', 1, '[{\"added\": {}}]', 8, 1),
(25, '2018-10-31 18:23:26.396195', '1', 'jose Profile', 2, '[]', 8, 1),
(26, '2018-10-31 18:23:35.853693', '2', 'anju Profile', 2, '[]', 8, 1),
(27, '2018-10-31 18:23:52.216897', '3', 'newadmin Profile', 1, '[{\"added\": {}}]', 8, 1),
(28, '2018-10-31 18:24:53.173231', '6', 'charu', 3, '', 4, 1),
(29, '2018-10-31 18:24:53.223519', '4', 'jose', 3, '', 4, 1),
(30, '2018-10-31 18:24:53.272244', '7', 'lulu', 3, '', 4, 1),
(31, '2018-10-31 18:24:53.322370', '3', 'newadmin', 3, '', 4, 1),
(32, '2018-10-31 18:26:01.569560', '8', 'charu', 1, '[{\"added\": {}}]', 4, 1),
(33, '2018-11-01 15:56:10.049843', '9', 'admin', 3, '', 4, 1),
(34, '2018-11-01 15:56:10.155731', '8', 'charu', 3, '', 4, 1),
(35, '2018-11-01 15:56:10.221282', '10', 'jose', 3, '', 4, 1),
(36, '2018-11-01 15:56:10.387048', '11', 'newadmin', 3, '', 4, 1),
(37, '2018-11-01 16:10:15.080565', '3', 'newuser Profile', 1, '[{\"added\": {}}]', 8, 1),
(38, '2018-11-01 16:13:15.954873', '2', 'nicy', 3, '', 4, 1),
(39, '2018-11-01 16:17:28.126332', '4', 'anjusolomon Profile', 1, '[{\"added\": {}}]', 8, 1),
(40, '2018-11-01 17:07:40.366605', '1', 'Blog 1', 2, '[]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'posts', 'posts'),
(6, 'sessions', 'session'),
(8, 'users', 'profile');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-10-16 16:41:54.009049'),
(2, 'auth', '0001_initial', '2018-10-16 16:42:02.140816'),
(3, 'admin', '0001_initial', '2018-10-16 16:42:05.235641'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-10-16 16:42:05.288877'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-10-16 16:42:05.347922'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-10-16 16:42:06.529068'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-10-16 16:42:07.384646'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-10-16 16:42:08.227263'),
(9, 'auth', '0004_alter_user_username_opts', '2018-10-16 16:42:08.305810'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-10-16 16:42:08.937110'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-10-16 16:42:09.200876'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-10-16 16:42:09.255524'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-10-16 16:42:09.935023'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-10-16 16:42:10.685046'),
(15, 'sessions', '0001_initial', '2018-10-16 16:42:11.218307'),
(16, 'posts', '0001_initial', '2018-10-17 16:50:14.639825'),
(17, 'posts', '0002_posts_picture', '2018-10-17 17:18:24.110326'),
(18, 'posts', '0003_auto_20181023_1121', '2018-10-23 18:21:27.408122'),
(19, 'users', '0001_initial', '2018-10-31 16:25:30.618438');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0pm3nt1ap8ec48t1a4bou3hy8nai2eoq', 'MTc0OTllMWUzN2M3NjI2NDY1MjI3ZWNiOWU4M2FkMjFmMmQ4ZjgzZjp7fQ==', '2018-11-13 17:59:21.729190'),
('3y6b3kqg18n9k9e7r7ihog3oh5eyeg35', 'MTc0OTllMWUzN2M3NjI2NDY1MjI3ZWNiOWU4M2FkMjFmMmQ4ZjgzZjp7fQ==', '2018-11-13 17:58:26.042077');

-- --------------------------------------------------------

--
-- Table structure for table `posts_posts`
--

CREATE TABLE `posts_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_posts`
--

INSERT INTO `posts_posts` (`id`, `title`, `body`, `created_at`, `picture`, `author_id`) VALUES
(1, 'Blog 1', 'Hi this is my first post!!!', '2018-10-17 10:33:27.000000', 'posts/images/1.jpg', 1),
(3, 'Blog 3', 'This is my post 3.', '2018-10-25 10:25:59.000000', 'posts/images/3.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`id`, `image`, `user_id`) VALUES
(2, 'profile_pics/3_OOj5opj.jpg', 1),
(3, 'profile_pics/default.jpg', 12),
(4, 'profile_pics/default.jpg', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `posts_posts`
--
ALTER TABLE `posts_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_posts_author_id_6063ccbf_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts_posts`
--
ALTER TABLE `posts_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `posts_posts`
--
ALTER TABLE `posts_posts`
  ADD CONSTRAINT `posts_posts_author_id_6063ccbf_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
