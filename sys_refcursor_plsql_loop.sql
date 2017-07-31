DECLARE
    P_RS SYS_REFCURSOR;
    L_COLS NUMBER;
    L_DESC DBMS_SQL.DESC_TAB;
    L_CURS INTEGER;
    L_VARCHAR VARCHAR2(4000);
BEGIN
    --CAPITALEXTRACT(P_RS => P_RS);
      OPEN p_rs for 
     select * from address where id_number='123';
    L_CURS := DBMS_SQL.TO_CURSOR_NUMBER(P_RS);
    DBMS_SQL.DESCRIBE_COLUMNS(C => L_CURS, COL_CNT => L_COLS,
        DESC_T => L_DESC);

    FOR i IN 1..L_COLS LOOP
        DBMS_SQL.DEFINE_COLUMN(L_CURS, i, L_VARCHAR, 4000);
    END LOOP;

    WHILE DBMS_SQL.FETCH_ROWS(L_CURS) > 0 LOOP
        FOR i IN 1..L_COLS LOOP
            DBMS_SQL.COLUMN_VALUE(L_CURS, i, L_VARCHAR);
            DBMS_OUTPUT.PUT_LINE('Row ' || DBMS_SQL.LAST_ROW_COUNT
                || ': ' || l_desc(i).col_name
                || ' = ' || L_VARCHAR);
        END LOOP;
    END LOOP;

    DBMS_SQL.CLOSE_CURSOR(L_CURS);
END;
/

--https://stackoverflow.com/questions/11187376/how-to-declare-rowtype-of-a-variable-that-is-a-weakly-typed-sys-refcursor

CREATE or REPLACE PROCEDURE CAPITALEXTRACT
(
    p_rs OUT SYS_REFCURSOR
) AS
BEGIN
  OPEN p_rs for 
     select * from phh;
END CAPITALEXTRACT;
