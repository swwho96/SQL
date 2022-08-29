SELECT u.name, sum(t.amount) as balance
FROM Users as u
LEFT JOIN Transactions as t ON u.account = t.account
GROUP BY t.account
HAVING balance > 10000