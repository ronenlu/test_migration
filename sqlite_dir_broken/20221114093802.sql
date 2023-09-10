-- create index "IFK_InvoiceLineTrackId" to table: "invoice_items"
CREATE INDEX `IFK_InvoiceLineTrackId` ON `invoice_items` (`TrackId`);
