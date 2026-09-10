-- Banking Management System
-- SQL Queries
-- Task 3 - SQL Assessment

-- 1. View all customers
SELECT * FROM Customers;

-- 2. Customer accounts and branches
SELECT
    c.name,
    a.account_type,
    a.balance,
    b.branch_name,
    b.city
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Branches b ON a.branch_id = b.branch_id;

-- 3. Customer transactions
SELECT
    c.name,
    a.account_type,
    t.transaction_type,
    t.amount
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
JOIN Transactions t ON a.account_id = t.account_id;

-- 4. Account summary
SELECT
    COUNT(*) AS total_accounts,
    SUM(balance) AS total_balance,
    AVG(balance) AS average_balance
FROM Accounts;

-- 5. Group accounts by type
SELECT
    account_type,
    COUNT(*) AS total_accounts,
    SUM(balance) AS total_balance
FROM Accounts
GROUP BY account_type;

-- 6. Customer loans
SELECT
    c.name,
    l.loan_type,
    l.loan_amount
FROM Customers c
JOIN Loans l ON c.customer_id = l.customer_id;

-- 7. Accounts with balance greater than 55000
SELECT
    name,
    account_type,
    balance
FROM Customers
JOIN Accounts USING (customer_id)
WHERE balance > 55000
ORDER BY balance DESC;

-- 8. LEFT JOIN
SELECT
    c.name,
    a.account_type,
    a.balance
FROM Customers c
LEFT JOIN Accounts a
ON c.customer_id = a.customer_id;

-- 9. RIGHT JOIN
SELECT
    c.name,
    a.account_type,
    a.balance
FROM Customers c
RIGHT JOIN Accounts a
ON c.customer_id = a.customer_id;

-- 10. UNION
SELECT name AS person FROM Customers
UNION
SELECT branch_name AS person FROM Branches;

-- 11. CASE statement
SELECT
    name,
    balance,
    CASE
        WHEN balance >= 70000 THEN 'High Balance'
        WHEN balance >= 50000 THEN 'Medium Balance'
        ELSE 'Low Balance'
    END AS balance_category
FROM Customers
JOIN Accounts USING (customer_id);

-- 12. CTE
WITH high_balance AS (
    SELECT customer_id, balance
    FROM Accounts
    WHERE balance >= 60000
)
SELECT
    c.name,
    h.balance
FROM high_balance h
JOIN Customers c
ON c.customer_id = h.customer_id;

-- 13. Subquery
SELECT
    name,
    balance
FROM Customers
JOIN Accounts USING (customer_id)
WHERE balance > (
    SELECT AVG(balance)
    FROM Accounts
);

-- 14. ROW_NUMBER
SELECT
    name,
    balance,
    ROW_NUMBER() OVER (ORDER BY balance DESC) AS row_num
FROM Customers
JOIN Accounts USING (customer_id);

-- 15. RANK and DENSE_RANK
SELECT
    name,
    balance,
    RANK() OVER (ORDER BY balance DESC) AS rank,
    DENSE_RANK() OVER (ORDER BY balance DESC) AS dense_rank
FROM Customers
JOIN Accounts USING (customer_id);

-- 16. LAG and LEAD
SELECT
    name,
    balance,
    LAG(balance) OVER (ORDER BY balance) AS previous_balance,
    LEAD(balance) OVER (ORDER BY balance) AS next_balance
FROM Customers
JOIN Accounts USING (customer_id);

-- 17. Query plan
EXPLAIN QUERY PLAN
SELECT
    c.name,
    a.balance
FROM Customers c
JOIN Accounts a
ON c.customer_id = a.customer_id
WHERE a.balance > 55000;