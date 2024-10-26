# Write your MySQL query statement below
SELECT u.name AS NAME, SUM(t.amount) AS BALANCE
FROM Users as u
INNER JOIN Transactions AS t ON t.account = u.account
GROUP BY NAME
HAVING BALANCE > 10000