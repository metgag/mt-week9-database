## PRODUCTS and PROMOS
1. `SELECT AVG(price) rerata FROM products WHERE promo_id IS NOT NULL GROUP BY promo_id HAVING AVG(price) < 16000;`
<br />
<img src="1.png" />

2. `SELECT min(price) FROM products WHERE promo_id IS NOT NULL GROUP BY promo_id;`
<br />
<img src="2.png" />