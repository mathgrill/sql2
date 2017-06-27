CREATE OR REPLACE FUNCTION fn_proc_running (proc_name_in VARCHAR2)
   RETURN INTEGER
IS
   v_return   INTEGER;
BEGIN
 
SELECT   COUNT(*) INTO v_return
  FROM   gv$session
WHERE   plsql_entry_object_id = (SELECT   MAX(object_id)
                                    FROM   dba_procedures
                                   WHERE   object_name = proc_name_in);
   RETURN v_return;
EXCEPTION
   WHEN OTHERS
   THEN
      RETURN 'error';
END fn_proc_running;
/
