DECLARE
   CURSOR this_cur
   IS
select distinct owner, table_name from all_tab_cols where owner = 'PHP' and table_name like 'RT%' and last_analyzed is not null;  
BEGIN
   FOR row IN this_cur
   LOOP
      DBMS_OUTPUT.PUT_LINE (row.table_name);
      dbms_utility.get_dependency('TABLE','PHP', row.table_name);
   END LOOP;
END;
/
