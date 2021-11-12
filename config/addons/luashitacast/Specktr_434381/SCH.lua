local profile = {};
local sets = {
    TH = {
        Head = 'Wh. Rarab Cap +1',
        Waist = 'Chaac Belt',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
};

local Settings = {
	Strategy='MstrMelee'
}

profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
	if player.IsMoving then
		gFunc.EquipSet(sets.Moving)
	else
		gFunc.EquipSet('TP_' .. Settings.Strategy);
	end
end

profile.HandleAbility = function()
	local action = gData.GetAction();
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
	local action = gData.GetAction();
	if(action.Skill == 'Enfeebling Magic') then
		if string.match(action.Name, 'Dia') then
			gFunc.EquipSet(sets.TH);
		end
	end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	gFunc.EquipSet(sets.WS)
end

return profile;
