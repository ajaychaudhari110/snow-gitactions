--!jinja
DECLARE
  sql_stmt STRING DEFAULT '';
BEGIN
  sql_stmt := 'CREATE WAREHOUSE IF NOT EXISTS {{wh_name}}
    WITH
    WAREHOUSE_SIZE = {{wh_size}}
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE';

  EXECUTE IMMEDIATE :sql_stmt;
END;
