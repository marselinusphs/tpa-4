-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2022 pada 10.38
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_onlineretail`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `date`, `user_id`, `total_price`) VALUES
(2, '2022-11-09', 1, 25000),
(3, '2022-11-09', 2, 3000),
(4, '2022-11-09', 3, 7000),
(5, '2022-11-09', 4, 15000),
(6, '2022-11-09', 5, 2000),
(7, '2022-11-09', 6, 3000),
(8, '2022-11-09', 7, 4000),
(9, '2022-11-09', 8, 6000),
(10, '2022-11-09', 9, 10000),
(11, '2022-11-09', 10, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `qty`, `subtotal`) VALUES
(2, 2, 1, 3000),
(3, 3, 1, 7000),
(4, 4, 1, 15000),
(5, 5, 1, 2000),
(6, 6, 1, 3000),
(7, 7, 1, 4000),
(8, 8, 1, 6000),
(9, 9, 1, 10000),
(10, 10, 1, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(32) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `category` enum('Food','Drink') DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `category`, `stock`) VALUES
(1, 'Nasi Padang', 25000, 'Food', 49),
(2, 'Keripuk Ayam', 3000, 'Food', 90),
(3, 'Soto Ayam', 7000, 'Food', 61),
(4, 'Nasi Babi Kriuk', 15000, 'Food', 18),
(5, 'Sate', 2000, 'Food', 62),
(6, 'Es Teh Tawar', 3000, 'Drink', 45),
(7, 'Air Mineral', 4000, 'Drink', 29),
(8, 'Cola', 6000, 'Drink', 13),
(9, 'Jus Buah', 10000, 'Drink', 41),
(10, 'Kopi', 5000, 'Drink', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Aldo', 'aldo@gmail.com', 'aldo123'),
(2, 'Budi', 'budi@gmail.com', 'budi123'),
(3, 'Caca', 'caca@gmail.com', 'caca123'),
(4, 'Dena', 'dena123@gmail.com', 'dena123'),
(5, 'Erlang', 'erlang@gmail.com', 'erlang123'),
(6, 'Febby', 'febby@gmail.com', 'febby123'),
(7, 'Giri', 'giri@gmail.com', 'giri123'),
(8, 'Huan', 'huan@gmail.com', 'huan123'),
(9, 'Inggi', 'inggi@gmail.com', 'inggi123'),
(10, 'Januari', 'januari@gmail.com', 'januari123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
