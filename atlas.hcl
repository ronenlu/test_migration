env "test" {
  dev = "docker://mysql/8/dev"
}

env "prod" {
  dev = "docker://mysql/8/prod"
}

env "local" {
  # URL to the underlying database.
  url = "sqlite://main.db"
  # URL to the dev-database.
  dev = "sqlite://dev?mode=memory"
  schema {
    # Desired schema state.
    src = "file://schema.sql"
    # Atlas Registry config.
    repo {
      name = "app"
    }
  }
}