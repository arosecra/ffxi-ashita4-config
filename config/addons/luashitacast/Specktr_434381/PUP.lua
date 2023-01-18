local profile = {};
profile.Sets = {
    FastCast = {
        Head = { Name = 'Taeon Chapeau', Augment = '"Fast Cast"+5' },
        Body = { Name = 'Taeon Tabard', Augment = { '"Fast Cast"+5'} },
        Hands = { Name = 'Taeon Gloves', Augment = '"Fast Cast"+5' },
        Legs = { Name = 'Taeon Tights', Augment = '"Fast Cast"+5' },
        Feet = { Name = 'Taeon Boots', Augment = '"Fast Cast"+5' },
        Neck = 'Orunmila\'s Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Enchntr. Earring +1',
        Ring1 = 'Kishar Ring',
        Ring2 = 'Prolix Ring',
        Back = 'Swith Cape +1',
    },
    Overdrive = {
        Body = 'Pitre Tobe +3',
    },
    TP_PetOnly = {
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = 'Pet: Evasion+23' } },
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Rng. Acc.+23', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+23', [4] = 'Pet: "Dbl. Atk."+5' } },
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Rng. Acc.+23', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+23', [4] = 'Pet: "Dbl. Atk."+5' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: Rng. Acc.+24', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+24', [4] = 'Pet: "Dbl. Atk."+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Karagoz Earring',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
    },
    TP_PetMelee = {
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Range = 'Animator P +1',
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = 'Pitre Tobe +3',
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Rng. Acc.+23', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+23', [4] = 'Pet: "Dbl. Atk."+5' } },
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Rng. Acc.+23', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+23', [4] = 'Pet: "Dbl. Atk."+5' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: Rng. Acc.+24', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+24', [4] = 'Pet: "Dbl. Atk."+5' } },
        Neck = 'Shulmanu Collar',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Karagoz Earring',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Klouskap Sash',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    WS = {
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Head = 'Tali\'ah Turban +2',
        Neck = 'Shulmanu Collar',
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
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Head = { Name = 'Taeon Chapeau', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = '"Mag. Atk. Bns."+15' } },
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = 'Pet: Evasion+23' } },
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Rng. Acc.+23', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+23', [4] = 'Pet: "Dbl. Atk."+5' } },
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Rng. Acc.+23', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+23', [4] = 'Pet: "Dbl. Atk."+5' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: Rng. Acc.+24', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+24', [4] = 'Pet: "Dbl. Atk."+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Karagoz Earring',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
    },
    Dia = {
        Head = 'Wh. Rarab Cap +1',
        Waist = 'Chaac Belt',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Rapid Shot"+3', [2] = '"Treasure Hunter"+1', [3] = 'Accuracy+1', [4] = '"Mag. Atk. Bns."+10', [5] = 'Attack+1', [6] = 'Mag. Acc.+10' } },
    },
    Maneuver = {
        Main = { Name = 'Midnights', AugPath='D' },
        Neck = 'Buffoon\'s Collar',
        Ear2 = 'Karagoz Earring',
        Body = 'Kara. Farsetto +2',
        Hands = 'Foire Dastanas +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
    },
    TP_MstrMelee = {
        Main = { Name = 'Xiucoatl', AugPath='C' },
        Head = 'Tali\'ah Turban +2',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Karagoz Earring',
        Body = 'Pitre Tobe +3',
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Klouskap Sash',
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+8', [2] = '"Dbl.Atk."+3', [3] = '"Triple Atk."+2', [4] = 'DEX+9' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+24', [2] = 'Attack+9', [3] = '"Triple Atk."+4' } },
    },
};

profile.Packer = {
};

local settings = {
	Strategy='MstrMelee'
}
local common_profile = gFunc.LoadFile('common/common_logic.lua');

profile.OnLoad = function()
    common_profile.OnLoad(gSettings, gFunc, settings)
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
	common_profile.HandleCommand(args, gFunc, settings)
end

profile.HandleDefault = function()
    common_profile.HandleDefault(profile.Sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleAbility = function()
    common_profile.HandleAbility(profile.Sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleItem = function()
    common_profile.HandleItem(profile.Sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandlePrecast = function()
    common_profile.HandlePrecast(profile.Sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleMidcast = function()
    common_profile.HandleMidcast(profile.Sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandlePreshot = function()
    common_profile.HandlePreshot(profile.Sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleMidshot = function()
    common_profile.HandleMidshot(profile.Sets, gFunc, gData, gState, gSettings, settings)
end

profile.HandleWeaponskill = function()
    common_profile.HandleWeaponskill(profile.Sets, gFunc, gData, gState, gSettings, settings)
end

return profile;