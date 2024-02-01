-- 4.  面向对象 类的实例化（带参构造）

stuInfo = {
    id = 1, 
    name = "panda",
    age = 18
}

-- stuInfo stu1 stu2 都是同一张表
stu1 = stuInfo
stu2 = stu1
print(stuInfo, stu1, stu2)

print(stuInfo.id, stu1.id, stu2.id)
stuInfo.id = 100
print(stuInfo.id, stu1.id, stu2.id) -- 都会休改为：100

print("")

stuInfo.__index = stuInfo  -- 设置自索引

function stuInfo:newInstance(tab)
    obj = stab or {}
    setmetatable(obj, self) -- 为obj设置元表为self 也就是stuInfo  谁调用newInstance，self就是谁
    -- self.__index = self
    return obj
end

-- stu3 接收newInstance出来的实例
stu3 = stuInfo:newInstance({id = 3, age = 20})
print("stu3: ", stu3.id, stu3.name, stu3.age)  -- name会使用stu3 元表也就是stuInfo中的name的值
print("")
print(1750*3)

-- stu4 = stu3:newInstance()
-- print("stu4: ", stu4.id, stu4.name, stu4.age)  -- 输出 nil nil nil 
-- print("")

-- stu3.__index = stu3   -- 设置自索引
-- stu5 = stu3:newInstance({id = 1111})
-- print("stu5: ", stu5.id, stu5.name, stu5.age)  -- 输出 nil nil nil 
-- print("")
