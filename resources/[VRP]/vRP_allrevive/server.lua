local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_allrevive")

RegisterCommand('arevive', function(player, args, rawCommand)
  local user_id = vRP.getUserId({player})
 if vRP.hasPermission({user_id,"admin.revive"}) then
    vRP.request({player,"هل انت متاكد من انعاش جميع الاعبين؟",30,function(player,ok)
if ok then	
	local users = vRP.getUsers({})
			for k,v in pairs(users) do
				local target_source = vRP.getUserSource({k})
				if target_source ~= nil then
					vRPclient.varyHealth(target_source, {100})
					vRPclient.notify(target_source,{"You Benn Revived "})
				end
			end
			end
	end})
 end
end)

local all_revive = {function(player,choice) 
	vRP.request({player,"هل انت متاكد من انعاش جميع الاعبين؟",30,function(player,ok)
if ok then	
	local users = vRP.getUsers({})
			for k,v in pairs(users) do
				local target_source = vRP.getUserSource({k})
				if target_source ~= nil then
					vRPclient.varyHealth(target_source, {100})
					vRPclient.notify(target_source,{"You have been revived by Founder"})
				end
			end
			end
	end})
end,"انعاش جميع الاعبين الميتين"}


vRP.registerMenuBuilder({"admin", function(add, data)
	local user_id = vRP.getUserId({data.player})
	if user_id ~= nil then
		local choices = {}
	
		if vRP.hasPermission({user_id,"admin.reviveall"}) then
			choices["انعاش الجميع"] = all_revive
		end
		add(choices)
	end
end})

-- made by iD7z#5550 :p
-- https://discord.gg/gEtdSeS