Config = {}
Mechanic = {}

Config["Keys"] = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["ENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}
Config['Debug'] = true

Config["Routers"] = {		
    ["getSharedObject"] = "esx:getSharedObject",-- base
	["Notify"] = "pNotify:SendNotification",-- การเเจ้งเตือนจะใช้เเบบไหน
}


Mechanic['Setting'] = {
	['Base'] ={
		['Key'] = 'F6', -- ปุ่มเปิดเมนู
		['MechanicJob'] = 'mechanic', -- อาชีพช่างใน database sql
	},
	['Blip'] = {
		['UseBlip'] = true,-- ต้องการใช้ blip ในเเมพมั้ยถ้าต้องการปรับ true ถ้าไม่ false
		['BlipName'] = 'Mechanic Job Center',-- ชื่อ blip ในเเมพ
		['BlipSetting'] = {
			['Sprite'] = 446, -- blip อันไหน
			['Display'] = 4, 
			['Scale'] = 1.2, -- ขนาด blip
			['Colour'] = 0, -- สี blip
			['AsShortRange'] = true, --อยากให้ blip เลื่อนตามจอมั้ย ถ้าต้องการปรับ true ถ้าไม่ false
		},
		['Zone'] = {
			['radius'] = 100, -- ขนาดอู่ที่สามารถเปลี่ยนชุดได้
			['Pos'] = { 
				{x = -364.73, y = -121.3, z = 38.7}, --พื้นทีอู่
			}, 
		},
	},
	['Repairkit'] = {
		['ItemFix'] = 'fixkit', -- ชื่อไอเทมกล่องซ่อม
		['Checkitem'] = true, -- เช็คว่ามีไอเทมกล่องซ่อมในตัวมั้ย
		['removeitem'] = true, -- ลบไอเทมกล่องซ่อมมั้ย
	},
	['EffectFix'] = {
		['CamShake'] = true, --เอฟเฟคหน้าสั่นตอนซ่อมรถ ถ้าต้องการปรับ true ถ้าไม่ false
		['Effect_Elc'] = true,--เอฟเฟคไฟฟ้าตอนซ่อมรถ  ถ้าต้องการปรับ true ถ้าไม่ false
	},
	['Uniforms'] = {-- ชุดช่างตอนเข้าเวร
		['InDuty'] = {
			['male'] = { -- ชุดช่างผู้ชาย
				tshirt_1 = 15, 	tshirt_2 = 0, 
				torso_1 = 257, 	torso_2 = 0,
				arms = 6, 
				pants_1 = 107, 	pants_2 = 0,
				shoes_1 = 123, 	shoes_2 = 0,
			},
			['female'] = { -- ชุดช่างผู้หญิง
				tshirt_1 = 15, 	tshirt_2 = 0,
				torso_1 = 255, 	torso_2 = 0,
				arms = 6, 
				pants_1 = 131, 	pants_2 = 0,
				shoes_1 = 148,	shoes_2 = 0,
			}
		}
	},
}
