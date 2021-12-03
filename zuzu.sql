-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 03 dec 2021 om 14:48
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zuzu`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(1024) NOT NULL,
  `description` text NOT NULL,
  `prijs` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `items`
--

INSERT INTO `items` (`id`, `name`, `image`, `description`, `prijs`) VALUES
(1, 'New York Spicy ebi\r\n\r\n', 'https://static.sushipoint.nl/products/cbaae122-8636-46d4-80a1-954bee90ffe8-7.jpg', '8 stuks | Tempura ebi, avocado, komkommer, Spaanse peper, red hot chili saus\r\n\r\n\r\n', '1.00'),
(2, 'New York Yakitori\r\n\r\n', 'https://static.sushipoint.nl/products/11746e9e-612d-4e64-83d6-14443b0f9783-8.jpg\r\n', '8 stuks | Yakitori chicken, crispy onion, lente-ui, yakitori saus\r\n\r\n\r\n', '1.00'),
(3, 'New York Truffled salmon\r\n\r\n', 'https://static.sushipoint.nl/products/5de6fd1c-d5a5-4659-845d-2bf7c882b753-7.jpg', '8 stuks | Gerookte zalm, avocado, komkommer, tempura crisp, rucola, truffelsaus\r\n\r\n\r\n', '1.00'),
(4, 'Crispy Ebi\r\n\r\n', 'https://static.sushipoint.nl/products/5c973299-c520-4173-8012-112f4c9d93ee-8.jpg', '8 stuks | In tempura beslag gefrituurde garnaal, avocado, masago\r\n\r\n\r\n', '11.00'),
(5, 'Crispy Yakitori\r\n\r\n', 'https://static.sushipoint.nl/products/e04d64fc-0965-4a45-bab4-81e4133419ee-8.jpg\r\n\r\n', '8 stuks | Yakitori, avocado, lente-ui\r\n\r\n\r\n', '12.00'),
(6, 'Crispy Veggie\r\n\r\n', 'https://static.sushipoint.nl/products/f98e849f-4e5d-4a51-b2b8-2e29c8500c2c-8.jpg', '8 stuks | Omelet, avocado, komkommer. tofu, daikon\r\n\r\n\r\n', '12.00'),
(7, 'Soft Shell Mango\r\n\r\n', 'https://static.sushipoint.nl/products/94950f27-0de7-4100-91f5-ca48a98a84d1-8.jpg', '8 stuks | Zalm, avocado, komkommer, soft shell van mango en masago topping\r\n\r\n\r\n', '14.00'),
(8, 'Soft Shell Avocado\r\n\r\n', 'https://static.sushipoint.nl/products/b5de6619-9080-461a-8570-8f0342a1134d-8.jpg', '8 stuks | In tempura gefrituurde crab, avocado, komkommer, soft shell van avocado en masago topping\r\n\r\n\r\n', '14.00'),
(9, 'Uramaki Tempura Ebi\r\n\r\n', 'https://static.sushipoint.nl/products/094226c0-2333-4c0e-9376-3de585871dc9-8.jpg', '8 stuks | In tempura gefrituurde garnaal, tobiko, komkommer, sesam\r\n\r\n\r\n', '11.00'),
(10, 'Tuna Top Special\r\n\r\n', 'https://static.sushipoint.nl/products/1bb29b47-ee39-4e0f-a82b-1743952f98a9-10.jpg', '8 stuks | Tonijn tartaar, licht pittig, komkommer, topped met tonijn, spicy mayo en black pearls (massago)\r\n\r\n\r\n', '12.00'),
(11, 'SASHIMI MENU MIXED\r\n\r\n', 'https://static.sushipoint.nl/products/e424eaeb-c85a-4b48-ab35-b986191ec882-12.jpg', '20 stuks / 1 persoon | Zalm & tonijn\r\n\r\n\r\n', '21.00'),
(12, 'SASHIMI MENU ZALM\r\n\r\n', 'https://static.sushipoint.nl/products/4f1f05cd-f980-45c1-b937-b262c0c3474a-12.jpg', '20 stuks / 1 persoon | Zalm\r\n\r\n\r\n', '21.00'),
(13, 'Sashimi Tonijn\r\n\r\n', 'https://static.sushipoint.nl/products/328f2d9e-d62c-40a2-8f1d-9b5ef20b4716-7.jpg', '20 stuks / 1 persoon | Tonijn', '21.00'),
(14, 'Flamed Tuna 4st.\r\n\r\n', 'https://static.sushipoint.nl/products/ea632024-d5d1-48f2-a2cd-a8de7b2b5a1f-5.jpg', 'Gemarineerde en daarna geflambeerde tonijn met sesam (zwart/wit), fijn pepertje en lente-ui\r\n\r\n\r\n', '0.00'),
(15, 'Flamed Salmon 4 st.\r\n\r\n', 'https://static.sushipoint.nl/products/c775c1db-a8ba-4d58-9094-60efef8c4cec-8.jpg', '4 stuks | Gemarineerde en daarna geflambeerde zalm met een klein pepertje (licht pittig)\r\n\r\n\r\n', '6.00'),
(16, 'Miami Cube 4 st.\r\n\r\n', 'https://static.sushipoint.nl/products/5c67748a-9168-4629-8e06-930c51094241-7.jpg', '4 stuks | Gerookte zalm, dille en een klein pepertje\r\n\r\n\r\n', '0.00'),
(17, 'Party Sushi Deluxe\r\n\r\n', 'https://static.sushipoint.nl/products/7d5d180d-ab2e-4ec0-b235-0dfa9bc477e0-5.jpg', '100 stuks | Luxe sushi in de variaties sashimi, Soft Shell, uramaki, maki, nigiri en flamed salmon\r\n\r\n\r\n', '100.00'),
(18, 'Party Sushi 250\r\n\r\n', 'https://static.sushipoint.nl/products/12065fc7-ac11-473e-acf9-a23a10a68279-5.jpg', '250 stuks | Luxe sushi in de variaties sashimi, Soft Shell, uramaki, maki, nigiri en flamed salmon. Feestelijk gepresenteerd op een luxe zilveren schaal. Bij inlevering van de zilveren schaal krijgt u een Super Sushi menu cadeau\r\n\r\n\r\n', '269.00');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
