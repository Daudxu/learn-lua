function personInfo()

    -- 将成员属性隐藏起来
    local members = {
        id = 1,
        name = "lwang",
        age = 25
    }

    local function getId()
        return members.id
    end

    local function getName()
        return members.name
    end

    local function setId(id)
        members.id = id
    end

    local function setName(name)
        members.name = name
    end

    -- 对外暴露的方法
    return {
        getId = getId,
        setId = setId,
        getName = getName,
        setName = setName
    }
end


p1 = personInfo()

print(p1.getId(), p1.getName())


p1.setId(22)
p1.setName("mark")
print(p1.getId(), p1.getName())

