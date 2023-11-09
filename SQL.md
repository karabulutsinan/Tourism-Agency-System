

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
MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `hotel`
--
ALTER TABLE `hotel`
MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `hotel_period`
--
ALTER TABLE `hotel_period`
MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `period_type`
--
ALTER TABLE `period_type`
MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `reservation`
--
ALTER TABLE `reservation`
MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `room`
--
ALTER TABLE `room`
MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `room_price`
--
ALTER TABLE `room_price`
MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `room_sales`
--
ALTER TABLE `room_sales`
MODIFY `id` int NOT NULL AUTO_INCREMENT;

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