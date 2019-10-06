SELECT banner FROM v$version WHERE ROWNUM = 1;

alter session set "_ORACLE_SCRIPT"=true;  

CREATE USER php IDENTIFIED BY "password";

GRANT CONNECT TO php;

GRANT UNLIMITED TABLESPACE TO php;

GRANT SELECT, INSERT, UPDATE, DELETE ON schema.php TO php;

GRANT CREATE ANY TABLE TO php;

select * from all_tab_cols where owner = 'PHP';