---------------------------------------------------------------------
-- LuaCase (C) CompanyName, All Rights Reserved
-- Created by: AuthorName
-- Date: 2021-03-20 17:54:54
---------------------------------------------------------------------

-- To edit this template in: Data/Config/Template.lua
-- To disable this template, check off menuitem: Options-Enable Template File

---@class LuaUnpackCase
local LuaUnpackCase = {}

local function fun(name, ...)
	local args = {...}
	print('***************orig args****************')
	for k, v in pairs(args) do
		print("Value"..k.." = "..v)
	end
	print('***************auto unpack**************')
	print(table.unpack(args))
	
	print('***************manual unpack*********')
	print(name, args [1],args[2],args[3], "Num = " .. #args)
	print('\n\n')
end

fun("Pack", nil, 2, nil)
fun("Pack", 1,2,nil)
fun("Pack", 1,nil,nil)
fun("Pack", nil,nil,3)

--弊端：变长参数必须在函数参数的后边
