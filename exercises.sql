-- http://webdev.slides.com/coltsteele/mysql-105#/37

-- Find Earliest Date A User Joined
SELECT DATE_FORMAT(created_at, '%M %D %Y') as earliest_date FROM users
ORDER BY earliest_date
LIMIT 1;

-- Find Email Of The First (Earliest)User
SELECT email, created_at FROM users
ORDER BY created_at ASC
LIMIT 1;

-- Users According To The Month They Joined
SELECT MONTHNAME(created_at) as month, COUNT(*) as count FROM users
GROUP BY month
ORDER BY count DESC;

-- Count Number of Users With Yahoo Emails
SELECT COUNT(*) AS yahoo_users FROM users
WHERE email LIKE '%@yahoo.com';

-- Calculate Total Number of Users for Each Email Host
SELECT
       CASE
         WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
         WHEN email LIKE '%@gmail.com' THEN 'gmail'
         WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
         ELSE 'other'
       END AS provider,
       COUNT(*) as total_users
FROM users
GROUP BY provider;




