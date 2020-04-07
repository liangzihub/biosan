

local order = 3.99
local score = 98.01
print(math.floor(order))   -->output:3
print(math.ceil(score))    -->output:99




--  一般地，Lua 的 number 类型就是用双精度浮点数来实现的。值得一提的是，
--  LuaJIT 支持所谓的“dual-number”（双数）模式，即 LuaJIT 会根据上下文用整型来存储整数，而用双精度浮点数来存放浮点数。
--  另外，LuaJIT 还支持“长长整型”的大整数（在 x86_64 体系结构上则是 64 位整数）。例如

-- print(3372036854775807LL - 1)  -->output:9223372036854775806LL
