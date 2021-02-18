-- Menu configuration, array of menus to display
menuConfigs = {
    ['ADMIN'] = {
        enableMenu = function()
            return true
        end,
        data = {
            keybind = "F1",
            style = {
                sizePx = 900,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#8B0000', ['stroke-width'] = 3, ['opacity'] = 9.11 },
                    hover = { ['fill'] = '#8B0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 9.11 },
                    selected = { ['fill'] = '#8B0000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 9.11 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 30, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 30, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 30, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 70,
                    height = 94
                }
            },
            wheels = {
                {
                    navAngle = 100,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.0000001,
                    labels = {"imgsrc:"},
                    commands = {"closemenu"}
                },
				{
                    navAngle = 90,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:group.png", "imgsrc:ban.png", "imgsrc:unban.png", "imgsrc:tptome.png", "imgsrc:tpto.png", "imgsrc:groupremove.png", "imgsrc:noclip.png", "imgsrc:givem.png", "imgsrc:spawn.png", "imgsrc:close.png", "imgsrc:item.png", "imgsrc:kick.png", "imgsrc:whitelist.png", "imgsrc:unwhitelist.png"},
                    commands = {"aadd", "bbaan", "uunban", "ttpm", "ttp", "groupremove", "ccclip", "ggivem", "sspa", "closemenu", "takit", "kkick", "white", "unwhite", "ttptoway"}
                },
                {
                    navAngle = 100,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.60,
                    labels = {"imgsrc:revive.png", "imgsrc:a3sar.png", "imgsrc:arevive.png", "imgsrc:fix.png"},
                    commands = {"rrevive", "alert LSPD", "arevive", "fix"}
                }
            }
        }
    },
    ['POLICE'] = {
        enableMenu = function()
            return true
        end,
        data = {
            keybind = "Z",
            style = {
                sizePx = 900,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#00008B', ['stroke-width'] = 3, ['opacity'] = 9.11 },
                    hover = { ['fill'] = '#00008B', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 9.11 },
                    selected = { ['fill'] = '#00008B', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 9.11 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 70,
                    height = 94
                }
            },
            wheels = {
                {
                    navAngle = 100,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.0000001,
                    labels = {"imgsrc:https://i.imgur.com/vl7MyMW.png"},
                    commands = {"closemenu"}
                },
				{
                    navAngle = 75,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:check.png", "imgsrc:id.png", "imgsrc:cuff.png", "imgsrc:drag.png", "imgsrc:pmenu.png", "imgsrc:ppc.png", "imgsrc:fine.png", "imgsrc:close.png", "imgsrc:jail.png", "imgsrc:putinveh.png", "imgsrc:outofveh.png", "imgsrc:resizewee.png", "imgsrc:resizewep.png"},
                    commands = {"jjj", "sss", "yyy", "ggg", "rrr", "ppc", "ffine", "closemenu", "jjail", "putinveh", "outofveh", "sizeitem", "sizeweap"}
                },
                {
                    navAngle = 50,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.60,
                    labels = {"imgsrc:an3ash.png", "imgsrc:call.png", "imgsrc:carcheck.png"},
                    commands = {"an3ash", "carry", "ccheckc"}
                }
            }
        }
    },
	['GANG'] = {
        enableMenu = function()
            return true
        end,
        data = {
            keybind = "L",
            style = {
                sizePx = 900,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#654321', ['stroke-width'] = 3, ['opacity'] = 9.11 },
                    hover = { ['fill'] = '#654321', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 9.11 },
                    selected = { ['fill'] = '#654321', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 9.11 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 70,
                    height = 94
                }
            },
            wheels = {
                {
                    navAngle = 100,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.0000001,
                    labels = {"imgsrc:https://i.imgur.com/vl7MyMW.png"},
                    commands = {"closemenu"}
                },
				{
                    navAngle = 320,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:check.png", "imgsrc:cuff.png", "imgsrc:drag.png", "imgsrc:outvehh.png", "imgsrc:incar.png", "imgsrc:loot.png", "imgsrc:close.png"},
                    commands = {"jjj", "yyy", "ggg", "outofveh", "putinveh", "loot", "ccheckc", "closemenu"}
                },
                {
                    navAngle = 90,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.60,
                    labels = {"imgsrc:headbag.png", "imgsrc:storewe.png", "imgsrc:hostage.png"},
                    commands = {"closest", "store", "th"}
                }
            }
        }
    },
    ['VRP'] = {
        enableMenu = function()
            return true
        end,
        data = {
            keybind = "F7",
            style = {
                sizePx = 900,
                slices = {
                    default = { ['fill'] = '#000000', ['stroke'] = '#ff7b00', ['stroke-width'] = 3, ['opacity'] = 9.11 },
                    hover = { ['fill'] = '#ff7b00', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 9.11 },
                    selected = { ['fill'] = '#000000', ['stroke'] = '#000000', ['stroke-width'] = 3, ['opacity'] = 9.11 }
                },
                titles = {                          -- Text style settings
                    default = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    hover = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' },
                    selected = { ['fill'] = '#ffffff', ['stroke'] = 'none', ['font'] = 'Helvetica', ['font-size'] = 16, ['font-weight'] = 'bold' }
                },
                icons = {
                    width = 70,
                    height = 94
                }
            },
            wheels = {
                {
                    navAngle = 100,
                    minRadiusPercent = 0.0,
                    maxRadiusPercent = 0.0000001,
                    labels = {"imgsrc:https://i.imgur.com/vl7MyMW.png"},
                    commands = {"closemenu"}
                },
				{
                    navAngle = 310,
                    minRadiusPercent = 0.6,
                    maxRadiusPercent = 0.9,
                    labels = {"imgsrc:backbag.png", "imgsrc:dv.png" , "imgsrc:serves.png", "imgsrc:rentbike.png", "imgsrc:adminask.png", "imgsrc:caropen.png", "imgsrc:annonce.png", "imgsrc:close.png"},
                    commands = {"HBH", "dv", "r3rr", "rrentr", "aadmin", "carc", "a3lan", "closemenu"}
                },
                {
                    navAngle = 90,
                    minRadiusPercent = 0.3,
                    maxRadiusPercent = 0.60,
                    labels = {"imgsrc:carry.png", "imgsrc:repair.png", "imgsrc:money.png"},
                    commands = {"carry", "rrepair", "sendm"}
                }
            }
        }
    },
}