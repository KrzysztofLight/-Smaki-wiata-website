-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 02, 2024 at 03:22 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smaki_swiata`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jedzenie`
--

CREATE TABLE `jedzenie` (
  `ID` int(11) NOT NULL,
  `Kraj` text NOT NULL,
  `Nazwa` text NOT NULL,
  `Opis` text NOT NULL,
  `LinkZdjecie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `jedzenie`
--

INSERT INTO `jedzenie` (`ID`, `Kraj`, `Nazwa`, `Opis`, `LinkZdjecie`) VALUES
(1, 'Polska', 'Bigos', 'Bigos, zwany też \"kapustą zasmażaną\", to gęsty, aromatyczny gulasz z kiszonej kapusty, mięsa (często wieprzowego i kiełbasy), suszonych grzybów, czasem także śliwek lub innych owoców. Bigos to jedno z najstarszych dań polskiej kuchni, a jego receptura może się różnić w zależności od regionu. Tradycyjnie gotuje się go długo, co pozwala składnikom dobrze się przegryźć i połączyć smaki.', 'https://s3.przepisy.pl/przepisy3ii/img/variants/800x0/bigos-video.jpg'),
(2, 'Polska', 'Pierogi', 'Pierogi to jedno z najbardziej rozpoznawalnych dań polskiej kuchni. To kluski nadziewane różnymi farszami, takimi jak mięso, kapusta i grzyby, ser, lub owoce. Pierogi są gotowane w wodzie, a następnie często podsmażane na patelni z cebulką. Podaje się je z kwaśną śmietaną lub chrzanem. To danie ma wiele regionalnych wariacji i może być zarówno słodkie, jak i słone.', 'https://images.aws.nestle.recipes/resized/234663c91979459895329ad09f5014bc_pierogi_z_kaszank%C4%85__3491_copy_944_531.jpg'),
(3, 'Polska', 'Żurek', 'Żurek to zupa, która jest przygotowywana na zakwasie żytnim. Głównym składnikiem żurku jest kiełbasa, jajka i czasami ziemniaki. Często dodaje się również kawałki białej kiełbasy oraz obranego kwaśnego jabłka, które nadają zupie charakterystyczny smak. Żurek jest danie tradycyjne, często spożywane podczas świąt, szczególnie Wielkanocy.', 'https://www.kwestiasmaku.com/sites/v123.kwestiasmaku.com/files/zurek-z-tartymi-warzywami-01.jpg'),
(4, 'Polska', 'Schabowy z ziemniakami i mizerią', 'Schabowy z ziemniakami i mizerią to klasyczne danie obiadowe, które można znaleźć w wielu polskich domach i restauracjach. To panierowana i smażona kotlet schabowy, podawany z ziemniakami (często gotowanymi lub pieczonymi) oraz mizerią, czyli sałatką z kwaszonej kapusty z dodatkiem śmietany i czasem cebuli. To danie jest bardzo popularne ze względu na swoją prostotę, sycący smak i tradycyjny charakter.', 'https://img.redro.pl/naklejki/kotlet-schabowy-z-ziemniakamii-i-mizeria-700-193090116.jpg'),
(5, 'Francja', 'Boeuf Bourguignon', 'Boeuf Bourguignon to klasyczne danie francuskiej kuchni, które ma swoje korzenie w Burgundii. To gulasz z wolno duszonej wołowiny w czerwonym winie, często z dodatkiem warzyw takich jak marchew, cebula i grzyby. Mięso jest duszone w aromatycznej mieszance ziół i przypraw, co nadaje mu intensywny smak. Boeuf Bourguignon jest jednym z tych dań, które im dłużej się gotuje, tym lepszy smak się uzyskuje. Zwykle podaje się je z puree z ziemniaków lub klusek.', 'https://food-images.files.bbci.co.uk/food/recipes/boeuf_bourguignon_25475_16x9.jpg'),
(6, 'Francja', 'Ratatouille', 'Ratatouille to lekka i aromatyczna potrawa pochodząca z południowej Francji, szczególnie popularna w prowansalskiej kuchni. To duszone warzywa, takie jak bakłażany, cukinia, papryka, pomidory i cebula, często przyprawione ziołami prowansalskimi, takimi jak tymianek i rozmaryn. Warzywa są gotowane na wolnym ogniu, aż do uzyskania kremowej konsystencji, zachowując przy tym świeżość i naturalne smaki. Ratatouille może być podawane zarówno jako samodzielne danie, jak i jako dodatek do mięsa lub ryb.', 'https://posilkiwchorobie.pl/wp-content/uploads/2020/03/ratatouille.jpg'),
(7, 'Francja', 'Coq au Vin', 'Coq au Vin to kolejne klasyczne francuskie danie, które znaczy \"kogut w winie\". Pochodzi z regionu Burgundii i jest to gulasz z duszonego kurczaka (lub koguta, jak w tradycyjnej wersji), gotowanego w czerwonym winie z dodatkiem pieczarek, cebuli, boczku i ziół. Długie duszenie kurczaka w winie sprawia, że mięso staje się niezwykle delikatne i aromatyczne. To danie zwykle podaje się z ziemniakami, puree ziemniaczanym lub świeżą bagietką do namoczenia w sosie.', 'https://www.saveur.com/uploads/2019/01/28/XBHIRQNV2Y57J55PMV2P2WOZS4.jpg?auto=webp&auto=webp&optimize=high&quality=70&width=1440'),
(8, 'Francja', 'Crème Brûlée', 'Crème Brûlée to francuski deser, który zdobył popularność na całym świecie. To delikatna, kremowa budyniowa masa z wanilią, która jest karmelizowana na wierzchu, tworząc chrupiącą warstwę cukru. Przygotowanie Crème Brûlée wymaga precyzji i cierpliwości, aby uzyskać idealną konsystencję kremu i złocistą, chrupiącą warstwę karmelu. Podaje się go zazwyczaj w małych, porcjach w ceramicznych naczyniach, aby goście mogli rozbić chrupiącą warstwę cukru za pomocą łyżeczki i zanurzyć się w gładkim kremie.', 'https://www.canalpluskuchnia.pl/wideo/50248-abc-kuchnia-francuska/08-creme-brulee.jpg'),
(9, 'Włochy', 'Tiramisu', 'Tiramisu to jeden z najbardziej znanych włoskich deserów. To warstwy delikatnych biszkoptów namoczonych w kawie i likierze (zwykle marsala), przełożone kremem z serka mascarpone, cukru i żółtek. Na wierzchu często posypywane jest kakao w proszku. Tiramisu jest słodkie, kremowe i lekko kwaśne, dzięki czemu doskonale balansuje smaki. To idealne danie dla miłośników kawy i słodkich deserów.', 'https://assets.tmecosys.com/image/upload/t_web767x639/img/recipe/ras/Assets/4151862d7c5e06966d37940e4e9b799e/Derivates/56f98aaea5a8f889faaad679943d6ea84f492b79.jpg'),
(10, 'Włochy', 'Ossobuco alla Milanese', 'Ossobuco alla Milanese to klasyczne danie mięsne, które pochodzi z Lombardii. To duszone cielęce łyżki (żebrowa część łyka), gotowane w aromatycznym sosie z warzywami, winem białym, bulionem i pomidorami. Ossobuco ma charakterystyczny wygląd ze szpikowym rdzeniem w środku kości, który dodaje smaku i konsystencji sosowi. Zazwyczaj podaje się go z risotto alla Milanese lub z gremolatą (mieszanką startej skórki cytrynowej, czosnku i natki pietruszki).', 'https://www.insidetherustickitchen.com/wp-content/uploads/2021/05/Ossobuco-1200px-inside-the-rustic-kitchen.jpg'),
(11, 'Włochy', 'Caprese', 'Caprese to proste i klasyczne włoskie danie, które składa się z kilku składników, ale jest pełne smaku. To sałatka z plasterków pomidorów, mozzarelli i świeżej bazylii, skropiona oliwą z oliwek i lekko przyprawiona solą i pieprzem. Caprese jest danie idealne na lato, gdy pomidory i bazylię można znaleźć w pełni sezonu, co sprawia, że danie smakuje wyjątkowo świeżo i intensywnie.', 'https://www.przyslijprzepis.pl/media/cache/default_view/uploads/media/recipe/0002/15/6dc8aca2ccbc537d04a3c98cec2d52ab8336e77b.jpeg'),
(12, 'Włochy', 'Risotto alla Milanese', 'Risotto alla Milanese to klasyczne danie pochodzące z regionu Lombardii we Włoszech. To kremowy ryż gotowany na bulionie, z dodatkiem białego wina, cebuli, aksamitnego masła i szafranu. Szafran nadaje risotto charakterystyczny żółty kolor i delikatny, aromatyczny smak. Gotowanie risotto wymaga cierpliwości i ciągłego mieszania, aby uzyskać idealną konsystencję. Jest to danie, które można podawać jako samodzielne danie lub jako dodatek do mięsa lub ryby.', 'https://winedharma.com/wine-dharma/uploads/2020/10/Risotto-alla-Milanese-recipe-risotto-with-saffron-beef-marrow-Italian-recipe.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kliencipytania`
--

CREATE TABLE `kliencipytania` (
  `ID` int(11) NOT NULL,
  `Imie_i_Nazwisko` text NOT NULL,
  `Email` text NOT NULL,
  `Wiadomosc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `kliencipytania`
--

INSERT INTO `kliencipytania` (`ID`, `Imie_i_Nazwisko`, `Email`, `Wiadomosc`) VALUES
(1, 'awdss wdassss', 'asddd@asdasdasdasd', 'awdssssssssfgdfgghrt'),
(2, 'COCOC COCOC', 'COCCO@OCCOOC', 'COCOCOCOCOCOCOCOCOCOCOCCCOCOCOC'),
(3, 'sadadadadadad', 'adsssss@dasasas', 'asdsdsdsdsd'),
(4, 'sadadadadadad', 'adsssss@dasasas', 'asdsdsdsdsd'),
(5, 'dasasasasasas', 'asdsdsdsdsdsd@dasss', 'asdasdasdasdasdasdasdasdasdasd'),
(6, 'dasasasasasas', 'asdsdsdsdsdsd@dasss', 'asdasdasdasdasdasdasdasdasdasd'),
(7, 'adwswswswsws', 'awsddddddd@asdasdasdasdasd', 'adssssssssssssss'),
(8, 'asdsd', 'asdasdasd@sad', 'adsasdasd'),
(9, 'awdasdawdasd', 'asdasdasd@asdfasdasd', 'asdasdasdasd'),
(10, 'das', 'das@aa', 'das'),
(11, 'wdas', 'real@real.com', 'asda'),
(12, 'awdasdasd', 'asd@asd', 'asdasd'),
(13, 'asdasd', 'asd@asd', 'sdasdasd'),
(14, 'test', 'test@test', 'tesa'),
(15, 'test', 'test@test', 'tesa'),
(16, 'test', 'test@test', 'testtest'),
(17, 'test', 'test@test', 'test'),
(18, 'AAAAA', 'aaaa@aaaaa', 'tasdwasdw'),
(19, 'dasasasasasas', 'sdsdasd@dasasasasas', 'jhgnfn'),
(20, 'sadddddddd', 'adssssssssssss@dasasasasas', 'kjh cghf  hg fg hhg fh ghfg hg fghf hg f'),
(21, 'wdas', 'dawss@sdaaa', 'dsaaaaaaa'),
(22, 'dwassssssss', 'adws@sadddddddd', 'sadddddddddddddd'),
(23, 'dwasss', 'adwssss@sdaaaaaaaa', 'asddddddddddd'),
(24, 'adwsssssssssss', 'sssssdawswswswswswswswsws@sadadadadadadadadadadadadadadadadad', 'adadhgnnvvvvvnhggggggggggg'),
(25, 'adwsssssssssss', 'sssssdawswswswswswswswsws@sadadadadadadadadadadadadadadadadad', 'adadhgnnvvvvvnhggggggggggg'),
(26, 'dawsssss', 'adwswswswsws2@sadddddddddddddd', 'sda@asdddd');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kuchniezdjecia`
--

CREATE TABLE `kuchniezdjecia` (
  `ID` int(11) NOT NULL,
  `ZdjeciaLink` text NOT NULL,
  `NazwaKuchni` text DEFAULT NULL,
  `Opis` text DEFAULT NULL,
  `DodatkowyLink` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `kuchniezdjecia`
--

INSERT INTO `kuchniezdjecia` (`ID`, `ZdjeciaLink`, `NazwaKuchni`, `Opis`, `DodatkowyLink`) VALUES
(4, 'https://www.interhome.pl/upload/travelguide/13053/conversions/kuchnia-polska-hero-responsive.jpg', 'Kuchnia Polska', 'Zanurz się w tradycji i autentycznych smakach polskiej kuchni - wyśmienite dania, które rozgrzeją Twoje serce i podniebienie, od babci do stołu!', 'kuchnia_polska'),
(5, 'https://www.garneczki.pl/blog/wp-content/uploads/2021/09/kuchnia-francuska-scaled-e1631526237495-1440x893.jpg', 'Kuchnia Francuska', 'Odkryj smak Francji w naszych daniach - elegancja, smaki pełne harmonii i aromaty, które przeniosą Cię w podróż do Paryża w każdym kęsie.', 'kuchnia_francuska'),
(6, 'https://tadar.pl/images/_news_shot/8kuchniawloska.jpeg', 'Kuchnia Włoska', 'Poczuj smak Włoch w każdym kęsie - świeże składniki, tradycyjne receptury i wyrafinowany smak, który przeniesie Cię do słonecznej Italii na talerzu!', 'kuchnia_wloska');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `ID` int(11) NOT NULL,
  `Imie` text NOT NULL,
  `Opis` text NOT NULL,
  `Zdjecie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`ID`, `Imie`, `Opis`, `Zdjecie`) VALUES
(1, 'Krzysztof', 'Założyciel firmy', 'https://media.discordapp.net/attachments/760919113627074631/993875465708245053/mGrgaoh2.gif?ex=6630f628&is=661e8128&hm=0c4070e0a3739e5f476832c529881768903531fcf564afb193b506c6584ea19f&='),
(2, 'Chat GPT', 'Najlepszy pracownik firmy', 'https://tenor.com/view/cejm-cavalcade-rodifa-juhulati-gif-21763328'),
(3, 'GitHub Copilot', 'Praktykant 24/7', 'https://tenor.com/view/erm-what-meme-gif-15099278808009342621'),
(4, 'Stack Overflow', 'Inwestor, posiada -0.125% udziałów', 'https://tenor.com/view/emoji-shocked-face-spinning-scared-gif-23491042');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `jedzenie`
--
ALTER TABLE `jedzenie`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `kliencipytania`
--
ALTER TABLE `kliencipytania`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `kuchniezdjecia`
--
ALTER TABLE `kuchniezdjecia`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jedzenie`
--
ALTER TABLE `jedzenie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kliencipytania`
--
ALTER TABLE `kliencipytania`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kuchniezdjecia`
--
ALTER TABLE `kuchniezdjecia`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
