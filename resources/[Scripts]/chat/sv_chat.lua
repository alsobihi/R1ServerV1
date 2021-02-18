
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_chatroles")

RegisterServerEvent('chat:init')
RegisterServerEvent('chat:addTemplate')
RegisterServerEvent('chat:addMessage')
RegisterServerEvent('chat:addSuggestion')
RegisterServerEvent('chat:removeSuggestion')
RegisterServerEvent('_chat:messageEntered')
RegisterServerEvent('chat:clear')
RegisterServerEvent('__cfx_internal:commandFallback')

AddEventHandler('_chat:messageEntered', function(author, color, message)
    if not message or not author then
        return
    end

    TriggerEvent('chatMessage', source, author, message)

    if not WasEventCanceled() then
		local user_id = vRP.getUserId({source})
		local player = vRP.getUserSource({user_id})
		if vRP.hasPermission({user_id,"founder.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] ^1 ♛Founder♛ |👨🏻‍⚖️ " .. author,  { 255, 0, 0 },message) -- 255,0,0
		elseif vRP.hasPermission({user_id,"cofounder.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] ^1 ♛Co Founder♛ |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"executive.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] Owner |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"director.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] Director |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"headadmin.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] HeadAdmin |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"superadmin.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] SuperAdmin |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"admin.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] Admin |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"trusted.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] Trusted |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"trial.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] Trial |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"mod.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] Moderator |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"support.chat"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] Support |👨 " .. author,  { 0,191,255 },message) -- 188,143,143
		elseif vRP.hasPermission({user_id,"uber.service"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] UBER |🚕 " .. author,  { 0, 0, 0 }, message)
		elseif vRP.hasPermission({user_id,"repair.service"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] ^3اعمال حرة ^7|👨🏻‍🔧 " .. author,  { 47,79,79 },message)
		elseif vRP.hasPermission({user_id,"police.service"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] ^4منسوبي وزراة الداخلية ^7|👮🏻  " .. author,  { 0,0,255 },message)
		elseif vRP.hasPermission({user_id,"emergency.service"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] ^9منسوبي وزراة الصحة ^7|👨‍⚕️" .. author,  { 199,21,133 },message)
		elseif vRP.hasGroup({user_id,"Firefighter"}) then
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] ^3FIREFIGHTER ^7| " .. author .. ": ^3" ..  message)
		else
			TriggerClientEvent('chatMessage', -1, "[" .. user_id .. "] مواطن| " .. author,  { 235, 214, 51 }, message)
		end
    end

    print(author .. ': ' .. message)
end)
AddEventHandler('__cfx_internal:commandFallback', function(command)
    local name = GetPlayerName(source)
    TriggerEvent('chatMessage', source, name, '/' .. command)
    CancelEvent()
end)