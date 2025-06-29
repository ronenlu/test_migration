-- Add check "ab" to table "Orders"
ALTER TABLE `Orders` ADD CONSTRAINT `ab` CHECK (TotalAmount > 0 AND OrderDate IS NOT NULL);
