t1 = {"abc","def","xyz",123};
print(table.concat(t1,"=="));
table.remove(t1,1);
print(table.concat(t1,"=="));
table.insert(t1,2,"789");
print(table.concat(t1,"=="));
-- function fun1(a, b)
--     return a>b;
-- end
-- table.sort(t1,fun1);
-- print(table.concat(t1,"=="));
t2={};
table.move(t1,1,2,1,t2)
-- table.move(t1,1,2,1,t2);
-- print(table.concat(t2,"=="));
