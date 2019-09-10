drop table unpivot_test purge;                    

create table unpivot_test as
select 'A1' code, 0.25 a, 0.25 b, 0 c, 0 d, 0 e, 0.5 f from dual
union all
select 'A2' code, 0.25 a, 0.25 b, null c, 0 d, .25 e, 0.25 f from dual;

SELECT code, col, val
FROM
  unpivot_test UNPIVOT INCLUDE NULLS
    ( VAL FOR( col ) IN
        ( a AS 'A',
          b AS 'B',
          c AS 'C',
          d AS 'D',
          e AS 'E',
          f AS 'F'          
        )
    );
