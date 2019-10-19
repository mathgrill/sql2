ALTER TABLE supplier
ADD CONSTRAINT supplier_pk PRIMARY KEY (supplier_id);

select * from all_tab_cols where owner = 'OWNER' and table_name = 'TABLE_NAME';

select * from ALL_COMMENTS;

COMMENT ON COLUMN employees.job_id IS 'abbreviated job title';

str_comment:='COMMENT ON COLUMN '||rec.table_name||'.'||rec.column_name
            ||' IS '''||REPLACE( rec.description,'''','''''')||'''; ' ;
