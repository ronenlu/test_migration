-- Modify column "Quantity" in table "Inventory"
ALTER TABLE `Inventory` ALTER COLUMN `Quantity` INT64 NOT NULL DEFAULT (0);
-- Modify column "Price" in table "OrderItems"
ALTER TABLE `OrderItems` ALTER COLUMN `Price` NUMERIC;
