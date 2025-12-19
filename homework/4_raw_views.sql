-- Replace <username> with your username (same as used in the notebook)
-- Bucket name: <username>-wikidata
-- Database name: <username>

-- DROP TABLE IF EXISTS <username>.raw_edits;

-- Create Table (raw_views) in the Table section
CREATE EXTERNAL TABLE 
nahian.raw_views (
    title STRING,
    views BIGINT,
    rank INT,
    date DATE,
    retrieved_at STRING
)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://nahian-wikidata/raw-views/';

-- Preview Table
SELECT * FROM "nahian"."raw_views" limit 10;