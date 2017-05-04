-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 04 2017 г., 12:37
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
  `first_discovered_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `genus`
--

INSERT INTO `genus` (`id`, `sub_family_id`, `name`, `species_count`, `fun_fact`, `is_published`, `first_discovered_at`) VALUES
(22, 26, 'Asterias', 807, 'Recusandae asperiores accusamus nihil repellat vero omnis voluptates.', 1, '2017-05-03'),
(23, 27, 'Paralithodes', 65222, 'Qui recusandae totam nulla quam ipsam.', 1, '1994-10-29'),
(24, 23, 'Balaena', 55931, 'Voluptas aut laudantium sit repudiandae esse perspiciatis dignissimos.', 1, '2010-12-07'),
(25, 30, 'Trichechus', 79759, 'Velit porro ut velit soluta.', 1, '2002-10-08'),
(26, 26, 'Amphiprion', 87652, 'Saepe eum sint dolorem delectus enim ipsum inventore.', 1, '2001-09-26'),
(27, 30, 'Asterias', 41179, 'Suscipit a deserunt laudantium quibusdam enim nostrum.', 1, '1976-09-22'),
(28, 24, 'Carcharodon', 21198, 'Velit reiciendis aperiam et fuga.', 0, '1986-03-08'),
(29, 28, 'Amphiprion', 69949, 'Ducimus temporibus modi saepe architecto unde non dicta.', 0, '1983-11-24'),
(30, 22, 'Trichechus', 71605, 'Magni cupiditate sit vitae voluptas.', 0, '1980-01-07'),
(31, 30, 'Balistoides', 26628, 'Quos qui illo error nihil laborum vero.', 0, '1997-11-22'),
(32, 21, 'My little baby', 10, 'I love you', 1, '2017-05-03');

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
(201, 31, 'dee89', 'ryan.jpeg', 'Eligendi quos culpa ut ab voluptas sed a nam. Sint autem inventore aut officia aut aut blanditiis. Ducimus eos odit amet et est ut eum.', '2017-01-01 19:42:20'),
(202, 23, 'karley24', 'ryan.jpeg', 'Aut nemo fuga est placeat rerum ut et. Ex eveniet facere sunt quia. Aut nam et eum architecto fugit repellendus illo veritatis. Ex esse veritatis voluptate vel possimus.', '2017-03-18 19:30:57'),
(203, 31, 'marvin.zelma', 'leanna.jpeg', 'Cum culpa rem aut rerum. Est rem dicta voluptas fuga. Reiciendis qui architecto fugiat nemo omnis.', '2016-11-01 05:25:59'),
(204, 26, 'dledner', 'ryan.jpeg', 'Optio provident non incidunt magnam molestias et quibusdam. Ab quo voluptatum quia ipsum voluptatibus est accusantium eveniet.', '2017-04-26 10:54:14'),
(205, 24, 'dbrakus', 'leanna.jpeg', 'Ducimus aperiam nesciunt est quia. Minima sunt qui similique ut culpa natus consequatur. Sit et nihil ut porro amet laborum iure molestiae.', '2017-04-06 03:01:54'),
(206, 29, 'junius.mayer', 'leanna.jpeg', 'Sequi quia quasi quae sint saepe numquam tempora et. Aperiam natus ut doloribus magni quasi impedit aperiam. Similique ad sed architecto quod nulla. Voluptas quibusdam inventore esse harum accusantium rerum nulla.', '2016-12-17 18:02:41'),
(207, 23, 'damion37', 'ryan.jpeg', 'Nesciunt omnis sit nisi recusandae. Molestias sit id labore. Ut voluptatem laudantium perferendis eveniet quam vero. Corrupti omnis temporibus maxime sint suscipit laudantium.', '2017-03-14 12:34:16'),
(208, 22, 'qrunolfsdottir', 'leanna.jpeg', 'Non explicabo et neque itaque ex quaerat ut aut. Consequatur non rerum in cupiditate voluptas molestiae fuga. Cum non qui quaerat cupiditate incidunt id sunt.', '2016-11-30 01:34:29'),
(209, 30, 'hector.russel', 'leanna.jpeg', 'Ab in hic molestiae odio sed vitae maiores. Beatae reprehenderit exercitationem corrupti dolorem reprehenderit. Ducimus omnis molestiae consequatur sint consequatur est qui doloremque.', '2016-11-06 07:17:44'),
(210, 26, 'angeline13', 'leanna.jpeg', 'Voluptatibus perspiciatis quae sapiente quia suscipit doloribus cupiditate dolorem. Libero quas magni rerum consequatur laudantium nisi quo. Rerum esse eveniet debitis omnis voluptatem voluptatem et eaque. Et praesentium est velit molestiae porro.', '2016-11-22 23:44:49'),
(211, 31, 'rmiller', 'ryan.jpeg', 'Eius similique dolore consequatur et ipsam. Saepe dolor in perspiciatis sit consectetur temporibus voluptate.', '2017-02-19 08:25:59'),
(212, 28, 'pwolff', 'ryan.jpeg', 'Dicta molestiae asperiores consequuntur sit repellendus. Aliquam doloremque et reprehenderit nesciunt eum non. Esse et ut quis corporis voluptate ullam. Non ratione eaque possimus quia optio explicabo et.', '2017-04-30 17:06:49'),
(213, 23, 'jayne55', 'ryan.jpeg', 'Velit voluptatibus in laudantium voluptatem. Vel dignissimos et dolorem doloremque quam quia voluptatem. Ad in maiores nisi eius quibusdam sapiente quia.', '2017-04-19 02:36:10'),
(214, 23, 'hayes.destiney', 'ryan.jpeg', 'At ut non eos sed amet. Vitae enim sapiente occaecati natus assumenda reiciendis. Et laudantium vel nisi ea itaque est. Nihil beatae omnis voluptatibus quae sit veniam.', '2017-03-27 17:16:47'),
(215, 24, 'rwalker', 'leanna.jpeg', 'Neque deleniti totam aut nisi. Omnis voluptatem velit nesciunt eligendi eos sint. Voluptates quo incidunt omnis aut enim nihil.', '2017-04-30 07:37:59'),
(216, 25, 'jamar69', 'ryan.jpeg', 'Autem nihil esse repudiandae pariatur. Assumenda error consequatur fugit ad iste.', '2017-03-13 10:58:58'),
(217, 30, 'rubye68', 'leanna.jpeg', 'Doloremque fuga labore qui et. Hic minus et omnis porro voluptatibus enim. Reprehenderit magni fugiat consequatur officiis velit.', '2016-10-31 03:30:24'),
(218, 24, 'angus65', 'leanna.jpeg', 'Nulla totam eos omnis inventore perferendis voluptatem nisi. Consequatur ullam voluptas et tempora. Corporis excepturi sint dolores quaerat odit quia nisi accusantium.', '2017-02-10 06:17:35'),
(219, 22, 'hboyer', 'ryan.jpeg', 'Sapiente ut qui quidem explicabo optio amet velit aut. Iure sed alias asperiores perspiciatis deserunt omnis inventore mollitia. Id in id porro molestiae in maxime.', '2017-04-15 22:42:49'),
(220, 24, 'muhammad13', 'leanna.jpeg', 'Odio modi consequatur dicta ipsa temporibus sit facere. Doloremque odio ad asperiores quaerat eius accusamus. Dolorem earum ut consequatur facilis molestias quo.', '2017-02-08 02:33:37'),
(221, 22, 'wintheiser.clementine', 'leanna.jpeg', 'Quia et et dolorum quos aliquam. Accusantium quidem ut eius a corrupti totam placeat delectus. Earum officiis sed autem ut voluptatem. Quod alias iste similique aut tempore pariatur et.', '2017-03-01 23:00:12'),
(222, 27, 'leuschke.allen', 'ryan.jpeg', 'Beatae neque eum est molestiae. Laboriosam dolor odit omnis.', '2017-01-07 17:49:53'),
(223, 31, 'jennings08', 'leanna.jpeg', 'Nesciunt fugit ea accusantium temporibus qui ad est et. Cum eius voluptas numquam quam occaecati culpa. In laudantium omnis et. Laborum cupiditate corporis aliquid aut cumque consequuntur non qui.', '2017-03-05 04:46:19'),
(224, 27, 'freida.rempel', 'ryan.jpeg', 'Et necessitatibus tenetur doloremque iusto quibusdam fuga. Voluptas iure rerum voluptas. Eius commodi odio ut aliquid et sit enim.', '2017-01-31 15:12:55'),
(225, 29, 'terrell72', 'leanna.jpeg', 'Officiis eos suscipit facilis vel. Modi quia recusandae qui eligendi quo voluptas totam. Ab tenetur voluptatem repudiandae reiciendis cum accusamus ut et. Iste accusantium quaerat nostrum voluptas est tenetur.', '2017-02-05 07:39:03'),
(226, 30, 'gconn', 'ryan.jpeg', 'Nihil aliquid eos fugit. Quaerat quibusdam alias omnis accusamus aut dolores. Itaque doloribus qui dicta eligendi quae recusandae. Quo beatae deleniti quia molestiae alias quo quis.', '2016-11-10 18:45:15'),
(227, 30, 'kayley.turner', 'leanna.jpeg', 'Placeat reprehenderit nesciunt architecto quas. Similique consequatur nisi fuga dolores aut. Illo illum sint voluptas a aperiam. Aut qui neque minus eos fugit nostrum non.', '2017-01-29 23:54:39'),
(228, 27, 'bruen.kari', 'leanna.jpeg', 'Nam nesciunt non dolore quis et eius et. Omnis eaque pariatur non ea vel omnis. Explicabo inventore quam suscipit qui accusamus eveniet dolorem voluptatem.', '2017-02-25 19:57:13'),
(229, 22, 'iwiza', 'leanna.jpeg', 'Voluptatem eveniet consequatur sit impedit sint nam perferendis sit. Magnam ut nemo possimus qui totam iste. Harum animi et ad rerum perferendis fugiat. Facere quisquam et quod velit velit ut rem repellendus.', '2016-12-18 18:44:21'),
(230, 28, 'shawn.stracke', 'ryan.jpeg', 'Est in reprehenderit reiciendis accusamus. Quia et mollitia deleniti qui nostrum doloremque. Aut molestiae sapiente est consequatur. Tempore similique ut debitis consequatur.', '2017-03-16 23:07:55'),
(231, 22, 'bernier.marilie', 'ryan.jpeg', 'Perspiciatis quia quasi sit dolore ad. Est impedit itaque cumque officiis ut quis. Consequatur asperiores voluptatem magnam nostrum ea corrupti voluptatem. Cupiditate rerum ratione rerum repellendus ducimus.', '2017-04-02 11:57:15'),
(232, 25, 'baumbach.zechariah', 'leanna.jpeg', 'Doloremque esse dolor qui illo placeat harum voluptatem. Enim tempora voluptas ut dolorem voluptates deserunt provident. Ipsam fugiat est ipsam quia reprehenderit sint. Sed facere qui sit delectus ad iusto. Iusto autem laboriosam nulla earum eius repellat.', '2017-02-13 13:47:12'),
(233, 25, 'ahmed42', 'leanna.jpeg', 'Nobis hic rerum delectus dolorum voluptas cupiditate aut consequatur. Ullam qui ea voluptatem aut cum vitae nostrum. Maiores non omnis aut quos ut ad est quidem. Rerum voluptates laboriosam ea porro blanditiis.', '2016-11-24 19:32:00'),
(234, 27, 'nwolf', 'leanna.jpeg', 'Et et fuga recusandae voluptatem veniam enim quae voluptas. Dolore explicabo nisi a aut architecto et aut. Nam cum tempore doloremque. Aut qui perferendis praesentium cupiditate iste.', '2017-04-30 19:32:20'),
(235, 26, 'iterry', 'leanna.jpeg', 'Nihil voluptatem magnam odio impedit. Omnis consequatur ut repellendus officiis nihil reprehenderit non ut.', '2017-01-24 22:47:54'),
(236, 23, 'emilio.lesch', 'leanna.jpeg', 'Quod cupiditate culpa nisi eos cupiditate quibusdam eveniet. Provident quas omnis voluptatem quia soluta recusandae id. Aut voluptates est deleniti et accusantium nesciunt voluptas.', '2017-04-06 14:04:47'),
(237, 24, 'heather32', 'leanna.jpeg', 'Eos fugiat voluptas voluptatem consequuntur nostrum culpa. Quod voluptatem quae dignissimos sunt atque aut. Possimus accusamus sint hic ut atque expedita.', '2016-11-26 16:24:58'),
(238, 28, 'zturcotte', 'ryan.jpeg', 'Animi culpa velit dignissimos molestias. A cumque ut et rerum dolore consectetur et beatae. Nulla quisquam labore saepe perspiciatis doloremque. Unde optio accusamus magnam non ratione enim velit.', '2016-12-24 10:40:37'),
(239, 24, 'pwindler', 'leanna.jpeg', 'Qui in et quasi incidunt. Ex accusamus aut itaque nesciunt sit quidem fugit sapiente. Eveniet dolore inventore consectetur sed repellat. Vitae iure voluptatibus dolorem totam laboriosam.', '2016-12-03 00:43:02'),
(240, 22, 'von.sherwood', 'ryan.jpeg', 'Ducimus odio fuga vitae expedita. Vero animi fugiat corporis. Et officia et necessitatibus quasi.', '2017-01-20 21:15:29'),
(241, 27, 'tyson.feeney', 'ryan.jpeg', 'Sunt aliquam mollitia id repudiandae. Doloremque placeat ut esse. Aut ratione cumque commodi. Cum ratione animi maxime enim est.', '2017-01-15 16:09:36'),
(242, 24, 'zwilkinson', 'ryan.jpeg', 'Optio odio aspernatur qui dolor blanditiis suscipit. Veniam neque omnis dolor qui.', '2017-01-16 12:23:45'),
(243, 30, 'reichert.addison', 'leanna.jpeg', 'Tenetur vel quasi corporis rerum quo ut accusantium. Quibusdam quia aut culpa dolores consectetur quod doloremque. Aut cupiditate aperiam occaecati adipisci veritatis vel voluptas. Cumque sed modi odit.', '2017-02-01 03:41:27'),
(244, 27, 'pbayer', 'ryan.jpeg', 'Odio et id consequatur accusantium quia porro. Voluptates dignissimos est officiis est repudiandae est atque. Inventore sed ipsum omnis maiores esse.', '2017-03-04 14:53:21'),
(245, 23, 'bahringer.eleazar', 'leanna.jpeg', 'Voluptatem harum sed quia et. Neque voluptas est totam provident sunt. Est tempora qui minus officia.', '2016-12-21 23:22:26'),
(246, 26, 'bwaters', 'leanna.jpeg', 'Laborum dolor quasi totam qui ipsam iusto enim. Molestias amet aut qui. Et fuga velit iure consequuntur qui provident et. Veniam et adipisci libero qui qui maiores est.', '2017-01-20 13:41:09'),
(247, 26, 'mariela.funk', 'ryan.jpeg', 'Et sit enim omnis. Inventore consequatur mollitia ducimus veritatis doloribus. Labore quos saepe quia quia.', '2017-02-08 01:10:34'),
(248, 27, 'spencer13', 'leanna.jpeg', 'Sunt est possimus voluptas blanditiis et. Aut culpa reiciendis dolorum eaque accusantium exercitationem animi.', '2017-03-29 04:58:32'),
(249, 31, 'ondricka.philip', 'leanna.jpeg', 'Dolorem impedit et cumque. Qui ut non perspiciatis voluptatem voluptatem eligendi provident sed. Magni qui sint quos aut quibusdam labore. Quod est qui dolor reprehenderit.', '2016-10-31 16:23:51'),
(250, 29, 'angelina13', 'ryan.jpeg', 'Voluptas rerum quia et harum dolor quaerat. Et repellat rerum voluptas dolore explicabo vero. Fugit officiis explicabo ipsa libero sit ducimus minima. Suscipit id tempore voluptatibus recusandae et deleniti tenetur. Illo sunt possimus esse et porro consequatur totam et.', '2016-12-14 02:58:19'),
(251, 26, 'wolff.mekhi', 'leanna.jpeg', 'Repudiandae temporibus blanditiis sit maiores quo. Qui pariatur cumque hic sunt harum alias omnis. Asperiores aliquid ducimus fuga temporibus consequuntur omnis sit.', '2017-04-11 14:06:02'),
(252, 22, 'dickens.tremaine', 'ryan.jpeg', 'Repellat asperiores vitae neque optio quod et consectetur. Expedita ratione vitae qui sed ut repudiandae. Sit asperiores eum et nisi cumque et quod.', '2017-04-22 01:59:05'),
(253, 25, 'tcruickshank', 'leanna.jpeg', 'Rerum officia et neque pariatur vel. Et laborum veniam dolores dolorum ad. Et fugit eius facilis dolor fugiat dicta.', '2017-04-12 12:33:40'),
(254, 23, 'stephen88', 'leanna.jpeg', 'Omnis distinctio eum sit hic voluptatum quis. Et aliquam qui vel debitis qui ipsum perferendis. Dolorum excepturi deleniti voluptatem iure et atque aut.', '2016-11-23 01:17:43'),
(255, 23, 'paris.towne', 'ryan.jpeg', 'Non quos quia repellat expedita laudantium ducimus qui odit. Sed illo minima sit. Necessitatibus accusamus sed iure voluptatum excepturi sit.', '2017-01-28 07:27:34'),
(256, 25, 'kerluke.august', 'leanna.jpeg', 'Eveniet est voluptatem culpa dolores. Sunt occaecati est nihil vel aut. Libero quis sit qui officia nihil.', '2017-02-24 03:13:05'),
(257, 23, 'ernser.bianka', 'leanna.jpeg', 'A minus quos laudantium porro quibusdam. Suscipit quo consequatur ipsa repellendus. Quam culpa fugit molestiae consectetur aut esse libero.', '2017-04-12 14:48:44'),
(258, 30, 'keeling.ardella', 'ryan.jpeg', 'Eum nobis et et et fuga fugit. Cum esse laborum sequi. Debitis tempora aperiam nam.', '2016-12-25 18:46:31'),
(259, 22, 'omann', 'ryan.jpeg', 'Facilis sit ea quia velit. Laudantium ea et sit enim. Sunt odio aperiam tenetur rerum aut tempore.', '2016-11-30 13:32:07'),
(260, 24, 'alaina63', 'ryan.jpeg', 'Consequatur deleniti id sed veniam aut velit perferendis. Nemo nesciunt ullam fugiat maiores omnis quo. Quod voluptas quibusdam exercitationem ab. Culpa rem sunt perferendis repellendus sapiente accusamus.', '2017-03-22 04:05:58'),
(261, 24, 'kiehn.maggie', 'ryan.jpeg', 'Cumque optio qui ab quaerat consequuntur. Eaque maiores optio voluptatibus et non ab.', '2017-04-10 16:10:41'),
(262, 29, 'maggie.mcclure', 'leanna.jpeg', 'Veniam eaque et recusandae iste qui tenetur aut. Molestias sed dicta molestiae illo possimus qui. Velit dolorem facere officiis nostrum dolore nulla. Ea quo fugiat unde alias sunt rerum fuga.', '2016-11-12 11:11:32'),
(263, 28, 'isabelle.roberts', 'leanna.jpeg', 'Id reprehenderit voluptas maiores consequatur. Impedit ducimus aut voluptatum quia voluptatem est. Ea reprehenderit inventore quibusdam in eum et fuga.', '2016-12-17 19:29:47'),
(264, 28, 'ignacio18', 'ryan.jpeg', 'Magnam aut sed architecto officiis. Omnis velit ratione quia minus sint. Voluptatem sequi debitis sed ratione dolorem. Inventore repellendus voluptatum sit unde.', '2017-04-16 10:00:50'),
(265, 28, 'else.rippin', 'leanna.jpeg', 'Sequi architecto quia veniam accusantium maiores commodi qui id. Earum voluptate explicabo excepturi molestias occaecati quo culpa. Et consequatur exercitationem in corporis qui dolor.', '2016-12-03 04:02:56'),
(266, 27, 'brooklyn41', 'leanna.jpeg', 'Quae consequatur nihil est sit beatae quo. Aut laborum perspiciatis quos.', '2016-11-09 21:13:20'),
(267, 25, 'jarod.leffler', 'ryan.jpeg', 'Beatae repellendus doloremque omnis ut aut et eius et. Rerum ab et culpa voluptatem. Qui animi pariatur rerum. Corrupti id alias et qui.', '2017-03-16 00:27:38'),
(268, 24, 'koepp.linnea', 'ryan.jpeg', 'Iusto quae consequatur excepturi quia excepturi. Culpa dolorum similique a nihil. Veniam qui qui aspernatur.', '2017-02-06 06:18:50'),
(269, 28, 'erdman.mireya', 'leanna.jpeg', 'Eligendi minus aut ea. At blanditiis architecto magni deserunt ad cupiditate soluta. Impedit vel accusamus rerum.', '2017-01-08 02:57:23'),
(270, 27, 'alfred08', 'ryan.jpeg', 'Dolores ut natus et ratione voluptate. Architecto iure placeat fugiat itaque et sit est. Omnis recusandae dicta vel qui unde et. Omnis assumenda dolor enim exercitationem. Culpa voluptatibus harum id cupiditate asperiores assumenda.', '2017-04-17 14:58:20'),
(271, 29, 'stewart57', 'leanna.jpeg', 'Magni qui qui officia. Sint quia quibusdam est ratione. Et consequatur suscipit saepe quia. Nesciunt nobis aperiam facere non iure nihil quia.', '2017-03-04 01:35:48'),
(272, 26, 'vmraz', 'ryan.jpeg', 'Nihil possimus aut sit voluptas consequatur rerum sunt porro. Est excepturi alias ex consequatur qui eaque ut necessitatibus.', '2017-04-10 19:41:55'),
(273, 31, 'anastasia43', 'leanna.jpeg', 'Ut ut officia reiciendis. Voluptatem nulla molestias et minus hic. Aperiam voluptas corporis fugiat distinctio occaecati omnis illum. Odit ducimus culpa quae dolores.', '2017-01-21 16:43:42'),
(274, 27, 'gerhard.bode', 'ryan.jpeg', 'Quam aperiam blanditiis omnis corrupti hic aut qui. Minima unde enim molestiae autem id. Quo aliquid nam ex asperiores neque ea. Ut ut facilis qui sed sint. Voluptatem nostrum illum praesentium exercitationem.', '2016-12-09 08:06:23'),
(275, 23, 'darmstrong', 'ryan.jpeg', 'Nesciunt exercitationem animi libero sit. Id aliquam reprehenderit a tempora ipsam error vel.', '2017-01-23 06:40:09'),
(276, 28, 'lwill', 'ryan.jpeg', 'Dolore unde nihil ducimus rerum est similique et. Distinctio minima fugit corrupti. Accusantium excepturi soluta temporibus. Ad eum cupiditate in quaerat et enim temporibus.', '2017-04-01 04:31:27'),
(277, 23, 'eprice', 'ryan.jpeg', 'Eum natus officia laudantium recusandae aliquam deleniti rerum qui. Enim et explicabo possimus. Voluptatibus ipsum officia fugit iste. Et beatae totam repellendus.', '2017-02-04 11:35:11'),
(278, 28, 'schaden.velda', 'leanna.jpeg', 'Qui accusamus et odio explicabo quam accusamus. Sint quia fuga autem impedit perspiciatis. Illo odit id quasi illo omnis quidem. Reprehenderit commodi aut voluptas corrupti placeat odio at. Voluptatem et et ea ad.', '2017-02-23 04:41:21'),
(279, 22, 'graham.trinity', 'ryan.jpeg', 'Consequatur nulla explicabo commodi praesentium voluptatem. Non optio consequatur occaecati delectus ut amet ipsam magni. Nobis dolorem iusto odio alias. Voluptatum non ea architecto nisi nulla.', '2016-12-04 17:32:01'),
(280, 29, 'willy.brakus', 'leanna.jpeg', 'Omnis blanditiis consectetur itaque consequuntur cupiditate praesentium itaque. Reiciendis quo sapiente est adipisci quaerat voluptas. Quia molestiae magnam ea.', '2016-12-06 10:32:57'),
(281, 31, 'kaylin.halvorson', 'ryan.jpeg', 'Molestiae ipsam consequatur quaerat minima id. Veritatis aspernatur neque et quia saepe. Inventore laborum aut commodi et voluptates inventore dolor assumenda. Minus vitae odit magnam omnis.', '2016-11-04 15:39:41'),
(282, 31, 'blockman', 'ryan.jpeg', 'Ad omnis explicabo expedita sed et quis aut facilis. Eum et id perferendis asperiores et reprehenderit rem dolorum. Sed nisi aut accusamus aut.', '2016-11-26 19:51:20'),
(283, 23, 'therman', 'ryan.jpeg', 'Dolorem dolor perspiciatis sit nostrum eum omnis. Doloremque beatae iure necessitatibus qui. Quasi rerum veritatis veritatis nam et quam. Voluptatem qui ut itaque iusto consequuntur.', '2017-04-24 10:31:12'),
(284, 26, 'jlebsack', 'ryan.jpeg', 'Facere sunt dolor omnis. Et fugiat animi veniam ad animi. Impedit voluptatum qui iure laboriosam laborum.', '2017-04-29 02:48:56'),
(285, 25, 'hartmann.raphaelle', 'leanna.jpeg', 'Alias itaque esse sint nisi sed. Veritatis laudantium aliquid incidunt placeat et ut dolores omnis. Accusamus iusto et quis voluptate recusandae vel. Aliquam dolor quasi eum et nihil.', '2016-12-12 21:22:29'),
(286, 24, 'cade.schamberger', 'leanna.jpeg', 'Officia sapiente nesciunt atque. Eius totam esse velit voluptas temporibus. Magnam repudiandae voluptas ut maxime qui fugiat.', '2017-02-15 00:44:50'),
(287, 24, 'mjohnston', 'leanna.jpeg', 'Non aut aut totam molestiae. Fugiat doloremque ab unde a cumque culpa voluptatum. Facere totam similique voluptatum mollitia ab quo. Rerum accusantium laborum veniam iure doloremque possimus.', '2017-03-07 16:30:23'),
(288, 23, 'zack51', 'leanna.jpeg', 'Molestiae aliquam aut voluptate velit et et reprehenderit officia. In et aut hic tempore maxime nemo rerum. Dolores molestias earum quos blanditiis eos ipsam. Non ut ex in nihil quidem est.', '2017-03-30 17:05:14'),
(289, 24, 'denesik.audreanne', 'leanna.jpeg', 'Magni ea nemo sed voluptatibus in laborum. Ratione natus perferendis fuga animi nulla possimus et. Ratione est eveniet perspiciatis et et sed. Maiores et dignissimos similique mollitia.', '2017-04-17 20:43:23'),
(290, 31, 'michale.hilpert', 'leanna.jpeg', 'Esse ullam cupiditate ut. Deserunt doloremque magnam et impedit quo. Vel deserunt eius architecto commodi eum at. Facilis inventore vero animi unde doloribus. Qui dolor vel consectetur debitis a animi.', '2017-03-02 02:11:42'),
(291, 22, 'qgreenholt', 'leanna.jpeg', 'Ut cumque laborum quod ut ducimus suscipit. Nostrum veritatis saepe ex voluptas. Neque sit numquam vel est.', '2016-11-16 13:51:11'),
(292, 31, 'nledner', 'ryan.jpeg', 'Voluptatem vel rem quaerat sunt magni aut. Vel deleniti molestias velit. Enim rerum sequi vel et nemo. Et eos vero hic quia ut adipisci.', '2017-02-24 18:40:01'),
(293, 26, 'noe83', 'leanna.jpeg', 'Suscipit voluptatem laboriosam deserunt nobis doloribus enim. Dolores qui asperiores voluptates. Delectus sapiente quo est rerum nihil sint. Ipsa id ullam ullam accusantium eveniet debitis voluptatem. Sed totam aut impedit facere rerum provident aut aut.', '2017-02-15 09:31:28'),
(294, 22, 'rigoberto.dibbert', 'ryan.jpeg', 'Eius et reprehenderit aliquam excepturi id et. Voluptate molestiae ut qui. Ex vel quod dolorem perspiciatis eos quis asperiores. Qui eaque natus qui voluptas.', '2016-11-15 08:37:16'),
(295, 29, 'edward.white', 'leanna.jpeg', 'Quas illum cum aut. Dolore doloremque unde fuga nostrum omnis dolorem.', '2016-11-15 10:01:12'),
(296, 24, 'claude92', 'leanna.jpeg', 'Cupiditate qui dolore nobis in autem. Adipisci deserunt perspiciatis ut vel. Voluptatem consequuntur voluptatem molestias possimus magnam earum non. Voluptas et et omnis est.', '2017-02-17 03:39:57'),
(297, 29, 'glenna33', 'leanna.jpeg', 'Architecto corrupti itaque ipsa tenetur. Autem consequatur consequatur perspiciatis animi.', '2016-11-08 22:20:30'),
(298, 27, 'lpfeffer', 'leanna.jpeg', 'Maxime explicabo assumenda sit repellat. Nam in pariatur vero fuga consequatur praesentium consequatur nihil. Possimus id voluptas similique.', '2017-03-07 06:00:02'),
(299, 30, 'bpagac', 'leanna.jpeg', 'Ut omnis nisi dolorem ut repellat delectus magnam. Molestiae et a accusantium tempora consequuntur est ut commodi. Doloribus fugiat repellat harum assumenda. Illo voluptatem nobis fugit inventore sed at.', '2017-04-04 23:38:51'),
(300, 24, 'xkiehn', 'leanna.jpeg', 'Ullam ullam dolor debitis quo saepe. Possimus est labore et totam adipisci et odit.', '2017-01-16 20:48:44');

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
('20170430200218');

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
(21, 'Adams'),
(22, 'Nienow'),
(23, 'Johns'),
(24, 'Kihn'),
(25, 'Dietrich'),
(26, 'West'),
(27, 'Block'),
(28, 'Hauck'),
(29, 'Roob'),
(30, 'Turner');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `roles`) VALUES
(21, 'weaverryan+1@gmail.com', '$2y$13$YXh/qthkiZSXG7/0HrZg0.ZTMqt6nYyKjz/ycjU.Cwx72qIxxAOQu', '[\"ROLE_ADMIN\"]'),
(22, 'weaverryan+2@gmail.com', '$2y$13$xc11NF3D3EK8EcbVkzVqheDaiDyQLci6yMUIFkrVs16S1oEU4PTle', '[\"ROLE_ADMIN\"]'),
(23, 'weaverryan+3@gmail.com', '$2y$13$NlsKyCjTjocAphYewHbJGeJPVLAeoBjtMswSEFLh1JlxIj.RHGDdO', '[\"ROLE_ADMIN\"]'),
(24, 'weaverryan+4@gmail.com', '$2y$13$iHATk0S1VxkkGHSiRN6ndOr4CKp1/g6LgU.VemGR9Xt3ny04fyeiC', '[\"ROLE_ADMIN\"]'),
(25, 'weaverryan+5@gmail.com', '$2y$13$N5e9LTa/RE/bUrXhPpYi6uAIta4dJmdw0uXrbSQ9PG3Xza6wx9o0y', '[\"ROLE_ADMIN\"]'),
(26, 'weaverryan+6@gmail.com', '$2y$13$SoRtCWLdfd7/JDnunlUiPu0qW.0mx2rdyL9UsfF0GJs5bN0hobH8.', '[\"ROLE_ADMIN\"]'),
(27, 'weaverryan+7@gmail.com', '$2y$13$puEc0mKHSqE5m7Wybshme.X6FGx6Q9Mu/a0.z3PRCfbrVHSmooVyi', '[\"ROLE_ADMIN\"]'),
(28, 'weaverryan+8@gmail.com', '$2y$13$yWF0vyU6.mppy10qOrtZGOYZjz3WMhDageS/MRfgcCl9TV96eV/T6', '[\"ROLE_ADMIN\"]'),
(29, 'weaverryan+9@gmail.com', '$2y$13$s/h85M2iDV4/FHIfsDtPFeJiZVRD1BjgygOFMLp5m/F4KsVtnRpxa', '[\"ROLE_ADMIN\"]'),
(30, 'weaverryan+10@gmail.com', '$2y$13$YHDQwblQ67u5qdqpbjhys.NfQNYsZMlM7DeClMNmvfXJmvzQTePty', '[\"ROLE_ADMIN\"]'),
(31, 'weaverryan+15@gmail.com', '$2y$13$8ZVVMO15hcWveNQnZj18HOmyJ2Xj4CF1IH64o9lA6ZnGV/pvm363O', '[]'),
(32, 'weaverryan+20@gmail.com', '$2y$13$p6Oh5Z5nGvwBy7YbEQoyzOX3qUuZnaJ4MPMYJBopNpYtRNQoFMxFK', '[]'),
(33, 'weaverryan+66@gmail.com', '$2y$13$nxIHGBttdvjfMRXSm28/dO2dLzLlz3.5plux7DHXvCyh9gBS5CAPu', '[]'),
(34, 'weaverryan@gmail.com', '$2y$13$KNLlzePNjFrw8ZdFcBM8mOEqmdEUQNgXBO7E7wtWwQjUqXPd91.XK', '[]');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `genus`
--
ALTER TABLE `genus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_38C5106ED15310D4` (`sub_family_id`);

--
-- Индексы таблицы `genus_note`
--
ALTER TABLE `genus_note`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6478FCEC85C4074C` (`genus_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `genus_note`
--
ALTER TABLE `genus_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT для таблицы `sub_family`
--
ALTER TABLE `sub_family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
