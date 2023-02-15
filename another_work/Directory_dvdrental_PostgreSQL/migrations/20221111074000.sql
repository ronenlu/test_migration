-- create "language" table
CREATE TABLE "public"."language" ("language_id" serial NOT NULL, "name" character(20) NOT NULL, "last_update" timestamp NOT NULL DEFAULT now(), PRIMARY KEY ("language_id"));
