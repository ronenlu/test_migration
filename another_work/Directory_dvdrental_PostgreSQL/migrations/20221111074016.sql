-- create index "idx_unq_rental_rental_date_inventory_id_customer_id" to table: "rental"
CREATE UNIQUE INDEX "idx_unq_rental_rental_date_inventory_id_customer_id" ON "public"."rental" ("rental_date", "inventory_id", "customer_id");
