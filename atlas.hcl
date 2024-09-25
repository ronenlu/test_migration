env "dev" {
  # The URL to the dev-database.
  dev = "docker://postgres/15/dev?search_path=public"
  schema {
    # Desired schema state.
    src = "file://schema.sql"
    # Atlas Registry config.
    repo {
      name = "demo-test-ronen"
    }
  }
}