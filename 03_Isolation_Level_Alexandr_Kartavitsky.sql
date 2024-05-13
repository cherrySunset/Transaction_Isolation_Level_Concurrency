-- READ COMMITTED
-- Each read sees only data that has already been committed (or committed by the current transaction) at the start of the current transaction
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;

-- Perform read or write operations
SELECT * FROM ORDERS WHERE order_id = 11078;

-- Expect changes made by other transactions that were not committed at the start of the current transaction
COMMIT;

------------------------------------
--SERIALIZABLE
-- All operations within the transaction are performed as if they occurred sequentially, without interference from other transactions
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- Perform read or write operations
UPDATE ORDER_DETAILS SET quantity = 10 WHERE order_id = 11078;

-- Ensure there are no conflicts with other transactions

COMMIT;
