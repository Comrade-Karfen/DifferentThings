-- by MrKarfen
-- Восполнить конструкцию автомобиля игрока
function givefuel()
	if testcheat()~=1 then return end
	GetPlayerVehicle():AddModifier( "fuel", "+ 10000" )
end

-- Восполнить топливо автомобиля игрока
function givehp()
	if testcheat()~=1 then return end
	GetPlayerVehicle():AddModifier( "hp", "+ 10000" )
end

-- Для продажи карт барменами
function DT_CurrentLevelHasMap()
	local LevelName = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLevelName()
	local var = 0
	if LevelName == "r1m1" then
	var = 1
	elseif LevelName == "r1m2" then 
	var = 1
	elseif LevelName == "r1m3" then 
	var = 1
	elseif LevelName == "r1m4" then 
	var = 1
	elseif LevelName == "r1m5" then 
	var = 1
	elseif LevelName == "r1m6" then 
	var = 1
	elseif LevelName == "r2m1" then 
	var = 1
	elseif LevelName == "r2m2" then 
	var = 1
	elseif LevelName == "r3m1" then 
	var = 1
	elseif LevelName == "r3m2" then 
	var = 1
	elseif LevelName == "r4m1" then 
	var = 1
	elseif LevelName == "r4m2" then 
	var = 1
	end
	return var
end

function DT_GetCurrentLevelNumber()
	local LevelName = GET_GLOBAL_OBJECT( "CurrentLevel" ):GetLevelName()
	local LevelNumber = 0
	if LevelName == "r1m1" then
	LevelNumber = 1
	elseif LevelName == "r1m2" then 
	LevelNumber = 2
	elseif LevelName == "r1m3" then 
	LevelNumber = 3
	elseif LevelName == "r1m4" then 
	LevelNumber = 4
	elseif LevelName == "r1m5" then 
	LevelNumber = 5
	elseif LevelName == "r1m6" then 
	LevelNumber = 6
	elseif LevelName == "r2m1" then 
	LevelNumber = 7
	elseif LevelName == "r2m2" then 
	LevelNumber = 8
	elseif LevelName == "r3m1" then 
	LevelNumber = 9
	elseif LevelName == "r3m2" then 
	LevelNumber = 10
	elseif LevelName == "r4m1" then 
	LevelNumber = 11
	elseif LevelName == "r4m2" then 
	LevelNumber = 12
	end
	return LevelNumber
end