DECLARE
   CURSOR this_cur
   IS
        SELECT   column_name, column_id
          FROM   all_tab_cols
         WHERE   table_name = 'EMPLOYEE' AND owner = 'HR'
      ORDER BY   2;
BEGIN
   FOR row IN this_cur
   LOOP
      DBMS_OUTPUT.PUT_LINE (row.column_name || ' ' || row.column_id);
   END LOOP;
END;
/
