-- create index "idx_fk_rental_id" to table: "payment"
CREATE INDEX "idx_fk_rental_id" ON "public"."payment" ("rental_id");
