A = 1;
B = 2;
print(A+B)

C = true;

print(C)

True = 1

print(True)

-- _abc = 2
-- print(_abc)

-- print(type(_abc))

-- print(type(true))
-- print(type(false))
-- print(type("abc"))
-- print(type(0.01))
-- print(type(1))

d = "a\nb\nc\td\t";

print(d);

e = [=[ a\ba\as\as\asd\asd\[[aaaaa]] ]=];


print(e);

function fun1()
    print("abc")
end

fun1();

function func2(a,b,c)
    print(a,b,c);
end

func2(1,2,3)


function sum1(a, b)
    return a+b;
end

print(sum1(1, 2));

sum3 = function (a, b)
    return a + b
end

sum4 = sum3
print(sum4(1,2))

info = {
    id=123,
    name="zhangsan",
    sex=false
}

for key, value in pairs(info) do
    print(key, "===", value);
end

info.age =  18;
info["coutry"] = 'china'

info.sex = nil;
info["coutry"] = nil