-- remove whitespace at both ends of a string
SELECT   col, REGEXP_REPLACE (col, '(^[[:space:]]+)|([[:space:]]+$)', NULL) new_col_value, TRIM (col) FROM test_whitespace;

-- replace all whitespace with spaces, multiple contiguous whitespace character with a single space, remove space at ends of the string
-- https://stackoverflow.com/questions/27607353/oracle-update-multiple-spaces-in-a-column-with-a-single-space
SELECT TRIM(REGEXP_REPLACE(mycolumn, '([[:space:]]{1,})', ' ')) col from mytable;

-- using translate
-- https://stackoverflow.com/questions/16407135/oracle-regexp-to-replace-n-r-and-t-with-space
select translate(your_column, chr(10)||chr(11)||chr(13), '    ')
from your_table;
-- This replaces newline, tab and carriage return with space.

-- https://stackoverflow.com/questions/5505835/oracle-pl-sql-remove-space-characters-from-a-string
How to nix whitespace: 
REGEXP_REPLACE(id_number, '([[:space:]]*)', NULL)
Even better (replace chr(0) as well):
REPLACE(REGEXP_REPLACE( id_number, '[[:space:]]'), CHR(0))
or
REPLACE(REGEXP_REPLACE( id_number, '\s'), CHR(0))
