Citizen.CreateThread(function()
    while true 
    	do
    		-- These natives has to be called every frame.
    		SetVehicleDensityMultiplierThisFrame(0.0)
		SetPedDensityMultiplierThisFrame(0.0)
		SetRandomVehicleDensityMultiplierThisFrame(0.0)
		SetParkedVehicleDensityMultiplierThisFrame(0.0)
		SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)
		
		local playerPed = GetPlayerPed(-1)
		local pos = GetEntityCoords(playerPed) 
		RemoveVehiclesFromGeneratorsInArea(pos['x'] - 500000000.1, pos['y'] - 500000000.1, pos['z'] - 500000000.1, pos['x'] + 500000000.1, pos['y'] + 500000000.1, pos['z'] + 500000000.1);
		
		
		-- These natives do not have to be called everyframe.
		SetGarbageTrucks(0)
		SetRandomBoats(0)
    	
		Citizen.Wait(1)
	end

end)