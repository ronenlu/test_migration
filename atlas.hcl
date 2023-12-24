docker "postgres" "dev" {
  image  = "postgres:15"
  schema = "public"
  baseline = <<SQL
   CREATE SCHEMA "auth";
   CREATE EXTENSION IF NOT EXISTS "uuid-ossp" SCHEMA "auth";
   CREATE TABLE "auth"."users" ("id" uuid NOT NULL DEFAULT auth.uuid_generate_v4(), PRIMARY KEY ("id"));
  SQL
}

env "local" {
  src = "file://schema.pg.hcl"
  dev = docker.postgres.dev.url
}