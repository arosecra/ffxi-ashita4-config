local common_logic = {};

common_logic.OnLoad = function(gSettings, gFunc, settings)
    gSettings.AllowAddSet = true;
end

common_logic.OnUnload = function(sets, gFunc, settings)
end

common_logic.HandleCommand = function(args, gFunc, Settings)
end

common_logic.HandleDefault = function(sets, gFunc, settings)
    local player = gData.GetPlayer();
	if player.IsMoving then
		gFunc.EquipSet(sets.Moving)
	else
		gFunc.EquipSet('TP_' .. settings.Strategy);
	end
end

common_logic.HandleAbility = function(sets, gFunc, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	if sets[action.Name] ~= nil then
		gFunc.EquipSet(sets[actionName]);
	elseif string.match(actionName, '_Maneuver') then
		gFunc.EquipSet(sets.Maneuver);
	end
end

common_logic.HandleItem = function(sets, gFunc, settings)
end

common_logic.HandlePrecast = function(sets, gFunc, settings)
	if sets.FastCast ~= nil then
		gFunc.EquipSet(sets.FastCast)
	end
end

common_logic.HandleMidcast = function(sets, gFunc, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	local actionType = action.ActionType:gsub("%s+", "_");
	local actionSkill = action.Skill:gsub("%s+", "_");
	if sets[actionSkill] ~= nil then
		gFunc.EquipSet(sets[action.Skill]);
	elseif sets[actionName] ~= nil then
		gFunc.EquipSet(sets[action.Name]);
	end
	
end

common_logic.HandlePreshot = function(sets, gFunc, settings)
	if sets.PreShot ~= nil then
		gFunc.EquipSet(sets.PreShot)
	end
end

common_logic.HandleMidshot = function(sets, gFunc, settings)
	if sets.MidShot ~= nil then
		gFunc.EquipSet(sets.MidShot)
	end
end

common_logic.HandleWeaponskill = function(sets, gFunc, settings)
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
