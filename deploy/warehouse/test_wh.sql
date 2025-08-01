EXECUTE IMMEDIATE FROM @dq_tutorial_db.sch.my_stage/code/single/create_warehouse.sql USING (wh_name => 'test_wh', wh_size => 'SMALL');
