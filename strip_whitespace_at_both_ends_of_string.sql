SELECT   col, REGEXP_REPLACE (col, '(^[[:space:]]+)|([[:space:]]+$)', NULL) new_col_value, TRIM (col) FROM test_whitespace;
