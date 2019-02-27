CREATE TABLE hr.vw_test
AS
   SELECT   owner, view_name
     FROM   all_views
    WHERE   1 = 0;

ALTER TABLE hr.vw_test ADD txt CLOB;

INSERT INTO hr.vw_test
     SELECT   owner, view_name, TO_LOB (text)
       FROM   all_views
      WHERE   owner IN ('ADVANCE', 'DARS', 'PHP')
   ORDER BY   1, 2;

SELECT   *
  FROM   hr.vw_test
 WHERE   txt LIKE '%AOC%';
