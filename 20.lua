-- 闭包
local function func1(a, b)
    local x = 1;
    local y = 2;
    return  function ()
        x=x+1
        print(a,b,x,y);
    end
end
-- func1("abc", 123)();
tmpfunc = func1("abc", 123);
tmpfunc();
tmpfunc();
tmpfunc();