-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 09 Kas 2023, 14:25:55
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `tourism_agency`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `accommodation_type`
--

CREATE TABLE `accommodation_type` (
  `id` int NOT NULL,
  `accommodation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `accommodation_type`
--

INSERT INTO `accommodation_type` (`id`, `accommodation_name`) VALUES
(1, 'Ultra All Inclusive'),
(2, 'All Inclusive'),
(3, 'Room Breakfast'),
(4, 'Full Pension'),
(5, 'Half Board'),
(6, 'Bed Only'),
(7, 'Full Credit Excluding Alcohol');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `guest`
--

CREATE TABLE `guest` (
  `id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `guest_fullname` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `national_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `guest_phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `guest_email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `guest`
--

INSERT INTO `guest` (`id`, `reservation_id`, `guest_fullname`, `national_id`, `guest_phone`, `guest_email`) VALUES
(1, 1, 'Ahmet Kurt', '7896543823', '5425424242', 'ahmetkurt@gmail.com'),
(2, 1, 'Ayşe Kurt', '1653467986', '5445424444', 'ayşekurt@gmail.com'),
(3, 1, 'Ali Kurt', '7986431521', '5405404040', ''),
(4, 2, 'Mert Bayrak', '78965412365', '5445201232', 'mertbayrak@gmail.com'),
(5, 2, 'Cansu Bayrak', '79865321642', '5303216546', 'cansubayrak@hotmail.com'),
(6, 2, 'Efe Bayrak', '79864352051', '5341234566', ''),
(7, 2, 'Nazlı Bayrak', '64315246798', '5335333333', ''),
(8, 3, 'Vince Carter', '32165498741', '8526543223', 'vincecarter@gmail.com'),
(9, 3, 'Alish Carter', '32145621981', '8513254679', 'alishcarter@gmail.com'),
(10, 4, 'Frederick Fluend', '78945613221', '4567894565', 'flederick@hotmail.com'),
(11, 4, 'Camilla Fluend', '65498731245', '4659871232', 'camilla@hotmail.com'),
(12, 4, 'Jhon Fluend', '36925/814723', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hotel`
--

CREATE TABLE `hotel` (
  `id` int NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `hotel_phone` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `parking` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `wifi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pool` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `gym` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `concierge` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `spa` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `room_service` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `hotel`
--

INSERT INTO `hotel` (`id`, `hotel_name`, `city`, `district`, `star`, `address`, `hotel_email`, `hotel_phone`, `parking`, `wifi`, `pool`, `gym`, `concierge`, `spa`, `room_service`) VALUES
(1, 'Movenpick Hotel', 'İstanbul', 'Beşiktaş', '5', 'Balmumcu, Barbaros Blv. No:165, 34349', 'HA477-SM@accor.com', '002123702020', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(2, 'Hilton Garden Hotel', 'Balıkesir', 'Altıeylül', '5', 'Hacı İlbey, Hilton Garden Inn, Anafartalar Cd. ', 'development.singapore@hilton.com', '002662020030', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes'),
(3, 'Ramada byWyndhamHotel', 'Los Angeles', 'Koreatown West', '3', '3900 Wilshire Blvd, Los Angeles, CA 90010, Amerika Birleşik Devletleri', 'ramadacontactcare@ramada.com', '002139844389', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hotel_period`
--

CREATE TABLE `hotel_period` (
  `id` int NOT NULL,
  `season_start` date DEFAULT NULL,
  `season_end` date DEFAULT NULL,
  `offseason_start` date DEFAULT NULL,
  `offseason_end` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `hotel_period`
--

INSERT INTO `hotel_period` (`id`, `season_start`, `season_end`, `offseason_start`, `offseason_end`) VALUES
(1, '2023-06-01', '2023-10-30', '2023-11-01', '2024-05-31'),
(2, '2025-06-01', '2025-10-05', '2025-10-06', '2026-05-30'),
(3, '2024-06-01', '2024-10-30', '2024-11-01', '2025-05-30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `period_type`
--

CREATE TABLE `period_type` (
  `id` int NOT NULL,
  `period_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `period_type`
--

INSERT INTO `period_type` (`id`, `period_name`) VALUES
(1, 'Season'),
(2, 'Off Season');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `reservation`
--

CREATE TABLE `reservation` (
  `id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `period_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `guest_count` int NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `price` int NOT NULL,
  `duration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `reservation`
--

INSERT INTO `reservation` (`id`, `hotel_id`, `hotel_name`, `room_type`, `period_name`, `city`, `guest_count`, `checkin_date`, `checkout_date`, `price`, `duration`) VALUES
(1, 1, 'Movenpick Hotel', 'Double', 'Off Season', 'İstanbul', 3, '2023-06-05', '2023-06-08', 11400, 3),
(2, 2, 'Hilton Garden Hotel', 'King Suite', 'Season', 'Balıkesir', 4, '2025-06-07', '2025-06-12', 85000, 5),
(4, 3, 'Ramada byWyndhamHotel', 'Double', 'Season', 'Los Angeles', 3, '2024-06-01', '2024-06-05', 8800, 4),
(6, 3, 'Ramada byWyndhamHotel', 'Single', 'Off Season', 'Los Angeles', 1, '2024-11-02', '2024-11-05', 1500, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room`
--

CREATE TABLE `room` (
  `id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `room_type_id` int NOT NULL,
  `bed` int NOT NULL,
  `tv` int NOT NULL,
  `minibar` int NOT NULL,
  `room_size` int NOT NULL,
  `season_stock` int NOT NULL,
  `offseason_stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `room`
--

INSERT INTO `room` (`id`, `hotel_id`, `room_type_id`, `bed`, `tv`, `minibar`, `room_size`, `season_stock`, `offseason_stock`) VALUES
(1, 1, 1, 1, 1, 1, 25, 10, 5),
(2, 1, 2, 2, 2, 2, 50, 5, 2),
(3, 1, 3, 5, 4, 3, 100, 1, 1),
(4, 2, 1, 1, 1, 1, 25, 15, 2),
(5, 2, 2, 2, 3, 2, 50, 10, 1),
(6, 2, 3, 5, 5, 5, 120, 3, 1),
(7, 3, 1, 1, 1, 1, 20, 12, 2),
(8, 3, 2, 2, 2, 1, 40, 5, 1),
(9, 3, 3, 4, 3, 3, 80, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_price`
--

CREATE TABLE `room_price` (
  `id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `period_id` int NOT NULL,
  `room_type` int NOT NULL,
  `accommodation_id` int NOT NULL,
  `adult_price` int NOT NULL,
  `child_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `room_price`
--

INSERT INTO `room_price` (`id`, `hotel_id`, `period_id`, `room_type`, `accommodation_id`, `adult_price`, `child_price`) VALUES
(1, 1, 1, 1, 6, 1000, 400),
(2, 1, 1, 2, 4, 2000, 800),
(3, 1, 1, 3, 1, 4000, 1600),
(4, 1, 2, 1, 5, 800, 300),
(5, 1, 2, 2, 3, 1600, 600),
(6, 1, 2, 3, 2, 3500, 1750),
(7, 2, 1, 1, 2, 3000, 1500),
(8, 2, 1, 2, 4, 2500, 1200),
(9, 2, 1, 3, 7, 5000, 3500),
(10, 3, 2, 1, 2, 500, 400),
(11, 3, 1, 2, 2, 800, 600),
(12, 3, 1, 3, 3, 600, 400);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_sales`
--

CREATE TABLE `room_sales` (
  `id` int NOT NULL,
  `hotel_id` int NOT NULL,
  `hotel_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `star` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `period` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `room_sales`
--

INSERT INTO `room_sales` (`id`, `hotel_id`, `hotel_name`, `city`, `district`, `star`, `period`, `start_date`, `end_date`, `room_type`, `stock`) VALUES
(1, 1, 'Movenpick Hotel', 'İstanbul', 'Beşiktaş', '5', 'Season', '2023-06-01', '2023-10-30', 'Single', 10),
(2, 1, 'Movenpick Hotel', 'İstanbul', 'Beşiktaş', '5', 'Off Season', '2023-11-01', '2023-11-01', 'Single', 5),
(3, 1, 'Movenpick Hotel', 'İstanbul', 'Beşiktaş', '5', 'Season', '2023-06-01', '2023-10-30', 'Double', 5),
(4, 1, 'Movenpick Hotel', 'İstanbul', 'Beşiktaş', '5', 'Off Season', '2023-11-01', '2023-11-01', 'Double', 1),
(5, 1, 'Movenpick Hotel', 'İstanbul', 'Beşiktaş', '5', 'Season', '2023-06-01', '2023-10-30', 'King Suite', 1),
(6, 1, 'Movenpick Hotel', 'İstanbul', 'Beşiktaş', '5', 'Off Season', '2023-11-01', '2023-11-01', 'King Suite', 1),
(7, 2, 'Hilton Garden Hotel', 'Balıkesir', 'Altıeylül', '5', 'Season', '2025-06-01', '2025-10-05', 'Single', 15),
(8, 2, 'Hilton Garden Hotel', 'Balıkesir', 'Altıeylül', '5', 'Off Season', '2025-10-06', '2025-10-06', 'Single', 2),
(9, 2, 'Hilton Garden Hotel', 'Balıkesir', 'Altıeylül', '5', 'Season', '2025-06-01', '2025-10-05', 'Double', 10),
(10, 2, 'Hilton Garden Hotel', 'Balıkesir', 'Altıeylül', '5', 'Off Season', '2025-10-06', '2025-10-06', 'Double', 1),
(11, 2, 'Hilton Garden Hotel', 'Balıkesir', 'Altıeylül', '5', 'Season', '2025-06-01', '2025-10-05', 'King Suite', 2),
(12, 2, 'Hilton Garden Hotel', 'Balıkesir', 'Altıeylül', '5', 'Off Season', '2025-10-06', '2025-10-06', 'King Suite', 1),
(13, 3, 'Ramada byWyndhamHotel', 'Los Angeles', 'Koreatown West', '3', 'Season', '2024-06-01', '2024-10-30', 'Single', 12),
(14, 3, 'Ramada byWyndhamHotel', 'Los Angeles', 'Koreatown West', '3', 'Off Season', '2024-11-01', '2024-11-01', 'Single', 2),
(15, 3, 'Ramada byWyndhamHotel', 'Los Angeles', 'Koreatown West', '3', 'Season', '2024-06-01', '2024-10-30', 'Double', 5),
(16, 3, 'Ramada byWyndhamHotel', 'Los Angeles', 'Koreatown West', '3', 'Off Season', '2024-11-01', '2024-11-01', 'Double', 1),
(17, 3, 'Ramada byWyndhamHotel', 'Los Angeles', 'Koreatown West', '3', 'Season', '2024-06-01', '2024-10-30', 'King Suite', 1),
(18, 3, 'Ramada byWyndhamHotel', 'Los Angeles', 'Koreatown West', '3', 'Off Season', '2024-11-01', '2024-11-01', 'King Suite', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `room_type`
--

CREATE TABLE `room_type` (
  `id` int NOT NULL,
  `room_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `room_type`
--

INSERT INTO `room_type` (`id`, `room_name`) VALUES
(1, 'Single'),
(2, 'Double'),
(3, 'King Suite');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` enum('admin','employee') COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'sinan', 'admin', '123', 'admin'),
(2, 'Calisan', 'eee', '123', 'employee');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `accommodation_type`
--
ALTER TABLE `accommodation_type`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `hotel_period`
--
ALTER TABLE `hotel_period`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `period_type`
--
ALTER TABLE `period_type`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room_price`
--
ALTER TABLE `room_price`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room_sales`
--
ALTER TABLE `room_sales`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `accommodation_type`
--
ALTER TABLE `accommodation_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `hotel_period`
--
ALTER TABLE `hotel_period`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `period_type`
--
ALTER TABLE `period_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `room`
--
ALTER TABLE `room`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Tablo için AUTO_INCREMENT değeri `room_price`
--
ALTER TABLE `room_price`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `room_sales`
--
ALTER TABLE `room_sales`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `room_type`
--
ALTER TABLE `room_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
