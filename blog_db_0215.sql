-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017 m. Vas 15 d. 17:47
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
(1, 0, 17, 'asasasa', '2017-02-14 13:36:37', 'a'),
(2, 0, 17, 'Pats antriausias komentaras ever.', '2017-02-14 13:37:21', 'a'),
(3, 0, 17, 'TreÄiausias komentaras', '2017-02-14 13:40:22', 'a'),
(4, 0, 17, 'KetvirÄiausias komentaras', '2017-02-14 13:44:14', 'd'),
(5, 0, 17, 'Ketvirtas komentaras', '2017-02-14 13:46:41', 'd'),
(6, 4, 17, 'Arklimanto komentaras 2ia tur4t7 b8ti 5ra6omas', '2017-02-14 14:09:06', 'a'),
(7, 3, 18, 'Pirmas komentaras apie kavÄ…', '2017-02-14 16:37:51', 'a'),
(8, 0, 18, 'Kometaras', '2017-02-14 18:24:21', 'a'),
(9, 1, 23, 'dsadsadsadasd', '2017-02-14 20:35:53', 'a'),
(10, 0, 23, 'Dar vienas komentaras', '2017-02-14 22:38:06', 'd'),
(11, 0, 17, 'VÄ—liausias vasario 14 d. komentaras. Labai Ä¯domus ir naudingas.', '2017-02-14 23:48:01', 'a'),
(12, 0, 20, 'KaÅ¾kaip keista, jog Äia pats pirmasis komentaras', '2017-02-14 23:57:28', 'a'),
(13, 1, 24, 'OK, kaÅ¾kas vyksta nelabai vykÄ™s komentaras, bet reikia', '2017-02-15 13:40:25', 'a'),
(14, 9, 32, 'AÅ¡ tai nemanau, kad Äia geras puslapis. Toli graÅ¾u.', '2017-02-15 13:41:12', 'a'),
(15, 0, 32, 'Cha cha galima komentuoti neprisijungus tuoj jums bus Å¡akÄ—s!', '2017-02-15 13:41:39', 'a'),
(16, 1, 32, 'Anonimus tuoj iÅ¡jungsim.', '2017-02-15 13:42:09', 'a'),
(17, 0, 31, 'Taip dar vienas komentaras, kaÅ¾in kas juos skaitys', '2017-02-15 13:42:50', 'a'),
(18, 0, 32, 'Taip dar vienas komentaras, kaÅ¾in kas juos skaitys', '2017-02-15 13:43:03', 'a'),
(19, 0, 27, 'Noriu ir raÅ¡au bet kÄ….', '2017-02-15 13:43:20', 'a'),
(20, 4, 27, 'Kiauligaudas - gaidys!', '2017-02-15 13:43:51', 'a'),
(21, 9, 27, 'Tuoj tu pasigailÄ—si arklimantai', '2017-02-15 13:44:41', 'a'),
(22, 0, 27, 'RaminkitÄ—s, blin.', '2017-02-15 13:45:03', 'a'),
(23, 0, 30, 'nesÄ…monÄ—s', '2017-02-15 13:45:16', 'a'),
(24, 8, 30, 'Pritariu Anonimas 2017-02-15 13:45:16', '2017-02-15 13:45:41', 'a'),
(25, 1, 30, 'Tomas - uÅ¾banintas.', '2017-02-15 13:46:26', 'a'),
(26, 10, 32, 'Dar vienas komentaras ir niekas manÄ™s neiÅ¡jungs.', '2017-02-15 15:00:19', 'a');

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
  `picture` varchar(255) NOT NULL DEFAULT 'http://lorempixel.com/950/600/'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Sukurta duomenų kopija lentelei `entries`
--

INSERT INTO `entries` (`id`, `user_id`, `title`, `entry`, `category_id`, `timestamp`, `status`, `picture`) VALUES
(24, '9', 'KelionÄ— Ä¯ pasaulio kraÅ¡tÄ… arba TalinÄ…', '<p>Ä® paÅ¾intinÄ™ kelionÄ™ autobusu Ä¯ TalinÄ… nusprendÄ—me leistis visai atsitiktinai pamatÄ™ beproti&scaron;kai viliojantÄ¯ tik vienÄ… dienÄ… galiojusÄ¯ pasiÅ«lymÄ…. Taigi, apgalvojÄ™ visus keliavimo ir paÅ¾inimo dÅ¾iaugsmÅ³ pliusus, juo ir pasinaudojom, nors buvome nutarÄ™ niekur Å¾iemÄ… nevaÅ¾iuoti, nes juk &scaron;alta ir apskritai jokiÅ³ autobusÅ³, nÄ— kalbos negali bÅ«ti apie keliavimÄ… &scaron;iuo bÅ«du! Bet i&scaron;Ä—jo kitaip &ndash; tiesiog neatsispyrÄ—m 9 valandÄ—liÅ³ pasikratymui, nes sÄ…lygos buvo itin viliojanÄios, todÄ—l kartais vis nerimavau, kad kur nors vis tiek gausim sÄ…skaitÄ…. Dar niekada nekeliavau Ä¯ kelionÄ™ su grupe, bet nujauÄiau, kad kova dÄ—l vietÅ³ bus atkakli lyg dÄ—l milijono. Ir o taip! I&scaron; pradÅ¾iÅ³ atrodÄ—, kad dar nesusirinkom, bet vos tik atvaÅ¾iavo autobusas, visi i&scaron;lindo i&scaron; visÅ³ kampÅ³ ir kampeliÅ³ ir bÅ«dami jauni ir tikrai vikrÅ«s puolÄ— vidun kovoti dÄ—l padoriausiÅ³ vietÅ³ savo ilgoms kojytÄ—ms i&scaron;tiesti. Vis dÄ—lto neskubÄ—dami Ä¯sitaisÄ—me Ä¯ likusias neblogas vieteles bei i&scaron;kart susipaÅ¾inome su faktu, kad autobusas &ndash; ne pats patogiausias, kokiu teko vaÅ¾iuoti &ndash; dÄ—l vietÅ³ trÅ«kumo atsilenkti sÄ—dyniÅ³ beveik neÄ¯manoma. Neilgai trukus susipaÅ¾inome ir su gide Marija, kuri i&scaron;syk pristatÄ— save kaip 11 sÅ«nÅ³ mamÄ…, kuri dÄ—l &scaron;ios prieÅ¾asties ir mus visus labai myli! PasijutÄ™ paÄiose geriausiose rankose, patraukÄ—me link PanevÄ—Å¾io su i&scaron;ties prastu filmu rusÅ³ kalba fone, kuris neleido miegoti. Tiesa, to filmo metu pramiegojau paÄiÄ… skaniausiÄ… valandÄ… per visÄ… naktÄ¯. Tikrasis miego laikas prasidÄ—jo nuo 4 valandos paryÄiais, kai susirinkome visus i&scaron;sibarsÄiusius keleivius ir pagaliau baigÄ—si rusi&scaron;kas filmas. Staigmena! 07:53 visi mitriai budinosi ir &scaron;vytÄ—jo, nes mikrofonas labai garsiai prane&scaron;Ä—, kad &scaron;tai dabar yra Didysis Sustojimas Ä® TualetÄ… ir daugiau iki pat Talino tokiÅ³ nebus! Taigi, visi judindami savo kenÄianÄius sÄ…narius stojo Ä¯ graÅ¾ias eilutes prie kavos ir higienos ta&scaron;kÅ³. Ir tikrai daugiau sustojimÅ³ iki Talino nebuvo, bet buvo daug Ä¯prastai ne autobusams skirtÅ³ Å¾aidimÅ³ autobuso viduje. Rezultate daug prisijuokÄ—me, kai kas laimÄ—jo dovanÅ³ ir visas autobusas buvo pilnas balionÄ—liÅ³ palubÄ—je. Ir kadangi jau buvo &scaron;viesu, supratome, kad &scaron;is ekipaÅ¾as pilnas puikiai nusiteikusiÅ³ Ä¯ avantiÅ«ras linkusiÅ³ pakeleiviÅ³.&nbsp;Ä® paÅ¾intinÄ™ kelionÄ™ autobusu Ä¯ TalinÄ… nusprendÄ—me leistis visai atsitiktinai pamatÄ™ beproti&scaron;kai viliojantÄ¯ tik vienÄ… dienÄ… galiojusÄ¯ pasiÅ«lymÄ…. Taigi, apgalvojÄ™ visus keliavimo ir paÅ¾inimo dÅ¾iaugsmÅ³ pliusus, juo ir pasinaudojom, nors buvome nutarÄ™ niekur Å¾iemÄ… nevaÅ¾iuoti, nes juk &scaron;alta ir apskritai jokiÅ³ autobusÅ³, nÄ— kalbos negali bÅ«ti apie keliavimÄ… &scaron;iuo bÅ«du! Bet i&scaron;Ä—jo kitaip &ndash; tiesiog neatsispyrÄ—m 9 valandÄ—liÅ³ pasikratymui, nes sÄ…lygos buvo itin viliojanÄios, todÄ—l kartais vis nerimavau, kad kur nors vis tiek gausim sÄ…skaitÄ…. Dar niekada nekeliavau Ä¯ kelionÄ™ su grupe, bet nujauÄiau, kad kova dÄ—l vietÅ³ bus atkakli lyg dÄ—l milijono. Ir o taip! I&scaron; pradÅ¾iÅ³ atrodÄ—, kad dar nesusirinkom, bet vos tik atvaÅ¾iavo autobusas, visi i&scaron;lindo i&scaron; visÅ³ kampÅ³ ir kampeliÅ³ ir bÅ«dami jauni ir tikrai vikrÅ«s puolÄ— vidun kovoti dÄ—l padoriausiÅ³ vietÅ³ savo ilgoms kojytÄ—ms i&scaron;tiesti. Vis dÄ—lto neskubÄ—dami Ä¯sitaisÄ—me Ä¯ likusias neblogas vieteles bei i&scaron;kart susipaÅ¾inome su faktu, kad autobusas &ndash; ne pats patogiausias, kokiu teko vaÅ¾iuoti &ndash; dÄ—l vietÅ³ trÅ«kumo atsilenkti sÄ—dyniÅ³ beveik neÄ¯manoma. Neilgai trukus susipaÅ¾inome ir su gide Marija, kuri i&scaron;syk pristatÄ— save kaip 11 sÅ«nÅ³ mamÄ…, kuri dÄ—l &scaron;ios prieÅ¾asties ir mus visus labai myli! PasijutÄ™ paÄiose geriausiose rankose, patraukÄ—me link PanevÄ—Å¾io su i&scaron;ties prastu filmu rusÅ³ kalba fone, kuris neleido miegoti. Tiesa, to filmo metu pramiegojau paÄiÄ… skaniausiÄ… valandÄ… per visÄ… naktÄ¯. Tikrasis miego laikas prasidÄ—jo nuo 4 valandos paryÄiais, kai susirinkome visus i&scaron;sibarsÄiusius keleivius ir pagaliau baigÄ—si rusi&scaron;kas filmas. Staigmena! 07:53 visi mitriai budinosi ir &scaron;vytÄ—jo, nes mikrofonas labai garsiai prane&scaron;Ä—, kad &scaron;tai dabar yra Didysis Sustojimas Ä® TualetÄ… ir daugiau iki pat Talino tokiÅ³ nebus! Taigi, visi judindami savo kenÄianÄius sÄ…narius stojo Ä¯ graÅ¾ias eilutes prie kavos ir higienos ta&scaron;kÅ³. Ir tikrai daugiau sustojimÅ³ iki Talino nebuvo, bet buvo daug Ä¯prastai ne autobusams skirtÅ³ Å¾aidimÅ³ autobuso viduje. Rezultate daug prisijuokÄ—me, kai kas laimÄ—jo dovanÅ³ ir visas autobusas buvo pilnas balionÄ—liÅ³ palubÄ—je. Ir kadangi jau buvo &scaron;viesu, supratome, kad &scaron;is ekipaÅ¾as pilnas puikiai nusiteikusiÅ³ Ä¯ avantiÅ«ras linkusiÅ³ pakeleiviÅ³.</p>', 1, '2017-02-15 13:08:44', 'a', 'http://www.adamspinnacletours.com.au/assets/rsz_bus_lunch__tram_2-900x500.jpg'),
(25, '4', 'Labai nuobodus Ä¯raÅ¡as apie kelionÄ™ Ä¯ BratislavÄ…', '<p>Atkeliavome Ä¯ BratislavÄ… mikroautobusu, pilnu kelionÄ—s draugÅ³. Su kolega papra&scaron;Ä—me bÅ«ti i&scaron;leidÅ¾iami, kadangi norÄ—jome apÅ¾iÅ«rÄ—ti miestÄ…. Kaip vÄ—liau paai&scaron;kÄ—jo, buvome visi&scaron;kai nepasiruo&scaron;Ä™: Å¾inojome keliÄ… Ä¯ hostelÄ¯ tik nuo traukiniÅ³ stoties, bet turÄ—jome problemÅ³ surandant tinkamÄ… autobusÄ…, o vÄ—liau ir patÄ¯ hostelÄ¯. Galiausiai radÄ™ jÄ¯ ir palikÄ™ kai kuriuos savo daiktus, atsisÄ—dome apaÄioje esanÄiame restorane puodeliui arbatos. Kol galvojome, kÄ… Äia nuveikus, per langÄ… pastebÄ—jau naujÄ…jÄ¯ Bratislavos tiltÄ…. Mergina, dirbanti restorane, rekomendavo nueiti Ä¯ kitus restoranus, esanÄius kitoje upÄ—s pusÄ—je. Pagalvojome, jog nukakti iki jÅ³ per Ä¯spÅ«dingÄ…jÄ¯ tiltÄ… bus trumpa, lengva kelionÄ— pÄ—sÄiomis, taÄiau tik i&scaron;Ä—jÄ™ i&scaron; restorano sugebÄ—jome pasiklysti, o beklaidÅ¾iodami atsitrenkti Ä¯ to paties hostelio gyventojÄ…, Ä¯smeigusÄ¯ akis Ä¯ Å¾emÄ—lapÄ¯. PasikalbÄ—jÄ™ nusprendÄ—me, jog suvienijÄ™ jÄ—gas turÄ—sime daugiau &scaron;ansÅ³ rasti tiltÄ…, tad Ä¯ paie&scaron;kas pajudÄ—jome jau trise. PasiekÄ™ tiltÄ… supratome, jog mÅ«sÅ³ visos pastangos jo beie&scaron;kant nuÄ—jo bergÅ¾dÅ¾iai. Tiltas neturÄ—jo jokiÅ³ &scaron;aligatviÅ³, todÄ—l pereiti jÄ¯ pÄ—sÄiomis nebus Ä¯manoma. Ta proga pasitenkinÄ™ tik upÄ—s kranto tyrinÄ—jimu uÅ¾sukome Ä¯ slovakÅ³ nacionalinÄ—s virtuvÄ—s restoranÄ… suvalgyti slovaki&scaron;kÅ³ pietÅ³. Pasmaguriavau slovaki&scaron;ko alaus ir jautienos grieÅ¾inÄ—liÅ³ padaÅ¾e su ryÅ¾iais. Toliau pajudÄ—jome Ä¯ Å¾ymiÄ…jÄ… MÄ—lynÄ…jÄ… BaÅ¾nyÄiÄ…. &Scaron;i baÅ¾nyÄia tapo mano mÄ—gstamiausia vieta Bratislavoje. Bet jei norite apÅ¾iÅ«rÄ—ti ir jos vidÅ³, pirma patikrinkite lankymo valandas, nes kitaip teks baÅ¾nyÄiÄ… apÅ¾iÅ«rinÄ—ti uÅ¾ vartÅ³. Atkeliavome Ä¯ BratislavÄ… mikroautobusu, pilnu kelionÄ—s draugÅ³. Su kolega papra&scaron;Ä—me bÅ«ti i&scaron;leidÅ¾iami, kadangi norÄ—jome apÅ¾iÅ«rÄ—ti miestÄ…. Kaip vÄ—liau paai&scaron;kÄ—jo, buvome visi&scaron;kai nepasiruo&scaron;Ä™: Å¾inojome keliÄ… Ä¯ hostelÄ¯ tik nuo traukiniÅ³ stoties, bet turÄ—jome problemÅ³ surandant tinkamÄ… autobusÄ…, o vÄ—liau ir patÄ¯ hostelÄ¯. Galiausiai radÄ™ jÄ¯ ir palikÄ™ kai kuriuos savo daiktus, atsisÄ—dome apaÄioje esanÄiame restorane puodeliui arbatos. Kol galvojome, kÄ… Äia nuveikus, per langÄ… pastebÄ—jau naujÄ…jÄ¯ Bratislavos tiltÄ…. Mergina, dirbanti restorane, rekomendavo nueiti Ä¯ kitus restoranus, esanÄius kitoje upÄ—s pusÄ—je. Pagalvojome, jog nukakti iki jÅ³ per Ä¯spÅ«dingÄ…jÄ¯ tiltÄ… bus trumpa, lengva kelionÄ— pÄ—sÄiomis, taÄiau tik i&scaron;Ä—jÄ™ i&scaron; restorano sugebÄ—jome pasiklysti, o beklaidÅ¾iodami atsitrenkti Ä¯ to paties hostelio gyventojÄ…, Ä¯smeigusÄ¯ akis Ä¯ Å¾emÄ—lapÄ¯. PasikalbÄ—jÄ™ nusprendÄ—me, jog suvienijÄ™ jÄ—gas turÄ—sime daugiau &scaron;ansÅ³ rasti tiltÄ…, tad Ä¯ paie&scaron;kas pajudÄ—jome jau trise. PasiekÄ™ tiltÄ… supratome, jog mÅ«sÅ³ visos pastangos jo beie&scaron;kant nuÄ—jo bergÅ¾dÅ¾iai. Tiltas neturÄ—jo jokiÅ³ &scaron;aligatviÅ³, todÄ—l pereiti jÄ¯ pÄ—sÄiomis nebus Ä¯manoma. Ta proga pasitenkinÄ™ tik upÄ—s kranto tyrinÄ—jimu uÅ¾sukome Ä¯ slovakÅ³ nacionalinÄ—s virtuvÄ—s restoranÄ… suvalgyti slovaki&scaron;kÅ³ pietÅ³. Pasmaguriavau slovaki&scaron;ko alaus ir jautienos grieÅ¾inÄ—liÅ³ padaÅ¾e su ryÅ¾iais. Toliau pajudÄ—jome Ä¯ Å¾ymiÄ…jÄ… MÄ—lynÄ…jÄ… BaÅ¾nyÄiÄ…. &Scaron;i baÅ¾nyÄia tapo mano mÄ—gstamiausia vieta Bratislavoje. Bet jei norite apÅ¾iÅ«rÄ—ti ir jos vidÅ³, pirma patikrinkite lankymo valandas, nes kitaip teks baÅ¾nyÄiÄ… apÅ¾iÅ«rinÄ—ti uÅ¾ vartÅ³.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 1, '2017-02-15 13:25:30', 'a', 'http://europe-studies.com/wp-content/uploads/Bratislava.jpg'),
(26, '4', 'Atostogos po tiltu', '<p>kartais visi&scaron;kai nesinori su savimi ne&scaron;iotis fotoaparato. Tokiais atvejais labai praverÄia po ranka turÄ—ti mobilÅ³jÄ¯ telefonÄ… su fotografavimo funkcija. Telefonai yra puikus sprendimas, kai kÄ… nors nufotografuoti sugalvojame visi&scaron;kai spontani&scaron;kai, nes tam nereikia jokio specialaus pasiruo&scaron;imo. Pateikiame keletÄ… patarimÅ³, praversianÄiÅ³ tiek turintiems iPhone, Android, tiek dar praÄ—jusio de&scaron;imtmeÄio Nokia.SpalvosJei jÅ«sÅ³ nuotraukos atrodo tarsi fotografuotos niÅ«riÄ… dienÄ… ar per rÅ«kÄ…, gali uÅ¾tekti telefono nustatymuose pakeisti keletÄ… parametrÅ³. Pakeitus kontrastÄ… nuotraukos taps ry&scaron;kesnÄ—s, ne tokios i&scaron;blukusios ir su ai&scaron;kesniais objektais. Arba tiesiog nustatykite geresnÄ™ kokybÄ™ ir didesnio formato nuotraukas.DelsimasTelefonÅ³ fotoaparatai turi vienÄ… neigiamÄ… savybÄ™ &ndash; ilgÄ… i&scaron;laikymÄ…. DaÅ¾nai nuspaudus mygtukÄ… ir pasigirdus fotografavimo garsui nuotrauka uÅ¾fiksuojama tik po kokiÅ³ 2-3 sekundÅ¾iÅ³. Per tiek laiko vaizdas gali pasikeisti, susilieti, o fotografuojami Å¾monÄ—s &ndash; pajudÄ—ti. Kad to i&scaron;vengtumÄ—te, prie&scaron; fotografuodami skaiÄiuojant iki 3, mygtukÄ… spauskite kiek anksÄiau, kai suskaiÄiuosite iki 2. Ir, Å¾inoma, drÄ…siai eksperimentuokite ir darykite daug kadrÅ³.&Scaron;viesa. TaisyklÄ— paprasta &ndash; kuo daugiau &scaron;viesos, tuo geriau. Jei jÅ«sÅ³ fotoaparate nÄ—ra blykstÄ—s ir nuotraukos gaunasi tamsokos, neskubÄ—kite jÅ³ trinti. Yra ne viena programÄ—lÄ—, leidÅ¾ianti pakoreguoti nuotraukas, tad pa&scaron;viesinus jos bus kuo puikiausios. Jei yra galimybÄ—, pasistenkite, kad jÅ«sÅ³ fotografuojamas objektas bÅ«tÅ³ ap&scaron;viestas. Tik atminkite, kad &scaron;viesa turi kristi ant jo, bet ne sklisti i&scaron; uÅ¾ jo, nes kitaip nuotraukoje matysis tik objekto siluetas. Kad spalvos ir ry&scaron;kumas gautÅ³si kuo natÅ«ralesni, pasistenkite sufokusuoti kadrÄ… Ä¯ tamsesnÄ¯ ta&scaron;kÄ….&nbsp;kartais visi&scaron;kai nesinori su savimi ne&scaron;iotis fotoaparato. Tokiais atvejais labai praverÄia po ranka turÄ—ti mobilÅ³jÄ¯ telefonÄ… su fotografavimo funkcija. Telefonai yra puikus sprendimas, kai kÄ… nors nufotografuoti sugalvojame visi&scaron;kai spontani&scaron;kai, nes tam nereikia jokio specialaus pasiruo&scaron;imo. Pateikiame keletÄ… patarimÅ³, praversianÄiÅ³ tiek turintiems iPhone, Android, tiek dar praÄ—jusio de&scaron;imtmeÄio Nokia.SpalvosJei jÅ«sÅ³ nuotraukos atrodo tarsi fotografuotos niÅ«riÄ… dienÄ… ar per rÅ«kÄ…, gali uÅ¾tekti telefono nustatymuose pakeisti keletÄ… parametrÅ³. Pakeitus kontrastÄ… nuotraukos taps ry&scaron;kesnÄ—s, ne tokios i&scaron;blukusios ir su ai&scaron;kesniais objektais. Arba tiesiog nustatykite geresnÄ™ kokybÄ™ ir didesnio formato nuotraukas.DelsimasTelefonÅ³ fotoaparatai turi vienÄ… neigiamÄ… savybÄ™ &ndash; ilgÄ… i&scaron;laikymÄ…. DaÅ¾nai nuspaudus mygtukÄ… ir pasigirdus fotografavimo garsui nuotrauka&nbsp;</p>', 2, '2017-02-15 13:28:03', 'a', 'http://www.sehinc.com/sites/default/files/styles/900x500-crop-center/public/portfolios/slider/0127b.jpg?itok=vmMI7QZ0'),
(27, '8', 'Ä®raÅ¡as apie ParyÅ¾iÅ³', '<p>ParyÅ¾ius (pranc. Paris) &ndash; PrancÅ«zijos sostinÄ—, didÅ¾iausias miestas ir departamentas. 2,2 mln. gyventojÅ³ (2009 m.), aire urbaine (su priemiesÄiais Versaliu, Sen Deni, Ivri, Dransi, ArÅ¾antejumi ir kt.) &ndash; apie 11 mln. ir yra didÅ¾iausia Eurozonos metropolinÄ— zona.</p>\r\n<p>Miestas pastatytas Senos upÄ—s vingyje, abiejuose upÄ—s krantuose. Miestas visame pasaulyje gerai Å¾inomas dÄ—l gausybÄ—s istoriniÅ³ paminklÅ³ bei savo unikalios kultÅ«ros. ParyÅ¾ius yra Il de Franso regiono pagrindinis miestas. PramonÄ—: ma&scaron;inÅ³ gamyba (automobiliai, lÄ—ktuvai), elektrotechnika, poligrafija, maisto perdirbimo, chemijos, lengvoji, madÅ³ prekÄ—s ir galanterija.ParyÅ¾iuje reziduoja daug tarptautiniÅ³ organizacijÅ³ (Å¾inomiausia &ndash; UNESCO). Labai i&scaron;vystytas turizmo sektorius. Daug auk&scaron;tÅ³jÅ³ mokyklÅ³: universitetÅ³ (Å¾ymiausias &ndash; Sorbonos), kolegijÅ³, institutÅ³, akademijÅ³. NacionalinÄ— biblioteka Ä¯kurta dar 1480 metais. MiestÄ… Ä¯kÅ«rÄ— galÅ³ gentis Parisii apie 250&ndash;247 metais prie&scaron; mÅ«sÅ³ erÄ… Senos saloje (kuri dabar vadinama pranc. ?le de la Cit&eacute;). Pirma kartÄ… ra&scaron;ytiniuose &scaron;altiniuose Lutetia paminÄ—ta 53 m. pr. m. e. &scaron;e&scaron;tojoje Julijaus Cezario knygoje apie GalÅ³ karÄ… (De bello Gallico). Apie 52 m. pr. m. e. romÄ—nai uÅ¾Ä—mÄ— miestÄ…. RomÄ—nÅ³ miestas Ä¯sikÅ«rÄ— kairiajame Senos krante. RomÄ—nÅ³ laikais buvo Å¾inomas kaip Civitas Parisiorum arba Parisia. III-IV a. miestas jau vadinamas Parisii, o dabartiniu vardu imtas vadinti nuo V amÅ¾iaus, kai 486 metais FrankÅ³ karalius Chlodvigas I po pergalÄ—s prie&scaron; romÄ—nus Äia perkÄ—lÄ— savo valstybÄ—s sostinÄ™. Po Romos imperijos Å¾lugimo, visÅ³ pirma mieste atsirado religinÄ— architektÅ«ra. Tuo tarpu FrankÅ³ karaliai norÄ—jo uÅ¾imti buvusius romÄ—nÅ³ rÅ«mus, esanÄius Senos saloje (pranc. ?le de la Cit&eacute;). Per daugelÄ¯ metÅ³ rÅ«mai buvo perstatyti ir i&scaron;plÄ—sti, dabar jie vadinami Palais de la Cit&eacute;. ParyÅ¾ius (pranc. Paris) &ndash; PrancÅ«zijos sostinÄ—, didÅ¾iausias miestas ir departamentas. 2,2 mln. gyventojÅ³ (2009 m.), aire urbaine (su priemiesÄiais Versaliu, Sen Deni, Ivri, Dransi, ArÅ¾antejumi ir kt.) &ndash; apie 11 mln. ir yra didÅ¾iausia Eurozonos metropolinÄ— zona.</p>\r\n<p>Miestas pastatytas Senos upÄ—s vingyje, abiejuose upÄ—s krantuose. Miestas visame pasaulyje gerai Å¾inomas dÄ—l gausybÄ—s istoriniÅ³ paminklÅ³ bei savo unikalios kultÅ«ros. ParyÅ¾ius yra Il de Franso regiono pagrindinis miestas. PramonÄ—: ma&scaron;inÅ³ gamyba (automobiliai, lÄ—ktuvai), elektrotechnika, poligrafija, maisto perdirbimo, chemijos, lengvoji, madÅ³ prekÄ—s ir galanterija.ParyÅ¾iuje reziduoja daug tarptautiniÅ³ organizacijÅ³ (Å¾inomiausia &ndash; UNESCO). Labai i&scaron;vystytas turizmo sektorius. Daug auk&scaron;tÅ³jÅ³ mokyklÅ³: universitetÅ³ (Å¾ymiausias &ndash; Sorbonos), kolegijÅ³, institutÅ³, akademijÅ³. NacionalinÄ— biblioteka Ä¯kurta dar 1480 metais. MiestÄ… Ä¯kÅ«rÄ— galÅ³ gentis Parisii apie 250&ndash;247 metais prie&scaron; mÅ«sÅ³ erÄ… Senos saloje (kuri dabar vadinama pranc. ?le de la Cit&eacute;). Pirma kartÄ… ra&scaron;ytiniuose &scaron;altiniuose Lutetia paminÄ—ta 53 m. pr. m. e. &scaron;e&scaron;tojoje Julijaus Cezario knygoje apie GalÅ³ karÄ… (De bello Gallico). Apie 52 m. pr. m. e. romÄ—nai uÅ¾Ä—mÄ— miestÄ…. RomÄ—nÅ³ miestas Ä¯sikÅ«rÄ— kairiajame Senos krante. RomÄ—nÅ³ laikais buvo Å¾inomas kaip Civitas Parisiorum arba Parisia. III-IV a. miestas jau vadinamas Parisii, o dabartiniu vardu imtas vadinti nuo V amÅ¾iaus, kai 486 metais FrankÅ³ karalius Chlodvigas I po pergalÄ—s prie&scaron; romÄ—nus Äia perkÄ—lÄ— savo valstybÄ—s sostinÄ™. Po Romos imperijos Å¾lugimo, visÅ³ pirma mieste atsirado religinÄ— architektÅ«ra. Tuo tarpu FrankÅ³ karaliai norÄ—jo uÅ¾imti buvusius romÄ—nÅ³ rÅ«mus, esanÄius Senos saloje (pranc. ?le de la Cit&eacute;). Per daugelÄ¯ metÅ³ rÅ«mai buvo perstatyti ir i&scaron;plÄ—sti, dabar jie vadinami Palais de la Cit&eacute;.</p>', 3, '2017-02-15 13:30:25', 'a', 'https://www.sunhug.co.uk/images/paris/paris-2.jpg'),
(28, '8', 'Ä®raÅ¡as apie dviraÄiÅ³ marÅ¡rutus', '<p>Vienas geriausiÅ³ bÅ«dÅ³ paÅ¾inti kra&scaron;tÄ… &ndash; keliauti dviraÄiu. MÄ—gstantiems &scaron;iÄ… transporto priemonÄ™, rekomenduojame 10 Ä¯spÅ«dingiausiÅ³ mar&scaron;rutÅ³ visame pasaulyje.</p>\r\n<p>Isle of Wight, Anglija</p>\r\n<p>The Isle of Wight yra vienas geriausiÅ³ mar&scaron;rutÅ³, besidriekianÄiÅ³ per Ä¯vairÅ³ DidÅ¾iosios Britanijos gamtovaizdÄ¯: sodrios kalvos, apsuptos jÅ«ros, siauri keliukai, aptverti gyvatvoriÅ³, gilios ir paslaptingos Å¾alios daubos ir bene ry&scaron;kiausias salos akcentas &ndash; baltos uolÅ³ keteros. Nepaisant to, kad vaÅ¾inÄ—jimas dviraÄiu yra seniai Å¾inoma laisvalaikio leidimo forma, Wight i&scaron;populiarÄ—jo tik per pastaruosius kelis metus. &Scaron;is mar&scaron;rutas populiariausias tarp jaunÅ³ ir stilingÅ³ londonieÄiÅ³, i&scaron;trÅ«kstanÄiÅ³ i&scaron; didmiesÄio romanti&scaron;kam savaitgaliui prie jÅ«ros. Juolab, kad Äia netrÅ«ksta barÅ³, vie&scaron;buÄiÅ³ ar festivaliÅ³.</p>\r\n<p>West Coast, Tasmanija, Australija</p>\r\n<p>Atrodo, kad Tasmanija yra per maÅ¾a, kad Äia bÅ«tÅ³ galima rasti laukinÄ—s gamtos plotÅ³, taÄiau Å¾mogaus beveik nepaliestomis erdvÄ—mis Ä¯ valias galima mÄ—gautis vakarinÄ—je pakrantÄ—je. &Scaron;ias vietoves dviraÄiais Ä¯veikti nÄ—ra paprasta, nes reljefas kalvotas ir vingiuotas, taÄiau vargÄ… atpirks aplinkos groÅ¾is &ndash; Tasmanijos Å¾ymiausias kalnas (Cradle mountain), jaukus pakrantÄ—s miestelis Strahan, auk&scaron;Äiausias krioklys Montezuma Falls ir graÅ¾iausias eÅ¾eras Lake St Clair.</p>\r\n<p>Luberon and Mont Ventoux, Provansas, PrancÅ«zija</p>\r\n<p>Kovoti su Luberon kalvomis, apsikrovus turistiniu kroviniu, &ndash; nemenkas i&scaron;&scaron;Å«kis, taÄiau keli &scaron;imtai kilometrÅ³ puikiai suÅ¾ymÄ—tais dviraÄiÅ³ takais yra kartu ir puiki mintis. Juolab, kad pakeliui pravaÅ¾iuosite SenovÄ—s Romos griuvÄ—sius, viduramÅ¾i&scaron;kus dvarus ir aromatingus vynuogynus. &Scaron;is saulÄ—s lepinamas Provanso pakra&scaron;tys yra nedideliÅ³ vynuogynÅ³ ir senovi&scaron;kÅ³ kaimÅ³ mi&scaron;inys, Ä¯sikÅ«rÄ™s ant kalnuotÅ³ &scaron;laitÅ³. VÄ—sÅ«s pu&scaron;ynai ir mÄ—lyni levandÅ³ laukai driekiasi abiejose kelio pusÄ—se. Vis dÄ—lto, svarbiausias objektas &scaron;iame mar&scaron;rute yra legendinis Mont Ventoux, kelios Tour de France atkarpos, lydinÄios dviratininkus link vir&scaron;ukalnÄ—s.</p>\r\n<p>Vienas geriausiÅ³ bÅ«dÅ³ paÅ¾inti kra&scaron;tÄ… &ndash; keliauti dviraÄiu. MÄ—gstantiems &scaron;iÄ… transporto priemonÄ™, rekomenduojame 10 Ä¯spÅ«dingiausiÅ³ mar&scaron;rutÅ³ visame pasaulyje.</p>\r\n<p>Isle of Wight, Anglija</p>\r\n<p>The Isle of Wight yra vienas geriausiÅ³ mar&scaron;rutÅ³, besidriekianÄiÅ³ per Ä¯vairÅ³ DidÅ¾iosios Britanijos gamtovaizdÄ¯: sodrios kalvos, apsuptos jÅ«ros, siauri keliukai, aptverti gyvatvoriÅ³, gilios ir paslaptingos Å¾alios daubos ir bene ry&scaron;kiausias salos akcentas &ndash; baltos uolÅ³ keteros. Nepaisant to, kad vaÅ¾inÄ—jimas dviraÄiu yra seniai Å¾inoma laisvalaikio leidimo forma, Wight i&scaron;populiarÄ—jo tik per pastaruosius kelis metus. &Scaron;is mar&scaron;rutas populiariausias tarp jaunÅ³ ir stilingÅ³ londonieÄiÅ³, i&scaron;trÅ«kstanÄiÅ³ i&scaron; didmiesÄio romanti&scaron;kam savaitgaliui prie jÅ«ros. Juolab, kad Äia netrÅ«ksta barÅ³, vie&scaron;buÄiÅ³ ar festivaliÅ³.</p>\r\n<p>West Coast, Tasmanija, Australija</p>\r\n<p>Atrodo, kad Tasmanija yra per maÅ¾a, kad Äia bÅ«tÅ³ galima rasti laukinÄ—s gamtos plotÅ³, taÄiau Å¾mogaus beveik nepaliestomis erdvÄ—mis Ä¯ valias galima mÄ—gautis vakarinÄ—je pakrantÄ—je. &Scaron;ias vietoves dviraÄiais Ä¯veikti nÄ—ra paprasta, nes reljefas kalvotas ir vingiuotas, taÄiau vargÄ… atpirks aplinkos groÅ¾is &ndash; Tasmanijos Å¾ymiausias kalnas (Cradle mountain), jaukus pakrantÄ—s miestelis Strahan, auk&scaron;Äiausias krioklys Montezuma Falls ir graÅ¾iausias eÅ¾eras Lake St Clair.</p>\r\n<p>Luberon and Mont Ventoux, Provansas, PrancÅ«zija</p>\r\n<p>Kovoti su Luberon kalvomis, apsikrovus turistiniu kroviniu, &ndash; nemenkas i&scaron;&scaron;Å«kis, taÄiau keli &scaron;imtai kilometrÅ³ puikiai suÅ¾ymÄ—tais dviraÄiÅ³ takais yra kartu ir puiki mintis. Juolab, kad pakeliui pravaÅ¾iuosite SenovÄ—s Romos griuvÄ—sius, viduramÅ¾i&scaron;kus dvarus ir aromatingus vynuogynus. &Scaron;is saulÄ—s lepinamas Provanso pakra&scaron;tys yra nedideliÅ³ vynuogynÅ³ ir senovi&scaron;kÅ³ kaimÅ³ mi&scaron;inys, Ä¯sikÅ«rÄ™s ant kalnuotÅ³ &scaron;laitÅ³. VÄ—sÅ«s pu&scaron;ynai ir mÄ—lyni levandÅ³ laukai driekiasi abiejose kelio pusÄ—se. Vis dÄ—lto, svarbiausias objektas &scaron;iame mar&scaron;rute yra legendinis Mont Ventoux, kelios Tour de France atkarpos, lydinÄios dviratininkus link vir&scaron;ukalnÄ—s.</p>', 4, '2017-02-15 13:31:25', 'a', 'http://www.therealnorth.com/images/DISCOVER/BIKING/bike4---900x500.jpg'),
(29, '10', 'Patarimas apie laiko juostas', '<p>Kiekvienais metais du kartus per metus vyksta laiko persukimas &ndash; sukinÄ—jame laikrodÅ¾iÅ³ rodykles pirmyn arba atgal. PaskutinÄ¯ kovo sekmadienÄ¯ 3 val. nakties pereiname Ä¯ vasaros laikÄ… ir persukame laikrodÅ¾ius viena valanda pirmyn. O paskutinÄ¯ spalio sekmadienÄ¯ 4 val. nakties pereiname Ä¯ Å¾iemos laikÄ… ir persukame laikrodÅ¾ius viena valanda atgal.Taip pat elgiamasi daugelyje Europos &scaron;aliÅ³. Pagal dvejopo laiko sistemÄ… gyvena apie 100 pasaulio valstybiÅ³. Sezoninis laikas ir laiko persukimas visame pasaulyje vertinamas prie&scaron;taringai. Specialistai iki &scaron;iol nesutaria, kas yra svarbiau: vasaros laiko nauda energijos taupymui ar Å¾ala Å¾moniÅ³ sveikatai. Daugelis lauÅ¾o galvÄ… dÄ—l persukamo laiko, jei tuo metu vyksta kelionÄ—. Kyla klausimai &bdquo;Ä® kokÄ¯ laikÄ… atsiÅ¾velgti?&ldquo;, &bdquo;Ar spÄ—siu Ä¯ skrydÄ¯?&ldquo; ir pan. Patarimas vienas: vadovaukitÄ—s tik teisingai nustatytais laikrodÅ¾iais pagal &scaron;alies, kurioje esate, laiko juostÄ… ar sezoninÄ¯ laikÄ… bei kelionÄ—s biliete nurodytais laikais. LÄ—ktuvo, traukinio, autobuso, kelto ir kt. biliete, vie&scaron;buÄio vauÄeryje ar kitokiuose kelionÄ—s dokumentuose visuomet nurodomas i&scaron;vykimo laikas pagal i&scaron;vykimo &scaron;alies laikÄ…, o atvykimo laikas &ndash; pagal atvykimo &scaron;alies laikÄ…. Svarbiausia nepamir&scaron;ti persukti laikrodÅ¾iÅ³ ir laiko persukimas nekels tiek streso ;)&nbsp;Kiekvienais metais du kartus per metus vyksta laiko persukimas &ndash; sukinÄ—jame laikrodÅ¾iÅ³ rodykles pirmyn arba atgal. PaskutinÄ¯ kovo sekmadienÄ¯ 3 val. nakties pereiname Ä¯ vasaros laikÄ… ir persukame laikrodÅ¾ius viena valanda pirmyn. O paskutinÄ¯ spalio sekmadienÄ¯ 4 val. nakties pereiname Ä¯ Å¾iemos laikÄ… ir persukame laikrodÅ¾ius viena valanda atgal.Taip pat elgiamasi daugelyje Europos &scaron;aliÅ³. Pagal dvejopo laiko sistemÄ… gyvena apie 100 pasaulio valstybiÅ³. Sezoninis laikas ir laiko persukimas visame pasaulyje vertinamas prie&scaron;taringai. Specialistai iki &scaron;iol nesutaria, kas yra svarbiau: vasaros laiko nauda energijos taupymui ar Å¾ala Å¾moniÅ³ sveikatai. Daugelis lauÅ¾o galvÄ… dÄ—l persukamo laiko, jei tuo metu vyksta kelionÄ—. Kyla klausimai &bdquo;Ä® kokÄ¯ laikÄ… atsiÅ¾velgti?&ldquo;, &bdquo;Ar spÄ—siu Ä¯ skrydÄ¯?&ldquo; ir pan. Patarimas vienas: vadovaukitÄ—s tik teisingai nustatytais laikrodÅ¾iais pagal &scaron;alies, kurioje esate, laiko juostÄ… ar sezoninÄ¯ laikÄ… bei kelionÄ—s biliete nurodytais laikais. LÄ—ktuvo, traukinio, autobuso, kelto ir kt. biliete, vie&scaron;buÄio vauÄeryje ar kitokiuose kelionÄ—s dokumentuose visuomet nurodomas i&scaron;vykimo laikas pagal i&scaron;vykimo &scaron;alies laikÄ…, o atvykimo laikas &ndash; pagal atvykimo &scaron;alies laikÄ…. Svarbiausia nepamir&scaron;ti persukti laikrodÅ¾iÅ³ ir laiko persukimas nekels tiek streso ;)</p>', 5, '2017-02-15 13:33:16', 'a', 'http://www.ouest-france.fr/sites/default/files/styles/image-900x500/public/2016/09/23/dans-cet-avion-fini-le-jet-lag.jpg?itok=0Sa4BQWy'),
(30, '10', 'Ä®raÅ¡as kelionÄ—s draudimÄ…', '<p>DaÅ¾nai klausiate savÄ™s ir kitÅ³, kam reikalingas kelioniÅ³ draudimas ir kada derÄ—tÅ³ draustis keliaujant atostogauti. Atsakome Ä¯ &scaron;iuos ir kitus klausimus, susijusius su kelioniÅ³ draudimu.Ne paslaptis, jog nauja aplinka, pasikeitusios klimato sÄ…lygos gali palikti ne tik nei&scaron;dildomus Ä¯spÅ«dÅ¾ius, bet ir sukelti netikÄ—tÅ³ pavojÅ³. Tiesa, kad nedaugelis prie&scaron; kelionÄ™ pagalvoja apie gresianÄias nelaimes. Deja, niekada negali Å¾inoti, kur tyko nelaimÄ—. Ir jei ji uÅ¾klups kelionÄ—je, daÅ¾niausiai vaistai, medicininÄ— pagalba ir pana&scaron;ios paslaugos kainuos Å¾ymiai brangiau nei Äia, Lietuvoje. TodÄ—l ruo&scaron;damiesi Ä¯ kelionÄ™ nepamir&scaron;kite Ä¯ rankinÄ™ Ä¯sidÄ—ti ne tik bilietus, asmens dokumentus, bet ir kelionÄ—s draudimo polisÄ…. KelioniÅ³ draudimas ne tik apmoka uÅ¾sienyje patirtus nuostolius, bet ir suteikia galimybÄ™ pasinaudoti visÄ… parÄ… veikianÄia pagalbos linija. Tai svarbu tuomet, kai asmuo pirmÄ… kartÄ… lankosi tam tikroje valstybÄ—je bei tiksliai neÅ¾ino, kÄ… daryti atsitikus nelaimei. Jei kelionÄ—s draudimo polisÄ… Ä¯sigijote Lietuvoje, draudimas galioja tik uÅ¾ Lietuvos Respublikos ribÅ³. DraudÅ¾iantis galima pasirinkti draudimo apsaugos galiojimo teritorijÄ…, pvz., RytÅ³ EuropÄ…, BaltarusijÄ…, visÄ… pasaulÄ¯ ar kt. KelioniÅ³ draudimas daÅ¾niausiai i&scaron;duodamas atskirai kelionei. DaÅ¾nai keliaujantiems asmenims toks draudimas gali bÅ«ti i&scaron;duodamas ilgesniam, iki vieneriÅ³ metÅ³, laikotarpiui. Tokiu bÅ«du galima sutaupyti dalÄ¯ draudimo Ä¯mokos, apribojant maksimalÅ³ uÅ¾sienyje praleistÅ³ dienÅ³ skaiÄiÅ³. &Scaron;is kelioniÅ³ draudimas negalioja vadinamuosiuose &bdquo;kar&scaron;tuose ta&scaron;kuose&ldquo;, kur vyksta politiniai neramumai ar siauÄia gamtos stichijos, todÄ—l prie&scaron; vykstant Ä¯ valstybes, kurios priskirtinos prie nesaugiÅ³, rekomenduojama pasidomÄ—ti informacija uÅ¾sienio reikalÅ³ ministerijÅ³ svetainÄ—se ar pasitarti su draudimo specialistais.&nbsp;DaÅ¾nai klausiate savÄ™s ir kitÅ³, kam reikalingas kelioniÅ³ draudimas ir kada derÄ—tÅ³ draustis keliaujant atostogauti. Atsakome Ä¯ &scaron;iuos ir kitus klausimus, susijusius su kelioniÅ³ draudimu.Ne paslaptis, jog nauja aplinka, pasikeitusios klimato sÄ…lygos gali palikti ne tik nei&scaron;dildomus Ä¯spÅ«dÅ¾ius, bet ir sukelti netikÄ—tÅ³ pavojÅ³. Tiesa, kad nedaugelis prie&scaron; kelionÄ™ pagalvoja apie gresianÄias nelaimes. Deja, niekada negali Å¾inoti, kur tyko nelaimÄ—. Ir jei ji uÅ¾klups kelionÄ—je, daÅ¾niausiai vaistai, medicininÄ— pagalba ir pana&scaron;ios paslaugos kainuos Å¾ymiai brangiau nei Äia, Lietuvoje. TodÄ—l ruo&scaron;damiesi Ä¯ kelionÄ™ nepamir&scaron;kite Ä¯ rankinÄ™ Ä¯sidÄ—ti ne tik bilietus, asmens dokumentus, bet ir kelionÄ—s draudimo polisÄ…. KelioniÅ³ draudimas ne tik apmoka uÅ¾sienyje patirtus nuostolius, bet ir suteikia galimybÄ™ pasinaudoti visÄ… parÄ… veikianÄia pagalbos linija. Tai svarbu tuomet, kai asmuo pirmÄ… kartÄ… lankosi tam tikroje valstybÄ—je bei tiksliai neÅ¾ino, kÄ… daryti atsitikus nelaimei. Jei kelionÄ—s draudimo polisÄ… Ä¯sigijote Lietuvoje, draudimas galioja tik uÅ¾ Lietuvos Respublikos ribÅ³. DraudÅ¾iantis galima pasirinkti draudimo apsaugos galiojimo teritorijÄ…, pvz., RytÅ³ EuropÄ…, BaltarusijÄ…, visÄ… pasaulÄ¯ ar kt. KelioniÅ³ draudimas daÅ¾niausiai i&scaron;duodamas atskirai kelionei. DaÅ¾nai keliaujantiems asmenims toks draudimas gali bÅ«ti i&scaron;duodamas ilgesniam, iki vieneriÅ³ metÅ³, laikotarpiui. Tokiu bÅ«du galima sutaupyti dalÄ¯ draudimo Ä¯mokos, apribojant maksimalÅ³ uÅ¾sienyje praleistÅ³ dienÅ³ skaiÄiÅ³. &Scaron;is kelioniÅ³ draudimas negalioja vadinamuosiuose &bdquo;kar&scaron;tuose ta&scaron;kuose&ldquo;, kur vyksta politiniai neramumai ar siauÄia gamtos stichijos, todÄ—l prie&scaron; vykstant Ä¯ valstybes, kurios priskirtinos prie nesaugiÅ³, rekomenduojama pasidomÄ—ti informacija uÅ¾sienio reikalÅ³ ministerijÅ³ svetainÄ—se ar pasitarti su draudimo specialistais.&nbsp;</p>', 5, '2017-02-15 13:35:42', 'a', 'http://everythingabouttanzania.com/wp-content/uploads/2016/11/Travel-Insurance-900x500.jpg'),
(31, '1', 'Ä®raÅ¡as fotografavimÄ… telefonu', '<p>kartais visi&scaron;kai nesinori su savimi ne&scaron;iotis fotoaparato. Tokiais atvejais labai praverÄia po ranka turÄ—ti mobilÅ³jÄ¯ telefonÄ… su fotografavimo funkcija. Telefonai yra puikus sprendimas, kai kÄ… nors nufotografuoti sugalvojame visi&scaron;kai spontani&scaron;kai, nes tam nereikia jokio specialaus pasiruo&scaron;imo. Pateikiame keletÄ… patarimÅ³, praversianÄiÅ³ tiek turintiems iPhone, Android, tiek dar praÄ—jusio de&scaron;imtmeÄio Nokia.SpalvosJei jÅ«sÅ³ nuotraukos atrodo tarsi fotografuotos niÅ«riÄ… dienÄ… ar per rÅ«kÄ…, gali uÅ¾tekti telefono nustatymuose pakeisti keletÄ… parametrÅ³. Pakeitus kontrastÄ… nuotraukos taps ry&scaron;kesnÄ—s, ne tokios i&scaron;blukusios ir su ai&scaron;kesniais objektais. Arba tiesiog nustatykite geresnÄ™ kokybÄ™ ir didesnio formato nuotraukas.DelsimasTelefonÅ³ fotoaparatai turi vienÄ… neigiamÄ… savybÄ™ &ndash; ilgÄ… i&scaron;laikymÄ…. DaÅ¾nai nuspaudus mygtukÄ… ir pasigirdus fotografavimo garsui nuotrauka uÅ¾fiksuojama tik po kokiÅ³ 2-3 sekundÅ¾iÅ³. Per tiek laiko vaizdas gali pasikeisti, susilieti, o fotografuojami Å¾monÄ—s &ndash; pajudÄ—ti. Kad to i&scaron;vengtumÄ—te, prie&scaron; fotografuodami skaiÄiuojant iki 3, mygtukÄ… spauskite kiek anksÄiau, kai suskaiÄiuosite iki 2. Ir, Å¾inoma, drÄ…siai eksperimentuokite ir darykite daug kadrÅ³.&Scaron;viesa. TaisyklÄ— paprasta &ndash; kuo daugiau &scaron;viesos, tuo geriau. Jei jÅ«sÅ³ fotoaparate nÄ—ra blykstÄ—s ir nuotraukos gaunasi tamsokos, neskubÄ—kite jÅ³ trinti. Yra ne viena programÄ—lÄ—, leidÅ¾ianti pakoreguoti nuotraukas, tad pa&scaron;viesinus jos bus kuo puikiausios. Jei yra galimybÄ—, pasistenkite, kad jÅ«sÅ³ fotografuojamas objektas bÅ«tÅ³ ap&scaron;viestas. Tik atminkite, kad &scaron;viesa turi kristi ant jo, bet ne sklisti i&scaron; uÅ¾ jo, nes kitaip nuotraukoje matysis tik objekto siluetas. Kad spalvos ir ry&scaron;kumas gautÅ³si kuo natÅ«ralesni, pasistenkite sufokusuoti kadrÄ… Ä¯ tamsesnÄ¯ ta&scaron;kÄ…. kartais visi&scaron;kai nesinori su savimi ne&scaron;iotis fotoaparato. Tokiais atvejais labai praverÄia po ranka turÄ—ti mobilÅ³jÄ¯ telefonÄ… su fotografavimo funkcija. Telefonai yra puikus sprendimas, kai kÄ… nors nufotografuoti sugalvojame visi&scaron;kai spontani&scaron;kai, nes tam nereikia jokio specialaus pasiruo&scaron;imo. Pateikiame keletÄ… patarimÅ³, praversianÄiÅ³ tiek turintiems iPhone, Android, tiek dar praÄ—jusio de&scaron;imtmeÄio Nokia.SpalvosJei jÅ«sÅ³ nuotraukos atrodo tarsi fotografuotos niÅ«riÄ… dienÄ… ar per rÅ«kÄ…, gali uÅ¾tekti telefono nustatymuose pakeisti keletÄ… parametrÅ³. Pakeitus kontrastÄ… nuotraukos taps ry&scaron;kesnÄ—s, ne tokios i&scaron;blukusios ir su ai&scaron;kesniais objektais. Arba tiesiog nustatykite geresnÄ™ kokybÄ™ ir didesnio formato nuotraukas.DelsimasTelefonÅ³ fotoaparatai turi vienÄ… neigiamÄ… savybÄ™ &ndash; ilgÄ… i&scaron;laikymÄ…. DaÅ¾nai nuspaudus mygtukÄ… ir pasigirdus fotografavimo garsui nuotrauka uÅ¾fiksuojama tik po kokiÅ³ 2-3 sekundÅ¾iÅ³. Per tiek laiko vaizdas gali pasikeisti, susilieti, o fotografuojami Å¾monÄ—s &ndash; pajudÄ—ti. Kad to i&scaron;vengtumÄ—te, prie&scaron; fotografuodami skaiÄiuojant iki 3, mygtukÄ… spauskite kiek anksÄiau, kai suskaiÄiuosite iki 2. Ir, Å¾inoma, drÄ…siai eksperimentuokite ir darykite daug kadrÅ³.&Scaron;viesa. TaisyklÄ— paprasta &ndash; kuo daugiau &scaron;viesos, tuo geriau. Jei jÅ«sÅ³ fotoaparate nÄ—ra blykstÄ—s ir nuotraukos gaunasi tamsokos, neskubÄ—kite jÅ³ trinti. Yra ne viena programÄ—lÄ—, leidÅ¾ianti pakoreguoti nuotraukas, tad pa&scaron;viesinus jos bus kuo puikiausios. Jei yra galimybÄ—, pasistenkite, kad jÅ«sÅ³ fotografuojamas objektas bÅ«tÅ³ ap&scaron;viestas. Tik atminkite, kad &scaron;viesa turi kristi ant jo, bet ne sklisti i&scaron; uÅ¾ jo, nes kitaip nuotraukoje matysis tik objekto siluetas. Kad spalvos ir ry&scaron;kumas gautÅ³si kuo natÅ«ralesni, pasistenkite sufokusuoti kadrÄ… Ä¯ tamsesnÄ¯ ta&scaron;kÄ….</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', 5, '2017-02-15 13:37:14', 'a', 'https://ratti-report.com/site/wp-content/uploads/2016/11/HTC-20161114051000717-900x500.jpeg'),
(32, '1', 'Apie marÅ¡rutus kavos mÄ—gÄ—jams', '<p>Ji kelia aistrÄ…, nuotaikÄ… ir priklausomybÄ™. Tai antras vertingiausias pasaulyje dalykas (po naftos) ir yra svarbus bei reikalingas daugumai Å¾moniÅ³ kasdienoje ir kelionÄ—se, nepriklausomai nuo to, kur vykstama.Kalbame apie kavÄ… ir geriausias vietas ja mÄ—gautis.Adis Abeba, Etiopija</p>\r\n<p>Kai kurie tvirtina, kad Etiopija yra kavos gimtinÄ—, taigi nenuostabu, kad kava Äia kuo Ä¯prasÄiausias ir kasdieni&scaron;kiausias dalykas. Jei bÅ«site pakviesti Ä¯ etiopieti&scaron;kÄ… kavos gÄ—rimo ceremonijÄ…, jokiais bÅ«dais jos nepraÅ¾iopsokite: tai unikalus ir Ä¯mantrus ritualas, kurio niekada nepamir&scaron;ite. Jei tokiame dalyvauti neteks, visuomet yra Tomoka, tradicinÄ— itali&scaron;ko stiliaus kavinukÄ—, kurioje maloniai praleisite laikÄ….</p>\r\n<p>Havana, Kuba</p>\r\n<p>KubieÄiai dievina savo stipriÄ…, juodÄ…, saldÅ¾iÄ… ir patiekiamÄ… maÅ¾uose espresso puodeliuose kavÄ…. UÅ¾auginta Escambray ir Sierra Maestra kalnuose, &scaron;vieÅ¾ia kava suteiks jÄ—gÅ³ kiekvienam keliautojui. Kavos namai Havanoje dygsta kas minutÄ™, tad pasirinkimas tikrai didelis, taÄiau nuodÄ—mÄ— bÅ«tÅ³ praeiti pro &scaron;alÄ¯ ir neuÅ¾sukti Ä¯ vietinÄ™ Caf&eacute; de las Infusiones kavinukÄ™.</p>\r\n<p>Stambulas, Turkija</p>\r\n<p>StebÄ—tina, taÄiau turki&scaron;ka kava (T&uuml;rk kahve) savo gimtinÄ—je nÄ—ra tokia paplitusi kaip arbata (?ay). TaÄiau neverta jaudintis, kad nerasite kur patenkinti savo kavos poreikio. Tradiciniai kavos namai (pvz. Etham Tez?akar Kahveci) siÅ«lo &scaron;vieÅ¾iÄ…, stipriÄ… ir tir&scaron;tÄ… kavÄ…, nuo kurios gali ir plaukai pasi&scaron;iau&scaron;ti.</p>\r\n<p>Medellin, Kolumbija</p>\r\n<p>Kolumbija garsÄ—ja savo sodria, aromatinga kava. Deja, didÅ¾ioji geriausiÅ³ pupeliÅ³ dalis eksportuojama Ä¯ kitas &scaron;alis, tad vietiniams tenka tik vidutinÄ—s kokybÄ—s kava. Viena i&scaron;imtis &ndash; Le Bon Caf&eacute; Medellin mieste. Taip pat galima aplankyti kavamedÅ¾iÅ³ plantacijas Zona Cafetera ir kavos pupeliÅ³ Ä¯sigyti tiesiai i&scaron; augintojÅ³.</p>\r\n<p>Ji kelia aistrÄ…, nuotaikÄ… ir priklausomybÄ™. Tai antras vertingiausias pasaulyje dalykas (po naftos) ir yra svarbus bei reikalingas daugumai Å¾moniÅ³ kasdienoje ir kelionÄ—se, nepriklausomai nuo to, kur vykstama.Kalbame apie kavÄ… ir geriausias vietas ja mÄ—gautis.Adis Abeba, Etiopija</p>\r\n<p>Kai kurie tvirtina, kad Etiopija yra kavos gimtinÄ—, taigi nenuostabu, kad kava Äia kuo Ä¯prasÄiausias ir kasdieni&scaron;kiausias dalykas. Jei bÅ«site pakviesti Ä¯ etiopieti&scaron;kÄ… kavos gÄ—rimo ceremonijÄ…, jokiais bÅ«dais jos nepraÅ¾iopsokite: tai unikalus ir Ä¯mantrus ritualas, kurio niekada nepamir&scaron;ite. Jei tokiame dalyvauti neteks, visuomet yra Tomoka, tradicinÄ— itali&scaron;ko stiliaus kavinukÄ—, kurioje maloniai praleisite laikÄ….</p>\r\n<p>Havana, Kuba</p>\r\n<p>KubieÄiai dievina savo stipriÄ…, juodÄ…, saldÅ¾iÄ… ir patiekiamÄ… maÅ¾uose espresso puodeliuose kavÄ…. UÅ¾auginta Escambray ir Sierra Maestra kalnuose, &scaron;vieÅ¾ia kava suteiks jÄ—gÅ³ kiekvienam keliautojui. Kavos namai Havanoje dygsta kas minutÄ™, tad pasirinkimas tikrai didelis, taÄiau nuodÄ—mÄ— bÅ«tÅ³ praeiti pro &scaron;alÄ¯ ir neuÅ¾sukti Ä¯ vietinÄ™ Caf&eacute; de las Infusiones kavinukÄ™.</p>\r\n<p>Stambulas, Turkija</p>\r\n<p>StebÄ—tina, taÄiau turki&scaron;ka kava (T&uuml;rk kahve) savo gimtinÄ—je nÄ—ra tokia paplitusi kaip arbata (?ay). TaÄiau neverta jaudintis, kad nerasite kur patenkinti savo kavos poreikio. Tradiciniai kavos namai (pvz. Etham Tez?akar Kahveci) siÅ«lo &scaron;vieÅ¾iÄ…, stipriÄ… ir tir&scaron;tÄ… kavÄ…, nuo kurios gali ir plaukai pasi&scaron;iau&scaron;ti.</p>\r\n<p>Medellin, Kolumbija</p>\r\n<p>Kolumbija garsÄ—ja savo sodria, aromatinga kava. Deja, didÅ¾ioji geriausiÅ³ pupeliÅ³ dalis eksportuojama Ä¯ kitas &scaron;alis, tad vietiniams tenka tik vidutinÄ—s kokybÄ—s kava. Viena i&scaron;imtis &ndash; Le Bon Caf&eacute; Medellin mieste. Taip pat galima aplankyti kavamedÅ¾iÅ³ plantacijas Zona Cafetera ir kavos pupeliÅ³ Ä¯sigyti tiesiai i&scaron; augintojÅ³.</p>\r\n<p>&nbsp;</p>', 4, '2017-02-15 13:39:23', 'a', 'http://donjuancr.com/assets/components/phpthumbof/cache/coffee_light.13e1b38d13b32f8c0495713dd8c11f6f.jpg');

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
(3, 'tomas', 'tsmilgius@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 2, 'd', '2017-02-11 19:49:43'),
(4, 'arklimantas', 'arklimantas@arklides.lt', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'a', '2017-02-11 20:21:44'),
(5, 'terminatorius', 'terminator@skynet.lt', '25f9e794323b453885f5181f1b624d0b', 3, 'a', '2017-02-11 20:23:22'),
(7, 'adminukas', 'adminukas@12345.lt', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'a', '2017-02-11 20:30:14'),
(8, 'bronius', 'bronius@one.lt', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'a', '2017-02-12 08:00:04'),
(9, 'Kiauligaudas', 'kiaules@books.lt', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'a', '2017-02-15 13:05:37'),
(10, 'petras', '12345@mail.lt', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'a', '2017-02-15 13:06:52'),
(11, 'kava', 'kava.lt', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'a', '2017-02-15 15:17:42');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `entries`
--
ALTER TABLE `entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
