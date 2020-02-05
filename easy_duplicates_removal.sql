DELETE FROM your_table
WHERE rowid not in
(SELECT MIN(rowid)
FROM your_table
GROUP BY column1, column2, column3);
--https://stackoverflow.com/questions/529098/removing-duplicate-rows-from-table-in-oracle
