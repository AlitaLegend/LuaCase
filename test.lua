local _, LuaDebuggee = pcall(require, "LuaDebuggee")
if LuaDebuggee then LuaDebuggee.StartDebug("127.0.0.1", 9826) end

--测试入口
require "Main"
