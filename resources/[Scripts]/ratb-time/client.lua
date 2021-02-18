--------                             ---------
                        
---------                         ---------
                                 
----------                      ---------
         --Made by: 9moona#1971--
      -------------------------------
         --Credits To : AH#6969	  

vRP = Proxy.getInterface("vRP")
local font;
font = RegisterFontId('BC Arabic')

local minute = 15
local secunde = 60


Citizen.CreateThread(function()
RegisterFontFile('myfont')
font = RegisterFontId('BC Arabic')

	while true do
		Citizen.Wait(1000) 
		secunde = secunde - 1
		if secunde == 0 then
			secunde = 60
			minute = minute -1
			if minute == 0  then
				minute = 14
				secunde = 60
				TriggerServerEvent('salar')
				TriggerEvent('InteractSound_CL:PlayOnOne', 'buzunaru', 0.1)
			end
		end
	end
end)

Citizen.CreateThread(function()

	while true do
		Citizen.Wait(1)
		drawRct(0.923,0.952, 0.031,0.021,0,0,0,120)
		timpPayday(1.38, 1.43, 2.75,2.0,0.35, "~w~ﻡﺩﺎﻘﻟﺍ ﺐﺗﺍﺮﻟﺍ ﺖﻗﻭ:~u~ "..minute..":"..secunde.."", 255, 255, 255, 255)
	end
end)


RegisterNetEvent('salarPrimit')
AddEventHandler('salarPrimit', function(deLaGrupa,salar,bonuslevel,level)
	deLaGrupa = deLaGrupa
	salar = salar
	bonuslevel = bonuslevel
	level = level
	Citizen.CreateThread(function()
		function Initialize(scaleform)
			local scaleform = RequestScaleformMovie(scaleform)
			while not HasScaleformMovieLoaded(scaleform) do
				Citizen.Wait(0)
			end
			PushScaleformMovieFunction(scaleform, "SHOW_SHARD_WASTED_MP_MESSAGE")
            PushScaleformMovieFunctionParameterString("You received the salary")
            PushScaleformMovieFunctionParameterString("SALAR: ~g~$"..salar.."~w~ of the ~ and~ "..deLaGrupa.."~w~ + bonus ~g~$"..bonuslevel.."~w~ of the ~ b ~ Level:"..level)
			PopScaleformMovieFunctionVoid()
			PlaySoundFrontend(-1, "UNDER_THE_BRIDGE", "HUD_AWARDS", 1)
			Citizen.SetTimeout(5000, function()
				PushScaleformMovieFunction(scaleform, "SHARD_ANIM_OUT")
				PushScaleformMovieFunctionParameterInt(1)
				PushScaleformMovieFunctionParameterFloat(0.33)
				PopScaleformMovieFunctionVoid()
				PlaySoundFrontend(-1, "1st_Person_Transition", "PLAYER_SWITCH_CUSTOM_SOUNDSET", 1)
			end)
			return scaleform
		end
	
		scaleform = Initialize("mp_big_message_freemode")
		
		while true do
			Citizen.Wait(0)
			DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255, 0)
		end
		
	end)

end)


function drawRct(x,y,width,height,r,g,b,a)
    DrawRect(x + width/2, y + height/2, width*2.8, height+0.002, r, g, b, a)
end

function timpPayday(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(scale, scale)
	SetTextColour( 0,0,0, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end