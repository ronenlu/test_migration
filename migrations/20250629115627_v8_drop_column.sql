-- atlas:txtar
-- checks/destructive.sql --
-- atlas:assert DS103
SELECT NOT EXISTS (SELECT 1 FROM `Reviews` WHERE `Rating` IS NOT NULL) AS `is_empty`;
-- migration.sql --
-- Drop column "Rating" from table "Reviews"
-- Drop column "Rating" from table "Reviews"
ALTER TABLE `Reviews` DROP COLUMN `Rating`;
