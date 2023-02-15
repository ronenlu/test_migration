-- create index "idx_fk_customer_id" to table: "payment"
CREATE INDEX "idx_fk_customer_id" ON "public"."payment" ("customer_id");
