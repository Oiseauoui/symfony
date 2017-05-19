-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 18 2017 г., 13:46
-- Версия сервера: 5.7.16
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `aqua_note`
--

-- --------------------------------------------------------

--
-- Структура таблицы `genus`
--

CREATE TABLE `genus` (
  `id` int(11) NOT NULL,
  `sub_family_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `species_count` int(11) NOT NULL,
  `fun_fact` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_published` tinyint(1) NOT NULL,
  `first_discovered_at` date NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `genus`
--

INSERT INTO `genus` (`id`, `sub_family_id`, `name`, `species_count`, `fun_fact`, `is_published`, `first_discovered_at`, `slug`) VALUES
(1, 6, 'Hippocampus', 807, 'Recusandae asperiores accusamus nihil repellat vero omnis voluptates.', 1, '1978-10-29', 'hippocampus'),
(2, 7, 'Carcharodon', 65222, 'Qui recusandae totam nulla quam ipsam.', 1, '1994-11-08', 'carcharodon'),
(3, 3, 'Orcinus', 55931, 'Voluptas aut laudantium sit repudiandae esse perspiciatis dignissimos.', 1, '2010-12-23', 'orcinus'),
(4, 10, 'Aurelia', 79759, 'Velit porro ut velit soluta.', 1, '2002-10-20', 'aurelia'),
(5, 6, 'Asterias', 87652, 'Saepe eum sint dolorem delectus enim ipsum inventore.', 1, '2001-10-08', 'asterias'),
(6, 10, 'Balaena', 41179, 'Suscipit a deserunt laudantium quibusdam enim nostrum.', 1, '1976-09-25', 'balaena'),
(7, 4, 'Amphiprion', 21198, 'Velit reiciendis aperiam et fuga.', 0, '1986-03-14', 'amphiprion'),
(8, 8, 'Orcinus', 69949, 'Ducimus temporibus modi saepe architecto unde non dicta.', 0, '1983-11-29', 'orcinus-1'),
(9, 2, 'Eumetopias', 71605, 'Magni cupiditate sit vitae voluptas.', 0, '1980-01-11', 'eumetopias'),
(10, 10, 'Paralithodes', 26628, 'Quos qui illo error nihil laborum vero.', 0, '1997-12-02', 'paralithodes');

-- --------------------------------------------------------

--
-- Структура таблицы `genus_note`
--

CREATE TABLE `genus_note` (
  `id` int(11) NOT NULL,
  `genus_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_avatar_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `genus_note`
--

INSERT INTO `genus_note` (`id`, `genus_id`, `username`, `user_avatar_filename`, `note`, `create_at`) VALUES
(1, 10, 'dee89', 'ryan.jpeg', 'Eligendi quos culpa ut ab voluptas sed a nam. Sint autem inventore aut officia aut aut blanditiis. Ducimus eos odit amet et est ut eum.', '2017-01-20 01:59:28'),
(2, 2, 'karley24', 'ryan.jpeg', 'Aut nemo fuga est placeat rerum ut et. Ex eveniet facere sunt quia. Aut nam et eum architecto fugit repellendus illo veritatis. Ex esse veritatis voluptate vel possimus.', '2017-04-05 15:46:49'),
(3, 10, 'marvin.zelma', 'leanna.jpeg', 'Cum culpa rem aut rerum. Est rem dicta voluptas fuga. Reiciendis qui architecto fugiat nemo omnis.', '2016-11-19 19:50:28'),
(4, 5, 'dledner', 'ryan.jpeg', 'Optio provident non incidunt magnam molestias et quibusdam. Ab quo voluptatum quia ipsum voluptatibus est accusantium eveniet.', '2017-05-14 02:04:23'),
(5, 3, 'dbrakus', 'leanna.jpeg', 'Ducimus aperiam nesciunt est quia. Minima sunt qui similique ut culpa natus consequatur. Sit et nihil ut porro amet laborum iure molestiae.', '2017-04-23 20:52:53'),
(6, 8, 'junius.mayer', 'leanna.jpeg', 'Sequi quia quasi quae sint saepe numquam tempora et. Aperiam natus ut doloribus magni quasi impedit aperiam. Similique ad sed architecto quod nulla. Voluptas quibusdam inventore esse harum accusantium rerum nulla.', '2017-01-05 02:19:03'),
(7, 2, 'damion37', 'ryan.jpeg', 'Nesciunt omnis sit nisi recusandae. Molestias sit id labore. Ut voluptatem laudantium perferendis eveniet quam vero. Corrupti omnis temporibus maxime sint suscipit laudantium.', '2017-04-01 09:24:04'),
(8, 1, 'qrunolfsdottir', 'leanna.jpeg', 'Non explicabo et neque itaque ex quaerat ut aut. Consequatur non rerum in cupiditate voluptas molestiae fuga. Cum non qui quaerat cupiditate incidunt id sunt.', '2016-12-18 12:10:47'),
(9, 9, 'hector.russel', 'leanna.jpeg', 'Ab in hic molestiae odio sed vitae maiores. Beatae reprehenderit exercitationem corrupti dolorem reprehenderit. Ducimus omnis molestiae consequatur sint consequatur est qui doloremque.', '2016-11-24 21:02:02'),
(10, 5, 'angeline13', 'leanna.jpeg', 'Voluptatibus perspiciatis quae sapiente quia suscipit doloribus cupiditate dolorem. Libero quas magni rerum consequatur laudantium nisi quo. Rerum esse eveniet debitis omnis voluptatem voluptatem et eaque. Et praesentium est velit molestiae porro.', '2016-12-11 11:17:06'),
(11, 10, 'rmiller', 'ryan.jpeg', 'Eius similique dolore consequatur et ipsam. Saepe dolor in perspiciatis sit consectetur temporibus voluptate.', '2017-03-09 08:19:09'),
(12, 7, 'pwolff', 'ryan.jpeg', 'Dicta molestiae asperiores consequuntur sit repellendus. Aliquam doloremque et reprehenderit nesciunt eum non. Esse et ut quis corporis voluptate ullam. Non ratione eaque possimus quia optio explicabo et.', '2017-05-18 07:43:16'),
(13, 2, 'jayne55', 'ryan.jpeg', 'Velit voluptatibus in laudantium voluptatem. Vel dignissimos et dolorem doloremque quam quia voluptatem. Ad in maiores nisi eius quibusdam sapiente quia.', '2017-05-06 18:44:26'),
(14, 2, 'hayes.destiney', 'ryan.jpeg', 'At ut non eos sed amet. Vitae enim sapiente occaecati natus assumenda reiciendis. Et laudantium vel nisi ea itaque est. Nihil beatae omnis voluptatibus quae sit veniam.', '2017-04-14 12:22:11'),
(15, 3, 'rwalker', 'leanna.jpeg', 'Neque deleniti totam aut nisi. Omnis voluptatem velit nesciunt eligendi eos sint. Voluptates quo incidunt omnis aut enim nihil.', '2017-05-17 22:17:33'),
(16, 4, 'jamar69', 'ryan.jpeg', 'Autem nihil esse repudiandae pariatur. Assumenda error consequatur fugit ad iste.', '2017-03-31 07:57:13'),
(17, 9, 'rubye68', 'leanna.jpeg', 'Doloremque fuga labore qui et. Hic minus et omnis porro voluptatibus enim. Reprehenderit magni fugiat consequatur officiis velit.', '2016-11-18 18:03:26'),
(18, 3, 'angus65', 'leanna.jpeg', 'Nulla totam eos omnis inventore perferendis voluptatem nisi. Consequatur ullam voluptas et tempora. Corporis excepturi sint dolores quaerat odit quia nisi accusantium.', '2017-02-28 07:22:39'),
(19, 1, 'hboyer', 'ryan.jpeg', 'Sapiente ut qui quidem explicabo optio amet velit aut. Iure sed alias asperiores perspiciatis deserunt omnis inventore mollitia. Id in id porro molestiae in maxime.', '2017-05-03 15:16:06'),
(20, 3, 'muhammad13', 'leanna.jpeg', 'Odio modi consequatur dicta ipsa temporibus sit facere. Doloremque odio ad asperiores quaerat eius accusamus. Dolorem earum ut consequatur facilis molestias quo.', '2017-02-26 03:55:44'),
(21, 1, 'wintheiser.clementine', 'leanna.jpeg', 'Quia et et dolorum quos aliquam. Accusantium quidem ut eius a corrupti totam placeat delectus. Earum officiis sed autem ut voluptatem. Quod alias iste similique aut tempore pariatur et.', '2017-03-19 21:29:26'),
(22, 6, 'leuschke.allen', 'ryan.jpeg', 'Beatae neque eum est molestiae. Laboriosam dolor odit omnis.', '2017-01-25 23:20:10'),
(23, 10, 'jennings08', 'leanna.jpeg', 'Nesciunt fugit ea accusantium temporibus qui ad est et. Cum eius voluptas numquam quam occaecati culpa. In laudantium omnis et. Laborum cupiditate corporis aliquid aut cumque consequuntur non qui.', '2017-03-23 02:49:55'),
(24, 6, 'freida.rempel', 'ryan.jpeg', 'Et necessitatibus tenetur doloremque iusto quibusdam fuga. Voluptas iure rerum voluptas. Eius commodi odio ut aliquid et sit enim.', '2017-02-18 17:34:11'),
(25, 8, 'terrell72', 'leanna.jpeg', 'Officiis eos suscipit facilis vel. Modi quia recusandae qui eligendi quo voluptas totam. Ab tenetur voluptatem repudiandae reiciendis cum accusamus ut et. Iste accusantium quaerat nostrum voluptas est tenetur.', '2017-02-23 09:23:15'),
(26, 9, 'gconn', 'ryan.jpeg', 'Nihil aliquid eos fugit. Quaerat quibusdam alias omnis accusamus aut dolores. Itaque doloribus qui dicta eligendi quae recusandae. Quo beatae deleniti quia molestiae alias quo quis.', '2016-11-29 07:54:08'),
(27, 9, 'kayley.turner', 'leanna.jpeg', 'Placeat reprehenderit nesciunt architecto quas. Similique consequatur nisi fuga dolores aut. Illo illum sint voluptas a aperiam. Aut qui neque minus eos fugit nostrum non.', '2017-02-17 02:28:51'),
(28, 6, 'bruen.kari', 'leanna.jpeg', 'Nam nesciunt non dolore quis et eius et. Omnis eaque pariatur non ea vel omnis. Explicabo inventore quam suscipit qui accusamus eveniet dolorem voluptatem.', '2017-03-15 18:59:06'),
(29, 1, 'iwiza', 'leanna.jpeg', 'Voluptatem eveniet consequatur sit impedit sint nam perferendis sit. Magnam ut nemo possimus qui totam iste. Harum animi et ad rerum perferendis fugiat. Facere quisquam et quod velit velit ut rem repellendus.', '2017-01-06 02:52:34'),
(30, 7, 'shawn.stracke', 'ryan.jpeg', 'Est in reprehenderit reiciendis accusamus. Quia et mollitia deleniti qui nostrum doloremque. Aut molestiae sapiente est consequatur. Tempore similique ut debitis consequatur.', '2017-04-03 19:38:26'),
(31, 1, 'bernier.marilie', 'ryan.jpeg', 'Perspiciatis quia quasi sit dolore ad. Est impedit itaque cumque officiis ut quis. Consequatur asperiores voluptatem magnam nostrum ea corrupti voluptatem. Cupiditate rerum ratione rerum repellendus ducimus.', '2017-04-20 06:16:56'),
(32, 4, 'baumbach.zechariah', 'leanna.jpeg', 'Doloremque esse dolor qui illo placeat harum voluptatem. Enim tempora voluptas ut dolorem voluptates deserunt provident. Ipsam fugiat est ipsam quia reprehenderit sint. Sed facere qui sit delectus ad iusto. Iusto autem laboriosam nulla earum eius repellat.', '2017-03-03 14:26:04'),
(33, 4, 'ahmed42', 'leanna.jpeg', 'Nobis hic rerum delectus dolorum voluptas cupiditate aut consequatur. Ullam qui ea voluptatem aut cum vitae nostrum. Maiores non omnis aut quos ut ad est quidem. Rerum voluptates laboriosam ea porro blanditiis.', '2016-12-13 06:49:51'),
(34, 6, 'nwolf', 'leanna.jpeg', 'Et et fuga recusandae voluptatem veniam enim quae voluptas. Dolore explicabo nisi a aut architecto et aut. Nam cum tempore doloremque. Aut qui perferendis praesentium cupiditate iste.', '2017-05-18 10:07:59'),
(35, 5, 'iterry', 'leanna.jpeg', 'Nihil voluptatem magnam odio impedit. Omnis consequatur ut repellendus officiis nihil reprehenderit non ut.', '2017-02-12 02:02:03'),
(36, 2, 'emilio.lesch', 'leanna.jpeg', 'Quod cupiditate culpa nisi eos cupiditate quibusdam eveniet. Provident quas omnis voluptatem quia soluta recusandae id. Aut voluptates est deleniti et accusantium nesciunt voluptas.', '2017-04-24 07:52:07'),
(37, 3, 'heather32', 'leanna.jpeg', 'Eos fugiat voluptas voluptatem consequuntur nostrum culpa. Quod voluptatem quae dignissimos sunt atque aut. Possimus accusamus sint hic ut atque expedita.', '2016-12-15 03:28:01'),
(38, 7, 'zturcotte', 'ryan.jpeg', 'Animi culpa velit dignissimos molestias. A cumque ut et rerum dolore consectetur et beatae. Nulla quisquam labore saepe perspiciatis doloremque. Unde optio accusamus magnam non ratione enim velit.', '2017-01-11 18:04:02'),
(39, 3, 'pwindler', 'leanna.jpeg', 'Qui in et quasi incidunt. Ex accusamus aut itaque nesciunt sit quidem fugit sapiente. Eveniet dolore inventore consectetur sed repellat. Vitae iure voluptatibus dolorem totam laboriosam.', '2016-12-21 10:55:52'),
(40, 1, 'von.sherwood', 'ryan.jpeg', 'Ducimus odio fuga vitae expedita. Vero animi fugiat corporis. Et officia et necessitatibus quasi.', '2017-02-08 01:01:46'),
(41, 6, 'tyson.feeney', 'ryan.jpeg', 'Sunt aliquam mollitia id repudiandae. Doloremque placeat ut esse. Aut ratione cumque commodi. Cum ratione animi maxime enim est.', '2017-02-02 20:37:08'),
(42, 3, 'zwilkinson', 'ryan.jpeg', 'Optio odio aspernatur qui dolor blanditiis suscipit. Veniam neque omnis dolor qui.', '2017-02-03 16:44:37'),
(43, 9, 'reichert.addison', 'leanna.jpeg', 'Tenetur vel quasi corporis rerum quo ut accusantium. Quibusdam quia aut culpa dolores consectetur quod doloremque. Aut cupiditate aperiam occaecati adipisci veritatis vel voluptas. Cumque sed modi odit.', '2017-02-19 05:58:35'),
(44, 6, 'pbayer', 'ryan.jpeg', 'Odio et id consequatur accusantium quia porro. Voluptates dignissimos est officiis est repudiandae est atque. Inventore sed ipsum omnis maiores esse.', '2017-03-22 13:01:31'),
(45, 2, 'bahringer.eleazar', 'leanna.jpeg', 'Voluptatem harum sed quia et. Neque voluptas est totam provident sunt. Est tempora qui minus officia.', '2017-01-09 07:05:23'),
(46, 5, 'bwaters', 'leanna.jpeg', 'Laborum dolor quasi totam qui ipsam iusto enim. Molestias amet aut qui. Et fuga velit iure consequuntur qui provident et. Veniam et adipisci libero qui qui maiores est.', '2017-02-07 17:29:56'),
(47, 5, 'mariela.funk', 'ryan.jpeg', 'Et sit enim omnis. Inventore consequatur mollitia ducimus veritatis doloribus. Labore quos saepe quia quia.', '2017-02-26 02:33:09'),
(48, 6, 'spencer13', 'leanna.jpeg', 'Sunt est possimus voluptas blanditiis et. Aut culpa reiciendis dolorum eaque accusantium exercitationem animi.', '2017-04-15 23:52:10'),
(49, 10, 'ondricka.philip', 'leanna.jpeg', 'Dolorem impedit et cumque. Qui ut non perspiciatis voluptatem voluptatem eligendi provident sed. Magni qui sint quos aut quibusdam labore. Quod est qui dolor reprehenderit.', '2016-11-19 06:52:37'),
(50, 8, 'angelina13', 'ryan.jpeg', 'Voluptas rerum quia et harum dolor quaerat. Et repellat rerum voluptas dolore explicabo vero. Fugit officiis explicabo ipsa libero sit ducimus minima. Suscipit id tempore voluptatibus recusandae et deleniti tenetur. Illo sunt possimus esse et porro consequatur totam et.', '2017-01-01 11:43:23'),
(51, 5, 'wolff.mekhi', 'leanna.jpeg', 'Repudiandae temporibus blanditiis sit maiores quo. Qui pariatur cumque hic sunt harum alias omnis. Asperiores aliquid ducimus fuga temporibus consequuntur omnis sit.', '2017-04-29 07:13:48'),
(52, 1, 'dickens.tremaine', 'ryan.jpeg', 'Repellat asperiores vitae neque optio quod et consectetur. Expedita ratione vitae qui sed ut repudiandae. Sit asperiores eum et nisi cumque et quod.', '2017-05-09 17:43:49'),
(53, 4, 'tcruickshank', 'leanna.jpeg', 'Rerum officia et neque pariatur vel. Et laborum veniam dolores dolorum ad. Et fugit eius facilis dolor fugiat dicta.', '2017-04-30 05:34:02'),
(54, 2, 'stephen88', 'leanna.jpeg', 'Omnis distinctio eum sit hic voluptatum quis. Et aliquam qui vel debitis qui ipsum perferendis. Dolorum excepturi deleniti voluptatem iure et atque aut.', '2016-12-11 12:49:30'),
(55, 2, 'paris.towne', 'ryan.jpeg', 'Non quos quia repellat expedita laudantium ducimus qui odit. Sed illo minima sit. Necessitatibus accusamus sed iure voluptatum excepturi sit.', '2017-02-15 10:15:06'),
(56, 4, 'kerluke.august', 'leanna.jpeg', 'Eveniet est voluptatem culpa dolores. Sunt occaecati est nihil vel aut. Libero quis sit qui officia nihil.', '2017-03-14 02:28:24'),
(57, 2, 'ernser.bianka', 'leanna.jpeg', 'A minus quos laudantium porro quibusdam. Suscipit quo consequatur ipsa repellendus. Quam culpa fugit molestiae consectetur aut esse libero.', '2017-04-30 07:48:22'),
(58, 9, 'keeling.ardella', 'ryan.jpeg', 'Eum nobis et et et fuga fugit. Cum esse laborum sequi. Debitis tempora aperiam nam.', '2017-01-13 01:59:20'),
(59, 1, 'omann', 'ryan.jpeg', 'Facilis sit ea quia velit. Laudantium ea et sit enim. Sunt odio aperiam tenetur rerum aut tempore.', '2016-12-19 00:04:28'),
(60, 3, 'alaina63', 'ryan.jpeg', 'Consequatur deleniti id sed veniam aut velit perferendis. Nemo nesciunt ullam fugiat maiores omnis quo. Quod voluptas quibusdam exercitationem ab. Culpa rem sunt perferendis repellendus sapiente accusamus.', '2017-04-08 23:55:17'),
(61, 3, 'kiehn.maggie', 'ryan.jpeg', 'Cumque optio qui ab quaerat consequuntur. Eaque maiores optio voluptatibus et non ab.', '2017-04-28 09:25:41'),
(62, 8, 'maggie.mcclure', 'leanna.jpeg', 'Veniam eaque et recusandae iste qui tenetur aut. Molestias sed dicta molestiae illo possimus qui. Velit dolorem facere officiis nostrum dolore nulla. Ea quo fugiat unde alias sunt rerum fuga.', '2016-12-01 00:07:04'),
(63, 7, 'isabelle.roberts', 'leanna.jpeg', 'Id reprehenderit voluptas maiores consequatur. Impedit ducimus aut voluptatum quia voluptatem est. Ea reprehenderit inventore quibusdam in eum et fuga.', '2017-01-05 03:45:40'),
(64, 7, 'ignacio18', 'ryan.jpeg', 'Magnam aut sed architecto officiis. Omnis velit ratione quia minus sint. Voluptatem sequi debitis sed ratione dolorem. Inventore repellendus voluptatum sit unde.', '2017-05-04 02:30:23'),
(65, 7, 'else.rippin', 'leanna.jpeg', 'Sequi architecto quia veniam accusantium maiores commodi qui id. Earum voluptate explicabo excepturi molestias occaecati quo culpa. Et consequatur exercitationem in corporis qui dolor.', '2016-12-21 14:14:41'),
(66, 6, 'brooklyn41', 'leanna.jpeg', 'Quae consequatur nihil est sit beatae quo. Aut laborum perspiciatis quos.', '2016-11-28 10:29:19'),
(67, 4, 'jarod.leffler', 'ryan.jpeg', 'Beatae repellendus doloremque omnis ut aut et eius et. Rerum ab et culpa voluptatem. Qui animi pariatur rerum. Corrupti id alias et qui.', '2017-04-02 21:05:37'),
(68, 3, 'koepp.linnea', 'ryan.jpeg', 'Iusto quae consequatur excepturi quia excepturi. Culpa dolorum similique a nihil. Veniam qui qui aspernatur.', '2017-02-24 07:55:33'),
(69, 7, 'erdman.mireya', 'leanna.jpeg', 'Eligendi minus aut ea. At blanditiis architecto magni deserunt ad cupiditate soluta. Impedit vel accusamus rerum.', '2017-01-26 08:24:39'),
(70, 6, 'alfred08', 'ryan.jpeg', 'Dolores ut natus et ratione voluptate. Architecto iure placeat fugiat itaque et sit est. Omnis recusandae dicta vel qui unde et. Omnis assumenda dolor enim exercitationem. Culpa voluptatibus harum id cupiditate asperiores assumenda.', '2017-05-05 07:18:21'),
(71, 8, 'stewart57', 'leanna.jpeg', 'Magni qui qui officia. Sint quia quibusdam est ratione. Et consequatur suscipit saepe quia. Nesciunt nobis aperiam facere non iure nihil quia.', '2017-03-21 23:48:22'),
(72, 5, 'vmraz', 'ryan.jpeg', 'Nihil possimus aut sit voluptas consequatur rerum sunt porro. Est excepturi alias ex consequatur qui eaque ut necessitatibus.', '2017-04-28 12:55:45'),
(73, 10, 'anastasia43', 'leanna.jpeg', 'Ut ut officia reiciendis. Voluptatem nulla molestias et minus hic. Aperiam voluptas corporis fugiat distinctio occaecati omnis illum. Odit ducimus culpa quae dolores.', '2017-02-08 20:23:35'),
(74, 6, 'gerhard.bode', 'ryan.jpeg', 'Quam aperiam blanditiis omnis corrupti hic aut qui. Minima unde enim molestiae autem id. Quo aliquid nam ex asperiores neque ea. Ut ut facilis qui sed sint. Voluptatem nostrum illum praesentium exercitationem.', '2016-12-27 17:29:19'),
(75, 2, 'darmstrong', 'ryan.jpeg', 'Nesciunt exercitationem animi libero sit. Id aliquam reprehenderit a tempora ipsam error vel.', '2017-02-10 10:07:31'),
(76, 7, 'lwill', 'ryan.jpeg', 'Dolore unde nihil ducimus rerum est similique et. Distinctio minima fugit corrupti. Accusantium excepturi soluta temporibus. Ad eum cupiditate in quaerat et enim temporibus.', '2017-04-18 23:01:31'),
(77, 2, 'eprice', 'ryan.jpeg', 'Eum natus officia laudantium recusandae aliquam deleniti rerum qui. Enim et explicabo possimus. Voluptatibus ipsum officia fugit iste. Et beatae totam repellendus.', '2017-02-22 13:25:59'),
(78, 7, 'schaden.velda', 'leanna.jpeg', 'Qui accusamus et odio explicabo quam accusamus. Sint quia fuga autem impedit perspiciatis. Illo odit id quasi illo omnis quidem. Reprehenderit commodi aut voluptas corrupti placeat odio at. Voluptatem et et ea ad.', '2017-03-13 04:04:06'),
(79, 1, 'graham.trinity', 'ryan.jpeg', 'Consequatur nulla explicabo commodi praesentium voluptatem. Non optio consequatur occaecati delectus ut amet ipsam magni. Nobis dolorem iusto odio alias. Voluptatum non ea architecto nisi nulla.', '2016-12-23 03:31:24'),
(80, 8, 'willy.brakus', 'leanna.jpeg', 'Omnis blanditiis consectetur itaque consequuntur cupiditate praesentium itaque. Reiciendis quo sapiente est adipisci quaerat voluptas. Quia molestiae magnam ea.', '2016-12-24 20:18:49'),
(81, 10, 'kaylin.halvorson', 'ryan.jpeg', 'Molestiae ipsam consequatur quaerat minima id. Veritatis aspernatur neque et quia saepe. Inventore laborum aut commodi et voluptates inventore dolor assumenda. Minus vitae odit magnam omnis.', '2016-11-23 05:37:03'),
(82, 10, 'blockman', 'ryan.jpeg', 'Ad omnis explicabo expedita sed et quis aut facilis. Eum et id perferendis asperiores et reprehenderit rem dolorum. Sed nisi aut accusamus aut.', '2016-12-15 06:53:16'),
(83, 2, 'therman', 'ryan.jpeg', 'Dolorem dolor perspiciatis sit nostrum eum omnis. Doloremque beatae iure necessitatibus qui. Quasi rerum veritatis veritatis nam et quam. Voluptatem qui ut itaque iusto consequuntur.', '2017-05-12 01:57:18'),
(84, 5, 'jlebsack', 'ryan.jpeg', 'Facere sunt dolor omnis. Et fugiat animi veniam ad animi. Impedit voluptatum qui iure laboriosam laborum.', '2017-05-16 17:38:01'),
(85, 4, 'hartmann.raphaelle', 'leanna.jpeg', 'Alias itaque esse sint nisi sed. Veritatis laudantium aliquid incidunt placeat et ut dolores omnis. Accusamus iusto et quis voluptate recusandae vel. Aliquam dolor quasi eum et nihil.', '2016-12-31 06:17:19'),
(86, 3, 'cade.schamberger', 'leanna.jpeg', 'Officia sapiente nesciunt atque. Eius totam esse velit voluptas temporibus. Magnam repudiandae voluptas ut maxime qui fugiat.', '2017-03-05 01:12:10'),
(87, 3, 'mjohnston', 'leanna.jpeg', 'Non aut aut totam molestiae. Fugiat doloremque ab unde a cumque culpa voluptatum. Facere totam similique voluptatum mollitia ab quo. Rerum accusantium laborum veniam iure doloremque possimus.', '2017-03-25 14:14:17'),
(88, 2, 'zack51', 'leanna.jpeg', 'Molestiae aliquam aut voluptate velit et et reprehenderit officia. In et aut hic tempore maxime nemo rerum. Dolores molestias earum quos blanditiis eos ipsam. Non ut ex in nihil quidem est.', '2017-04-17 11:46:58'),
(89, 3, 'denesik.audreanne', 'leanna.jpeg', 'Magni ea nemo sed voluptatibus in laborum. Ratione natus perferendis fuga animi nulla possimus et. Ratione est eveniet perspiciatis et et sed. Maiores et dignissimos similique mollitia.', '2017-05-05 13:01:30'),
(90, 10, 'michale.hilpert', 'leanna.jpeg', 'Esse ullam cupiditate ut. Deserunt doloremque magnam et impedit quo. Vel deserunt eius architecto commodi eum at. Facilis inventore vero animi unde doloribus. Qui dolor vel consectetur debitis a animi.', '2017-03-20 00:39:53'),
(91, 1, 'qgreenholt', 'leanna.jpeg', 'Ut cumque laborum quod ut ducimus suscipit. Nostrum veritatis saepe ex voluptas. Neque sit numquam vel est.', '2016-12-05 02:14:13'),
(92, 10, 'nledner', 'ryan.jpeg', 'Voluptatem vel rem quaerat sunt magni aut. Vel deleniti molestias velit. Enim rerum sequi vel et nemo. Et eos vero hic quia ut adipisci.', '2017-03-14 17:50:15'),
(93, 5, 'noe83', 'leanna.jpeg', 'Suscipit voluptatem laboriosam deserunt nobis doloribus enim. Dolores qui asperiores voluptates. Delectus sapiente quo est rerum nihil sint. Ipsa id ullam ullam accusantium eveniet debitis voluptatem. Sed totam aut impedit facere rerum provident aut aut.', '2017-03-05 09:55:54'),
(94, 1, 'rigoberto.dibbert', 'ryan.jpeg', 'Eius et reprehenderit aliquam excepturi id et. Voluptate molestiae ut qui. Ex vel quod dolorem perspiciatis eos quis asperiores. Qui eaque natus qui voluptas.', '2016-12-03 21:09:55'),
(95, 8, 'edward.white', 'leanna.jpeg', 'Quas illum cum aut. Dolore doloremque unde fuga nostrum omnis dolorem.', '2016-12-03 22:33:24'),
(96, 3, 'claude92', 'leanna.jpeg', 'Cupiditate qui dolore nobis in autem. Adipisci deserunt perspiciatis ut vel. Voluptatem consequuntur voluptatem molestias possimus magnam earum non. Voluptas et et omnis est.', '2017-03-07 03:50:30'),
(97, 8, 'glenna33', 'leanna.jpeg', 'Architecto corrupti itaque ipsa tenetur. Autem consequatur consequatur perspiciatis animi.', '2016-11-27 11:44:01'),
(98, 6, 'lpfeffer', 'leanna.jpeg', 'Maxime explicabo assumenda sit repellat. Nam in pariatur vero fuga consequatur praesentium consequatur nihil. Possimus id voluptas similique.', '2017-03-25 03:47:24'),
(99, 9, 'bpagac', 'leanna.jpeg', 'Ut omnis nisi dolorem ut repellat delectus magnam. Molestiae et a accusantium tempora consequuntur est ut commodi. Doloribus fugiat repellat harum assumenda. Illo voluptatem nobis fugit inventore sed at.', '2017-04-22 17:38:51'),
(100, 3, 'xkiehn', 'leanna.jpeg', 'Ullam ullam dolor debitis quo saepe. Possimus est labore et totam adipisci et odit.', '2017-02-04 01:06:49');

-- --------------------------------------------------------

--
-- Структура таблицы `genus_scientist`
--

CREATE TABLE `genus_scientist` (
  `id` int(11) NOT NULL,
  `genus_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `years_studied` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `genus_scientist`
--

INSERT INTO `genus_scientist` (`id`, `genus_id`, `user_id`, `years_studied`) VALUES
(1, 7, 11, 5),
(2, 2, 14, 29),
(3, 1, 16, 26),
(4, 5, 16, 29),
(5, 2, 19, 17),
(6, 5, 15, 18),
(7, 10, 19, 11),
(8, 7, 17, 11),
(9, 9, 12, 16),
(10, 9, 20, 30),
(11, 1, 19, 21),
(12, 9, 11, 21),
(13, 3, 14, 28),
(14, 4, 20, 5),
(15, 7, 19, 22),
(16, 9, 11, 19),
(17, 9, 11, 13),
(18, 4, 16, 3),
(19, 4, 11, 6),
(20, 1, 19, 19),
(21, 7, 19, 4),
(22, 10, 14, 18),
(23, 6, 15, 23),
(24, 5, 14, 15),
(25, 2, 14, 15),
(26, 10, 11, 12),
(27, 3, 16, 7),
(28, 9, 16, 21),
(29, 5, 13, 24),
(30, 7, 15, 22),
(31, 4, 11, 27),
(32, 9, 17, 25),
(33, 4, 11, 15),
(34, 2, 17, 26),
(35, 10, 13, 27),
(36, 4, 19, 12),
(37, 6, 13, 5),
(38, 10, 17, 27),
(39, 9, 12, 18),
(40, 8, 12, 15),
(41, 5, 11, 12),
(42, 9, 14, 28),
(43, 3, 19, 19),
(44, 4, 16, 11),
(45, 10, 12, 23),
(46, 10, 11, 5),
(47, 5, 13, 14),
(48, 8, 18, 21),
(49, 5, 12, 7),
(50, 1, 15, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20170427200220'),
('20170430083746'),
('20170430200218'),
('20170514213231'),
('20170515122530'),
('20170518095754');

-- --------------------------------------------------------

--
-- Структура таблицы `sub_family`
--

CREATE TABLE `sub_family` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sub_family`
--

INSERT INTO `sub_family` (`id`, `name`) VALUES
(1, 'Adams'),
(2, 'Nienow'),
(3, 'Johns'),
(4, 'Kihn'),
(5, 'Dietrich'),
(6, 'West'),
(7, 'Block'),
(8, 'Hauck'),
(9, 'Roob'),
(10, 'Turner');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `is_scientist` tinyint(1) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `university_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`, `is_scientist`, `first_name`, `last_name`, `avatar_uri`, `university_name`) VALUES
(1, 'weaverryan+1@gmail.com', '$2y$13$j8490Xl9I5yCWj8PN8tl0uhiVRRISr08NXU/e3khjKJ2P2wURI7GC', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?98239', NULL),
(2, 'weaverryan+2@gmail.com', '$2y$13$smp88E.TY1Pu9KPAT.VNm.aW0pCddhydkdLW7iCN6wPjK/aKSYK6m', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?31778', NULL),
(3, 'weaverryan+3@gmail.com', '$2y$13$xYrzRGr3i/8OnQsXRZGCKeJ9bt6pDpIqCcqCXjGCq2SwmjKn0Ok0e', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?98572', NULL),
(4, 'weaverryan+4@gmail.com', '$2y$13$kmHR76iOzSa3MPHy6CawGeuqKtkYL09aKnph1RjgIPTW60G6mhEBO', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?41817', NULL),
(5, 'weaverryan+5@gmail.com', '$2y$13$l6LlfW1Nr0myQrjaD0kIpOc/PQZM4L8M.W3ZYtr7oPttNhmPnRC8u', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?23221', NULL),
(6, 'weaverryan+6@gmail.com', '$2y$13$tsO6rKHTsn0dqnOgm0dSSObOzSMgefQwGYp/7D3kIEyKqFdn1nzd6', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?68060', NULL),
(7, 'weaverryan+7@gmail.com', '$2y$13$1M6Jrae2iKZM.y7/u1a99uEzpvb.o3YaeJ7p4eKeA3wTl9uQ5aNA2', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?42957', NULL),
(8, 'weaverryan+8@gmail.com', '$2y$13$xzjCPBEGC70LF12H2HZySOP5t6UbpgNlhRhr4WGCMZrFRVCbGwRu2', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?72108', NULL),
(9, 'weaverryan+9@gmail.com', '$2y$13$MIWOKOAaYSE5KvR.wa5HA.9dBiV6xhvs8.q2AsIASbpZEdzFjBGT.', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?68259', NULL),
(10, 'weaverryan+10@gmail.com', '$2y$13$bVr1xUTWC.tAJUKupIUbn.T28E7fGoGUfq3gReHvbJi88ugvC4n.6', '[\"ROLE_ADMIN\"]', 0, NULL, NULL, 'http://lorempixel.com/100/100/abstract/?93030', NULL),
(11, 'aquanaut1@example.org', '$2y$13$diCxzieeglW8T2v4MOXCdea65NGAPSfyeDxHgEzD5SI/iAf77mkT.', '[]', 1, 'Melisa', 'Walter', 'http://lorempixel.com/100/100/abstract/?74155', 'Brekke-Harvey University'),
(12, 'aquanaut2@example.org', '$2y$13$fHumyS1QVNfKu.Vdzri7qedEn086XU2CgIXIYvcWuCOT3CuVWd7Uq', '[]', 1, 'Dock', 'Orn', 'http://lorempixel.com/100/100/abstract/?10300', 'Purdy-Rice University'),
(13, 'aquanaut3@example.org', '$2y$13$SIKVz5kNPKbrpwcDih.64uLr2wEG103W8.psPwofwH6KjTZK8V3ny', '[]', 1, 'Lenny', 'Padberg', 'http://lorempixel.com/100/100/abstract/?15061', 'Kuhlman, Murphy and Yost University'),
(14, 'aquanaut4@example.org', '$2y$13$EhHOwJ7HDcbr0ExBrRPYVO.3bGmm7nY.7la4N0T2x7Ra.2V2hq0o6', '[]', 1, 'Dawson', 'Littel', 'http://lorempixel.com/100/100/abstract/?25025', 'Effertz, Grady and Crist University'),
(15, 'aquanaut5@example.org', '$2y$13$M1ESBUbFTPJw2PPteU4Z7efL8zUh84RjnnUPkvrOptklIj.mhNUrG', '[]', 1, 'Carolyne', 'Orn', 'http://lorempixel.com/100/100/abstract/?29078', 'Emmerich and Sons University'),
(16, 'aquanaut6@example.org', '$2y$13$zBEzwK9AJqF6OXPV3whPIeN/15/741yhd5j5TGNI1.qNih1ZScfFu', '[]', 1, 'Julio', 'Koelpin', 'http://lorempixel.com/100/100/abstract/?35902', 'Raynor, Brekke and Gutkowski University'),
(17, 'aquanaut7@example.org', '$2y$13$Fi1e78MjIoNmsxBbHIVgJuZyJ.W/NAjvzngE5lYkp0CdRNmX5rkSe', '[]', 1, 'Cody', 'Ziemann', 'http://lorempixel.com/100/100/abstract/?87047', 'Auer-Shields University'),
(18, 'aquanaut8@example.org', '$2y$13$tTg3l3hLIvgC8wpkr3h41OShRNuG034nhPhmLjWkIcWSedwjr.odW', '[]', 1, 'Hillary', 'Murray', 'http://lorempixel.com/100/100/abstract/?89596', 'Bergnaum and Sons University'),
(19, 'aquanaut9@example.org', '$2y$13$L0fuVjtMwjFYA1kiWDohkuWMswI59xpehRfq/ZseTYXo.s91lRjOG', '[]', 1, 'Norberto', 'Braun', 'http://lorempixel.com/100/100/abstract/?21501', 'Aufderhar, Zemlak and Veum University'),
(20, 'aquanaut10@example.org', '$2y$13$TuU7dK8icrlO0JNaG2O3J.hpmZgvCc363ZdZ.nCaii09608YYAQvu', '[]', 1, 'Marianna', 'Olson', 'http://lorempixel.com/100/100/abstract/?59058', 'Crona, Johns and Wiegand University');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `genus`
--
ALTER TABLE `genus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_38C5106E989D9B62` (`slug`),
  ADD KEY `IDX_38C5106ED15310D4` (`sub_family_id`);

--
-- Индексы таблицы `genus_note`
--
ALTER TABLE `genus_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6478FCEC85C4074C` (`genus_id`);

--
-- Индексы таблицы `genus_scientist`
--
ALTER TABLE `genus_scientist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_66CF3FA885C4074C` (`genus_id`),
  ADD KEY `IDX_66CF3FA8A76ED395` (`user_id`);

--
-- Индексы таблицы `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `sub_family`
--
ALTER TABLE `sub_family`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `genus`
--
ALTER TABLE `genus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `genus_note`
--
ALTER TABLE `genus_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT для таблицы `genus_scientist`
--
ALTER TABLE `genus_scientist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT для таблицы `sub_family`
--
ALTER TABLE `sub_family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `genus`
--
ALTER TABLE `genus`
  ADD CONSTRAINT `FK_38C5106ED15310D4` FOREIGN KEY (`sub_family_id`) REFERENCES `sub_family` (`id`);

--
-- Ограничения внешнего ключа таблицы `genus_note`
--
ALTER TABLE `genus_note`
  ADD CONSTRAINT `FK_6478FCEC85C4074C` FOREIGN KEY (`genus_id`) REFERENCES `genus` (`id`);

--
-- Ограничения внешнего ключа таблицы `genus_scientist`
--
ALTER TABLE `genus_scientist`
  ADD CONSTRAINT `FK_66CF3FA885C4074C` FOREIGN KEY (`genus_id`) REFERENCES `genus` (`id`),
  ADD CONSTRAINT `FK_66CF3FA8A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
