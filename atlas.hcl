env "ci" {
    url = getenv("DB_URL")
    schema {
        src = "file://schema.sql"
        repo {
            name = "app"
        }
    }
}
