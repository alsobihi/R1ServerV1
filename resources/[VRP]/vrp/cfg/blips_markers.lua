
-- this file is used to define additional static blips and markers to the map
-- some lists: https://wiki.gtanet.work/index.php?title=Blips

local cfg = {}

-- list of blips
-- {x,y,z,idtype,idcolor,text}
cfg.blips = {
  {-1202.96252441406,-1566.14086914063,4.61040639877319,311,17,"Body training"},
  {460.190338134766,-993.888488769531,24.914867401123,60,38,"Police Station"},
  {1853.21, 3689.51, 34.2671,60,17,"Police Station"},
  {1853.21, 3689.51, 34.2671,60,17,"Gang"},
  {391.541442871094,-1615.154296875,29.291934967041,60,38,"Police Station"}, 
  {-261.40533447266,-965.15747070313,31.224115371704,315,4,"Driver License"},
  {244.1099395752,-1382.8720703125,39.534328460693,61,3,"Hospital Station"},
  {415.2883605957,-1652.4112548828,29.291698455811,446,47,"Repair Station"},
  {236.41926574707,216.96081542969,106.28672790527,434,4,"Bank Driver Station"},  
  {1049.39819,-555.6142,59.1099167,410,47,"Park"},
  {449.81854248047,-993.30865478516,30.689584732056,73,3,"Police Outfits"},
  {575.40698242188,-3121.94921875,18.768627166748,433,1,"Bounty Hunter"},
  {138.28096008301,-764.61865234375,45.752029418945,88,5,"FBI"},
  {743.19586181641,3895.3967285156,30.556676864624,68,28,"Fisherman"}
}

-- list of markers
-- {x,y,z,sx,sy,sz,r,g,b,a,visible_distance}
cfg.markers = {
{743.19586181641,3895.3967285156,30.556676864624,1.5,1.5,1.5,204,204,0,150,35}, -- Place where to get the fish from.
{1508.8854980469,3908.5732421875,30.031631,1,1,0.8,204,204,0,150,35}, -- Place to get the boat from (marked on the ground)
{2236.8549804688,4901.6079101563,40.651531219482,1,1,0.8,204,204,0,150,35}, -- Place to harvest chicken 
{-99.132621765137,6210.3740234375,31.025026321411,1,1,0.8,204,204,0,150,35}, -- Place to cut chicken 
{375.93374633789,333.57907104492,103.56643676758,1,1,0.8,204,204,0,150,35}, -- Place to sell chicken
{-89.28,1909.93,196.71,1,1,0.8,204,204,0,150,35}, -- Place to gather wine 
{-1896.2,2111.9,132.94,1,1,0.8,204,204,0,150,35}, -- Place to gather vodka 
{500.99,6462.46,30.87,1,1,0.8,204,204,0,150,35}, -- Place to gather whiskey
{-1392.67,-607.86,30.31,1,1,0.8,204,204,0,150,35}, -- Place to sell grapes
{500.14,6464.67,30.8,1,1,0.8,204,204,0,150,35}, -- Place to process grapes
{110.1350479126,-152.65550231934,54.850036621094,1,1,0.8,204,204,0,150,35}, -- Place to gather motherboard 
{-23.721536636353,-106.08920288086,57.061721801758,1,1,0.8,204,204,0,150,35}, -- Place to gather case
{-133.31454467773,-118.21479797363,56.547115325928,1,1,0.8,204,204,0,150,35}, -- Place to gather CPU
{-213.11557006836,-40.107097625732,50.039512634277,1,1,0.8,204,204,0,150,35}, -- Place to gahter graphics
{-132.43377685547,-68.839729309082,55.445911407471,1,1,0.8,204,204,0,150,35}, -- Place to gather power
{-329.78915405273,6150.08203125,32.313312530518,1,1,0.8,204,204,0,150,35}, -- Place to sell pc
{-1152.37,-1565.12,4.38,1,1,0.8,204,204,0,150,35}, -- Place to build pc
{2100.9204101563,2341.6782226563,94.285331726074,1,1,0.8,204,204,0,150,35}, -- Place to harvest oil 
{2723.5036621094,1526.0269775391,24.500713348389,1,1,0.8,204,204,0,150,35}, -- Place to process oil 
{-2221.2961425781,3486.5004882813,30.169626235962,1,1,0.8,204,204,0,150,35}, -- Place to sell oil
{384.61526489258,-1075.8487548828,29.418725967407,1,1,0.8,204,204,0,150,35}, -- birds
{-342.75030517578,6098.2495117188,30.318670272827,1,1,0.8,204,204,0,150,35}, -- Place to get the illegal weapons from
{2213.0520019531,5577.5981445313,52.795757293701,1,1,0.8,204,204,0,150,35}, -- Place to harvest Medical Weed
{-261.40533447266,-965.15747070313,30.224115371704,1,1,0.8,204,204,0,150,35}, -- Place to get Drivers License
{805.77130126953,1078.0639648438,27.55744934082,1,1,0.8,204,204,0,150,35}, -- Place to get Trash
{1851.6605224609,3690.6713867188,33.267044067383,1,1,0.8,204,204,0,150,35}, -- Sandy Shores Police Report
{-449.43395996094,6010.796875,30.716377258301,1,1,0.8,204,204,0,150,35}, -- Paleto Police Report
{-272.08700561523,27.639623641968,53.752536773682,1,1,0.8,204,204,0,150,35}, -- Medical Report
{465.04064941406,3569.1174316406,32.238555908203,1,1,0.8,204,204,0,150,35}, -- Medical Report
{-1145.8566894531,4939.5083007813,221.2686920166,1,1,0.8,204,204,0,150,35}, -- Medical Report
{1618.9204101563,3227.7058105469,39.411529541016,1,1,0.8,204,204,0,150,35}, -- Cargo Collection
{807.07354736328,-1077.0104980469,27.621067047119,1,1,0.8,204,204,0,150,35} -- Trash
}

return cfg
