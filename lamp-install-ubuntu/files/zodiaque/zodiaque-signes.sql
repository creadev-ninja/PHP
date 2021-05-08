
CREATE TABLE IF NOT EXISTS `signes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  `element` varchar(5) NOT NULL,
  `date` varchar(30) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `signes` (`id`, `name`, `element`, `date`, `description`) VALUES
(1, 'Bélier', 'feu', '21 mars - 20 avril', 'Le bélier est le premier signe du zodiaque. Il symbolise l\'impulsion, la virilité, le courage, l\'énergie et l\'indépendance. Il a pour élément le feu.'),
(2, 'Taureau', 'terre', '21 avril - 21 mai', 'Le signe du taureau se situe entre l\'équinoxe du printemps et le solstice d\'été. Il est généralement associé à une grande puissance de travail, la sensualité ainsi qu\'à une tendance exagérée pour les plaisirs. Son élément est la terre.'),
(3, 'Gémeaux', 'air', ' 22 mai - 21 juin', 'Généralement représenté sous la forme de deux enfants se tenant par la main, le troisième signe du zodiaque symbolise les contacts humains, les transports, les communications ainsi que la polarité. Il est associé à l\'air'),
(4, 'Cancer', 'eau', '22 juin - 22 juillet', 'Le signe du cancer se situe juste après le solstice d\'été. Il a pour signification le retrait sur soi, la timidité, la ténacité ainsi que la sensibilité. Il est associé à l\'élément de l\'eau.'),
(5, 'Lion', 'feu', '23 juillet - 22 août', 'Ce signe situé en plein milieu de l\'été a pour symbole la joie de vivre, l\'ambition, l\'élévation et l\'orgueil. Son élément est le feu.'),
(6, 'Vierge', 'terre', '23 août - 22 septembre', 'Le signe de la vierge se place avant l\'équinoxe d\'automne. Il est symbole de travail, de moisson, de dextérité manuelle et de minutie. Il est associé à l\'élément terres.'),
(7, 'Balance', 'air', ' 23 septembre - 22 octobre', 'Lorsqu\'il entre dans ce signe, le soleil est au point médian de l\'année astronomique. Il représente l\'équilibre, la justice, la mesure. Il a pour élément l\'air.'),
(8, 'Scorpion', 'eau', '23 octobre - 22 novembre', 'Le huitième signe du zodiaque est associé à la résistance. Son élément est l\'eau5. Il est présenté comme le signe le plus passionné du zodiaque. À tendance sombre, le scorpion peut avoir une tendance à l\'autodestruction'),
(9, 'Sagittaire', 'feu', '23 novembre - 21 décembre', 'Le signe du sagittaire se place juste avant le solstice d\'hiver. Il a pour symbole le mouvement, les réflexes vifs, les instincts nomades ainsi que l\'indépendance. Il s\'agit du dernier signe de feuilles.'),
(10, 'Capricorne', 'terre', '22 décembre - 20 janvier', 'Le signe du capricorne commence au solstice d\'hiver. Il est le symbole de la fin d\'un cycle mais aussi de la naissance d\'un cycle nouveau. Il est associé à la patience, la persévérance, la prudence, la réalisation ainsi que le sens du devoir. Il a pour élément la terre'),
(11, 'Verseau', 'air', '21 janvier - 19 février', 'Le signe du verseau a pour symbole la fraternité, l\'indifférence aux choses matérielles, la coopération et la solidarité collective. Il s\'agit d\'un signe lié à l\'air.'),
(12, 'Poissons', 'eau', '20 février - 20 mars', 'Le dernier signe du zodiaque symbolise l\'émotivité, l\'hypersensibilité, l\'angoisse ou encore l\'imagination. Il est associé à l\'eau.'),
(13, 'serpentaire', 'eau', '30 novembre et le 17 décembre', 'Une treizième constellation peut être placée dans le zodiaque entre celle du Scorpion et du Sagittaire. Appelée Ophiucus qui signifie le porteur de serpent (ou serpentaire), elle n\'est pas prise en compte par les astrologues. Le signe du serpentaire se situerait entre le 30 novembre et le 17 décembre.');
