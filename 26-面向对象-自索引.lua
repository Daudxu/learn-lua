
--[[

    自索引  自己索引自己

]]--

t1={id=123,name="tom"};

--indexTable={phone=123456}

meta={
    phone=123456,
    --__index=meta,--此时 meta 不存在，所以 此处的索引 __index=nil
    test=function()
        print(meta.__index);
        print(meta);
    end
}

meta.__index=meta;  --自己索引自己了，这种就叫自索引

setmetatable(t1,meta);

print(t1.phone);
print("");
meta.test();


t2 = {
    id=2,
    name="zhgangsan",
    age=18
}

meta_t2 = {
    addr = "shenzhen"
}

meta_t2.__index = meta_t2;
setmetatable(t2,meta_t2)
print(t2.addr)