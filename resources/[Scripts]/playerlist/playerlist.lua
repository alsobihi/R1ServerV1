local plist = false
-- id name title time
local last_playerlist_identifier = 0
local last_playerlist = ""
local header = [[<tr class= "titles"><th class="id">ID</th><th></th><th class="name">الاسم</th><th></th><th class="title">الوظيفة</th><th class="time"></th><th class="id"></th><th></th><th class="name"></th><th></th><th class="title"></th><th class="time">المتصلين الان</th><th 
class="id"></th><th></th><th class="name"></th><th></th><th class="title">الاعبين</th><th class="time">سرعة اتصال</th></tr>]]
local row = [[<tr class="player"><td class="id">%i</td><th class="center"><div class="icon" style="background-position:%s;"></div></th><td class="name" style="color:%s">%s</td><th class="center"><div class="icon" style="background-position:%s;"></div></th><td class="title" style="color:%s">%s</td><td class="time">%s</td></tr>]] -- id color name prefix skh title time totaltime

local row1 = [[<tr class="player"><td class="id">%i</td><th class="center"><div class="icon" style="background-position:%s;"></div></th><td class="MoE" style="color:%s">%s</td><th class="center"><div class="icon" style="background-position:%s;"></div></th><td class="title" style="color:%s">%s</td><td class="time">%s</td>]] -- id color name prefix color title time totaltime
local row2 = [[<td class="id">%i</td><th class="center"><div class="icon" style="background-position:%s;"></div></th><td class="name" style="color:%s">%s</td><th class="center"><div class="icon" style="background-position:%s;"></div></th><td class="title" style="color:%s">%s</td><td class="time">%s</td>]] -- id color name prefix color skh time totaltime
local row3 = [[<td class="id">%i</td><th class="center"><div class="icon" style="background-position:%s;"></div></th><td class="name" style="color:%s">%s</td><th class="center"><div class="icon" style="background-position:%s;"></div></th><td class="title" style="color:%s">%s</td><td class="time">%s</td></tr>]] -- id color name prefix color title time totaltime

local row2b = [[<td class="id"></td><th class="center"></th><td class="name" ></td><th class="center"></th><td class="title" ></td><td class="time"></td><td class="id"></td><th class="center"></th><td class="name" ></td><th class="center"></th><td class="title" ></td><td class="time"></td></tr>]] -- id color name prefix color title skh totaltime
local row2c = [[<td class="id"></td><th class="center"></th><td class="name" ></td><th class="center"></th><td class="title" ></td><td class="time"></td></tr>]] -- id color name prefix color title time totaltime

local footer = [[<tr class="titles"><th colspan="6" class="title">:المتصلين حاليا<br/>%i / %i</th></th><th colspan="6" class="title">:مدة اتصال السيرفر<br/>%s</th><th colspan="6" class="title">Ping:<br />%s</th></tr>]] -- online uptime connections

function ShowPlayerList(playerList)
	if playerList.gen.id > last_playerlist_identifier then
		local listHTML = ""
		local uptime = playerList.uptime
		local connections = playerList.connections
		local ping = playerList.ping
		local max_players = 64
		local total_levels = 0

		last_playerlist_identifier = playerList.gen.id

		print("Playerlist Stats: " .. playerList.gen.time .. " seconds and " .. playerList.gen.cycles .. " cycles. Gen ID " .. playerList.gen.id)
		listHTML = listHTML .. header
		local index = 0

		
		for k,v in next, playerList.data do
			if v ~= nil then
				if index % 3 == 0 then
					listHTML = listHTML .. string.format(row1, v.id or 0, v.icon or '0px 0px', v.namecolor or "white", v.name or "Default Danny", v.jobicon or '0px 0px', v.color or "white", v.title or "", v.time or "00m", v.totaltime or "00m", v.level or 0)
				elseif index % 3 == 1 then
					listHTML = listHTML .. string.format(row2, v.id or 0, v.icon or '0px 0px', v.namecolor or "white", v.name or "Default Danny", v.jobicon or '0px 0px', v.color or "white", v.title or "", v.time or "00m", v.totaltime or "00m", v.level or 0)
				else
					listHTML = listHTML .. string.format(row3, v.id or 0, v.icon or '0px 0px', v.namecolor or "white", v.name or "Default Danny", v.jobicon or '0px 0px', v.color or "white", v.title or "", v.time or "00m", v.totaltime or "00m", v.level or 0)
				end
				if v.level then
					total_levels = total_levels + v.level
				end
				index = index + 1
			end
		end
		if index % 3 == 1 then
			listHTML = listHTML .. row2b
		elseif index % 3 == 2 then
			listHTML = listHTML .. row2c
		end
		local online_players = #playerList.data
		if online_players == 0 then max_players = 90 elseif
		   online_players == 0 then max_players = 90 end
		listHTML = listHTML .. string.format(footer, online_players, max_players, uptime, tostring(ping) .. "ms")
		last_playerlist = listHTML
	end
    SendNUIMessage({
        meta = 'open',
        data = last_playerlist
    })
end

function ClosePlayerList()
	SendNUIMessage({
		meta = 'close'
	})
end

--u could ask for it don't u think of that stupid : skh

RegisterNetEvent("gd_playerlist:open")
AddEventHandler("gd_playerlist:open",
    function(players)
		if plist == true then
        	ShowPlayerList(players) --done by skh
		end
    end
)

RegisterNetEvent("gd_playerlist:tryToggle")
AddEventHandler("gd_playerlist:tryToggle", function()
    if not plist then
        plist = true
        TriggerServerEvent("gd_playerlist:askOpen", last_playerlist_identifier)
    else
        plist = false
        ClosePlayerList()
    end
end)

Citizen.CreateThread( function()
    print("es_playerlist gd_edit ok")
	while true do
		Citizen.Wait(1)
		--Displays playerlist skh player hold X
		if IsControlJustPressed(1, 27) then --Start holding
            plist = true
--            print("sending open call")
			TriggerServerEvent("gd_playerlist:askOpen", last_playerlist_identifier)
		elseif IsControlJustReleased(1, 27) then --Stop holding
            plist = false
--            print("closing skh")
			ClosePlayerList()
		end
	end
end)

