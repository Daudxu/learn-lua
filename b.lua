info = {
    id=123,
    name="tom",
    sex=false
}

-- for k,v in pairs(info) do
--     print(k, v);
-- end

info.age = 18;
info["coutry"] = "China";

-- print(info)

for k,v in pairs(info) do
    print(k, v);
end
print(info.age)


arr = { "a", "b", "c"}

arr[3] = nil

for key, value in pairs(arr) do
    print(key, value);
end

info2 = {
    "a",
    1,
    {a=1,b=2}
}

for key, value in pairs(info2) do
    print(key, value)
    if type(value) == "table" then
        for k, v in pairs(value) do
            print(k, v)
        end
    end
end