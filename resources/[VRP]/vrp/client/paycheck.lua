vRP = Proxy.getInterface("vRP")

Citizen.CreateThread(function ()
	while true do
	local user_id = vRP.getUserId(source)
		Citizen.Wait(900000) -- Every X ms you'll get paid (300000 = 5 min)
		TriggerServerEvent('paycheck:salary_ad')
		TriggerServerEvent('vRP:pay')
	end
end)

Citizen.CreateThread(function ()
	while true do
	local user_id = vRP.getUserId(source)
		Citizen.Wait(500000) -- Every X ms you'll get paid (300000 = 5 min)
		TriggerServerEvent('paycheck:bonus_ad')
	end
end)
