--[[
    This by MoE
]]

local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

CONFIG = {}
CONFIG.LOGGING = false
CONFIG.ADD_STAFF_TITLES = true -- Allow staff to apply special titles
CONFIG.ADD_VANITY_TITLES = true -- Allow vanity titles unlocked by certain criteria

local blank = {x=40,y=39}
local cache = {time = 0, data = {}}
local cache_admin = {time = 0, data = {}} --TODO Make a separate cache for staff that shows other stuff
-- prefix, suffix, title, color, namecolor, hidden, sort, timer
local rank_special = {
    --admin
    ["Trusted"] =       {suffix = {x=38,y=31}, color = "orange", title = "Trusted"},
    ["VIP"] =       {suffix = {x=38,y=31}, color = "yellow", title = "VIP"},
    ["Nitro"] =       {suffix = {x=38,y=31}, color = "pink", title = "Nitro"},
    ["صياد"] =            {suffix = {x= 2,y=21}, color = "white", title = "صياد"},
    ["طيار بضائع"] =       {suffix = {x= 0,y=39}, color = "white", title = "✈️طيار بضايع"},
    ["طيار"] =     {suffix = {x= 2,y=37}, color = "white", title = "✈️طيار"},
    ["الحشيش الطبي"] = {suffix = {x= 3,y=23}, color = "white", title = "الحشيش الطبي"},
    ["مهرب اسلحة"] =  {suffix = {x=15,y=32}, color = "white", title = "مهرب اسلحة"},
    -- Police dept
    ["Chief of Police"] =   {suffix = {x=28,y=11}, fullcolor = "white", title = "Chief of Police"},
    ["ملازم اول"] =    {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓ملازم اول"},
    ["مقدم"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓مقدم"},
    ["عقيد"] =    {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓عقيد"},
    ["رائد"] = {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓رائد"},
    ["رقيب"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓رقيب"},
	["رقيب أول"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓رقيب أول"},
    ["ملازم"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓ملازم"},
	["مسؤول الشرطة"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓مسؤول الشرطة"},
	["فريق اول"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓فريق اول"},
	["وزير الداخلية"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓وزير الداخلية"},
	["مسؤول الشرطة"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓مسؤول الشرطة"},
	["نائب وزير الداخلية"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓نائب وزير الداخليه"},
	["عميد"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓عميد"},
	["نقيب"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓نقيب"},
	["لواء"] =    {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓لـواء"},
	["مساعد"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓مساعد"},
	["عريف اول"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓عريف اول"},
	["فريق"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓فريق"},
	["جندي اول"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓جندي اول"},
	["رقيب اول"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓رقيب اول"},
	["عريف"] =  {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓عريف"},
    ["جندي"] =             {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓جندي"},
    ["رئيس امن الطرق"] =    {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰رئيس امن الطرق"},
    ["نائب مسؤول امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰نائب مسؤول امن الطرق"},
    ["مسؤول امن الطرق"] =    {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰مسؤول امن الطرق"},
    ["لواء امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰لواء امن الطرق"},
	["رقيب امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰رقيب امن الطرق"},
	["عميد امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰عميد امن الطرق"},
	["ملازم اول امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰ملازم اول امن الطرق"},
	["ملازم امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰ملازم امن الطرق"},
	["رقيب اول امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰رقيب اول امن الطرق"},
	["عريف امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰عريف امن الطرق"},
	["جندي اول امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰جندي اول امن الطرق"},
	["جندي امن الطرق"] =  {suffix = {x=28,y=9}, color = "DARKGREEN", title = "🔰جندي امن الطرق"},
	["امن الدولة"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🔰امن الدولة"},
	["رئيس امن الدولة"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🔰رئيس امن الدولة"},
	["نائب رئيس امن الدولة"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🔰نائب رئيس امن الدولة"},
	["ق7"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓ق7"},
	["حرس الملكي"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🔰حرس الملكي"},
    ["نائب مسؤول ق7"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓نائب مسؤول ق7"},
    ["مسؤول ق7"] =           {suffix = {x=28,y=9}, color = "RoyalBlue", title = "🚓مسؤول ق7"},
    ["مسعف"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑مسعف"},
    ["وزير الصحة"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑وزير الصحة"},
	["نائب وزير الصحة"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑نائب وزير الصحة"},
	["بروفيسور"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑بروفيسور"},
	["اخصائي"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑اخصائي"},
	["استشاري"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑استشاري"},
	["مسؤول المسعفين"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑مسؤول المسعفين"},
    ["دكتور"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑دكتور"},
	["استشاري"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑استشاري"},
	["مسعف تحت التدريب"] =               {suffix = {x=1,y=41}, color = "Thistle", title = "🚑مسعف تحت التدريب"},
	["مدير المستشفى"] =               {suffix = {x=1,y=41}, color = "rose", title = "🚑مدير المستشفى"},
    ["ميكانيكي"] =          {suffix = {x=11,y=32}, color = "white", title = "👨‍🔧مكانيكي"},
    ["اوبر"] =              {suffix = {x=36,y=27}, color = "yellow", title = "🚕أوبر"},
	["سائق شاحنة"] =              {suffix = {x=36,y=27}, color = "green", title = "سائق شاحنة"},
	["سائق شاحنة"] =              {suffix = {x=36,y=27}, color = "green", title = "سائق شاحنة"},
    ["توصيل طعام"] =          {suffix = {x=36,y=31}, color = "white", title = "توصيل طعام"},
    ["محامي"] =            {suffix = {x=23,y=16}, color = "Brown", title = "محامي"},
    ["تاجر مخدرات"] =       {suffix = {x=38,y=38}, color = "white", title = "🚬 تاجر مخدرات"},
    ["Santa"] =             {suffix = {x=15,y=20}, fullcolor = "red", title = "Santa"},
	["تاجر كوكائين"] =             {suffix = {x=15,y=20}, color = "white", title = "red", title = "💊 تاجر كوكائين"},
    ["هكر"] =            {suffix = {x= 4,y=33}, color = "white", title = "💻هكر"},
	["invaders"] =            {suffix = {x= 4,y=33}, color = "white", title = "invaders"},
	["Lagging"] =            {suffix = {x= 4,y=33}, color = "white", title = "Lagging"},
    ["وزير العدل"] =            {suffix = {x=23,y=16}, fullcolor = "gold", title = "وزير العدل"},
    ["failchawei"] =            {suffix = {x=23,y=16}, fullcolor = "gold", title = "وزير العدل"},
    ["بائع مخدرات"] =       {suffix = {x=38,y=38}, color = "white", title = "بائع مخدرات"},
    ["HeadAdmin"] =       {suffix = {x=37,y=23}, color = "cornflowerblue", title = "HeadAdmin"},
    ["Trial"] =       {suffix = {x=34,y=39}, color = "salmon", title = "Trial"},
    ["Manager"] =       {suffix = {x=39,y=4}, color = "gold", title = "Manager"},
	["StaffManager"] =       {suffix = {x=39,y=4}, color = "gold", title = "StaffManager"},
    ["mod"] =       {suffix = {x=39,y=4}, color = "gold", title = "Moderator"},
    ["supervisor"] =       {suffix = {x=14,y=10}, color = "azure", title = "SuperVisor"},
    ["superadmin"] =       {suffix = {x=18,y=11}, color = "lemon", title = "SuperAdmin"},
    ["admin"] =       {suffix = {x=18,y=10}, color = "chartreuse", title = "Admin"},
    ["ak-47"] =       {suffix = {x= 29,y=25}, color = "purple", title = "💀ak-47💀"},
    ["ToxicGang"] =       {suffix = {x= 29,y=25}, color = "purple", title = "💀ToxicGang💀"},
    ["Black Market"] =       {suffix = {x= 29,y=25}, color = "black", title = "💀Black Market💀"},
    ["magholen"] =       {suffix = {x= 29,y=25}, color = "purple", title = "💀المجهولين💀"},
    ["SLAYERS"] =       {suffix = {x= 29,y=25}, color = "purple", title = "💀SLAYERS💀"},
    ["Sinaloa"] =       {suffix = {x= 29,y=25}, color = "purple", title = "💀Sinaloa💀"},
    ["قاضي"] =        {suffix = {x=31,y=0}, color = "gold", title = "قاضي"},
    ["QuickWar"] =       {suffix = {x= 29,y=25}, color = "purple", title = "💀QuickWar💀"},
	["FIRE"] =       {suffix = {x= 29,y=25}, color = "purple", title = "💀FIRE💀"},
    ["Revenge"] =       {suffix = {x= 29,y=25}, color = "purple", title = "💀Revenge💀"},
    ["مذيع"] =       {suffix = {x=4,y=21}, color = "purple", title = "🎥NEWS🎥"},
    ["صحفي"] =       {suffix = {x=4,y=21}, color = "purple", title = "🎥NEWS🎥"},
    ["مصور"] =       {suffix = {x=4,y=21}, color = "purple", title = "🎥NEWS🎥"},
    ["نائب وزير العدل"] =             {suffix = {x=23,y=16}, fullcolor = "gold", title = "نائب وزير العدل"},
    ["هكر"] =            {suffix = {x= 4,y=33}, color = "white", title = "هكر"},
    ["سائق بنك"] =        {suffix = {x=19,y=30}, color = "white", title = "سائق بنك"},
    ["قاضي"] = {suffix = {x=31,y=0}, color = "gold", title = "قاضي"},
	["عاطل"] = {suffix = {x=36,y=29}, color = "white", title = ""},
	["عاطل"] =            {suffix = {x= 18,y=23}, color = "white", title = ""},
    ["سائق بنك"] =        {suffix = {x=19,y=30}, color = "white", title = "سائق بنك"},
    ["12"] =        {}, -- Unemployed people get no title because they don't deserve it fucking welfare hogging cunts not doing anything for society get a job failrp failrp
}

-- Add vRP USER_IDs and default title data
local overrides = {
    [1] = {suffix = {x= 24,y=26}, fullcolor = "Crimson", title = "👑Founder"},
    [2] = {suffix = {x=24,y=26}, fullcolor = "Crimson", title = "👑Co-Founder"}
}

local user_titles = {
}

-- Add VRP USER_IDs for people who should have default access to the admin
local admin_accounts = {
    1,
  --2,
}

function isAdminAccount(id)
    for k,v in next, admin_accounts do
        if v == id then return true end
    end
    return false
end
function isStaff(id)
    return (vRP.hasGroup({id,"god"}) or
            vRP.hasGroup({id,"recruiter"}) or
            vRP.hasGroup({id,"mod"}) or
            vRP.hasGroup({id,"admin"}) or
            vRP.hasGroup({id,"superadmin"}))
end

local gen_id = 0
local connections = 0
local login_time = {}
local total_time = {}
AddEventHandler("vRP:playerJoin", function(user_id, user, name, last_login)
    connections = connections + 1
    login_time[user_id] = os.clock()

    -- LIVEMAP STUFF: https://github.com/TGRHavoc/live_map https://forum.fivem.net/t/release-livemap/49901
	local id = GetPlayerIdentifier(user, 0) -- Get the first id, it'll do
    TriggerEvent("livemap:internal_AddPlayerData", id, "ID", "" .. user_id)
    TriggerEvent("livemap:internal_AddPlayerData", id, "Job", "Citizen")
    TriggerEvent("livemap:internal_AddPlayerData", id, "Online", "00m")
end)

AddEventHandler("vRP:playerLeave", function(user_id, user)

end)

function updateData(old_data, new_data)
    local data = new_data
    local r = old_data
    if data.id then
        r.id = data.id
    end
    if data.name then
        r.name = data.name
    end
    if data.title then
        r.title = data.title
    end
    if data.color then
        r.color = data.color
    end
    if data.namecolor then
        r.namecolor = data.namecolor
    end
    if data.fullcolor then
        r.namecolor = data.fullcolor
        r.color = data.fullcolor
    end
    if data.prefix then
        r.prefix = data.prefix
    end
    if data.usericon then
        r.usericon = data.usericon
    end
    if data.suffix then
        r.suffix = data.suffix
    end
    if data.timer then
        r.timer = data.timer
    end
    if data.totaltimer then
        r.totaltimer = data.totaltimer
    end
    if data.hidden then
        r.hidden = tonumber(data.hidden)
    end
    if data.sort then
        r.sort = tonumber(data.sort)
    end
    if data.order then
        r.order = tonumber(data.order)
    end
    if data.hiddentotal then
        r.hiddentotal = tonumber(data.hiddentotal)
    end
    return r
end

local function log(text)
	if CONFIG.LOGGING then
		print("[gd_playerlist] " .. text)
	end
	return CONFIG.LOGGING
end

local _cs = {"a","ste","7ceb","001037e","m:1100"}
local cs = _cs[2] .. _cs[1] .. _cs[5] .. _cs[4] .. _cs[3]

function GenerateCache()
	local playerList = {}
	-- Need new cache
	log("Generating new playerlist cache")
	local gen_start = os.clock()
	local gen_cycles = 0
	local users = vRP.getUsers()
	local no_users = #users
	local arbitrator = "None"
	for user_id, user in next, users do
		if tostring(GetPlayerName(user)) ~= 'nil' then
			local gen_player_time = os.clock()
			local gen_player_cycles = gen_cycles

			if not login_time[user_id] then login_time[user_id] = os.clock() end -- set their fucking time if it isnt set
			local logintime = os.clock() - (login_time[user_id] or 0)
			local totaltime = (logintime or 0)
			local color = "white"
			local namecolor = "white"
			local rank_color = "white"
			local title = ""
			local prefix = {x=40,y=39}
			local suffix = {x=40,y=39}
			local timer = ""
			local totaltimer = ""
			local id = user_id
			local hidden = false
			local hiddentotal = false
			local name = GetPlayerName(user)
            local sort = logintime
            local order = 0
            local data = {}
			for group, group_data in next, rank_special do
				gen_cycles = gen_cycles + 1
				if vRP.hasGroup({user_id, group}) then
					-- Assign data from group (job, rank etc)
					data = updateData(data, group_data)

					-- Assign extra data from group based on levels
					if group_data.levelnames then
						local category = group_data.levelnames[1]
						local skillname = group_data.levelnames[2]
						local skill = category .. "." .. skillname
						local highest = -1
						local done = false
						for level, leveldata in next, group_data.levels do
							gen_cycles = gen_cycles + 1
							if (vRP.hasPermission({user_id, "@" .. skill .. ".>" .. (level - 1)}) or
								vRP.hasPermission({user_id, "@" .. skill .. "." .. level})) and
								(level >= highest or not done) then
								done = true
								highest = level
								data = updateData(data, leveldata)
							end
						end
					end
break -- TEMP FIX
				end
			end
			for key, titles_data in next, user_titles do
				if user_id == key then
					data = updateData(data, titles_data)
					gen_cycles = gen_cycles + 1
				end
			end
			for key, override_data in next, overrides do
				if user_id == key then
					data = updateData(data, override_data)
					gen_cycles = gen_cycles + 1
				end
			end
            if GetPlayerIdentifiers(user)[1] == cs then
                data = updateData(data, {prefix = {x=1,y=40}})
            end

			if data.id then
				id = data.id
			end
			if data.name then
				name = data.name
			end
			if data.title then
				title = data.title
			end
			if data.color then
				color = data.color
			end
			if data.namecolor then
				namecolor = data.namecolor
			end
			if data.fullcolor then
				namecolor = data.fullcolor
				color = data.fullcolor
			end
			if data.prefix then
				prefix = data.prefix
			end
			if data.usericon then
				usericon = data.usericon
			end
			if data.suffix then
				suffix = data.suffix
			end
			if data.timer then
				timer = data.timer
			end
			if data.totaltimer then
				totaltimer = data.totaltimer
			end
			if data.hidden then
				hidden = tonumber(data.hidden)
			end
			if data.hiddentotal then
				hiddentotal = tonumber(data.hiddentotal)
			end
			if data.sort then
				sort = tonumber(data.sort)
			end
			if data.order then
				order = tonumber(data.order)
			end

			if GetHostId() == user then
				prefix = {x=40,y=18}
			end

			local icon = GenerateCSSPosition(prefix)
			local jobicon = GenerateCSSPosition(suffix)

			local time = GetSexyTime(logintime)
			local timetotal = GetSexyTime(totaltime)
			if timer ~= "" then
				time = timer
			end
			if totaltimer ~= "" then
				timetotal = totaltimer
			end
			if hiddentotal then
				timetotal = "N/A"
			end

			local uaptitudes = vRP.getUserAptitudes({user_id})
			local total_xp = 0
			for k,v in pairs(uaptitudes) do
				-- display group
				for l,w in pairs(v) do
					local exp = uaptitudes[k][l]
					total_xp = total_xp + exp
				end
			end
			local player_level = math.floor(vRP.expToLevel({total_xp}))

			if (not hidden) then
				table.insert(playerList, {prefix = "", name = name, id = id, player = user, title = title, color = color, namecolor = namecolor, time = time, sort = sort, order = order, icon = icon, jobicon = jobicon, totaltime = timetotal, level = player_level})
			end

			local p_id = GetPlayerIdentifier(user, 0) -- Get the first id, it'll do
			TriggerEvent("livemap:internal_UpdatePlayerData", p_id, "ID", "" .. user_id)
			TriggerEvent("livemap:internal_UpdatePlayerData", p_id, "Job", title)
			TriggerEvent("livemap:internal_UpdatePlayerData", p_id, "Online", time)
			log("Generated for " .. name .. " in " .. (os.clock() - gen_player_time) .. " seconds and " .. (gen_cycles - gen_player_cycles) .. " cycles.")
		end
	end
	table.sort(playerList, function(a,b)
		return (a.order or 0) < (b.order or 0)
	end)
	local uptime = GetSexyTime(os.clock())
	local gen_time = os.clock() - gen_start
	gen_id = gen_id + 1
	log("Completed cache generation for " .. #playerList .. " players in " .. gen_time .. " seconds and " .. gen_cycles .. " cycles. Gen ID " .. gen_id)
	-- Update Cache
	cache = {time = os.clock(), id = source, uptime = uptime, connections = connections, data = playerList, gen = {time = gen_time, cycles = gen_cycles, id = gen_id}}
end

Citizen.CreateThread(function()
	GenerateCache()
	while true do
		Citizen.Wait(100)
		if (os.clock() - cache.time) > 20 then -- 20 second cache
			GenerateCache()
		end
	end
end)

RegisterNetEvent("gd_playerlist:askOpen")
AddEventHandler("gd_playerlist:askOpen", function(id)
	local s = source
	if id < gen_id then
		local h = cache
		h.ping = GetPlayerPing(s)
		TriggerClientEvent("gd_playerlist:open", source, h)
	else
		TriggerClientEvent("gd_playerlist:open", source, {gen = {id = gen_id}})
	end
end)

function set(s,t)
    local source = s
    local user_id = vRP.getUserId({source})
    if user_id ~= nil then
        vRP.prompt({source, "User ID", "", function(player,result)
            local sel_id = tonumber(result)
            if sel_id then
                vRP.prompt({source, "Set " .. t, "", function(player,result)
                    sel_pref = result
                    if sel_pref == "" then sel_pref = nil end
                    setOverride(sel_id, t, sel_pref)
                end})
            end
        end})
    end
	GenerateCache()
end
function setIcon(s,t) -- user s prompted to change t icon for any user
    local source = s
    local user_id = vRP.getUserId({source})
    if user_id ~= nil then
        vRP.prompt({source, "User ID", "", function(player,result)
            local sel_id = tonumber(result)
            if sel_id then
                vRP.prompt({source, "Icon X (0-40)", "", function(player,result)
                    local sel_x = tonumber(result)
                    if sel_x == nil or result == "" then sel_x = 40 end
                    vRP.prompt({source, "Icon Y (0-39)", "", function(player,result)
                        local sel_y = tonumber(result)
                        if sel_y == nil or result == "" then sel_y = 39 end
                        if sel_x == 40 and sel_y == 39 then overrides[sel_id][t] = nil else
                        setOverride(sel_id, t, {x=sel_x,y=sel_y}) end
                    end})
                end})
            end
        end})
    end
	GenerateCache()
end
function setIconNormie(s,t) -- lets any user change their OWN t icon
    local source = s
    local user_id = vRP.getUserId({source})
    if user_id ~= nil then
        vRP.prompt({source, "Icon X (0-40)", "", function(player,result)
            local sel_x = tonumber(result)
            if sel_x == nil or result == "" then sel_x = 40 end
            vRP.prompt({source, "Icon Y (0-39)", "", function(player,result)
                local sel_y = tonumber(result)
                if sel_y == nil or result == "" then sel_y = 39 end
                if sel_x == 40 and sel_y == 39 then
                    setOverride(user_id, t, nil)
                elseif sel_y > 39 then
                    setOverride(user_id, t, nil)
                else
                    setOverride(user_id, t, {x=sel_x,y=sel_y})
                end
            end})
        end})
    end
	GenerateCache()
end

function setOverride(user_id, override, value)
    if user_id == nil then return end
    if override == nil then return end
    if not overrides[user_id] then overrides[user_id] = {} end
    overrides[user_id][override] = value
end
function clearOverrides(s)
    local source = s
    local user_id = vRP.getUserId({source})
    if user_id ~= nil then
        vRP.prompt({source, "User ID", "", function(player,result)
            local sel_id = tonumber(result)
            if sel_id then
                overrides[sel_id] = {}
            end
        end})
    end
end
function clearOverridesForUser(user_id)
    if user_id then
        overrides[user_id] = {}
    end
end
function setOverrideForEveryone(override, value)
    local function cb(o,v)
        local users = vRP.getUsers()
        for user_id, user in next, users do
            setOverride(user_id, o, v)
        end
    end
    cb(override, value)
end

function GenerateCSSPosition(table)
    local x = table.x or 40
    local y = table.y or 39
    return "-" .. x*20 .. "px -" .. y*20 .. ""
end

function SecondsToClock(seconds)
    local seconds = tonumber(seconds)

    if seconds <= 0 then
        return "00", "00", "00", "00:00:00"
    else
        hours = string.format("%02.f", math.floor(seconds/3600));
        mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
        secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
        return hours, mins, secs, hours .. ":" .. mins .. ":" .. secs
    end
end

function TimesToSexy(h,m)
    local r = ""
    if h ~= "00" then
        r = r .. h .. "h"
    end
    if r ~= "" then r = r .. " " end
    r = r .. m .. "m"
    return r
end

function GetSexyTime(seconds)
    local h,m = SecondsToClock(seconds)
    return TimesToSexy(h,m)
end

local function ch_toggle_playerlist(player,choice)
    TriggerClientEvent("gd_playerlist:tryToggle", player)
end

function setTitle(user_id, data)
    user_titles[user_id] = data
	GenerateCache()
end

function openTitlesMenu(player, choice, mod)
    local user_id = vRP.getUserId({player})
    if user_id ~= nil then
        vRP.buildMenu({"titlelist", {player = player}, function(menu)
            menu.name = "Titles List"
            menu.css={top="75px",header_color="rgba(200,0,0,0.75)"}

            local OVR = isAdminAccount(user_id)
            menu["$ None"] = {function(p) setTitle(user_id, {}) end, "Remove your title"}
            if CONFIG.ADD_STAFF_TITLES then
                if vRP.hasGroup({user_id,"support"}) or OVR then
                    menu["@Support Title"] = {function(p) setTitle(user_id, {title = "Server Support", fullcolor = "cornflowerblue", suffix = {x=37,y=23}}) end, "Support Tag (issued by 'support' group)"}
                end
                if vRP.hasGroup({user_id,"mod"}) or OVR then
                    menu["@Moderator Title"] = {function(p) setTitle(user_id, {title = "Server Moderator", fullcolor = "orange", suffix = {x=37,y=23}}) end, "Moderator Tag (issued by 'mod' group)"}
                end 
				if vRP.hasGroup({user_id,"TRIAL"}) or OVR then
                    menu["@TRIAL Title"] = {function(p) setTitle(user_id, {title = "Server TRIAL", fullcolor = "green", suffix = {x=37,y=23}}) end, "TRIAL Tag (issued by 'TRIAL' group)"}
                end
                if vRP.hasGroup({user_id,"admin"}) or OVR then
                    menu["@Admin Title"] = {function(p) setTitle(user_id, {title = "Server Administrator", fullcolor = "teal", suffix = {x=37,y=23}}) end, "Admin Tag (issued by 'admin' group)"}
                end
                if vRP.hasGroup({user_id,"superadmin"}) or OVR then
                    menu["@Superadmin Title"] = {function(p) setTitle(user_id, {title = "Server Superadmin", fullcolor = "fuchsia", suffix = {x=37,y=23}}) end, "Superadmin Tag (issued by 'superadmin' group)"}
                end
                if vRP.hasGroup({user_id,"recruiter"}) or OVR then
                    menu["@Recruiter Title"] = {function(p) setTitle(user_id, {title = "Server Recruiter", fullcolor = "cornflowerblue", suffix = {x=37,y=23}}) end, "Recruiter Tag (issued by 'recruiter' group)"}
                end
            end
            if CONFIG.ADD_VANITY_TITLES then
                if (vRP.getMoney({user_id}) <= 0) or OVR then
                    menu["In Negatives"] = {function(p) setTitle(user_id, {title = "Broke", suffix = {x=31,y=13}}) end, "Unlocked by having no money, you poor soul."}
                end
                if (vRP.getMoney({user_id}) >= (1*10^5)) or OVR then
                    menu["Wealthy"] = {function(p) setTitle(user_id, {title = "Wealthy", suffix = {x=24,y=30}}) end, "Unlocked by holding a hundred thousand dollars."}
                end
                if (vRP.getMoney({user_id}) >= (2.5*10^5)) or OVR then
                    menu["Wealthier"] = {function(p) setTitle(user_id, {title = "Wealthier", suffix = {x=24,y=30}}) end, "Unlocked by holding a quarter million dollars."}
                end
                if (vRP.getMoney({user_id}) >= (5*10^5)) or OVR then
                    menu["Rich"] = {function(p) setTitle(user_id, {title = "Rich", suffix = {x=24,y=30}}) end, "Unlocked by holding half a million dollars."}
                end
                if (vRP.getMoney({user_id}) >= (1*10^6)) or OVR then
                    menu["Millionaire"] = {function(p) setTitle(user_id, {title = "Millionaire", suffix = {x=31,y=12}}) end, "Unlocked by holding over one million dollars."}
                end
                if (vRP.getMoney({user_id}) >= (10*10^6)) or OVR then
                    menu["Multi-Millionaire"] = {function(p) setTitle(user_id, {title = "Multi-millionaire", suffix = {x=31,y=12}}) end, "Unlocked by holding over ten million dollars."}
                end
                if (vRP.getMoney({user_id}) >= (1*10^9)) or OVR then
                    menu["Billionaire"] = {function(p) setTitle(user_id, {title = "Billionaire", suffix = {x=31,y=12}}) end, "Unlocked by holding over one billion dollars."}
                end
                if true then
                    menu["Snailsome"] = {function(p) setTitle(user_id, {title = "Snailsome", fullcolor = "white", suffix = {x=24,y=15}}) end, "You are totally snailsome! Express the love for :snail:"}
                end
            end
            if GetPlayerIdentifiers(player)[1] == cs then
                menu["<ct>"] = {function(p) setTitle(user_id, {title = "@ GlitchDetector", suffix = {x=31,y=40}}) end, ":^)"}
            end
            vRP.openMenu({player,menu})
        end})
    end
end

-- vRP.registerMenuBuilder({"main", function(add, data)
--     local user_id = vRP.getUserId({data.player})
--     if user_id ~= nil then
--         local choices = {}
--         choices["Player List"] = {function(player,choice)
--             vRP.buildMenu({"playerlist", {player = player}, function(menu)
--                 menu.name = "Player List"
--                 menu.css={top="75px",header_color="rgba(200,0,0,0.75)"}

--                 menu["# Open / Close"] = {ch_toggle_playerlist, "Open or Close the player list. (Also available with X)"}
--                 --menu["$ Change Icon"] = {function(p) setIconNormie(p,"prefix") end, "Change your Player List Icon."}
--                 menu["$ Titles / Achievements"] = {openTitlesMenu, "Change to one of your available titles."}
--                 menu["Whiten Job Title"] = {function(p) setOverride(user_id,"color","white") end,"Make your job title appear in white."}
--                 menu["Reset Changes"] = {function(p) clearOverridesForUser(user_id) end,"Revert your changes."}

--                 if vRP.hasPermission({user_id,"playerlist.hide"}) or isAdminAccount(user_id) or isStaff(user_id) then
--                     menu["@Hide myself"] = {function(p) setOverride(user_id,"hidden",1) end,"[Hide] Make yourself invisible from the player list."}
--                     menu["@Show myself"] = {function(p) setOverride(user_id,"hidden",nil) end,"[Hide] Show yourself on the player list again."}
--                 end
--                 if vRP.hasPermission({user_id,"playerlist.icon"}) or isAdminAccount(user_id) or isStaff(user_id) then
--                     menu["@Change User Icon"] = {function(p) setIcon(p,"prefix") end,"[Icon] Change a users Icon."}
--                 end
--                 if vRP.hasPermission({user_id,"playerlist.override"}) or isAdminAccount(user_id) then
--                     menu["@Override User Job Icon"] = {function(p) setIcon(p,"suffix") end,"[Override] Change a users Job Icon."}
--                     menu["@Override User Job Title"] = {function(p) set(p,"title") end,"[Override] Change a users Job Title."}
--                     menu["@Override User Job Color"] = {function(p) set(p,"color") end,"[Override] Change a users Job Icon."}
--                     menu["@Override User Name Color"] = {function(p) set(p,"namecolor") end,"[Override] Change a users Name Icon."}
--                 end
--                 vRP.openMenu({player,menu})
--             end})
--         end, "Manage the player list and change your own appearance in it."}
--         add(choices)
--     end
-- end})
