local profile = {};
local sets = {
    WS = {
        Head = 'Flam. Zucchetto +2',
        Neck = 'Fotia Gorget',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = 'Attack+4' } },
        Ear2 = 'Thrud Earring',
        Body = 'Tartarus Platemail',
        Hands = 'Wakido Kote +2',
        Ring1 = 'Apate Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Smertrios\'s Mantle', Augment = { [1] = 'STR+20', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Wakido Haidate +3',
        Feet = 'Flam. Gambieras +2',
    },
    TP_MstrMelee = {
        Head = 'Flam. Zucchetto +2',
        Neck = 'Asperity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Kasuga Domaru +1',
        Hands = 'Wakido Kote +2',
        Ring1 = 'Apate Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Takaha Mantle', Augment = { [1] = 'STR+1', [2] = '"Store TP"+2', [3] = '"Zanshin"+1' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Wakido Haidate +3',
        Feet = 'Flam. Gambieras +2',
    },
    TH = {
        Head = 'Wh. Rarab Cap +1',
        Waist = 'Chaac Belt',
		Hands = { Name = 'Valorous Mitts', Augment = { [1] = 'Pet: AGI+8', [2] = '"Treasure Hunter"+2', [3] = 'Accuracy+1', [4] = 'Mag. Acc.+1', [5] = 'Attack+1', [6] = '"Mag. Atk. Bns."+25' } },
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
	
	if action.Name == 'Provoke' then
		gFunc.EquipSet(sets.TH);
	end
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
	gFunc.EquipSet(sets.TH)
end

profile.HandleWeaponskill = function()
	gFunc.EquipSet(sets.WS)
end

return profile;
