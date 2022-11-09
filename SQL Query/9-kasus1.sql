# 1 pelanggan membeli 3 barang yang berbeda.
# Giri membeli Nasi Padang, Cola, dan Jus Buah
INSERT INTO `orders`(`id`, `user_id`, `total_price`) VALUES ('11','7','41000');
INSERT INTO `order_details`(`order_id`, `product_id`, `qty`, `subtotal`) VALUES ('11','1','1','25000')
INSERT INTO `order_details`(`order_id`, `product_id`, `qty`, `subtotal`) VALUES ('11','8','1','6000')
INSERT INTO `order_details`(`order_id`, `product_id`, `qty`, `subtotal`) VALUES ('11','9','1','10000')
UPDATE `products` SET `stock`=`stock`-1 WHERE id=1 or id=8 or id=9