local profile = {};
local sets = {
    WeaponSkill = {
        Head = 'Flam. Zucchetto +2',
        Neck = 'Fotia Gorget',
        Ear1 = 'Thrud Earring',
        Ear2 = { Name = 'Kasuga Earring +1', Augment = { [1] = 'Accuracy+15', [2] = 'Weapon skill damage +3%', [3] = 'Mag. Acc.+15' } },
        Body = 'Kasuga Domaru +2',
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
        Ear2 = { Name = 'Kasuga Earring +1', Augment = { [1] = 'Accuracy+15', [2] = 'Weapon skill damage +3%', [3] = 'Mag. Acc.+15' } },
        Body = 'Kasuga Domaru +2',
        Hands = 'Wakido Kote +2',
        Ring1 = 'Apate Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Takaha Mantle', Augment = { [1] = 'STR+1', [2] = '"Store TP"+2', [3] = '"Zanshin"+1' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Wakido Haidate +3',
        Feet = 'Flam. Gambieras +2',
    },
    Dia	= {
        Head = 'Wh. Rarab Cap +1',
        Waist = 'Chaac Belt',
		Hands = { Name = 'Valorous Mitts', Augment = { [1] = 'Pet: AGI+8', [2] = '"Treasure Hunter"+2', [3] = 'Accuracy+1', [4] = 'Mag. Acc.+1', [5] = 'Attack+1', [6] = '"Mag. Atk. Bns."+25' } },
    },
    MidShot = {
        Head = 'Wh. Rarab Cap +1',
        Waist = 'Chaac Belt',
		Hands = { Name = 'Valorous Mitts', Augment = { [1] = 'Pet: AGI+8', [2] = '"Treasure Hunter"+2', [3] = 'Accuracy+1', [4] = 'Mag. Acc.+1', [5] = 'Attack+1', [6] = '"Mag. Atk. Bns."+25' } },
    },
    Provoke = {
        Head = 'Wh. Rarab Cap +1',
        Waist = 'Chaac Belt',
		Hands = { Name = 'Valorous Mitts', Augment = { [1] = 'Pet: AGI+8', [2] = '"Treasure Hunter"+2', [3] = 'Accuracy+1', [4] = 'Mag. Acc.+1', [5] = 'Attack+1', [6] = '"Mag. Atk. Bns."+25' } },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
};

local settings = {
	Strategy='MstrMelee'
}
local common_profile = gFunc.LoadFile('common/common_logic.lua');
profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
    common_profile.OnUnload(sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleCommand = function(args)
    common_profile.HandleCommand(sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleDefault = function()
    common_profile.HandleDefault(sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleAbility = function()
    common_profile.HandleAbility(sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleItem = function()
    common_profile.HandleItem(sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandlePrecast = function()
    common_profile.HandlePrecast(sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleMidcast = function()
    common_profile.HandleMidcast(sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandlePreshot = function()
    common_profile.HandlePreshot(sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleMidshot = function()
    common_profile.HandleMidshot(sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleWeaponskill = function()
    common_profile.HandleWeaponskill(sets, gFunc, gData, gState, gSettings, settings)
end

return profile;
