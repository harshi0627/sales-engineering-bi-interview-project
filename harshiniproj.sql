--1.Calculate the average "total spend" per "user"
select user_id,avg(total spent) as avg_total_spend from users
groupby user_id

--2.Determine the average by age
select user_id,avg(total_spend) as Avg_total_spend,datediff( YY, birthDate, getdate()) as age from users
groupby age


--3.average spend per user for 2019.

SELECT avg(users.total_spend) as Avg_total_spend,year(transactions.updated_at) as year,user_id
  FROM [users] JOIN transaction
    ON [users].user_id = [transactions].user_id
where year ="2019"
group by user_id



--users table pk(user_id),transactions table pk(id),fk(user_id)