BEGIN;
-- Illustrate Seller 1 modifying the product inventory
-- Seller 1 wishes to adjust the product inventory to 50 units
-- PostgreSQL takes measures to secure the rows that Seller 1 is modifying, preventing Seller 2 from executing conflicting modifications
UPDATE PRODUCTS SET units_in_stock = 50 WHERE product_id = 1;
-- At this juncture, Seller 2 endeavors to adjust the inventory for the same product concurrently
-- PostgreSQL recognizes that the rows Seller 2 intends to adjust are locked due to Seller 1's ongoing transaction
-- Seller 2's transaction is queued until Seller 1's transaction concludes or is reversed
-- This ensures seamless coordination and sequential execution of both sellers' updates
-- Seller 2's transaction awaits completion of Seller 1's transaction
COMMIT;
