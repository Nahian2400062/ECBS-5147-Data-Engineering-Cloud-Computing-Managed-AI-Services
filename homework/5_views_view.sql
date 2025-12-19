-- Replace <username> with your username (same as used in the notebook)

-- DROP VIEW IF EXISTS <username>.edits;

CREATE VIEW nahian.views AS
SELECT
    title,
    views,
    rank,
    date,
    CAST(from_iso8601_timestamp(retrieved_at) AS TIMESTAMP) AS retrieved_at
FROM nahian.raw_views
ORDER BY
    date ASC,
    rank ASC;

-- Preview Table
SELECT * FROM "nahian"."views" limit 10;