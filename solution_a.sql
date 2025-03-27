-- 1. Lấy danh sách người dùng theo thứ tự Alphabet (A → Z)
SELECT * FROM users ORDER BY user_name ASC;
-- 2. Lấy 07 người dùng theo thứ tự Alphabet
SELECT * FROM users ORDER BY user_name ASC LIMIT 7;
-- 3. Lấy danh sách người dùng có chữ "a" trong tên
SELECT * FROM users WHERE user_name LIKE '%a%' ORDER BY user_name ASC;
-- 4. Lấy danh sách người dùng có tên bắt đầu bằng "m"
SELECT * FROM users WHERE user_name LIKE 'm%';
-- 5. Lấy danh sách người dùng có tên kết thúc bằng "i"
SELECT * FROM users WHERE user_name LIKE '%i';
-- 6. Lấy danh sách người dùng có email là Gmail
SELECT * FROM users WHERE user_email LIKE '%@gmail.com';
-- 7. Lấy danh sách người dùng có email là Gmail và tên bắt đầu bằng "m"
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' AND user_name LIKE 'm%';
-- 8. Lấy danh sách người dùng có email là Gmail, tên có chữ "i", tên dài hơn 5 ký tự
SELECT * FROM users WHERE user_email LIKE '%@gmail.com' AND user_name LIKE '%i%' AND LENGTH(user_name) > 5;
