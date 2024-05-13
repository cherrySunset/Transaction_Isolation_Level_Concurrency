BEGIN;
--Inserting the order into the ORDERS table
INSERT INTO ORDERS (order_id, customer_id, employee_id, order_date, required_date, ship_via, freight, ship_name, ship_address, ship_city, ship_region, ship_postal_code, ship_country)
VALUES (11078, 'HANAR', 1, CURRENT_DATE, CURRENT_DATE + INTERVAL '7 days', 1, 10.00, 'Victuailles en stock', '2, rue du Commerce', 'lyon', 'RJ', '69004', 'France');

--Inserting order details into the ORDER_DETAILS table
INSERT INTO ORDER_DETAILS (order_id, product_id, unit_price, quantity, discount)
VALUES (11078, 1, 10.00, 5, 0.00),
       (11078, 2, 20.00, 3, 0.05);

COMMIT;