-- Add column "arrayQuantity" to table "Inventory"
ALTER TABLE `Inventory` ADD COLUMN `arrayQuantity` ARRAY<INT64> NOT NULL DEFAULT ([]);
