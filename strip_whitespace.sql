-- remove whitespace at both ends of a string
SELECT   col, REGEXP_REPLACE (col, '(^[[:space:]]+)|([[:space:]]+$)', NULL) new_col_value, TRIM (col) FROM test_whitespace;

-- replace all whitespace with spaces, multiple contiguous whitespace character with a single space, remove space at ends of the string
-- https://stackoverflow.com/questions/27607353/oracle-update-multiple-spaces-in-a-column-with-a-single-space
SELECT TRIM(REGEXP_REPLACE(mycolumn, '([[:space:]]{1,})', ' ')) col from mytable;
