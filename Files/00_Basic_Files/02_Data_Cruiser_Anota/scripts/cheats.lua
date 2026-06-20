-- Cheat codes
-- $Id: cheats.lua,v 1.15 2005/07/06 12:55:55 anton Exp $


--------------------------------------------------
-- cheat codes for buka testers
--------------------------------------------------

function gimmegimmegimme()
		if testcheat()~=1 then return end

		AddPlayerMoney( 10000 )
		println( "Money added" )

		local v = GetPlayerVehicle()

		v:AddModifier( "maxhp", "+ 10000" )
		v:AddModifier( "hp", "+ 10000" )
		println( "HP added" )

		v:AddModifier( "maxfuel", "+ 10000" )
		v:AddModifier( "fuel", "+ 10000" )
		println( "Fuel added" )
end

function GiveMoney(money)
	if testcheat()~=1 then return end
	local mmm=1000
	if money then mmm=money end
	AddPlayerMoney(mmm)
end

function GiveAll()
	if testcheat()~=1 then return end
	gimmegimmegimme()
end

function GiveVehicle(num)
	if testcheat()~=1 then return end
	local model="Bug01"
	if num==1 then
		model="Sml1EnemySpawn"
	elseif num==2 then
		model="Sml2EnemySpawn"
	elseif num==3 then
		model="Sml3EnemySpawn"
	elseif num==4 then
		model="Sml4EnemySpawn"
	elseif num==5 then
		model="FormicaNullis"
	elseif num==6 then
		model="ScoutEnemySpawn"
	elseif num==7 then
		model="FighterEnemySpawn"
	elseif num==8 then
		model="SedanNullis"
	elseif num==9 then
		model="LaoshuNullis"
	elseif num==10 then
		model="HunterEnemySpawn"
	elseif num==11 then
		model="DefensorNullis01"
	elseif num==12 then
		model="BugForSale"
	elseif num==13 then
		model="BugMegaNullis"
	elseif num==14 then
		model="BulldogForSale"
	elseif num==15 then
		model="MolokovozForSale"		
	elseif num==16 then
		model="MolokovozUnoNullis"
	elseif num==17 then
		model="KolunNullis"
	elseif num==18 then
		model="Optimus01"
	elseif num==19 then
		model="Western01"
	elseif num==20 then
		model="UralZeroNullis"		
	elseif num==21 then
		model="UralForSale"	
	elseif num==22 then
		model="UralExtraNullis"				
	elseif num==23 then
		model="Minsk01"
	elseif num==24 then
		model="BelazForSale"		
	elseif num==25 then
		model="HexaBelazNullis"
	elseif num==26 then
		model="DT_CruiserForSale"		
	elseif num==27 then
		model="MirotvorecForSale"
	elseif num==28 then
		model="VolatNullis01"
	elseif num==29 then
		model="ProximaNullis"		
	elseif num==30 then
		model="MiniDozer01"		
	elseif num==31 then
		model="DozerEnemySpawn"
	elseif num==32 then
		model="AmkodorNullis"
	elseif num==33 then
		model="Tank01"
	elseif num==34 then
		model="SkatEnemySpawn"
	elseif num==35 then
		model="LeoTank01"
    elseif num==36 then
		model="ArcadeScout01"
	elseif num==37 then
		model="Revolutioner1"
	elseif num==38 then
		model="RobotBobot01"
	elseif num==39 then
		model="RobotBobot02"
	elseif num==40 then
		model="RobotTron"
	elseif num==41 then
		model="RobotMetatron"
	elseif num==42 then
		model="Formula01"
	elseif num==43 then
		model="SedanTurbo01"
	end
	AddPlayerVehicle(model)
end

function ShowMap()
	local mapsize = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLandSize() * 128
	local mapname = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLevelName()
	ShowRectOnMinimap(mapname, 1, 1, mapsize, mapsize)
end

--Ñ´Ô Å„≠†™Æ¢† :)

function god (md)
	if testcheat()~=1 then return end
	local mode=1
	if md then mode=md end
	GetPlayerVehicle():setGodMode(mode)  
end

function truck (number)
	GiveVehicle (number)
end

function car (number)
	GiveVehicle (number)
end

function skin (num)
    local number=0
    if num then number=num end
	GetPlayerVehicle():SetSkin(number)
end

function giveall ()
	if testcheat()~=1 then return end
	AddPlayerMoney( 10000 )

	local v = GetPlayerVehicle()

	v:AddModifier( "maxhp", "+ 10000" )
	v:AddModifier( "hp", "+ 15000" )

	v:AddModifier( "maxfuel", "+ 10000" )
	v:AddModifier( "fuel", "+ 11000" )
end

function teleport ()
	if testcheat()~=1 then return end
	MovePlayerToCamera()
end

function tp ()
	teleport()
end

function cab (num)
	if testcheat()~=1 then return end
   local number=1
   if num then number=num end
   local curcab=GetPlayerVehicle():GetCabin():GetProperty("Prototype").AsString
   local len=strlen(curcab)
   local newcab=strsub(curcab, 1, len-1)..number
   GetPlayerVehicle():SetNewPart("CABIN",newcab)
end

function cargo (num)
	if testcheat()~=1 then return end
   local number=1
   if num then number=num end
   local curcargo=GetPlayerVehicle():GetBasket():GetProperty("Prototype").AsString
   local len=strlen(curcargo)
   local newcargo=strsub(curcargo, 1, len-1)..number
   GetPlayerVehicle():SetNewPart("BASKET",newcargo)
end

function giveguns ()
--éêìÜàÖ
	if testcheat()~=1 then return end
			local veh=GetPlayerVehicle()
			local parts={"CABIN_","BASKET_","CHASSIS_"}
			local slots={"SMALL_","BIG_","GIANT_","SIDE_"}
			local guns={"GUN","GUN_0","GUN_1","GUN_2"}
			local smallgun={"hornet01","hornetA01","specter01","pktu01","pkt01","pkt02","kord01","maxim01","storm01","fagot01","fly01","needle01"}
			local biggun={"browning01","abzac01","ares01","rapier01","vector01","vulcan01","flag01","kpvt01","rainmetal01","elephant01","odin01","bumblebee01","omega01","hurricane01"}
			local giantgun={"hunterLauncher","bofors01","cyclops01","octopus01","rocketLauncher","big_swingfire01","hammer01"}
			local sidegun={"hailSideGun","marsSideGun","mrakSideGun","zeusSideGun","hunterSideGun"}
			local i,j,k=1,1,1
			while parts[i] do
				while slots[j] do
					while guns[k] do
--						LOG(parts[i]..slots[j]..guns[k])
						local gun=1
						local slot=parts[i]..slots[j]..guns[k]
						if j==1 then
							gun=smallgun[random(12)]
						elseif j==2 then
							gun=biggun[random(14)]
						elseif j==3 then
							gun=giantgun[random(7)]
						elseif j==4 then
							gun=sidegun[random(5)]
						end

--						LOG(gun)
						if veh:CanPartBeAttached(slot) then
						    LOG(slot.." -- "..gun)
							veh:SetNewPart(slot,gun)
						end
						k=k+1
					end
					k=1
					j=j+1
				end
				j=1
				i=i+1
			end
end

function map ()
	ShowMap()
end

function givemoney(money)
	if testcheat()~=1 then return end
	local mmm=1000
	if money then mmm=money end
	AddPlayerMoney(mmm)
end

function suicide()
	GetPlayerVehicle():AddModifier( "hp", "= 0" )
end


function OpenEncyclopaedia()
	Journal:ShowAllInEncyclopaedia()
end

function testcheat()
    if	GetComputerName() == "JSINX" 	or GetComputerName() == "ANTON2" 	or
		GetComputerName() == "MIF2000"	or GetComputerName() == "HRRR" 		or
		GetComputerName() == "PHOSGEN" 	or GetComputerName() == "ALEXTG" 	or
		GetComputerName() == "MAIN" 	or GetComputerName() == "POWERPLANT" 	or
		GetComputerName() == "VANO" 	or GetComputerName() == "STAZ" 		then
		return 1
	end
	if anticheat==0 then	
		LOG("---------------------- CHEAT WAS USED --------- ANTICHEAT -----------------")
    	AddFadingMsgId( "fm_cheat_is_allowed" )
    	AddImportantFadingMsgId( "fm_cheat_is_allowed" )
		return 1
 	else
		LOG("---------------------- CHEAT CAN'T BE USED ---- ANTICHEAT -----------------")
    	AddFadingMsgId( "fm_cheat_is_not_allowed" )
    	AddImportantFadingMsgId( "fm_cheat_is_not_allowed" )
    	return 0
 	end
end


