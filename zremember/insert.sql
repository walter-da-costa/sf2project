
INSERT INTO `image` (`id`, `url`, `alt`) VALUES
(2, 'http://sdz-upload.s3.amazonaws.com/prod/upload/job-de-reve.jpg', 'Job de rêve sur Rennes'),
(3, 'test_url', 'test_url_alt'),
(4, 'http://www.fxsystems.fr/images/image-dev-durable1.jpg', 'collaboration_img'),
(5, 'http://www.1001web.fr/wp-content/uploads/2015/11/samsung-galaxy-s6-galaxy-note-5-galaxy-s5-galaxy-note-4-638x368.jpg', 'img-wilson'),
(6, 'jpg', 'reunion-plan-execution.jpg'),
(8, 'jpeg', 'debat.jpg');

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Développement web'),
(2, 'Développement mobile'),
(3, 'Graphisme'),
(4, 'Intégration'),
(5, 'Réseau'),
(6, 'Divers'),
(7, 'waza_cat');

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

INSERT INTO `skill` (`id`, `name`) VALUES
(9, 'PHP'),
(10, 'Symfony2'),
(11, 'C++'),
(12, 'Java'),
(13, 'Photoshop'),
(14, 'Blender'),
(15, 'Bloc-note'),
(16, 'Master-all');

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


INSERT INTO `advert_skill` (`id`, `advert_id`, `skill_id`, `level`) VALUES
(1, 2, 9, 'Expert'),
(2, 2, 10, 'Expert'),
(3, 2, 11, 'Expert'),
(4, 2, 12, 'Expert'),
(5, 2, 13, 'Expert'),
(6, 2, 14, 'Expert'),
(7, 2, 15, 'Expert'),
(8, 2, 16, 'Expert');


INSERT INTO `application` (`id`, `advert_id`, `author`, `content`, `date`) VALUES
(3, 2, 'Marine', 'J''ai toutes les qualités requises.', '2016-01-05 11:06:30'),
(4, 2, 'Pierre', 'Je suis très motivé.', '2016-01-05 11:07:30'),
(6, 1, 'Thomas', 'De la patate mon frère, ça c''est pour moi. wazaaa !', '2016-01-06 14:07:30'),
(21, 3, 'Bruno', 'J''ai touts les mojos pour ça.', '2016-01-06 18:10:12'),
(22, 3, 'Kirikou', 'I am très motivé. Endeed !', '2016-01-06 18:10:12');



