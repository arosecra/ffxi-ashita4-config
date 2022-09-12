local profile = {};
local sets = {
    TP_MstrDT = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Attack+22', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Dbl. Atk."+3', [4] = 'Pet: Rng.Atk.+22' } },
        Hands = { Name = 'Rao Kote +1', AugPath='C' },
        Legs = { Name = 'Rao Haidate +1', AugPath='C' },
        Feet = { Name = 'Rao Sune-Ate +1', AugPath='C' },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
    },
    TP_119PetOnly = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Attack+22', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Dbl. Atk."+3', [4] = 'Pet: Rng.Atk.+22' } },
        Hands = { Name = 'Rao Kote +1', AugPath='C' },
        Legs = { Name = 'Rao Haidate +1', AugPath='C' },
        Feet = { Name = 'Rao Sune-Ate +1', AugPath='C' },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    TP_PetMelee = {
        Range = 'Animator P +1',
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = 'Pitre Tobe +3',
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Attack+24', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Dbl. Atk."+4', [4] = 'Pet: Rng.Atk.+24' } },
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Rng. Acc.+20', [2] = 'Pet: Damage taken -3%', [3] = 'Pet: Accuracy+20', [4] = 'Pet: "Dbl. Atk."+5' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: Rng. Acc.+22', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+22', [4] = 'Pet: "Dbl. Atk."+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Klouskap Sash',
    },
    TP_PetOnly = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Attack+22', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Dbl. Atk."+3', [4] = 'Pet: Rng.Atk.+22' } },
        Hands = { Name = 'Rao Kote +1', AugPath='C' },
        Legs = { Name = 'Rao Haidate +1', AugPath='C' },
        Feet = { Name = 'Rao Sune-Ate +1', AugPath='C' },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
    },
    TP_Overdrive = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Attack+22', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Dbl. Atk."+3', [4] = 'Pet: Rng.Atk.+22' } },
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Attack+24', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Dbl. Atk."+4', [4] = 'Pet: Rng.Atk.+24' } },
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Rng. Acc.+20', [2] = 'Pet: Damage taken -3%', [3] = 'Pet: Accuracy+20', [4] = 'Pet: "Dbl. Atk."+5' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: Rng. Acc.+22', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+22', [4] = 'Pet: "Dbl. Atk."+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
    },
    TP_MstrMelee = {
        Range = 'Animator P +1',
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Attack+22', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Dbl. Atk."+3', [4] = 'Pet: Rng.Atk.+22' } },
        Hands = { Name = 'Rao Kote +1', AugPath='C' },
        Legs = { Name = 'Rao Haidate +1', AugPath='C' },
        Feet = { Name = 'Rao Sune-Ate +1', AugPath='C' },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
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
