CREATE TABLE carlob.table_name ( value ) AS
SELECT sysdate FROM DUAL;

--convert utc date to local time
SELECT TO_CHAR(
         FROM_TZ( CAST( value AS TIMESTAMP ), 'UTC' )
           AT TIME ZONE 'US/Eastern',
         'YYYY-MM-DD HH24:MI:SS TZH:TZM TZR'
       ) AS here_time
FROM   table_name;
