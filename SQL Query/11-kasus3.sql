# Melihat Kategori barang yang paling banyak barangnya.
SELECT category FROM `products` group by category order by stock desc limit 1;