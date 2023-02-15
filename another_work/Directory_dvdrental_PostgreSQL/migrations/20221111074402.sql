-- create "category" table
CREATE TABLE "public"."category" ("category_id" serial NOT NULL, "name" character varying(25) NOT NULL, "last_update" timestamp NOT NULL DEFAULT now(), PRIMARY KEY ("category_id"));
