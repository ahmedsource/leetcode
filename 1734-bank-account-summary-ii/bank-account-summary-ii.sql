# Write your MySQL query statement below
SELECT u.name AS NAME, SUM(t.amount) AS BALANCE
FROM Users as u
INNER JOIN Transactions AS t ON t.account = u.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000