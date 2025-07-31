EXECUTE IMMEDIATE $$
DECLARE
  wh_name VARCHAR := 'dev_wh';
  wh_size VARCHAR := 'SMALL';
BEGIN
  EXECUTE IMMEDIATE FROM @dq_tutorial_db.sch.my_stage/code/single/create_warehouse.sql
    USING (wh_name => wh_name, wh_size => wh_size);
END;
$$;
