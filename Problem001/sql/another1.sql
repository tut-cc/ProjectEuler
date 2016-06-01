-- SQLite で動作を確認
-- `sqlite3 < ./problem.sql' で実行

WITH RECURSIVE N AS (
  SELECT 1 AS NUM
  UNION
  SELECT NUM + 1 FROM N WHERE NUM + 1 < 1000
)
SELECT SUM(NUM) FROM N
  WHERE NUM < 1000
    AND (NUM % 3 = 0 OR NUM % 5 = 0);
