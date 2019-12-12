--[[
Jumpdrive computer
Can be connected to mesecon/digiline button or/and digistuff touchscreen
Jumpdrive and LCD (both required) are connected via digilines

lcd channel - lcd
touch channel - touch
digiline button - message "on"
]]

local MAX_POWER = 250000
local VERSION = "0.3"
local MIN_R = 16
function lcd(msg, ...)
	digiline_send("lcd", string.format(msg, ...))
--	print(string.format(msg, ...))
end

function abs(v)
	return v < 0 and -v or v
end

function path(from, to, delta)
	local d = ((to.y - from.y) ^ 2 + (to.z - from.z) ^ 2 + (to.x - from.x) ^ 2) ^ 0.5
	if d <= mem.radius * 2 or d <= delta then
		return { x = to.x, y = to.y, z = to.z, hops = 1,
			 distance = math.ceil(d)}
	end
	local k = d / delta
	local dx = round((to.x - from.x) / k)
	local dz = round((to.z - from.z) / k)
	local dy = round((to.y - from.y) / k)
	return { x = from.x + dx, y = from.y + dy, z = from.z + dz,
		 hops = math.ceil(k),
		 distance = math.ceil(d) }
end

function eq(from, to)
	return from.x == to.x and from.y == to.y and from.z == to.z
end

function round(v)
	return v < 0 and math.ceil(v) or math.floor(v)
end

function vect_set(t, s)
	t.x, t.y, t.z = s.x, s.y, s.z
end

function parse_bm_line(l)
	local s, e
	local entity = {}
	s, e = l:find(" ", 1, true)
	for i = 1, 4 do
		s, e = false, false
		if i ~= 4 then
			s, e = l:find(" ", 1, true)
			if not s then return false end
		end
		local v = l
		if e then
			v = tonumber(l:sub(1, e))
			l = l:sub(e + 1)
		end
		table.insert(entity, v)
	end
	return entity
end

function parse_bm_lines(txt)
	local s, e = true, true
	local bm = {}
	while s do
		s, e = txt:find("\n", 1, true)
		local l = txt
		if s then
			l = txt:sub(1, s - 1)
			txt = txt:sub(e + 1)
		end
		local e = parse_bm_line(l)
		if e and #e == 4 then
			table.insert(bm, { x = e[1], y = e[2], z = e[3], nam = e[4] })
		end
	end
	mem.bm = bm
end

function touch_info(fmt, ...)
	mem.info = string.format(fmt, ...)
end

function touch_init()
	local Y = 1
	local X = 1
	if not mem.bm then
		mem.bm = {}
	end
	mem.dirty = not mem.dirty -- hack to force form redraw

	digiline_send("touch", { command = "clear" })

	digiline_send("touch",
		{
		      { command = "addfield",
			X = X, Y = Y, W = 1, H = 1,
			label = "X", name = "x",
			default = tostring(mem.to.x) },
		      { command = "addfield",
			X = X + 1, Y = Y, W = 1, H = 1,
			label = "Y", name = "y",
			default = tostring(mem.to.y) },
		      { command = "addfield",
			X = X + 2, Y = Y, W = 1, H = 1,
			label = "Z", name = "z",
			default = tostring(mem.to.z) },

		      { command = "addbutton",
			X = X- 1 + 3.7, Y = Y- 0.3, W = 1, H = 1,
			name = "show", label = "Set" },
		      { command = "addbutton_exit",
			X = X - 1, Y = Y + 1, W = 1, H = 1,
			name = "hop", label = "Hop!" },
		      { command = "addbutton",
			X = X, Y = Y + 1, W = 1, H = 1,
			name = "read", label = "Read" },
		      { command = "addbutton",
			X = X + 1, Y = Y + 1,  W = 1, H = 1,
			name = "reset", label = "Reset" },
		      { command = "addbutton_exit",
			X = X + 2, Y = Y + 1, W = 1, H = 1,
			name = "simulate", label = "Sim." }
		});


	if (mem.bm_id or 1) == 1 then
		digiline_send("touch",
			      { command = "addbutton",
				X = X + 1 - 1, Y = Y + 6,  W = 2, H = 1,
				name = "add", label = "Bookmark" });
	end
	if mem.bm_id and mem.bm_id > 1 then
		digiline_send("touch",
			      { command = "addbutton",
				X = X + 1 - 1, Y = Y + 6,  W = 2, H = 1,
				name = "del", label = "Remove" });
		if mem.bm_id > 2 then
			digiline_send("touch",
				      { command = "addbutton",
					X = X + 3 - 1, Y = Y + 6,  W = 2, H = 1,
					name = "up", label = "Up" });
		end
		if mem.bm_id - 1 < #mem.bm then
			digiline_send("touch",
			      { command = "addbutton",
				X = X + 5 - 1, Y = Y + 6,  W = 2, H = 1,
				name = "down", label = "Down" });
		end
	end

	local to = path(mem.from, mem.to, mem.range)

	local target = string.format("Distance: %d @ %d hop(s)",
				     to.distance, to.hops)

	local inf = string.format("Navigator %s\nby Hugeping '2019\n\nPower: %d Hop radius: %d\n%s%s",
				  VERSION, mem.powerstorage, mem.currange, target, mem.dirty and "" or " ")
--	lcd("Pwr: %d R: %d", mem.powerstorage, mem.maxrange)
	digiline_send("touch",
		{
		      { command = "addlabel",
			X = X + 4, Y = Y - 1, W = 4, H = 1,
			label = inf },
		      { command = "addlabel",
			X = X + 4, Y = Y + 1, W = 4, H = 1,
			label = mem.info or "" }
		});

	local bm = {
		string.format("[Current]: %d %d %d", mem.from.x, mem.from.y, mem.from.z)
	}
	local new_bm = {}

	for _, v in ipairs(mem.bm) do -- fix broken
		if v.nam and v.x and v.y and v.z then
			table.insert(new_bm, v)
		end
	end
	mem.bm = new_bm

	for _, v in ipairs(mem.bm) do
		table.insert(bm, string.format("%s: %d %d %d", v.nam, v.x, v.y, v.z))
	end

	if mem.bm_id and mem.bm_id - 1 > #mem.bm then
		mem.bm_id = 1
	end

	if #mem.bm > 0 then
		digiline_send("touch", { command = "addbutton",
			X = X + 3, Y = Y + 1, W = 1, H = 1,
			name = "edit", label = "Edit" })
	end

	digiline_send("touch",
		      { command = "addtextlist",
			X = X - 1, Y = Y + 2,  W = 5, H = 4,
			name = "bookmarks", label = "Bookmarks",
			selected_id = 	mem.bm_id or 1,
			transparent = true,
			listelements = bm});

end

function touch_to_jump(msg)
	local X, Y, Z = tonumber(msg.x) or mem.to.x,
	tonumber(msg.y) or mem.to.y,
	tonumber(msg.z) or mem.to.z

	digiline_send("jumpdrive", { command = "set", key = "x", value = X })
	digiline_send("jumpdrive", { command = "set", key = "y", value = Y })
	digiline_send("jumpdrive", { command = "set", key = "z", value = Z })
end

function navigate_info(msg)
	mem.to = {}
	mem.from = {}
	vect_set(mem.to, msg.target)
	vect_set(mem.from, msg.position)
	mem.range = (MAX_POWER - 100) / (msg.radius * 10)
	mem.currange = msg.powerstorage / (msg.radius * 10)
	mem.maxrange = mem.range
	mem.radius = msg.radius
	mem.powerstorage = msg.powerstorage
	mem.land = false
end

function touch_restart(cls)
	if cls == nil or cls == true then
		touch_info ""
	end
	mem.state = "start"
	navigate_touch()
end

function navigate_touch(msg)
	if not msg or msg.position or msg.success ~= nil then
		if mem.state == 'start' then
			mem.program = "navigate_touch"
			digiline_send("jumpdrive", { command = "get" })
			mem.state = "init"
		elseif mem.state == 'init' then
			navigate_info(msg)
			mem.state = "done"
			touch_init()
		elseif mem.state == 'show' then
--			lcd(msg.msg or "Ok")
			touch_info("%s", msg.msg or "Success")
			touch_restart(false)
		end
		return
	end
	if msg.reset then
		digiline_send("jumpdrive", { command = "reset" })
		touch_restart()
	elseif msg.read then
		touch_restart()
	elseif msg.show then
		touch_to_jump(msg)
		digiline_send("jumpdrive", { command = "show" })
		mem.state = "show"
	elseif msg.simulate then
		touch_to_jump(msg)
		mem.simulate = true
		mem.state = "start"
		navigate()
	elseif msg.hop then
		touch_to_jump(msg)
		mem.simulate = false
		mem.state = "start"
		navigate()
	elseif msg.key_enter_field or msg.enter then
		if msg.key_enter_field == "name" or msg.name then
			table.insert(mem.bm,
				     { nam = msg.name,
				       x = mem.pos.x,
				       y = mem.pos.y,
				       z = mem.pos.z })
		end
		touch_restart()
	elseif msg.up then
		if mem.bm_id and mem.bm_id > 1 then
			if mem.bm_id - 1 <= #mem.bm then
				local o = table.remove(mem.bm, mem.bm_id - 1)
				mem.bm_id = mem.bm_id - 1
				table.insert(mem.bm, mem.bm_id - 1, o)
			end
		end
		touch_restart()
	elseif msg.down then
		if mem.bm_id and (mem.bm_id - 1) < #mem.bm then
			local o = table.remove(mem.bm, mem.bm_id - 1)
			mem.bm_id = mem.bm_id + 1
			table.insert(mem.bm, mem.bm_id - 1, o)
		end
		touch_restart()
	elseif msg.del then
		if mem.bm_id and mem.bm_id > 1 then
			if mem.bm_id - 1 <= #mem.bm then
				table.remove(mem.bm, mem.bm_id - 1)
				mem.bm_id = mem.bm_id - 1
			end
		end
		touch_restart()
	elseif msg.save then
		local text = msg.edit
		parse_bm_lines(text)
		touch_restart()
	elseif msg.edit then
		local Y = 1
		local X = 1
		local text = ''
		for _, v in ipairs(mem.bm) do
			text = text .. string.format("%d %d %d %s\n", v.x, v.y, v.z, v.nam)
		end

		digiline_send("touch", {
			      { command = "clear" },
			      { command = "addtextarea",
				X = X, Y = Y, W = 8, H = 6,
				name = "edit", label = "Edit",
				default = text },
			      { command = "addbutton",
				X = X, Y = Y + 6, W = 2, H = 1,
				name = "save", label = "Save" }
			});
	elseif msg.add then
		local Y = 1
		local X = 1
		mem.pos = {}
		vect_set(mem.pos, msg)
		digiline_send("touch", {
			      { command = "clear" },
			      { command = "addfield",
				X = X, Y = Y, W = 4, H = 1,
				label = "Name", name = "name",
				default = "Unnamed" },
			      { command = "addbutton",
				X = X + 4, Y = Y - 0.3, W = 1, H = 1,
				name = "enter", label = "Add" }
			});
	elseif msg.bookmarks then
		if msg.bookmarks:find("CHG:", 1, true) == 1 then
			local num = tonumber(msg.bookmarks:sub(5))
			if num == 1 then
				vect_set(msg, mem.from)
			else
				vect_set(msg, mem.bm[num - 1])
			end
			mem.bm_id = num
			touch_to_jump(msg)
		end
		touch_restart()
	elseif msg.quit then
		touch_restart()
	end
end

function navigate(msg, event)
	if event and event.channel == 'touch' then
		return -- just ignore
	end
	if mem.state == "start" then
		mem.program = "navigate"
		digiline_send("jumpdrive", { command = "get" })
		mem.state = "init"
--		lcd("Initializing...")
		return
	elseif mem.state == "init" then
		navigate_info(msg)
		mem.state = "start"
--		lcd("Navigator 0.2 by Hugeping. OK")
	end
	if mem.state == "start" then
		if eq(mem.to, mem.from) then
			lcd("Ok: %d %d %d", mem.to.x, mem.to.y, mem.to.z)
			touch_restart()
			return -- finish
		end
		local to = path(mem.from, mem.to, mem.range)
		mem.hop = to
--		lcd("Nav %d hop(s)", mem.hops)
		mem.state = "prog"
	end
	if mem.state == "prog" then
		digiline_send("jumpdrive", { command = "set", key = "x", value = mem.hop.x })
		digiline_send("jumpdrive", { command = "set", key = "y", value = mem.hop.y })
		digiline_send("jumpdrive", { command = "set", key = "z", value = mem.hop.z })
		digiline_send("jumpdrive", { command = "get" })
--		lcd("Hop: %d %d %d", mem.hop.x, mem.hop.y, mem.hop.z)
		mem.state = "fuel"
	elseif mem.state == "fuel" then
		if msg.power_req > MAX_POWER then
			lcd("Hop out of range.")
			mem.state = "range"
			return
		end
		if msg.power_req > msg.powerstorage then
			lcd("Pwr: %d", msg.power_req)
			digiline_send("jumpdrive", { command = "set", key = "x", value = mem.to.x })
			digiline_send("jumpdrive", { command = "set", key = "y", value = mem.to.y })
			digiline_send("jumpdrive", { command = "set", key = "z", value = mem.to.z })
			touch_restart()
			return
		end
		mem.state = "simulate"
		digiline_send("jumpdrive", { command = "show" })
--		lcd("Simulate jump")
	elseif mem.state == "simulate" then
		if mem.land then
			if mem.last_status == msg.success then -- go on!
				mem.state = "land"
			else
				if abs(mem.land) == 1 and msg.success then
					mem.land = false -- land it!
				else
					if round(abs(mem.land)) < 2 then
						mem.land = mem.land * 2
					end
					mem.land = - round(mem.land / 2)
					mem.state = "land"
				end
				mem.last_status = msg.success
			end
			if not msg.success and not msg.msg:find("Occupied", 1, true) then
				mem.land = false
			end
		end

		if not mem.land then
			if msg.success then
				lcd("Jump...")
				if mem.simulate then
					digiline_send("jumpdrive", { command = "get" })
					mem.state = "end"
					mem.simulate = false
				else
					digiline_send("jumpdrive", { command = "jump" })
					mem.state = "jump"
				end
				return
			elseif msg.msg:find("Occupied", 1, true) or msg.msg:find("!protected", 1, true) then
				if mem.hop.hops == 1 then
					mem.state = "land"
					mem.land = mem.radius * 2
					if mem.land < MIN_R then
						mem.land = MIN_R
					end
					mem.last_status = false
				else
					mem.state = "climb"
				end
--			lcd("Occupied...")
			elseif msg.msg:find("uncharted", 1, true) then
				mem.state = "range"
			else
				lcd("Err %s", msg.msg)
				digiline_send("jumpdrive", { command = "set", key = "x", value = mem.to.x })
				digiline_send("jumpdrive", { command = "set", key = "y", value = mem.to.y })
				digiline_send("jumpdrive", { command = "set", key = "z", value = mem.to.z })
				touch_restart()
			end
		end
	end
	if mem.state == "range" then
		mem.range = mem.range - (mem.maxrange * 0.1)
		if mem.range < mem.maxrange * 0.1 then
			lcd("Uncharted area")
			digiline_send("jumpdrive", { command = "set", key = "x", value = mem.to.x })
			digiline_send("jumpdrive", { command = "set", key = "y", value = mem.to.y })
			digiline_send("jumpdrive", { command = "set", key = "z", value = mem.to.z })
			touch_restart()
			return
		end
		mem.state = "prog"
		local to = path(mem.from, mem.to, mem.range)
		mem.hop = to
		lcd("Range %d", mem.range)
		navigate(msg)
		return
	elseif mem.state == "land" then
		mem.hop.y = mem.hop.y + mem.land
		mem.state = "prog"
		lcd("Landing: %d", mem.hop.y)
		--navigate(msg)
		interrupt(0.1)
		return
	elseif mem.state == "climb" then
		local d = mem.radius * 2
		if d < MIN_R then
			d = MIN_R
		end
		mem.hop.y = mem.hop.y + d
		mem.state = "prog"
		lcd("Altitude: %d", mem.hop.y)
		--navigate(msg)
		interrupt(0.1)
		return
	elseif mem.state == "jump" then
		if not msg.success then
			lcd("Err %s", msg.msg)
			touch_restart()
			return
		end
		digiline_send("jumpdrive", { command = "get" })
		mem.state = "end"
	elseif mem.state == "end" then
		if eq(mem.to, msg.position) then
			lcd("Ok: %d %d %d", mem.to.x, mem.to.y, mem.to.z)
			touch_restart()
			return -- finish
		end
		digiline_send("jumpdrive", { command = "set", key = "x", value = mem.to.x })
		digiline_send("jumpdrive", { command = "set", key = "y", value = mem.to.y })
		digiline_send("jumpdrive", { command = "set", key = "z", value = mem.to.z })
		lcd("[%d %d %d] %d %d %d @%d hop(s)",
			mem.hop.x, mem.hop.y, mem.hop.z,
			mem.to.x, mem.to.y, mem.to.z, mem.hop.hops - 1)
		touch_restart()
	end
end

proc = {
	navigate = navigate,
	navigate_touch = navigate_touch,
}

--print(event)

if event.type == "on" or event.msg == "on" then
	mem.state = "start"
	navigate()
elseif event.type == "digiline" or event.type == "interrupt" then
	local msg = event.msg
	proc[mem.program](msg, event)
elseif event.type == "program" then
	lcd("Navigator %s by Hugeping '2019", VERSION)
	mem.state = "start"
	navigate_touch()
end
