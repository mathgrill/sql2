SELECT
    banner
FROM
    v$version
WHERE
    ROWNUM = 1;

--for 18C

ALTER SESSION SET "_ORACLE_SCRIPT" = true;

CREATE USER php IDENTIFIED BY "password";

GRANT connect TO php;

GRANT
    UNLIMITED TABLESPACE
TO php;

GRANT SELECT, INSERT, UPDATE, DELETE ON schema.php TO php;

GRANT
    CREATE ANY TABLE
TO php;

SELECT
    *
FROM
    all_tab_cols
WHERE
    owner = 'PHP';

GRANT
    CREATE PROCEDURE
TO php;

GRANT
    CREATE ANY VIEW
TO php;

GRANT
    CREATE SEQUENCE
TO php;

GRANT
    CREATE TYPE
TO php;

GRANT
    CREATE TRIGGER
TO php;

GRANT
    CREATE MATERIALIZED VIEW
TO php;

GRANT
    SELECT ANY DICTIONARY
TO php;
