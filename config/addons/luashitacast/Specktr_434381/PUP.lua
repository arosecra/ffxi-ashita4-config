local profile = {};
local sets = {
    FastCast = {
        Head = { Name = 'Taeon Chapeau', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = '"Mag. Atk. Bns."+15' } },
        Neck = 'Orunmila\'s Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Enchntr. Earring +1',
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = 'Pet: Evasion+23' } },
        Hands = 'Foire Dastanas +1',
        Ring1 = 'Prolix Ring',
        Back = 'Swith Cape +1',
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Mag. Evasion+17', [2] = '"Fast Cast"+4', [3] = 'Pet: Damage taken -4%' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: DEF+25', [2] = '"Fast Cast"+5', [3] = 'Pet: Damage taken -4%' } },
    },
    TP_PetOnly = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Rimeice Earring',
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = 'Pet: Evasion+23' } },
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Mag. Evasion+22', [2] = 'Pet: "Regen"+3', [3] = 'Pet: Damage taken -4%' } },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = 'Tali\'ah Sera. +2',
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: DEF+25', [2] = '"Fast Cast"+5', [3] = 'Pet: Damage taken -4%' } },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
	Overdrive = {
        Body = { Name = 'Pitre Tobe +2', AugTrial=5379 },
	},
    WS = {
        Head = 'Tali\'ah Turban +2',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Tali\'ah Manteel +2',
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Begrudging Ring',
        Back = { Name = 'Dispersal Mantle', Augment = { [1] = 'STR+2', [2] = 'Pet: TP Bonus+380', [3] = 'DEX+1' } },
        Waist = 'Klouskap Sash',
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+8', [2] = '"Dbl.Atk."+3', [3] = '"Triple Atk."+2', [4] = 'DEX+9' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+24', [2] = 'Attack+9', [3] = '"Triple Atk."+4' } },
    },
    TP_119PetOnly = {
        Head = { Name = 'Taeon Chapeau', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = '"Mag. Atk. Bns."+15' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Rimeice Earring',
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = 'Pet: Evasion+23' } },
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Mag. Evasion+22', [2] = 'Pet: "Regen"+3', [3] = 'Pet: Damage taken -4%' } },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = 'Tali\'ah Sera. +2',
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: DEF+25', [2] = '"Fast Cast"+5', [3] = 'Pet: Damage taken -4%' } },
    },
    TP_MstrMelee = {
        Head = 'Tali\'ah Turban +2',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Cessance Earring',
        Body = { Name = 'Pitre Tobe +2', AugTrial=5379 },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Klouskap Sash',
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+8', [2] = '"Dbl.Atk."+3', [3] = '"Triple Atk."+2', [4] = 'DEX+9' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+24', [2] = 'Attack+9', [3] = '"Triple Atk."+4' } },
    },
    TP_Overdrive = {
        Head = 'Karagoz Capello +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Rimeice Earring',
        Body = { Name = 'Pitre Tobe +2', AugTrial=5379 },
        Hands = 'Karagoz Guanti +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Dispersal Mantle', Augment = { [1] = 'STR+2', [2] = 'Pet: TP Bonus+380', [3] = 'DEX+1' } },
        Waist = 'Klouskap Sash',
        Legs = 'Kara. Pantaloni +1',
        Feet = { Name = 'Naga Kyahan', AugPath='D' },
    },
    Maneuver = {
        Head = 'Wh. Rarab Cap +1',
        Neck = 'Buffoon\'s Collar',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Rimeice Earring',
        Body = 'Kara. Farsetto +1',
        Hands = 'Foire Dastanas +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Chaac Belt',
        Legs = 'Kara. Pantaloni +1',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Rapid Shot"+3', [2] = '"Treasure Hunter"+1', [3] = 'Accuracy+1', [4] = '"Mag. Atk. Bns."+10', [5] = 'Attack+1', [6] = 'Mag. Acc.+10' } },
    },
    TH = {
        Head = 'Wh. Rarab Cap +1',
        Waist = 'Chaac Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Rapid Shot"+3', [2] = '"Treasure Hunter"+1', [3] = 'Accuracy+1', [4] = '"Mag. Atk. Bns."+10', [5] = 'Attack+1', [6] = 'Mag. Acc.+10' } },
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
end

profile.HandleCommand = function(args)
	common_profile.HandleCommand(args, gFunc, settings)
end

profile.HandleDefault = function()
    common_profile.HandleDefault(sets, gFunc, settings)
end

profile.HandleAbility = function()
    common_profile.HandleAbility(sets, gFunc, settings)
end

profile.HandleItem = function()
    common_profile.HandleItem(sets, gFunc, settings)
end

profile.HandlePrecast = function()
    common_profile.HandlePrecast(sets, gFunc, settings)
end

profile.HandleMidcast = function()
    common_profile.HandleMidcast(sets, gFunc, settings)
end

profile.HandlePreshot = function()
    common_profile.HandlePreshot(sets, gFunc, settings)
end

profile.HandleMidshot = function()
    common_profile.HandleMidshot(sets, gFunc, settings)
end

profile.HandleWeaponskill = function()
    common_profile.HandleWeaponskill(sets, gFunc, settings)
end

return profile;
