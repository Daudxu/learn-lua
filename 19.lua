-- pack

-- a = table.pack(1,2,3)
-- print(a)
-- print(a.n)

-- function func22(...)
--     print(table.pack(...));
--     sum = 0;
--     return sum;
-- end
-- print(func22(1,2,3,4,5))


function fun3()
    return  table.pack(11,22,33,4,5)
end

print( table.unpack(fun3()));



-- function func4(...)
--     t1={...};
--     count=#t1;
--     print(count);
-- end

-- func4(1,2,3)