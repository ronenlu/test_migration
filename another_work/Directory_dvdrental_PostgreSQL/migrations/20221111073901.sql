-- create "city" table
CREATE TABLE "public"."city" ("city_id" serial NOT NULL, "city" character varying(50) NOT NULL, "country_id" smallint NOT NULL, "last_update" timestamp NOT NULL DEFAULT now(), PRIMARY KEY ("city_id"), CONSTRAINT "fk_city" FOREIGN KEY ("country_id") REFERENCES "public"."country" ("country_id") ON UPDATE NO ACTION ON DELETE NO ACTION);
