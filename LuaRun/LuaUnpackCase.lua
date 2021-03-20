---------------------------------------------------------------------
-- LuaCase (C) CompanyName, All Rights Reserved
-- Created by: AuthorName
-- Date: 2021-03-20 17:54:54
---------------------------------------------------------------------

-- To edit this template in: Data/Config/Template.lua
-- To disable this template, check off menuitem: Options-Enable Template File

---@class LuaUnpackCase
local LuaUnpackCase = {}

local function fun(...)
	local arg = {...}
	print(table.unpack(arg))
	for k, v in pairs(arg) do
		print(k, v)
	end
	print(arg [1],arg[2],arg[3], #arg)
	print('***************')
end

fun(nil, 2, nil)
fun(1,2,nil)
fun(1,nil,nil)
fun(nil,nil,3)