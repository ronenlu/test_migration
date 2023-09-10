-- create index "IFK_InvoiceLineInvoiceId" to table: "invoice_items"
CREATE INDEX `IFK_InvoiceLineInvoiceId` ON `invoice_items` (`InvoiceId`);
