stuInfo = {
    id = 1, 
    name = "panda",
    age = 18,
    say = function()
        print("stuInfo say.")
    end
}

function stuInfo:newInstance(tab)
    obj = tab or {}
    setmetatable(obj, self) -- 为obj设置元表为self 也就是stuInfo  谁调用newInstance，self就是谁
    self.__index = self  -- 设置自索引
    return obj
end

function stuInfo:getId()
    return self.id
end

function stuInfo:setId(newId)
    self.id = newId
end

stu1 = stuInfo:newInstance()

stu2 = stu1:newInstance()


print(stuInfo, stu1, stu2)
print(stuInfo.id, stu1.id, stu2.id)  -- 如果子类没有赋值，默认会使用父类的值；如果父类的成员或方法发生变化会影响子类，前提是子类没有重写

stuInfo.age = 25
print(stuInfo.age, stu1.age, stu2.age)

stu1.id = 100   -- stu1以下都会改变  这就是重写
print(stuInfo.id, stu1.id, stu2.id)


print("")

stuInfo.say()
stu1.say()
stu2.say()

print("")

function stu1:say()    -- stu1 重写say方法
    print("stu1 say.")
end
stuInfo.say()
stu1.say()    -- stu1 调用自己的say方法
stu2.say()    -- stu2 调用stu1的say方法

