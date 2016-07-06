

--
-- Structure de la table `advert`
--

CREATE TABLE IF NOT EXISTS `advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nb_applications` int(11) DEFAULT NULL,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_54F1F40B3DA5256D` (`image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Contenu de la table `advert`
--

INSERT INTO `advert` (`id`, `date`, `author`, `title`, `content`, `published`, `image_id`, `updated_at`, `nb_applications`, `slug`) VALUES
(1, '2015-12-14 16:25:52', 'Alexandre', 'Recherche développeur Symfony2.', 'Nous recherchons un développeur Symfony2 débutant sur Lyon. Aenean ultricies nisl metus, ullamcorper suscipit leo sagittis ut. Donec ut sapien mauris. Aenean consectetur aliquet aliquet. Duis augue nunc, scelerisque a bibendum sit amet, ornare at ante. Ut gravida lectus id gravida faucibus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam sed scelerisque odio. Cras maximus ante leo, quis ornare augue congue ut. Mauris quis sem vel magna vehicula convallis. Integer vel libero leo. Vestibulum rhoncus nec justo quis blandit. ', 1, NULL, NULL, 1, ''),
(2, '2015-12-14 16:35:17', 'Cassandro', 'Recherche développeur CakePHP3.', 'Nous recherchons un développeur CakePHP3 débutant sur Angers. Maecenas facilisis venenatis mollis. Donec tellus lorem, accumsan et ligula ac, ultricies pellentesque leo. In elementum sit amet nisl nec laoreet. Aliquam maximus sem ac leo bibendum varius. Fusce nibh augue, rhoncus eu maximus eget, elementum sed diam. Praesent eget scelerisque felis. Donec eget interdum lectus, eget aliquet nulla. Morbi pharetra diam eu nibh auctor, ut tristique orci mollis.ui lolita', 1, 4, '2016-01-06 15:49:22', 2, ''),
(3, '2015-12-14 16:36:52', 'Wilker', 'Recherche développeur .Net.', 'Nous recherchons un développeur .Net débutant sur Paris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nunc eget mi sollicitudin, vehicula nisl quis, tincidunt augue. Aenean dictum erat turpis, ac efficitur ipsum blandit eu. Nullam leo massa, placerat sit amet dolor eget, semper pretium eros. Proin convallis nibh et erat egestas, sit amet tempor arcu congue. Praesent at nisl mi. Fusce magna mi, maximus ac eleifend a, pellentesque eget lectus.', 1, NULL, '2016-01-06 18:10:12', 2, ''),
(6, '2015-01-05 11:01:14', 'Pedro', 'Recherche développeur AngularJS.', 'Nous recherchons un développeur AngularJS débutant sur Rennes. Aenean dictum erat turpis, ac efficitur ipsum blandit eu. Nullam leo massa, placerat sit amet dolor eget, semper pretium eros. Proin convallis nibh et erat egestas, sit amet tempor arcu congue. Praesent at nisl mi. Fusce magna mi, maximus ac eleifend a, pellentesque eget lectus Rennes.', 1, 2, NULL, NULL, ''),
(8, '2015-01-11 00:00:00', 'Lolita', 'Lolita announcement', 'Lolo Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat, lolita.', 1, NULL, '2016-01-11 17:12:42', 0, 'lolita-announcement'),
(9, '2015-01-11 00:00:00', 'Viegas', 'Viegas anuncio', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa.', 1, NULL, NULL, 0, 'viegas-anuncio'),
(10, '2015-01-11 00:00:00', 'Wilson', 'Wilson aviso', 'Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat outro.', 1, 5, NULL, 0, 'wilson-aviso'),
(11, '2015-01-13 00:00:00', 'Florencia', 'Multitudine hominum', 'Iamque non umbratis fallaciis res agebatur, sed qua palatium est extra muros, armatis omne circumdedit. ingressusque obscuro iam die, ablatis regiis indumentis Caesarem tunica texit et paludamento communi, eum post haec nihil passurum velut mandato principis iurandi crebritate confirmans et statim inquit exsurge et inopinum carpento privato inpositum ad Histriam duxit prope oppidum Polam, ubi quondam peremptum Constantini filium accepimus Crispum.', 1, 6, NULL, 0, 'multitudine-hominum'),
(13, '2015-01-13 15:09:18', 'Rogatus', 'Rogatus ad ultimum', 'Rogatus ad ultimum admissusque in consistorium ambage nulla praegressa inconsiderate et leviter proficiscere inquit ut praeceptum est, Caesar sciens quod si cessaveris, et tuas et palatii tui auferri iubebo prope diem annonas. hocque solo contumaciter dicto subiratus abscessit nec in conspectum eius postea venit saepius arcessitus.', 1, 8, NULL, 0, 'rogatus-ad-ultimum');

-- --------------------------------------------------------

--
-- Structure de la table `advert_category`
--

CREATE TABLE IF NOT EXISTS `advert_category` (
  `advert_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`advert_id`,`category_id`),
  KEY `IDX_84EEA340D07ECCB6` (`advert_id`),
  KEY `IDX_84EEA34012469DE2` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `advert_category`
--

INSERT INTO `advert_category` (`advert_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(2, 6),
(11, 7);

-- --------------------------------------------------------

--
-- Structure de la table `advert_skill`
--

CREATE TABLE IF NOT EXISTS `advert_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5619F91BD07ECCB6` (`advert_id`),
  KEY `IDX_5619F91B5585C142` (`skill_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `advert_skill`
--

INSERT INTO `advert_skill` (`id`, `advert_id`, `skill_id`, `level`) VALUES
(1, 2, 9, 'Expert'),
(2, 2, 10, 'Expert'),
(3, 2, 11, 'Expert'),
(4, 2, 12, 'Expert'),
(5, 2, 13, 'Expert'),
(6, 2, 14, 'Expert'),
(7, 2, 15, 'Expert'),
(8, 2, 16, 'Expert');

-- --------------------------------------------------------

--
-- Structure de la table `application`
--

CREATE TABLE IF NOT EXISTS `application` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `advert_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A45BDDC1D07ECCB6` (`advert_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Contenu de la table `application`
--

INSERT INTO `application` (`id`, `advert_id`, `author`, `content`, `date`) VALUES
(3, 2, 'Marine', 'J''ai toutes les qualités requises.', '2016-01-05 11:06:30'),
(4, 2, 'Pierre', 'Je suis très motivé.', '2016-01-05 11:07:30'),
(6, 1, 'Thomas', 'De la patate mon frère, ça c''est pour moi. wazaaa !', '2016-01-06 14:07:30'),
(21, 3, 'Bruno', 'J''ai touts les mojos pour ça.', '2016-01-06 18:10:12'),
(22, 3, 'Kirikou', 'I am très motivé. Endeed !', '2016-01-06 18:10:12');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Développement web'),
(2, 'Développement mobile'),
(3, 'Graphisme'),
(4, 'Intégration'),
(5, 'Réseau'),
(6, 'Divers'),
(7, 'waza_cat');

-- --------------------------------------------------------

--
-- Structure de la table `fos_user`
--

CREATE TABLE IF NOT EXISTS `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Contenu de la table `fos_user`
--

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`) VALUES
(1, 'toto', 'toto', 'toto@gmail.com', 'toto@gmail.com', 1, '4wynu4fjsq04cogsogg8ggosss4ko80', 'dUvEvIfTffObqqDdFShVjviFal99JTWV1Zi3sAhObdpjf9N6dZN1sELy9zYA1oJosVZ8iL7KDrQHmPivJBM70Q==', '2016-01-29 11:31:51', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Contenu de la table `image`
--

INSERT INTO `image` (`id`, `url`, `alt`) VALUES
(2, 'http://sdz-upload.s3.amazonaws.com/prod/upload/job-de-reve.jpg', 'Job de rêve sur Rennes'),
(3, 'test_url', 'test_url_alt'),
(4, 'http://www.fxsystems.fr/images/image-dev-durable1.jpg', 'collaboration_img'),
(5, 'http://www.1001web.fr/wp-content/uploads/2015/11/samsung-galaxy-s6-galaxy-note-5-galaxy-s5-galaxy-note-4-638x368.jpg', 'img-wilson'),
(6, 'jpg', 'reunion-plan-execution.jpg'),
(8, 'jpeg', 'debat.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `skill`
--

CREATE TABLE IF NOT EXISTS `skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Contenu de la table `skill`
--

INSERT INTO `skill` (`id`, `name`) VALUES
(9, 'PHP'),
(10, 'Symfony2'),
(11, 'C++'),
(12, 'Java'),
(13, 'Photoshop'),
(14, 'Blender'),
(15, 'Bloc-note'),
(16, 'Master-all');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `advert`
--
ALTER TABLE `advert`
  ADD CONSTRAINT `FK_54F1F40B3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `image` (`id`);

--
-- Contraintes pour la table `advert_category`
--
ALTER TABLE `advert_category`
  ADD CONSTRAINT `FK_84EEA34012469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_84EEA340D07ECCB6` FOREIGN KEY (`advert_id`) REFERENCES `advert` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `advert_skill`
--
ALTER TABLE `advert_skill`
  ADD CONSTRAINT `FK_5619F91B5585C142` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`),
  ADD CONSTRAINT `FK_5619F91BD07ECCB6` FOREIGN KEY (`advert_id`) REFERENCES `advert` (`id`);

--
-- Contraintes pour la table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FK_A45BDDC1D07ECCB6` FOREIGN KEY (`advert_id`) REFERENCES `advert` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
