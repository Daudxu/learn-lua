father = {a =1, b =2}

function father:fatherSayHello()
    print("father say hello:", father.a, father.b)
end

father.fatherSayHello();

father.__index = father

son = {a = 10, b = 20 }

function son:sonSayHello()
    print("son say hello")
end

son.sonSayHello();

setmetatable(son, father)  -- 设置元表


son.sonSayHello();

son.fatherSayHello();



