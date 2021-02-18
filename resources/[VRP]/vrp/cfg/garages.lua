	local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.05 -- 10% of the original price if a rent
cfg.sell_factor = 0.6 -- sell for 75% of the original price

cfg.garage_types = {
  ["Fisher's Boat"] = {
    _config = {vtype="boat",blipid=427,blipcolor=28,permissions={"fisher.vehicle"}},
    ["suntrap"] = {"Fisher's boat",0, "Your favorite boat!"}
  },

  ["Exotic Cars"] = {
    _config = {vtype="car",blipid=50,blipcolor=5},
    ["s30"] = {"Fairlady",12000000, ""},
    ["prototipo"] = {"X80 Proto",27000000, "6 - (less numner better car"}
	
  },

  ["sportsclassics"] = {
    _config = {vtype="car",blipid=50,blipcolor=5},
    ["casco"] = {"Casco",680000, ""},
    ["ztype"] = {"Z-Type",950000,""}
  },

  ["Car Drift"] = {
    _config = {vtype="car",blipid=50,blipcolor=83},
    ["camaross"] = {"كمارو 1600 حصان",100000, ""},
	["charge4"] = {"دودج 1450 حصان",50000, ""}
  },

  ["Off Road"] = {
    _config = {vtype="car",blipid=50,blipcolor=4},
    ["brawler"] = {"Brawler",60000, ""},
    ["dune"] = {"Dune Buggy",5000, ""}
  },

  ["vans"] = {
    _config = {vtype="car",blipid=50,blipcolor=4}
  },

  ["sedans"] = {
    _config = {vtype="car",blipid=50,blipcolor=4}
  },

  ["Motorcycles"] = {
    _config = {vtype="bike",blipid=226,blipcolor=4},
    ["AKUMA"] = {"Akuma",9000, ""},
    ["vindicator"] = {"Vindicator",12000,""}
  },
 ----------   
  ["House Garage"] = {
    _config = {vtype="car",blipid=357,blipcolor=69},
	["lectro"] = {"مثال",99000, ""},
	["daemon"] = {"مثال 2",45000, ""},  -- looking for replacement

  },
  
  ["police"] = {
    _config = {vtype="car",blipid=56,blipcolor=38,permissions={"police.vehicle"}},
    ["riot"] = {"مثال",0, "police"},	--
	["policelambo"] = {"مثال 2",0, "police"}

  },
  
  ["FBI"] = {
    _config = {vtype="car",blipid=56,blipcolor=38,permissions={"FBI.vehicle"}},
    ["polp1"] = {"مثال",0, "police"},
	["PROTOPOLICE"] = {"مثال 2",0, "police"}
	
  },
  ["Cadet"] = {
    _config = {vtype="car",blipid=56,blipcolor=38,permissions={"Cadet.vehicle"}},
	["sheriff11"] = {"مثال",0, "police"},
	["hoe"] = {"مثال 2",0, "police"},
  },
  ["Bounty"] = {
    _config = {vtype="car",blipid=56,blipcolor=38,permissions={"Bounty.vehicle"}},
    ["fbi"] = {"بنتلي",0, "police"}
  },
  ["emergency"] = {
    _config = {vtype="car",blipid=50,blipcolor=1,permissions={"emergency.vehicle"}},
	["emschiron"] = {"مثال",0, ""},
	["taurusems"] = {"مثال 2",0, ""}
  },
  ["Police Helicopters"] = {
    _config = {vtype="car",blipid=43,blipcolor=38,radius=5.1,permissions={"police.vehicle"}},
    ["polmav"] = {"Maverick",0, "emergency"}
  },
   ["EMS Helicopters"] = {
    _config = {vtype="car",blipid=43,blipcolor=1,radius=5.1,permissions={"emergency.vehicle"}},
    ["supervolito2"] = {"EMS",0, "emergency"}
  },
  ["Pilotla"] = {
    _config = {vtype="plane",blipid=16,blipcolor=30,permissions={"pilot.vehicle"}},
    ["jet"] = {"Boeing 747",0, "jet"}
  },
  ["Pilotsa"] = {
    _config = {vtype="plane",blipid=16,blipcolor=30,permissions={"pilot.vehicle"}},
     ["mammatus"] = {"Small Cargo",0, "mammatus"}
  },
  ["airP"] = {
    _config = {vtype="plane",blipid=16,blipcolor=30,permissions={"air.vehicle"}},
    ["vestra"] = {"Plane",0, "vestra"}
  },
  ["airH"] = {
    _config = {vtype="plane",blipid=43,blipcolor=30,permissions={"air.vehicle"}},
     ["volatus"] = {"Helicopter",0, "volatus"}
  }, 
  ["uber"] = {
    _config = {vtype="car",blipid=50,blipcolor=81,permissions={"uber.vehicle"}},
    ["surge.."] = {"Taxi",0, ""}
  },
  ["Lawyer"] = {
    _config = {vtype="car",blipid=50,blipcolor=7,permissions={"Lawyer.vehicle"}},
    ["panto"] = {"Panto", 0, "panto"}
  },
  ["delivery"] = {
    _config = {vtype="bike",blipid=85,blipcolor=31,permissions={"delivery.vehicle"}},
    ["faggio3"] = {"faggio3",0, "faggio3"}
  },
  ["santa"] = {
    _config = {vtype="bike",blipid=85,blipcolor=31,permissions={"santa.vehicle"}},
    ["hydra"] = {"Santa's Sled",0, "hydra"}
  },  
  ["repair"] = {
    _config = {vtype="car",blipid=50,blipcolor=31,permissions={"repair.vehicle"}},
    ["towtruck2"] = {"towtruck2",0, "towtruck2"},
	["utillitruck3"] = {"Utility Truck",0, "utillitruck3"},
	["flatbed"] = {"سطحة",5000, "سطحة"}
  },
  ["bankdriver"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"bankdriver.vehicle"}},
    ["stockade"] = {"stockade",0, "stockade"}
  },
  ["Medical Driver"] = {
    _config = {vtype="car",blipid=67,blipcolor=4,permissions={"medical.vehicle"}},
    ["pony2"] = {"Medical Weed Van",0, "pony2"}
  },
	["Drift Cars"] = {
    _config = {vtype="car",blipid=357,blipcolor=1,permissions={"userr.vehicle"}},
    ["twqqsa"] = {"مثال",650000, ""},
	["tfger2"] = {"مثال 2",550000, ""}
  },
  ["TrakerJob"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"TrakerJob.vehicle"}},
    ["HAULER"] = {"مثال",25000, ""},
	["man"] = {"مثال 2",10000, ""}
  },
  ["invaders"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"invaders.vehicle"}},
    ["windsor"] = {"مثال",0, ""},
	["lamtmc"] = {"مثال 2",0, ""}
  },
  ["Admin"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"Admin.vehicle"}},
    ["g500"] = {"مثال",0, ""},
	["coach"] = {"مثال 2",0, ""}
  }, 
  ["7akm"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"7akm.vehicle"}},
    ["surge"] = {"سيارة الحاكم",0, ""}
  },
  ["RAMPAGE"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"RAMPAGE.vehicle"}},
    ["mvisiongt"] = {"مثال",0, ""},
	["ts1"] = {"مثال 2",0, ""}
	},
	 ["Big Daddy"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"Big Daddy.vehicle"}},
  	["czl1"] = {"مثال",0, ""},
	["gt500d"] = {"مثال 2",0, ""}
  },
  ["Humble"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"Humble.vehicle"}},
	["stanier5"] = {"مثال",0, ""},
    ["mb18"] = {"مثال 2",0, ""}
  },
  ["Mafia"] = {
    _config = {vtype="car",blipid=50,blipcolor=3,permissions={"mafia.vehicle"}},
	["stanier5"] = {"مثال",0, ""},
	["ts1"] = {"مثال 2",0, ""}
  },
  
 }
  

-- {garage_type,x,y,z}
cfg.garages = {
  {"Mafia",-2296.6364746094,379.15548706055,174.466796875},
  {"Mafia",859.07891845703,227.34188842773,84.349945068359},
  {"Mafia",-2662.0791015625,1307.25,147.11846923828},
  {"Mafia",-2091.841796875,-1689.7655029297,12.141489028931},
  {"Mafia",-333.44223022461,-904.41906738281,31.077877044678},
  {"Mafia",2752.2277832031,-700.60540771484,9.9625072479248},
  {"Mafia",-2159.9721679688,-541.13488769531,8.2888612747192},  --STREAMER DX 
  {"House Garage",2743.4987792969,-696.22045898438,10.691014289856},
  {"Mafia",2437.7443847656,4943.0151367188,44.891437530518},
  {"Drift Cars",128.59573364258,-1081.8137207031,29.212236404419},
  {"Drift Cars",2747.7114257813,-714.43212890625,10.014354705811},
  {"Drift Cars",534.39886474609,-842.25048828125,24.889541625977},
  {"7akm",-1412.6164550781,666.15319824219,186.99946594238}, 
  {"Admin",331.98617553711,-1018.4668579102,29.290357589722},
  {"Car Drift",858.4404296875,-3144.0495605469,5.9008049964905},
  {"Car Drift",1186.2799072266,306.80603027344,81.990936279297},
  {"Car Drift",-1065.0090332031,-2956.35546875,13.946669578552},
  {"Car Drift",-2964.3181152344,-402.24392700195,28.54358291626},
  {"House Garage",1208.6527099609,-1262.5780029297,35.226768493652},
  {"House Garage",-2091.6960449219,-1644.4389648438,15.601660728455},
  {"House Garage",-2957.6770019531,-427.2004699707,28.543581008911},
  {"Off Road",1777.6678466797,3335.7856445313,41.171855926514},
  {"Off Road",-2096.6879882813,-1634.2719726563,15.460830688477},
  {"Off Road",-2957.8444824219,-414.10763549805,28.543584823608},
  {"House Garage",-361.62393188477,-132.71321105957,38.680068969727},
  {"House Garage",717.70239257813,-1088.8958740234,22.360628128052},
  {"House Garage",-53.021312713623,161.33811950684,141.17594909668},
  {"Exotic Cars",-42.400775909424,-1098.3619384766,26.422369003296},
  {"House Garage",1181.6231689453,2650.830078125,37.821151733398},
  {"sportsclassics",112.275, 6619.83, 31.8154},
  {"Motorcycles",-205.789, -1308.02, 31.2916},
  {"FBI",449.53063964844,-1062.4781494141,29.212400436401},
  {"police",451.2121887207,-1018.2822875977,28.495378494263},	-- jobs garage
  {"Cadet",451.2121887207,-1018.2822875977,28.495378494263}, --- cadet garage
  {"police",477.99038696289,-1020.9154663086,28.011201858521},
  {"police",1507.3638916016,778.30145263672,77.440238952637},
  {"Cadet",1507.3638916016,778.30145263672,77.440238952637},
  {"Bounty",512.07818603516,-3052.1579589844,6.0687308311462},
  {"Cadet",306.00982666016,-1436.5961914063,29.804080963135},
  {"police",306.00982666016,-1436.5961914063,29.804080963135},  
  {"police",1868.5435791016,3696.0295410156,33.5693359375},  -- sandy shores
  {"police",-476.92425537109,6026.9951171875,31.340547561646},  -- paleto
  {"emergency",358.91650390625, -607.78515625, 28.6820983886719}, -- main
  {"emergency",1833.3223876953,3661.3088378906,33.875843048096}, -- sandy shores
  {"emergency",-255.98040771484,6346.1127929688,32.426189422607}, -- paleto
  {"emergency",300.16790771484,-1443.6666259766,29.792545318604},
  {"uber",907.38049316406,-175.86546325684,74.130157470703},  -- jobs garage
  {"uber",-1076.7537841797,-2581.7375488281,20.087171554565},
  {"uber",-1070.5932617188,-2571.1198730469,20.088468551636},
  {"Lawyer",-1900.7344970703,-560.89245605469,11.802397727966},-- jobs garage
  {"delivery",964.514770507813,-1020.13879394531,40.8475074768066},   -- jobs garage
  {"repair",317.41131591797,-694.3994140625,29.361143112183},   -- jobs garage
  {"bankdriver",222.68756103516,222.95631408691,105.41331481934},   -- jobs garage
  {"House Garage",-638.08142089844,56.500617980957,43.794803619385},  -- house garage
  {"House Garage",-1457.4909667969,-500.61614990234,32.202766418457},
  {"House Garage",-25.273494720459,-1434.4365234375,30.653142929077},
  {"House Garage",-1186.2674560547,-1490.7161865234,4.3796663284302},
  {"House Garage",-143.5147857666,-1082.3137207031,29.192350387573},
  {"House Garage",-819.40551757813,183.72904968262,72.136161804199},
  {"House Garage",15.016004562378,547.76171875,176.14279174805},
  {"House Garage",1977.1169433594,3827.2368164063,32.373237609863},
  {"House Garage",2480.5893554688,4953.958984375,45.026481628418},
  {"House Garage",15.016004562378,547.76171875,176.14279174805},
  {"House Garage",-1415.1351318359,-956.41815185547,7.2369647026062},
  {"House Garage",497.44073486328,-1702.4410400391,29.400140762329},
  {"House Garage",-953.87145996094,-2705.6955566406,13.831033706665},
  {"House Garage",1618.9235839844,3222.0256347656,40.411525726318},
  {"House Garage",139.39573669434,-1081.3654785156,29.193019866943},
  {"House Garage",-796.00256347656,304.55578613281,85.700416564941},
  {"House Garage",-259.08013916016,-680.39465332031,32.830478668213},
  {"House Garage",-141.61361694336,-1081.7982177734,29.192502975464},
  {"House Garage",-72.769035339355,495.79925537109,144.10296630859},
  {"House Garage",-121.71002960205,509.85540771484,142.5652923584},
  {"House Garage",151.01029968262,-1081.9688720703,29.192373275757},
  {"House Garage",-188.32077026367,502.87573242188,134.23774719238},
  {"House Garage",211.759765625,-1372.1492919922,30.587511062622},
  {"House Garage",1366.5837402344,1147.4722900391,113.41327667236 },
  {"House Garage",315.93182373047,-1367.4291992188,31.824468612671},
  {"House Garage",306.19747924805,-1380.4073486328,31.789840698242},
  {"House Garage",-1021.3139038086,-2735.4104003906,20.162109375},
  {"House Garage",36.076232910156,6606.3403320313,32.472610473633},
  {"House Garage",-278.81362915039,-996.60357666016,24.721685409546},
  {"Police Helicopters",449.30340576172,-981.24963378906,43.69165802002}, -- Main PD
  {"Police Helicopters",1770.2171630859,3239.5561523438,42.13171005249}, -- Sandy Shores
  {"Police Helicopters",-475.24264526367,5988.7353515625,31.336685180664}, -- Paleto Bay
  {"EMS Helicopters",449.30340576172,-981.24963378906,43.69165802002},  -- Main PD
  {"EMS Helicopters",351.77529907227,-588.04174804688,74.165733337402},
  {"EMS Helicopters",1770.2171630859,3239.5561523438,42.13171005249}, -- Sandy Shores
  {"EMS Helicopters",-475.24264526367,5988.7353515625,31.336685180664}, -- Paleto Bay  
  {"Fisher's Boat",1508.8854980469,3908.5732421875,30.031631469727},
  {"Medical Driver",-319.82263183594,-942.8408203125,31.080617904663},
  {"Pilotsa",-901.70129394531,-3293.984375,13.944430351257},
  {"Pilotsa",2128.9069824219,4806.134765625,41.168750762939},
  {"Pilotsa",1734.9053955078,3297.9689941406,41.223503112793},
  {"airP",2128.9069824219,4806.134765625,41.168750762939},
  {"airH",-745.14343261719,-1468.5361328125,5.0005240440369},
  {"airP",2128.9069824219,4806.134765625,41.168750762939},
  {"airP",1734.9053955078,3297.9689941406,41.223503112793},
  {"TrakerJob",46.503620147705,-2447.0227050781,6.0036950111389},
  {"Santa",-1345.333984375,-2692.7885742188,13.944937705994}  
  
 
  
  

  
  --{"planes",1640, 3236, 40.4},
  --{"planes",2123, 4805, 41.19},
  --{"planes",-1348, -2230, 13.9},
  --{"helicopters",-1233, -2269, 13.9},
  --{"helicopters",-745, -1468, 5},
  --{"boats",-849.5, -1368.64, 1.6},
  --{"boats",1538, 3902, 30.35}
}

return cfg