-- create "film" table
CREATE TABLE "public"."film" ("film_id" serial NOT NULL, "title" character varying(255) NOT NULL, "description" text NULL, "release_year" integer NULL, "language_id" smallint NOT NULL, "rental_duration" smallint NOT NULL DEFAULT 3, "rental_rate" numeric(4,2) NOT NULL DEFAULT 4.99, "length" smallint NULL, "replacement_cost" numeric(5,2) NOT NULL DEFAULT 19.99, "rating" "public"."mpaa_rating" NULL DEFAULT 'G', "last_update" timestamp NOT NULL DEFAULT now(), "special_features" text[] NULL, PRIMARY KEY ("film_id"), CONSTRAINT "film_language_id_fkey" FOREIGN KEY ("language_id") REFERENCES "public"."language" ("language_id") ON UPDATE CASCADE ON DELETE RESTRICT);