t1={
    id=123,
    name="tom",
};

t1.getId=function (obj)
    return obj.id;
end

-- t1.getName=function (obj)
--     return self.name;
-- end

function t1:getName()
    return self.name;
end

print(t1.id,t1.name,t1.getId(t1),t1:getName());


t2=t1;
-- print(t1,t2);
t1=nil;

print(t2.id,t2.name,t2.getId(t2), t2:getName(t2));

print("")


arr1 = {
    id=1,
    name="panbda",
    addr = "beijjing"
}

function arr1:getId()
    return self.id
end

function arr1:setId(val)
     self.id = val
end

arr1:setId(2)
print(arr1:getId());

function arr1.getName(obj)
    return obj.name;
end

function arr1.setName(obj, val)
    obj.name = val
end

arr1.setName(arr1, 'mark')
print(arr1.getName(arr1));