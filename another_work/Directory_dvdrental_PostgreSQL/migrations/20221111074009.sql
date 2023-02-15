-- create index "idx_store_id_film_id" to table: "inventory"
CREATE INDEX "idx_store_id_film_id" ON "public"."inventory" ("store_id", "film_id");
