local profile = {};
local sets = {
    WS = {
        Head = 'Flam. Zucchetto +2',
        Neck = 'Fotia Gorget',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'Attack+4', [2] = 'TP Bonus +250' } },
        Ear2 = 'Thrud Earring',
        Body = 'Tartarus Platemail',
        Hands = 'Wakido Kote +2',
        Ring1 = 'Apate Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Smertrios\'s Mantle', Augment = { [1] = 'STR+20', [2] = 'Weapon skill damage +10%', [3] = 'Attack+20', [4] = 'Accuracy+20' } },
        Waist = 'Fotia Belt',
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
