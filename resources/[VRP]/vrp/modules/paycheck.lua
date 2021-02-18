local Proxy = module("vrp", "lib/Proxy")

RegisterServerEvent('paycheck:salary')
AddEventHandler('paycheck:salary', function()
  	local user_id = vRP.getUserId(source)
	--[[if vRP.hasPermission(user_id,"police.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$3000"})
	end	]]	
	-- EMS Paychecks	
	if vRP.hasPermission(user_id,"EMS1.paycheck") then
		vRP.giveBankMoney(user_id,30000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"EMS Department",false,"Payday: ~g~$30000"})--مسعف
	end
	if vRP.hasPermission(user_id,"EMS232.paycheck") then
		vRP.giveBankMoney(user_id,40000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"EMS Department",false,"Payday: ~g~$40000"})--استشاري
	end
	if vRP.hasPermission(user_id,"EMS2.paycheck") then
		vRP.giveBankMoney(user_id,50000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"EMS Department",false,"Payday: ~g~$40000"})--دكتور
	end
	if vRP.hasPermission(user_id,"EMS3.paycheck") then
		vRP.giveBankMoney(user_id,60000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"EMS Department",false,"Payday: ~g~$50000"})-- اخصائي
	end
	if vRP.hasPermission(user_id,"EMS4.paycheck") then
		vRP.giveBankMoney(user_id,70000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"EMS Department",false,"Payday: ~g~$60000"})-- بروفيسور
	end
	if vRP.hasPermission(user_id,"EMS7.paycheck") then
		vRP.giveBankMoney(user_id,80000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"EMS Department",false,"Payday: ~g~$60000"})-- مدير مستشفى
	end
	if vRP.hasPermission(user_id,"EMS100.paycheck") then
		vRP.giveBankMoney(user_id,90000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"EMS Department",false,"Payday: ~g~$60000"})-- مسؤول المسعفين
	end
	if vRP.hasPermission(user_id,"EMS5.paycheck") then
		vRP.giveBankMoney(user_id,100000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"EMS Department",false,"Payday: ~g~$100000"})-- نائب وزير الصحة
	end
	if vRP.hasPermission(user_id,"EMS6.paycheck") then
		vRP.giveBankMoney(user_id,120000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"EMS Department",false,"Payday: ~g~$120000"})-- وزير الصحة
	end
	-- end EMS Paychecks
	-------------------------------------------------------------------------------------------------------------------------
	-- COP Paychecks
	if vRP.hasPermission(user_id,"jndeaol.paycheck") then
		vRP.giveBankMoney(user_id,13000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$13000"}) --جندي
	end
	if vRP.hasPermission(user_id,"police1.paycheck") then
		vRP.giveBankMoney(user_id,15000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$15000"})--جندي اول
	end
	if vRP.hasPermission(user_id,"police2.paycheck") then
		vRP.giveBankMoney(user_id,17000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$17000"})-- عريف 
	end
	if vRP.hasPermission(user_id,"police3.paycheck") then
		vRP.giveBankMoney(user_id,20000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$20000"})-- وكيل رقيب
	end
	if vRP.hasPermission(user_id,"police4.paycheck") then
		vRP.giveBankMoney(user_id,22000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$22000"})--رقيب
	end
	if vRP.hasPermission(user_id,"police5.paycheck") then
		vRP.giveBankMoney(user_id,25000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$25000"})-- رقيب اول
	end
	if vRP.hasPermission(user_id,"police6.paycheck") then
		vRP.giveBankMoney(user_id,30000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$30000"})--رئيس الرقباء
	end
	if vRP.hasPermission(user_id,"police7.paycheck") then
		vRP.giveBankMoney(user_id,32000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$32000"})--ملازم
	end
	if vRP.hasPermission(user_id,"police8.paycheck") then
		vRP.giveBankMoney(user_id,35000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$35000"})--ملازم اول
	end
	if vRP.hasPermission(user_id,"police9.paycheck") then
		vRP.giveBankMoney(user_id,37500)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$37500"})--نقيب
	end
	if vRP.hasPermission(user_id,"police10.paycheck") then
		vRP.giveBankMoney(user_id,40000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$40000"})--رائد
	end
	if vRP.hasPermission(user_id,"police11.paycheck") then
		vRP.giveBankMoney(user_id,42000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$42000"})--مقدم
	end
	if vRP.hasPermission(user_id,"police12.paycheck") then
		vRP.giveBankMoney(user_id,44500)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$44500"})-- عقيد
	end
	if vRP.hasPermission(user_id,"police13.paycheck") then
		vRP.giveBankMoney(user_id,48000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$48000"})-- عميد
	end
	if vRP.hasPermission(user_id,"police14.paycheck") then
		vRP.giveBankMoney(user_id,60000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$60000"})-- لواء
	end
	if vRP.hasPermission(user_id,"police15.paycheck") then
		vRP.giveBankMoney(user_id,70000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$70000"})--فريق
	end
	if vRP.hasPermission(user_id,"police16.paycheck") then
		vRP.giveBankMoney(user_id,80000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$80000"})--فريق اول
	end
	if vRP.hasPermission(user_id,"police17.paycheck") then
		vRP.giveBankMoney(user_id,90000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$90000"})--نائب وزير الداخلية
	end
	if vRP.hasPermission(user_id,"police18.paycheck") then
		vRP.giveBankMoney(user_id,100000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$100000"})--وزير الداخلية
	end
	if vRP.hasPermission(user_id,"police19.paycheck") then
		vRP.giveBankMoney(user_id,40000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$40000"})-- القوات الخاصة
	end
	--------المرور-------------
	if vRP.hasPermission(user_id,"amn1.paycheck") then
		vRP.giveBankMoney(user_id,150000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$150000"})
	end
	if vRP.hasPermission(user_id,"170.paycheck") then
		vRP.giveBankMoney(user_id,170000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$170000"})
	end
	if vRP.hasPermission(user_id,"200.paycheck") then
		vRP.giveBankMoney(user_id,200000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$200000"})
	end
	if vRP.hasPermission(user_id,"amn2.paycheck") then
		vRP.giveBankMoney(user_id,100000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$100000"})
	end	
	if vRP.hasPermission(user_id,"amn3.paycheck") then
		vRP.giveBankMoney(user_id,80000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$80000"})
	end
	if vRP.hasPermission(user_id,"amn4.paycheck") then
		vRP.giveBankMoney(user_id,60000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$60000"})
	end
	if vRP.hasPermission(user_id,"amn5.paycheck") then
		vRP.giveBankMoney(user_id,55000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$55000"})
	end
	if vRP.hasPermission(user_id,"amn6.paycheck") then
		vRP.giveBankMoney(user_id,50000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$50000"})
	end
	if vRP.hasPermission(user_id,"amn7.paycheck") then
		vRP.giveBankMoney(user_id,45000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$45000"})
	end
	if vRP.hasPermission(user_id,"amn8.paycheck") then
		vRP.giveBankMoney(user_id,40000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$40000"})
	end	
	if vRP.hasPermission(user_id,"amn9.paycheck") then
		vRP.giveBankMoney(user_id,35000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$35000"})
	end
	if vRP.hasPermission(user_id,"amn10.paycheck") then
		vRP.giveBankMoney(user_id,30000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$30000"})
	end
	if vRP.hasPermission(user_id,"amn11.paycheck") then
		vRP.giveBankMoney(user_id,27000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$27000"})
	end
	if vRP.hasPermission(user_id,"amn12.paycheck") then
		vRP.giveBankMoney(user_id,25000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$25000"})
	end
	if vRP.hasPermission(user_id,"amn13.paycheck") then
		vRP.giveBankMoney(user_id,20000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$20000"})
	end
	if vRP.hasPermission(user_id,"amn14.paycheck") then
		vRP.giveBankMoney(user_id,19000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$19000"})
	end
	if vRP.hasPermission(user_id,"amn15.paycheck") then
		vRP.giveBankMoney(user_id,17000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$17000"})
	end
	if vRP.hasPermission(user_id,"amn16.paycheck") then
		vRP.giveBankMoney(user_id,15000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$15000"})
	end
	if vRP.hasPermission(user_id,"amn17.paycheck") then
		vRP.giveBankMoney(user_id,10000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$10000"})
	end
	
	--end COP Paychecks
	-----------------------------------------------------------------------------------------------------
	if vRP.hasPermission(user_id,"repair.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Repair Company",false,"Payday: ~g~$3000"}) --ميكانيكي
	end
	if vRP.hasPermission(user_id,"BlackMarket.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"BlackMarket",false,"Payday: ~g~$3000"}) --BlackMarket
	end
	if vRP.hasPermission(user_id,"mobile.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Electronic devices",false,"Payday: ~g~$3000"}) --تاجر اجهزة الكترونية
	end
	if vRP.hasPermission(user_id,"Forger.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Forger",false,"Payday: ~g~$3000"}) --مزور
	end
	if vRP.hasPermission(user_id,"fisher.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"fisher Company",false,"Payday: ~g~$3000"})--صياد سمك
	end
	--if vRP.hasPermission(user_id,"Chief.paycheck") then
		--vRP.giveBankMoney(user_id,3000)
		--vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$3000"})
	--end
	--if vRP.hasPermission(user_id,"Commander.paycheck") then
		--vRP.giveBankMoney(user_id,4000)
		--vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$4000"})
	--end
	if vRP.hasPermission(user_id,"mafia.paycheck") then
		vRP.giveMoney(user_id,10000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Mafia",false,"Stolen money: ~g~$10000"}) --العصابات
	end	
	--if vRP.hasPermission(user_id,"Captain.paycheck") then
		--vRP.giveBankMoney(user_id,2500)
		--vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$2500"})
	--end
	if vRP.hasPermission(user_id,"Medicalweed.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Medical weed",false,"Payday: ~g~$3000"})
	end
	--if vRP.hasPermission(user_id,"Lieutenant.paycheck") then
		--vRP.giveBankMoney(user_id,2500)
		--vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$2500"})
	--end
	if vRP.hasPermission(user_id,"DrugDealer.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Drug Dealer",false,"Payday: ~g~$3000"}) --تاجر مخدرات
	end
	if vRP.hasPermission(user_id,"farmer.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"farmer",false,"Payday: ~g~$3000"}) --مزارع فواكه
	end
	if vRP.hasPermission(user_id,"chickenseller.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"chicken seller",false,"Payday: ~g~$3000"}) --بائع دجاج
	end
	if vRP.hasPermission(user_id,"meatseller.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"meat seller",false,"Payday: ~g~$3000"})-- بائع لحوم
	end
	if vRP.hasPermission(user_id,"WeaponsSmuggler.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Weapons Smuggler",false,"Payday: ~g~$3000"})-- مهرب اسلحة
	end
	--if vRP.hasPermission(user_id,"Detective.paycheck") then
		--vRP.giveBankMoney(user_id,2250)
		--vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$2250"})
	--end
	--if vRP.hasPermission(user_id,"Sergeant.paycheck") then
		--vRP.giveBankMoney(user_id,3000)
		--vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$3000"})
	--end
	--if vRP.hasPermission(user_id,"Deputy.paycheck") then
		--vRP.giveBankMoney(user_id,3000)
		--vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$3000"})
	--end
	if vRP.hasPermission(user_id,"Lawyer.paycheck") then
		vRP.giveBankMoney(user_id,4000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Lawyer",false,"Payday: ~g~$4000"}) --محامي
	end
	if vRP.hasPermission(user_id,"delivery.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Delivery Company",false,"Payday: ~g~$3000"}) --توصيل طعام
	end
	if vRP.hasPermission(user_id,"citizen.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Arab Star",false,"Payday: ~g~$3000"}) --عاطل
	end
	if vRP.hasPermission(user_id,"vip.paycheck") then
		vRP.giveBankMoney(user_id,30000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"VIP",false,"Payday: ~g~$30000"}) --VIP
	end
	--[[if vRP.hasPermission(user_id,"SWAT.paycheck") then
		vRP.giveBankMoney(user_id,2500)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"sheriff.paycheck") then
		vRP.giveBankMoney(user_id,2500)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"Cadet.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$3000"})
	end
	if vRP.hasPermission(user_id,"trafficguard.paycheck") then
		vRP.giveBankMoney(user_id,1500)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Police Department",false,"Payday: ~g~$1500"})
	end
	-- if vRP.hasPermission(user_id,"santa.paycheck") then
		-- vRP.giveBankMoney(user_id,3000)
		-- vRPclient.notify(source,{"Payday: $3000"})
	-- end]]
	if vRP.hasPermission(user_id,"bankdriver.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Bank Driver",false,"Payday: ~g~$3000"}) --سائق بنك
	end
	if vRP.hasPermission(user_id,"pilot.paycheck") then 
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Airline Company",false,"Payday: ~g~$3000"}) --كابتن طيار
	end
	if vRP.hasPermission(user_id,"ups.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"UPS Company",false,"Payday: ~g~$3000"}) --ساعي بريد
	end
	if vRP.hasPermission(user_id,"air.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Airline Company",false,"Payday: ~g~$3000"}) --كابتن طيار
	end
	if vRP.hasPermission(user_id,"trash.paycheck") then
		vRP.giveBankMoney(user_id,3000)
		vRPclient.notifyPicture(source,{"Arab_Star",1,"Trash Collector",false,"Payday: ~g~$3000"}) --جامع قمامة
	end
end)

RegisterServerEvent('paycheck:bonus')
AddEventHandler('paycheck:bonus', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.giveBankMoney(user_id,6000)
		vRPclient.notify(source,{"Arab Star Gift: ~g~$6000"})
	end
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.getMoney(user_id,2000)
		vRPclient.notify(source,{"Tax: $2000"})
	end
end)
