-- create index "IFK_InvoiceCustomerId" to table: "invoices"
CREATE INDEX `IFK_InvoiceCustomerId` ON `invoices` (`CustomerId`);
