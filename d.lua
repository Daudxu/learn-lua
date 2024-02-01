-- i,sum =0,0;
-- while i<100 do
--     if i>49 then
--         goto FLAG;
--         -- break
--     end
--    i=i+1;
--    sum=sum+1;
-- end

-- print(i,sum);
-- print(11111)
-- ::FLAG::
-- print(22222)
-- print(i,sum);


local i = 1;
::loop::
print(i)
if i < 10 then
    i = i + 1
    goto loop
end


-- local a = 1
-- ::label:: print("--- goto label ---")

-- a = a+1
-- if a < 3 then
--   goto label  -- a 小于 3 的时候跳转到标签 label
-- end