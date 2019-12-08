local craft = false
local code = ''
local total = 0
local ok = 0

local lua_keywords = {
	["and"] = true,
	["break"] = true,
	["do"] = true,
	["else"] = true,
	["elseif"] = true,
	["end"] = true,
	["false"] = true,
	["for"] = true,
	["function"] = true,
	["goto"] = true,
	["if"] = true,
	["in"] = true,
	["local"] = true,
	["nil"] = true,
	["not"] = true,
	["or"] = true,
	["repeat"] = true,
	["return"] = true,
	["then"] = true,
	["true"] = true,
	["until"] = true,
	["while"] = true,
}

function dump(t)
	local rc = '';
	if type(t) == 'string' then
		rc = string.format("%q", t):gsub("\\\n", "\\n")
	elseif type(t) == 'number' then
		rc = tostring(t)
	elseif type(t) == 'boolean' then
		rc = tostring(t)
	elseif type(t) == 'table' then
		local nkeys = {}
		local keys = {}
		for k, v in pairs(t) do
			if type(k) == 'number' then
				table.insert(nkeys, { key = k, val = v })
			else
				table.insert(keys, { key = k, val = v })
			end
		end
		local v
		table.sort(nkeys, function(a, b) return a.key < b.key end)
		rc = "{ "
		local n
		for k = 1, #nkeys do
			v = nkeys[k]
			if v.key == k then
				rc = rc .. dump(v.val)..", "
			else
				n = k
				break
			end
		end
		if n then
			for k = n, #nkeys do
				v = nkeys[k]
				rc = rc .. "["..tostring(v.key).."] = "..dump(v.val)..", "
			end
		end
		for k = 1, #keys do
			v = keys[k]
			if type(v.key) == 'string' then
				if v.key:find("^[a-zA-Z_]+[a-zA-Z0-9_]*$") and not lua_keywords[v.key] then
					rc = rc .. v.key .. " = "..dump(v.val)..", "
				else
					rc = rc .. "[" .. string.format("%q", v.key) .. "] = "..dump(v.val)..", "
				end
			else
				rc = rc .. tostring(v.key) .. " = "..dump(v.val)..", "
			end
		end
		rc = rc:gsub(",[ \t]*$", "") .. " }"
	end
	return rc
end

minetest = {}

local receipes = {
}
local list = {
}
function minetest.register_craft(t)
	if t.output and not t.type then
		for _, v in ipairs(t.recipe) do
			for _, vv in ipairs(v) do
				if vv:find("group:") then
					return
				end
			end
		end
		receipes[t.output] = t
		table.insert(list, t.output)
	end
end
local a = { ... }
local f
if a[1] then f = io.open(a[1], "r") end
for l in f and f:lines() or io.lines() do
	if not craft then
		if l:find("minetest.register_craft", 1, true) then
			craft = true
			code = l
		end
	else
		code = code .. '\n' .. l
		if l:find("})") then
			craft = false
			local f = loadstring(code)
			local r, v, e = pcall(f)
			total = total + 1
			if r then
				ok = ok + 1
			end
		end
	end
end

--print("recipes = {")
for _, v in ipairs(list) do
	local e = { nam = v , recipe = receipes[v].recipe }
	e = dump(e) .. ","
	print(" ",e)
end
--print("}")

