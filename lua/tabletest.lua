

-- https://moonbingbing.gitbooks.io/openresty-best-practices/content/lua/table_library.html


-- -- table (表) 
-- Table 类型实现了一种抽象的“关联数组”。
-- “关联数组”是一种具有特殊索引方式的数组，索引通常是字符串（string）或者 number 类型，但也可以是除 nil 以外的任意类型的值。

local corp = {
    web = "www.google.com",   --索引为字符串，key = "web",  value = "www.google.com"
    telephone = "12345678",   --索引为字符串
    staff = {"Jack", "Scott", "Gary"}, --索引为字符串，值也是一个表
    100876,              --相当于 [1] = 100876，此时索引为数字
                         --      key = 1, value = 100876

    100191,              --相当于 [2] = 100191，此时索引为数字
    [10] = 360,          --直接把数字索引给出
    ["city"] = "Beijing" --索引为字符串
}

print(corp.web)               -->output:www.google.com
print(corp["telephone"])      -->output:12345678
print(corp[2])                -->output:100191
print(corp["city"])           -->output:"Beijing"
print(corp.staff[1])          -->output:Jack
print(corp[10])               -->output:360



