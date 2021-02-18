RegisterFontFile('A9eelsh')
fontId = RegisterFontId('A9eelsh')
			function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end

------------------------------------------------------------------L7N R3B----------------------------------


function drawScreenText(x,y ,width,height,scale, text, r,g,b,a, outline, font, center)
    SetTextFont(fontId)
    SetTextProportional(0)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextCentre(center)
    if(outline)then
	    SetTextOutline()
	end
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/2, y - height/2 + 0.005)
end
------------------------------------------------------------------L7N R3B----------------------------------
function CalculateDayOfWeekToDisplay()
	if dayOfWeek == 1 then
		dayOfWeek = "Duminica"
	elseif dayOfWeek == 2 then
		dayOfWeek = "Luni"
	elseif dayOfWeek == 3 then
		dayOfWeek = "Marti"
	elseif dayOfWeek == 4 then
		dayOfWeek = "Miercuri"
	elseif dayOfWeek == 5 then
		dayOfWeek = "Joi"
	elseif dayOfWeek == 6 then
		dayOfWeek = "Vineri"
	elseif dayOfWeek == 7 then
		dayOfWeek = "Sambata"
	end
end
------------------------------------------------------------------L7N R3B----------------------------------
function CalculateDateToDisplay()
	if month == 1 then
		month = "January"
	elseif month == 2 then
		month = "February"
	elseif month == 3 then
		month = "March"
	elseif month == 4 then
		month = "April"
	elseif month == 5 then
		month = "May"
	elseif month == 6 then
		month = "June"
	elseif month == 7 then
		month = "July"
	elseif month == 8 then
		month = "August"
	elseif month == 9 then
		month = "September"
	elseif month == 10 then
		month = "October"
	elseif month == 11 then
		month = "November"
	elseif month == 12 then
		month = "December"
	end
end
------------------------------------------------------------------L7N R3B----------------------------------
function CalculateTimeToDisplay()
    if hour < 10 then
        hour = tostring("0" .. hour)
    end
    if minute < 10 then
        minute = tostring("0" .. minute)
    end
end

function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 2500

    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)

    return result
end
------------------------------------------------------------------L7N R3B----------------------------------
waterMarkState = 0
WatermarkText = "~p~welcome to ~w~R1 Server"
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1100)
		if(waterMarkState == 0)then
			WatermarkText = "~w~Discord.gg~w~/~u~R1"
			waterMarkState = 1
		elseif(waterMarkState == 1)then
			WatermarkText = "~u~Discord.gg~w~/~w~R1"
			waterMarkState = 2
		elseif(waterMarkState == 2)then
			WatermarkText = "~w~Discord.gg~w~/~u~R1"
			waterMarkState = 3
		elseif(waterMarkState == 3)then
			WatermarkText = "~u~Discord: ~w~R1#1111"
			waterMarkState = 4
		elseif(waterMarkState == 4)then
			WatermarkText = "~w~Discord: ~u~R1#1111"
			waterMarkState = 5
		elseif(waterMarkState == 5)then
			WatermarkText = "~u~Discord: ~w~R1#1111"
			waterMarkState = 0
		end
	end
end)

function drawWatermark(r, g, b)
	SetTextColour(r, g, b, 255)
	SetTextFont(4)
	SetTextScale(0.4, 0.4)
	SetTextWrap(0.0, 1.0)
	SetTextCentre(false)
	SetTextDropshadow(2, 2, 0, 0, 0)
	SetTextEdge(1, 0, 0, 0, 205)
	SetTextEntry("STRING")
	DrawText(0.005, 0.001)
end
------------------------------------------------------------------L7N R3B----------------------------------
Citizen.CreateThread(function()
	while true do
		Wait(1)		
			rgb = RGBRainbow(2)
			rgb2 = RGBRainbow(1)
			year, month, dayOfWeek, hour, minute = GetLocalTime()
			timeAndDateString = "~w~|"
			jucatori = "~u~ﻦﻴﺒﻋﻼﻟﺍ ﺩﺪﻋ: ~w~"..#GetActivePlayers()
			
			CalculateTimeToDisplay()
			timeAndDateString = timeAndDateString .. " ~u~" .. hour .. ":" .. minute .. " ~w~|"
			CalculateDateToDisplay()
			timeAndDateString = timeAndDateString .. " ~w~" .. dayOfWeek .. " " .. month .. " " .. year .. " ~w~|"
			timeAndDateString = "~g~".. jucatori .. " " .. timeAndDateString
			
			drawScreenText(0.52, 0.04, 0.0, 0.0, 0.32, timeAndDateString, 255, 255, 255, 255, 1, 7, 1)
			drawScreenText(0.52, -0.005, 0.0, -0.015, 0.50, WatermarkText, 255, 255, 255, 255, 1, 7, 1, 1)	
			drawWatermark(rgb2.r, rgb2.g, rgb2.b)
	end
end)