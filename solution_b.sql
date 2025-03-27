-- 1. Liệt kê các hóa đơn của khách hàng
SELECT users.id AS user_id, users.user_name, orders.id AS order_id
FROM users 
JOIN orders ON users.id = orders.user_id;

-- 2. Liệt kê số lượng đơn hàng của từng khách hàng
SELECT users.id AS user_id, users.user_name, COUNT(orders.id) AS so_luong_don_hang
FROM users 
JOIN orders ON users.id = orders.user_id
GROUP BY users.id, users.user_name;

-- 3. Liệt kê số lượng sản phẩm trong mỗi đơn hàng
SELECT orders.id AS order_id, COUNT(order_details.id) AS so_luong_san_pham
FROM orders 
JOIN order_details ON orders.id = order_details.order_id
GROUP BY orders.id;

-- 4. Liệt kê thông tin mua hàng của người dùng (gom nhóm theo đơn hàng)
SELECT users.id AS user_id, users.user_name, orders.id AS order_id, products.product_name
FROM users 
JOIN orders ON users.id = orders.user_id
JOIN order_details ON orders.id = order_details.order_id
JOIN products ON order_details.product_id = products.id
ORDER BY orders.id;

-- 5. Liệt kê 7 người dùng có số lượng đơn hàng nhiều nhất
SELECT users.id AS user_id, users.user_name, COUNT(orders.id) AS so_don_hang
FROM users 
JOIN orders ON users.id = orders.user_id
GROUP BY users.id, users.user_name
ORDER BY so_don_hang DESC
LIMIT 7;

-- 6. Liệt kê 7 người dùng đã mua sản phẩm có tên "Samsung" hoặc "Apple"
SELECT users.id AS user_id, users.user_name, orders.id AS order_id, products.product_name
FROM users 
JOIN orders ON users.id = orders.user_id
JOIN order_details ON orders.id = order_details.order_id
JOIN products ON order_details.product_id = products.id
WHERE products.product_name LIKE '%Samsung%' OR products.product_name LIKE '%Apple%'
LIMIT 7;

-- 7. Liệt kê danh sách mua hàng của user và tổng tiền mỗi đơn hàng
SELECT users.id AS user_id, users.user_name, orders.id AS order_id, SUM(products.product_price) AS tong_tien
FROM users 
JOIN orders ON users.id = orders.user_id
JOIN order_details ON orders.id = order_details.order_id
JOIN products ON order_details.product_id = products.id
GROUP BY users.id, users.user_name, orders.id;
