-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017 m. Vas 14 d. 17:30
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `category`
--

INSERT INTO `category` (`id`, `category_name`, `status`) VALUES
(1, 'kelionÄ—s', 'a'),
(2, 'atostogos', 'a'),
(3, 'sostinÄ—s', 'a'),
(4, 'marÅ¡rutai', 'a'),
(5, 'patarimai', 'a');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(11) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `entry_id`, `comment`, `timestamp`, `status`) VALUES
(1, 0, 17, 'asasasa', '2017-02-14 13:36:37', 'd'),
(2, 0, 17, 'Pats antriausias komentaras ever.', '2017-02-14 13:37:21', 'd'),
(3, 0, 17, 'TreÄiausias komentaras', '2017-02-14 13:40:22', 'd'),
(4, 0, 17, 'KetvirÄiausias komentaras', '2017-02-14 13:44:14', 'd'),
(5, 0, 17, 'Ketvirtas komentaras', '2017-02-14 13:46:41', 'd'),
(6, 4, 17, 'Arklimanto komentaras 2ia tur4t7 b8ti 5ra6omas', '2017-02-14 14:09:06', 'd'),
(7, 3, 18, 'Pirmas komentaras apie kavÄ…', '2017-02-14 16:37:51', 'a'),
(8, 0, 18, 'Kometaras', '2017-02-14 18:24:21', 'a');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `entries`
--

CREATE TABLE `entries` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `entry` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(11) NOT NULL DEFAULT 'a',
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `entries`
--

INSERT INTO `entries` (`id`, `user_id`, `title`, `entry`, `category_id`, `timestamp`, `status`, `picture`) VALUES
(17, '1', 'Ä®raÅ¡as apie BarselonÄ…', '<p>Barselona &ndash; miestas Ispanijos &scaron;iaurÄ—s rytuose, Katalonijos regiono sostinÄ— ir provincijos centras. Tai didelis jÅ«rÅ³ uostas, tarptautinis oro uostas, vienas i&scaron; svarbiausiÅ³ visos Ispanijos ekonomikos ir kultÅ«ros centras. I&scaron;vystyta ma&scaron;inÅ³, tekstilÄ—s, chemijos, popieriaus, poligrafijos, maisto pramonÄ—. Po miestu nutiestas patogus metropolitenas. Barselonoje yra 3 universitetai, Äia rengiamos prekybinÄ—s mugÄ—s ir renginiai. SenamiesÄio branduolys &ndash; Barri Gotic, viduramÅ¾iÅ³ gotikos pastatÅ³ ir baÅ¾nyÄiÅ³ muziejus po atviru dangumi. &Scaron;ioje miesto dalyje yra ir P. Pikaso muziejus. CentrinÄ— Barselonos katedra La Seu &ndash; vienas i&scaron; didÅ¾iausiÅ³ gotikos statiniÅ³ Ispanijoje. Mieste yra daug Ä¯vairiÅ³ architektÅ«ros ir kultÅ«ros paminklÅ³ &ndash; Santa Eul?lia katedra, Ä¯Å¾ymiojo architekto Antonio Gaudi neuÅ¾baigta katedra Sagrada Familia daugiau nei 100 metÅ³ statoma baÅ¾nyÄia (statoma nuo 1882 m., planuojama baigti 2026 m.), San Pablo del Campo baÅ¾nyÄia (X&ndash;XIII a.), gotikinÄ— XIII&ndash;XV a. katedra, Nuestra Se?ora de Belen baÅ¾nyÄia (XVII&ndash;XVIII a. barokas), G&uuml;ell parkas ir kt. Yra daug muziejÅ³ &ndash; istorijos, archeologijos, jÅ«rÅ³, dailÄ—s menÅ³ ir kt. Operos ir baleto teatras. Netoliese aik&scaron;tÄ—s ir rÅ«mai Episcopal Palace, Palau de Generalitat, Placa del Rei). JÅ«ros pakrantÄ—je &ndash; monumentas Kristupui Kolumbui. Mieste labai ry&scaron;ki architekto Antonio Gaud? (1852&ndash;1923) Ä¯taka (XIX a. pabaiga). Barselona Ä¯sikÅ«rusi paÄiuose Ispanijos &scaron;iaurÄ—s rytuose, netoli sienos su PrancÅ«zija. Miesto pakrantes skalauja VidurÅ¾emio jÅ«ra.</p>', 3, '2017-02-14 11:00:42', 'a', ''),
(18, '3', 'Ä®raÅ¡as apie kavÄ…', '<p>Ji kelia aistrÄ…, nuotaikÄ… ir priklausomybÄ™. Tai antras vertingiausias pasaulyje dalykas (po naftos) ir yra svarbus bei reikalingas daugumai Å¾moniÅ³ kasdienoje ir kelionÄ—se, nepriklausomai nuo to, kur vykstama.Kalbame apie kavÄ… ir geriausias vietas ja mÄ—gautis.Adis Abeba, Etiopija</p>\r\n<p>Kai kurie tvirtina, kad Etiopija yra kavos gimtinÄ—, taigi nenuostabu, kad kava Äia kuo Ä¯prasÄiausias ir kasdieni&scaron;kiausias dalykas. Jei bÅ«site pakviesti Ä¯ etiopieti&scaron;kÄ… kavos gÄ—rimo ceremonijÄ…, jokiais bÅ«dais jos nepraÅ¾iopsokite: tai unikalus ir Ä¯mantrus ritualas, kurio niekada nepamir&scaron;ite. Jei tokiame dalyvauti neteks, visuomet yra Tomoka, tradicinÄ— itali&scaron;ko stiliaus kavinukÄ—, kurioje maloniai praleisite laikÄ….</p>\r\n<p>Havana, Kuba</p>\r\n<p>KubieÄiai dievina savo stipriÄ…, juodÄ…, saldÅ¾iÄ… ir patiekiamÄ… maÅ¾uose espresso puodeliuose kavÄ…. UÅ¾auginta Escambray ir Sierra Maestra kalnuose, &scaron;vieÅ¾ia kava suteiks jÄ—gÅ³ kiekvienam keliautojui. Kavos namai Havanoje dygsta kas minutÄ™, tad pasirinkimas tikrai didelis, taÄiau nuodÄ—mÄ— bÅ«tÅ³ praeiti pro &scaron;alÄ¯ ir neuÅ¾sukti Ä¯ vietinÄ™ Caf&eacute; de las Infusiones kavinukÄ™.</p>\r\n<p>Stambulas, Turkija</p>\r\n<p>StebÄ—tina, taÄiau turki&scaron;ka kava (T&uuml;rk kahve) savo gimtinÄ—je nÄ—ra tokia paplitusi kaip arbata (?ay). TaÄiau neverta jaudintis, kad nerasite kur patenkinti savo kavos poreikio. Tradiciniai kavos namai (pvz. Etham Tez?akar Kahveci) siÅ«lo &scaron;vieÅ¾iÄ…, stipriÄ… ir tir&scaron;tÄ… kavÄ…, nuo kurios gali ir plaukai pasi&scaron;iau&scaron;ti.</p>\r\n<p>Medellin, Kolumbija</p>\r\n<p>Kolumbija garsÄ—ja savo sodria, aromatinga kava. Deja, didÅ¾ioji geriausiÅ³ pupeliÅ³ dalis eksportuojama Ä¯ kitas &scaron;alis, tad vietiniams tenka tik vidutinÄ—s kokybÄ—s kava. Viena i&scaron;imtis &ndash; Le Bon Caf&eacute; Medellin mieste. Taip pat galima aplankyti kavamedÅ¾iÅ³ plantacijas Zona Cafetera ir kavos pupeliÅ³ Ä¯sigyti tiesiai i&scaron; augintojÅ³.</p>', 4, '2017-02-14 16:33:31', 'a', ''),
(19, '3', 'Ä®raÅ¡as apie kelionÄ™ Ä¯ BratislavÄ…', '<p>Atkeliavome Ä¯ BratislavÄ… mikroautobusu, pilnu kelionÄ—s draugÅ³. Su kolega papra&scaron;Ä—me bÅ«ti i&scaron;leidÅ¾iami, kadangi norÄ—jome apÅ¾iÅ«rÄ—ti miestÄ…. Kaip vÄ—liau paai&scaron;kÄ—jo, buvome visi&scaron;kai nepasiruo&scaron;Ä™: Å¾inojome keliÄ… Ä¯ hostelÄ¯ tik nuo traukiniÅ³ stoties, bet turÄ—jome problemÅ³ surandant tinkamÄ… autobusÄ…, o vÄ—liau ir patÄ¯ hostelÄ¯. Galiausiai radÄ™ jÄ¯ ir palikÄ™ kai kuriuos savo daiktus, atsisÄ—dome apaÄioje esanÄiame restorane puodeliui arbatos. Kol galvojome, kÄ… Äia nuveikus, per langÄ… pastebÄ—jau naujÄ…jÄ¯ Bratislavos tiltÄ…. Mergina, dirbanti restorane, rekomendavo nueiti Ä¯ kitus restoranus, esanÄius kitoje upÄ—s pusÄ—je. Pagalvojome, jog nukakti iki jÅ³ per Ä¯spÅ«dingÄ…jÄ¯ tiltÄ… bus trumpa, lengva kelionÄ— pÄ—sÄiomis, taÄiau tik i&scaron;Ä—jÄ™ i&scaron; restorano sugebÄ—jome pasiklysti, o beklaidÅ¾iodami atsitrenkti Ä¯ to paties hostelio gyventojÄ…, Ä¯smeigusÄ¯ akis Ä¯ Å¾emÄ—lapÄ¯. PasikalbÄ—jÄ™ nusprendÄ—me, jog suvienijÄ™ jÄ—gas turÄ—sime daugiau &scaron;ansÅ³ rasti tiltÄ…, tad Ä¯ paie&scaron;kas pajudÄ—jome jau trise. PasiekÄ™ tiltÄ… supratome, jog mÅ«sÅ³ visos pastangos jo beie&scaron;kant nuÄ—jo bergÅ¾dÅ¾iai. Tiltas neturÄ—jo jokiÅ³ &scaron;aligatviÅ³, todÄ—l pereiti jÄ¯ pÄ—sÄiomis nebus Ä¯manoma. Ta proga pasitenkinÄ™ tik upÄ—s kranto tyrinÄ—jimu uÅ¾sukome Ä¯ slovakÅ³ nacionalinÄ—s virtuvÄ—s restoranÄ… suvalgyti slovaki&scaron;kÅ³ pietÅ³. Pasmaguriavau slovaki&scaron;ko alaus ir jautienos grieÅ¾inÄ—liÅ³ padaÅ¾e su ryÅ¾iais. Toliau pajudÄ—jome Ä¯ Å¾ymiÄ…jÄ… MÄ—lynÄ…jÄ… BaÅ¾nyÄiÄ…. &Scaron;i baÅ¾nyÄia tapo mano mÄ—gstamiausia vieta Bratislavoje. Bet jei norite apÅ¾iÅ«rÄ—ti ir jos vidÅ³, pirma patikrinkite lankymo valandas, nes kitaip teks baÅ¾nyÄiÄ… apÅ¾iÅ«rinÄ—ti uÅ¾ vartÅ³.</p>\r\n<p>&nbsp;</p>', 2, '2017-02-14 16:40:01', 'a', ''),
(20, '3', 'Ä®raÅ¡as apie TalinÄ… Å¾iemÄ… ', '<p>Ä® paÅ¾intinÄ™ kelionÄ™ autobusu Ä¯ TalinÄ… nusprendÄ—me leistis visai atsitiktinai pamatÄ™ beproti&scaron;kai viliojantÄ¯ tik vienÄ… dienÄ… galiojusÄ¯ pasiÅ«lymÄ…. Taigi, apgalvojÄ™ visus keliavimo ir paÅ¾inimo dÅ¾iaugsmÅ³ pliusus, juo ir pasinaudojom, nors buvome nutarÄ™ niekur Å¾iemÄ… nevaÅ¾iuoti, nes juk &scaron;alta ir apskritai jokiÅ³ autobusÅ³, nÄ— kalbos negali bÅ«ti apie keliavimÄ… &scaron;iuo bÅ«du! Bet i&scaron;Ä—jo kitaip &ndash; tiesiog neatsispyrÄ—m 9 valandÄ—liÅ³ pasikratymui, nes sÄ…lygos buvo itin viliojanÄios, todÄ—l kartais vis nerimavau, kad kur nors vis tiek gausim sÄ…skaitÄ…. Dar niekada nekeliavau Ä¯ kelionÄ™ su grupe, bet nujauÄiau, kad kova dÄ—l vietÅ³ bus atkakli lyg dÄ—l milijono. Ir o taip! I&scaron; pradÅ¾iÅ³ atrodÄ—, kad dar nesusirinkom, bet vos tik atvaÅ¾iavo autobusas, visi i&scaron;lindo i&scaron; visÅ³ kampÅ³ ir kampeliÅ³ ir bÅ«dami jauni ir tikrai vikrÅ«s puolÄ— vidun kovoti dÄ—l padoriausiÅ³ vietÅ³ savo ilgoms kojytÄ—ms i&scaron;tiesti. Vis dÄ—lto neskubÄ—dami Ä¯sitaisÄ—me Ä¯ likusias neblogas vieteles bei i&scaron;kart susipaÅ¾inome su faktu, kad autobusas &ndash; ne pats patogiausias, kokiu teko vaÅ¾iuoti &ndash; dÄ—l vietÅ³ trÅ«kumo atsilenkti sÄ—dyniÅ³ beveik neÄ¯manoma. Neilgai trukus susipaÅ¾inome ir su gide Marija, kuri i&scaron;syk pristatÄ— save kaip 11 sÅ«nÅ³ mamÄ…, kuri dÄ—l &scaron;ios prieÅ¾asties ir mus visus labai myli! PasijutÄ™ paÄiose geriausiose rankose, patraukÄ—me link PanevÄ—Å¾io su i&scaron;ties prastu filmu rusÅ³ kalba fone, kuris neleido miegoti. Tiesa, to filmo metu pramiegojau paÄiÄ… skaniausiÄ… valandÄ… per visÄ… naktÄ¯. Tikrasis miego laikas prasidÄ—jo nuo 4 valandos paryÄiais, kai susirinkome visus i&scaron;sibarsÄiusius keleivius ir pagaliau baigÄ—si rusi&scaron;kas filmas. Staigmena! 07:53 visi mitriai budinosi ir &scaron;vytÄ—jo, nes mikrofonas labai garsiai prane&scaron;Ä—, kad &scaron;tai dabar yra Didysis Sustojimas Ä® TualetÄ… ir daugiau iki pat Talino tokiÅ³ nebus! Taigi, visi judindami savo kenÄianÄius sÄ…narius stojo Ä¯ graÅ¾ias eilutes prie kavos ir higienos ta&scaron;kÅ³. Ir tikrai daugiau sustojimÅ³ iki Talino nebuvo, bet buvo daug Ä¯prastai ne autobusams skirtÅ³ Å¾aidimÅ³ autobuso viduje. Rezultate daug prisijuokÄ—me, kai kas laimÄ—jo dovanÅ³ ir visas autobusas buvo pilnas balionÄ—liÅ³ palubÄ—je. Ir kadangi jau buvo &scaron;viesu, supratome, kad &scaron;is ekipaÅ¾as pilnas puikiai nusiteikusiÅ³ Ä¯ avantiÅ«ras linkusiÅ³ pakeleiviÅ³.</p>', 1, '2017-02-14 16:41:42', 'a', ''),
(21, '3', 'Ä®raÅ¡as apie ParyÅ¾iÅ³', '<p>ParyÅ¾ius (pranc. Paris) &ndash; PrancÅ«zijos sostinÄ—, didÅ¾iausias miestas ir departamentas. 2,2 mln. gyventojÅ³ (2009 m.), aire urbaine (su priemiesÄiais Versaliu, Sen Deni, Ivri, Dransi, ArÅ¾antejumi ir kt.) &ndash; apie 11 mln. ir yra didÅ¾iausia Eurozonos metropolinÄ— zona.</p>\r\n<p>Miestas pastatytas Senos upÄ—s vingyje, abiejuose upÄ—s krantuose. Miestas visame pasaulyje gerai Å¾inomas dÄ—l gausybÄ—s istoriniÅ³ paminklÅ³ bei savo unikalios kultÅ«ros. ParyÅ¾ius yra Il de Franso regiono pagrindinis miestas. PramonÄ—: ma&scaron;inÅ³ gamyba (automobiliai, lÄ—ktuvai), elektrotechnika, poligrafija, maisto perdirbimo, chemijos, lengvoji, madÅ³ prekÄ—s ir galanterija.ParyÅ¾iuje reziduoja daug tarptautiniÅ³ organizacijÅ³ (Å¾inomiausia &ndash; UNESCO). Labai i&scaron;vystytas turizmo sektorius. Daug auk&scaron;tÅ³jÅ³ mokyklÅ³: universitetÅ³ (Å¾ymiausias &ndash; Sorbonos), kolegijÅ³, institutÅ³, akademijÅ³. NacionalinÄ— biblioteka Ä¯kurta dar 1480 metais. MiestÄ… Ä¯kÅ«rÄ— galÅ³ gentis Parisii apie 250&ndash;247 metais prie&scaron; mÅ«sÅ³ erÄ… Senos saloje (kuri dabar vadinama pranc. ?le de la Cit&eacute;). Pirma kartÄ… ra&scaron;ytiniuose &scaron;altiniuose Lutetia paminÄ—ta 53 m. pr. m. e. &scaron;e&scaron;tojoje Julijaus Cezario knygoje apie GalÅ³ karÄ… (De bello Gallico). Apie 52 m. pr. m. e. romÄ—nai uÅ¾Ä—mÄ— miestÄ…. RomÄ—nÅ³ miestas Ä¯sikÅ«rÄ— kairiajame Senos krante. RomÄ—nÅ³ laikais buvo Å¾inomas kaip Civitas Parisiorum arba Parisia. III-IV a. miestas jau vadinamas Parisii, o dabartiniu vardu imtas vadinti nuo V amÅ¾iaus, kai 486 metais FrankÅ³ karalius Chlodvigas I po pergalÄ—s prie&scaron; romÄ—nus Äia perkÄ—lÄ— savo valstybÄ—s sostinÄ™. Po Romos imperijos Å¾lugimo, visÅ³ pirma mieste atsirado religinÄ— architektÅ«ra. Tuo tarpu FrankÅ³ karaliai norÄ—jo uÅ¾imti buvusius romÄ—nÅ³ rÅ«mus, esanÄius Senos saloje (pranc. ?le de la Cit&eacute;). Per daugelÄ¯ metÅ³ rÅ«mai buvo perstatyti ir i&scaron;plÄ—sti, dabar jie vadinami Palais de la Cit&eacute;.</p>', 3, '2017-02-14 16:43:55', 'a', '');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL DEFAULT '3',
  `type` varchar(11) NOT NULL DEFAULT 'a',
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `user_level`, `type`, `timestamp`) VALUES
(1, 'admin', 'admin@mail.lt', '827ccb0eea8a706c4c34a16891f84e7b', 1, 'a', '2017-02-11 20:27:11'),
(3, 'tomas', 'tsmilgius@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 'a', '2017-02-11 19:49:43'),
(4, 'arklimantas', 'arklimantas@arklides.lt', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'a', '2017-02-11 20:21:44'),
(5, 'terminatorius', 'terminator@skynet.lt', '25f9e794323b453885f5181f1b624d0b', 3, 'd', '2017-02-11 20:23:22'),
(7, 'adminukas', 'adminukas@12345.lt', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'a', '2017-02-11 20:30:14'),
(8, 'bronius', 'bronius@one.lt', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'a', '2017-02-12 08:00:04');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `user_level`
--

CREATE TABLE `user_level` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `user_level`
--

INSERT INTO `user_level` (`id`, `name`) VALUES
(3, 'Vartotojas'),
(1, 'Administratorius'),
(2, 'Moderatorius');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `entries`
--
ALTER TABLE `entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
