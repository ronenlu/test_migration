-- Create Product Table
CREATE TABLE Products (
    ProductID int IDENTITY(1,1) NOT NULL,
    ProductName nvarchar(50) NOT NULL,
    SupplierID int NOT NULL,
    CategoryID int NOT NULL,
    QuantityPerUnit nvarchar(50) NOT NULL,
    UnitPrice money NOT NULL,
    UnitsInStock smallint NOT NULL,
    UnitsOnOrder smallint NOT NULL,
    ReorderLevel smallint NOT NULL,
    Discontinued bit NOT NULL,
    CONSTRAINT PK_Products PRIMARY KEY (ProductID)
);