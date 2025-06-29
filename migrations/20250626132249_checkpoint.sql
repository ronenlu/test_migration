-- atlas:checkpoint

-- Create "Products" table
CREATE TABLE `Products` (
  `ProductId` STRING(36) NOT NULL DEFAULT (GENERATE_UUID()),
  `Name` STRING(2621440),
  `Price` NUMERIC NOT NULL,
  `CreatedAt` TIMESTAMP NOT NULL OPTIONS (allow_commit_timestamp = true)
) PRIMARY KEY (`ProductId`);
-- Create "Inventory" table
CREATE TABLE `Inventory` (
  `ProductId` STRING(36) NOT NULL,
  `Location` STRING(100) NOT NULL,
  `Quantity` INT64 NOT NULL DEFAULT (0),
  `UpdatedAt` TIMESTAMP NOT NULL OPTIONS (allow_commit_timestamp = true),
  `arrayQuantity` ARRAY<INT64> NOT NULL DEFAULT ([]),
  CONSTRAINT `FK_Inv_Product` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`ProductId`) ON DELETE NO ACTION
) PRIMARY KEY (`ProductId`, `Location`),
INTERLEAVE IN PARENT `Products` ON DELETE CASCADE;
-- Create "Customers" table
CREATE TABLE `Customers` (
  `CustomerId` STRING(36) NOT NULL DEFAULT (GENERATE_UUID()),
  `Name` STRING(2621440) NOT NULL,
  `CreatedAt` TIMESTAMP NOT NULL OPTIONS (allow_commit_timestamp = true)
) PRIMARY KEY (`CustomerId`);
-- Create "Orders" table
CREATE TABLE `Orders` (
  `CustomerId` STRING(36) NOT NULL,
  `OrderId` INT64 NOT NULL,
  `ProductId` STRING(36) NOT NULL,
  `OrderDate` DATE NOT NULL,
  `TotalAmount` NUMERIC NOT NULL,
  CONSTRAINT `FK_Order_Customer` FOREIGN KEY (`CustomerId`) REFERENCES `Customers` (`CustomerId`) ON DELETE NO ACTION,
  CONSTRAINT `FK_Order_Product` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`ProductId`) ON DELETE NO ACTION,
  CONSTRAINT `ab` CHECK (TotalAmount > 0 AND OrderDate IS NOT NULL)
) PRIMARY KEY (`CustomerId`, `OrderId`),
INTERLEAVE IN PARENT `Customers` ON DELETE CASCADE;
-- Create "OrderItems" table
CREATE TABLE `OrderItems` (
  `CustomerId` STRING(36) NOT NULL,
  `OrderId` INT64 NOT NULL,
  `ItemId` INT64 NOT NULL,
  `ProductId` STRING(36) NOT NULL,
  `Quantity` INT64 NOT NULL,
  `Price` NUMERIC,
  CONSTRAINT `FK_OI_Order` FOREIGN KEY (`CustomerId`, `OrderId`) REFERENCES `Orders` (`CustomerId`, `OrderId`) ON DELETE NO ACTION
) PRIMARY KEY (`CustomerId`, `OrderId`, `ItemId`),
INTERLEAVE IN PARENT `Orders` ON DELETE CASCADE;
-- Create "Reviews" table
CREATE TABLE `Reviews` (
  `ProductId` STRING(36) NOT NULL,
  `ReviewId` INT64 NOT NULL,
  `CustomerId` STRING(36) NOT NULL,
  `Rating` INT64 NOT NULL,
  `Comment` STRING(2621440),
  `CreatedTS` TIMESTAMP NOT NULL OPTIONS (allow_commit_timestamp = true),
  CONSTRAINT `FK_Rev_Customer` FOREIGN KEY (`CustomerId`) REFERENCES `Customers` (`CustomerId`) ON DELETE NO ACTION,
  CONSTRAINT `FK_Rev_Product` FOREIGN KEY (`ProductId`) REFERENCES `Products` (`ProductId`) ON DELETE NO ACTION
) PRIMARY KEY (`ProductId`, `ReviewId`),
INTERLEAVE IN PARENT `Products` ON DELETE CASCADE;
-- Create "Sessions" table
CREATE TABLE `Sessions` (
  `SessionId` STRING(36) NOT NULL DEFAULT (GENERATE_UUID()),
  `CustomerId` STRING(36) NOT NULL,
  `LastAccess` TIMESTAMP NOT NULL OPTIONS (allow_commit_timestamp = true),
  CONSTRAINT `FK_Sess_Customer` FOREIGN KEY (`CustomerId`) REFERENCES `Customers` (`CustomerId`) ON DELETE NO ACTION
) PRIMARY KEY (`SessionId`);
