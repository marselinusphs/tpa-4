# Melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT product_id, sum(qty) as total_qty FROM `order_details` group by product_id order by total_qty desc limit 3;