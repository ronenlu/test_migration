-- create "actor" table
CREATE TABLE "public"."actor" ("actor_id" serial NOT NULL, "first_name" character varying(45) NOT NULL, "last_name" character varying(45) NOT NULL, "last_update" timestamp NOT NULL DEFAULT now(), PRIMARY KEY ("actor_id"));
