local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_headbag")

RegisterServerEvent('closest')
AddEventHandler('closest', function()
	local user_id = vRP.getUserId({source})
  local player = vRP.getUserSource({user_id})
  
  if vRP.hasPermission({user_id, "mafia.headbag"}) then
    vRPclient.getNearestPlayer(player,{10},function(nplayer)
      if nplayer ~= nil then
        TriggerClientEvent('pune_headbag', nplayer)
      else
        vRPclient.notify(player,{"Nu exista un jucator langa tine!"})
      end
    end)
  end
end)

RegisterCommand('closest', function(player, args, rawCommand)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil and vRP.hasPermission(user_id,"mafia.headbag") then
vRPclient.getNearestPlayer(player,{10},function(nplayer)
      if nplayer ~= nil then
        TriggerClientEvent('pune_headbag', nplayer)
      else
        vRPclient.notify(player,{"Nu exista un jucator langa tine!"})
      end
    end)
  end
end)
-----------------------------------------------------------
-- Best Scripters [ - Bre Faby - ] & [ - Zedu - ]
-----------------------------------------------------------
--Best Server [ - Grand Times - ] [- Romania - ] 
----------------------------------------------------------- 
-----------------------------------------------------------
--Acest script a fost tradus de catre [ Bre Faby ] & [ Zedu ]
-----------------------------------------------------------