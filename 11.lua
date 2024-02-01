-- 死循环
-- i=0
-- ::FLAG1::;
--    print(i);
--    i=i+1;
-- goto FLAG1;


-- print("123456");


-- do
--     goto FLAG1;
--     print("a");
--     ::FLAG1::;
-- end


-- i = 0
-- ::s1:: do
--  print(i)
--  i = i+1
-- end
-- if i>3 then
--  os.exit()  -- i 大于 3 时退出
-- end
-- goto s1

-- local a = 1;
-- ::label:: print("--- goto label ---")

-- a = a+1
-- if a < 3 then
--   goto label  -- a 小于 3 的时候跳转到标签 label
-- end

