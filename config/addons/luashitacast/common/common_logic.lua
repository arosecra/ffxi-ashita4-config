require('common')
local common_logic = {};

common_logic.OnLoad = function(gSettings, gFunc, settings)
    gSettings.AllowAddSet = true;
end

common_logic.OnUnload = function(sets, gFunc, gData, gState, gSettings, settings)
end

common_logic.HandleCommand = function(args, gFunc, Settings)
	print(args[1])
	if (args[1] == 'setvar') then
        Settings[args[2]] = args[3]
		print('setting ' .. args[2] .. ' to ' .. args[3])
    end
end

common_logic.HandleDefault = function(sets, gFunc, gData, gState, gSettings, settings)
    local player = gData.GetPlayer();
	
	local petAction = gState.PetAction;
    if (petAction ~= nil) then
		print("Pet Action in default")
		print(petAction.Id)
	end
	
	if player.IsMoving then
		gFunc.EquipSet(sets.Moving)
	else
		gFunc.EquipSet('TP_' .. settings.Strategy);
	end
end

common_logic.HandleAbility = function(sets, gFunc, gData, gState, gSettings, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	local actionFamily = actionName;
	
	local petAction = gState.PetAction;
    if (petAction ~= nil) then
		print("Pet Action in ability")
		print(petAction.Id)
		print(petAction.ActionType)
	end
	
	if string.match(actionName, "_Roll") then
		actionFamily = "Phantom_Roll"
	elseif string.match(actionName, '_Maneuver') then
		actionFamily = "Maneuver"
	end
	--		print(actionSkill)
	--		print(actionType)
	--print(actionName)
	--print(actionFamily)
	
	if sets[actionName] ~= nil then
		gFunc.EquipSet(sets[actionName]);
	elseif sets[actionFamily] ~= nil then
		gFunc.EquipSet(sets[actionFamily]);
	end
end

common_logic.HandleItem = function(sets, gFunc, gData, gState, gSettings, settings)
end

common_logic.HandlePrecast = function(sets, gFunc, gData, gState, gSettings, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	local actionType = action.ActionType:gsub("%s+", "_");
	local actionSkill = action.Skill:gsub("%s+", "_");
	if actionSkill == 'Singing' and sets.SongFastCast ~= nil then
		gFunc.EquipSet(sets.SongFastCast)	
	elseif sets.FastCast ~= nil then
		gFunc.EquipSet(sets.FastCast)
	end
end

common_logic.HandleMidcast = function(sets, gFunc, gData, gState, gSettings, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	local actionType = action.ActionType:gsub("%s+", "_");
	local actionSkill = action.Skill:gsub("%s+", "_");
	local actionFamily = actionName;
	
	
	--local petAction = gData.GetPetAction();
    --if (petAction ~= nil) then
	--	print("Pet Action in midcast")
	--	print(action.Name)
	--	print(petAction.Id)
	--	print(petAction.Name)
	--	print(petAction.Type)
	--	print(petAction.ActionType)
	--end
	
	local petAction = gData.GetPetAction();
    if (petAction ~= nil) then
		--print(petAction.Name)
        
	else
		if actionSkill == 'Singing' then
			if actionName == 'Pining_Nocturne' or
			   string.match(actionName, "Foe_Requiem") or
			   string.match(actionName, "Elegy") or
			   actionName == 'Magic_Finale' or
			   string.match(actionName, "Threnody") then
				actionFamily = 'SongAcc'
			else
				actionFamily = 'SongBuff'
			end
		end
		
		if sets[actionName] ~= nil then
			gFunc.EquipSet(sets[actionName]);
		elseif sets[actionFamily] ~= nil then
			gFunc.EquipSet(sets[actionFamily])
		elseif sets[actionSkill] ~= nil then
			gFunc.EquipSet(sets[actionSkill]);
		end
	end

			--print(actionSkill)
			--print(actionType)
end

common_logic.HandlePreshot = function(sets, gFunc, gData, gState, gSettings, settings)
	if sets.PreShot ~= nil then
		gFunc.EquipSet(sets.PreShot)
	end
end

common_logic.HandleMidshot = function(sets, gFunc, gData, gState, gSettings, settings)
	if sets.MidShot ~= nil then
		gFunc.EquipSet(sets.MidShot)
	end
end

common_logic.HandleWeaponskill = function(sets, gFunc, gData, gState, gSettings, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	local actionType = action.ActionType:gsub("%s+", "_");
	if sets[actionName] ~= nil then
		gFunc.EquipSet(sets[actionName]);
	elseif sets[actionType] ~= nil then
		gFunc.EquipSet(sets[actionType]);
	end
end

return common_logic;
