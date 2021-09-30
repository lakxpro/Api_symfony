-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 30. zář 2021, 13:26
-- Verze serveru: 10.4.14-MariaDB
-- Verze PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `demo_api`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'user1', '$2y$13$GFRMDrsNu3Oww0W4SDTc5eJp66GWJh2zBUXM.9LfNaRQRGlXY9m2m', 'brambor@brambor.com'),
(2, 'user12', '$2y$13$BabG7n4MQYUiyYPNDif3XuOjqLK1Rov1ILazsaNBj8XbaLS47Ay7K', 'sadbiah@asdas.com'),
(3, 'user2', '$2y$13$sLHkgo7TAuebb0xfM/SWyed8L4pVeVKGbkCRt7Wto8c0/oETcv5vO', 'brambor2@brambor.com'),
(4, 'user3', '$2y$13$ikEuiXVOMuTnlmFptteUTe4LemhhEYbFYmvme6lDI5MZsiuaV94kq', 'brambor2@brambor.com'),
(5, 'user4', '$2y$13$IvyVgFEjWuHWhl7BI.fC3OwBpeAbfzC5PxJulwvxdmzMzzmN1hUrq', 'brambor4@brambor.com'),
(6, 'user5', '$2y$13$p0VE9nMrTcu9K2AWe9wD/.kFC/wia1rROMvEtWrz8ai.XViZZRgG6', 'brambor5@brambor.com'),
(7, 'user6', '$2y$13$s5Z0EssU1Pz1xtTBGmToB.EgYCE/6B9fFwA4jGUvQzgKGQc3jyynO', 'brambor6@brambor.com'),
(8, 'user7', '$2y$13$NEjpRR85QKqPjCQ/Syg.reXikWM9jsfkSm/fJR5GDEETedBxI91dK', 'brambor7@brambor.com'),
(9, 'user8', '$2y$13$XyZ7.a0WeswuPNtTbOo.nunkwW5MEUHpg0FHiQQqxp38mb8qLAhsq', 'brambor8@brambor.com'),
(10, 'user9', '$2y$13$DN6CxqNrdH46FtfH5/CZpet1MQ5nkQIQfQJ3iDQE/C8tzwxH71Re2', 'brambor9@brambor.com'),
(11, 'user10', '$2y$13$.3qI/mHdU871KGEBe/wrbeNkw0M9/7bMXOiuvaEXBkXauGVz0gZoW', 'brambor10@brambor.com'),
(13, 'user13', '$2y$13$0EQgXu8hPasYbX9o0JbDQuUvFkZjd1rjCjLGCwDXYbHcI/CZT559a', 'brambor13@brambor.com'),
(14, 'user14', '$2y$13$4vyhsr5qZi9EsqDhALZRY.j6rn2BD333t27fipoH.lW3j1unIQYUy', 'brambor14@brambor.com'),
(15, 'user15', '$2y$13$8LwXxdI0jEfQdOU3mD86K.byKGBXmp7Adgty1C4hTtdv4QUhscswm', 'brambor15@brambor.com');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9F85E0677` (`username`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
