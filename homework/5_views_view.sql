CREATE VIEW aruzhan.views AS
    SELECT
        title,
        views,
        rank,
        date,
        cast(from_iso8601_timestamp(retrieved_at) AS TIMESTAMP) as retrieved_at
    FROM aruzhan.raw_views
    ORDER BY date, rank ASC 