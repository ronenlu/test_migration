-- atlas:txtar

-- checks/destructive.sql --
-- atlas:assert DS103
SELECT IF (EXISTS (SELECT 1 FROM `Reviews` WHERE `Comment` IS NOT NULL), 0, 1) AS `is_empty`;

-- migration.sql --
-- Drop column "Comment" from table "Reviews"
ALTER TABLE `Reviews` DROP COLUMN `Comment`;