-- create index "IFK_EmployeeReportsTo" to table: "employees"
CREATE INDEX `IFK_EmployeeReportsTo` ON `employees` (`ReportsTo`);
