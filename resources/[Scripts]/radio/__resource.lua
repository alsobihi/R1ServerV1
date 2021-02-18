resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"
--الحقوق محفوطة لمكتبة فايف ام العربية --
-------------!DRAKOLA!-------------------
--للاستفسارات و الجديد زورونا في الديسكورد --
-------- https://discord.gg/Q6NCmZv --------
-- Example custom radios
supersede_radio "RADIO_02_POP" { url = "", volume = 0.5 }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "", volume = 0.5 }
supersede_radio "RADIO_04_PUNK" { url = "", volume = 0.5 }
supersede_radio "RADIO_05_TALK_01" { url = "", volume = 0.5 }
supersede_radio "RADIO_06_COUNTRY" { url = "", volume = 0.5 }
supersede_radio "RADIO_07_DANCE_01" { url = "", volume = 0.5 }
supersede_radio "RADIO_08_MEXICAN" { url = "", volume = 0.5 }
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "", volume = 0.5 }
supersede_radio "RADIO_12_REGGAE" { url = "", volume = 0.5 }
supersede_radio "RADIO_13_JAZZ" { url = "", volume = 0.5 }
supersede_radio "RADIO_14_DANCE_02" { url = "", volume = 0.5 }
supersede_radio "RADIO_15_MOTOWN" { url = "", volume = 0.5 }
supersede_radio "RADIO_20_THELAB" { url = "", volume = 0.5 }
supersede_radio "RADIO_16_SILVERLAKE" { url = "", volume = 0.5 }
supersede_radio "RADIO_17_FUNK" { url = "", volume = 0.5 }
supersede_radio "RADIO_18_90S_ROCK" { url = "", volume = 0.5 }
supersede_radio "RADIO_19_USER" { url = "", volume = 0.5 }
supersede_radio "RADIO_11_TALK_02" { url = "", volume = 0.5 }

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js"
}
