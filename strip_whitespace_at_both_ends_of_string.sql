SELECT   col, REGEXP_REPLACE (col, '(^[[:space:]]+)|([[:space:]]+$)', NULL) new_col_value, TRIM (col) FROM test_whitespace;

--replace all whitespace with spaces, multiple contiguous whitespace character with a single space, remove space at ends of the string
SELECT TRIM(REGEXP_REPLACE(mycolumn, '([[:space:]]{1,})', ' ')) col from mytable;
