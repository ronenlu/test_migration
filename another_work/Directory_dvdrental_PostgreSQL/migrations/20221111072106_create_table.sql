-- create "country" table
CREATE TABLE "public"."country" ("country_id" serial NOT NULL, "country" character varying(50) NOT NULL, "last_update" timestamp NOT NULL DEFAULT now(), PRIMARY KEY ("country_id"));
