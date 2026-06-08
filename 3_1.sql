SELECT
    id,
    scores,
    RANK() OVER (ORDER BY scores DESC) AS position
FROM examination;