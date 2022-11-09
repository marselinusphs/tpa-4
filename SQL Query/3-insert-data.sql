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
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `qty`, `subtotal`) VALUES
(1, 1, 1, 25000),
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
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `category`, `stock`) VALUES
(1, 'Nasi Padang', 25000, 'Food', 50),
(2, 'Keripuk Ayam', 3000, 'Food', 90),
(3, 'Soto Ayam', 7000, 'Food', 61),
(4, 'Nasi Babi Kriuk', 15000, 'Food', 18),
(5, 'Sate', 2000, 'Food', 62),
(6, 'Es Teh Tawar', 3000, 'Drink', 45),
(7, 'Air Mineral', 4000, 'Drink', 29),
(8, 'Cola', 6000, 'Drink', 14),
(9, 'Jus Buah', 10000, 'Drink', 42),
(10, 'Kopi', 5000, 'Drink', 9);

-- --------------------------------------------------------

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Aldo', 'aldo@gmail.com', 'aldo123'),
(2, 'Budi', 'budi@gmail.com', 'budi123'),
(3, 'Caca', 'caca@gmail.com', 'caca123'),
(4, 'Dena', 'dena@gmail.com', 'dena123'),
(5, 'Erlang', 'erlang@gmail.com', 'erlang123'),
(6, 'Febby', 'febby@gmail.com', 'febby123'),
(7, 'Giri', 'giri@gmail.com', 'giri123'),
(8, 'Huan', 'huan@gmail.com', 'huan123'),
(9, 'Inggi', 'inggi@gmail.com', 'inggi123'),
(10, 'Januari', 'januari@gmail.com', 'januari123');