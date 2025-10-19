CREATE TABLE IF NOT EXISTS users (
    user_id       BIGINT        NOT NULL,
    name          STRING,
    email         STRING,
    created_at    TIMESTAMP
)
USING delta
TBLPROPERTIES (
    'delta.autoOptimize.optimizeWrite' = 'true',
    'delta.autoOptimize.autoCompact' = 'true'
);
