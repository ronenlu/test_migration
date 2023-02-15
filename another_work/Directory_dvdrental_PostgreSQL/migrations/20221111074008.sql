-- create "inventory" table
CREATE TABLE "public"."inventory" ("inventory_id" serial NOT NULL, "film_id" smallint NOT NULL, "store_id" smallint NOT NULL, "last_update" timestamp NOT NULL DEFAULT now(), PRIMARY KEY ("inventory_id"), CONSTRAINT "inventory_film_id_fkey" FOREIGN KEY ("film_id") REFERENCES "public"."film" ("film_id") ON UPDATE CASCADE ON DELETE RESTRICT);
