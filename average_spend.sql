SELECT AVG(total_spend)
FROM Users;

SELECT EXTRACT(YEAR FROM AGE(dob)) as user_age, AVG(total_spend)
FROM Users
GROUP BY user_age;

SELECT AVG(trans_sum) FROM 
(
SELECT user_id, SUM(transaction_amount) as trans_sum
FROM Transactions
WHERE EXTRACT(YEAR FROM transaction_time) = 2019
GROUP BY user_id
) AS sub;