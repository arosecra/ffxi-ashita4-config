local profile = {};
local sets = {
    TP_PetOnly = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Heyoka Harness',
        Hands = { Name = 'Rao Kote +1', AugPath='C' },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = { Name = 'Rao Haidate +1', AugPath='C' },
        Feet = { Name = 'Rao Sune-Ate +1', AugPath='C' },
    },
    TP_119PetOnly = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Heyoka Harness',
        Hands = { Name = 'Rao Kote +1', AugPath='C' },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = { Name = 'Rao Haidate +1', AugPath='C' },
        Feet = { Name = 'Rao Sune-Ate +1', AugPath='C' },
    },
    TP_MstrMelee = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Heyoka Harness',
        Hands = { Name = 'Rao Kote +1', AugPath='C' },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = { Name = 'Rao Haidate +1', AugPath='C' },
        Feet = { Name = 'Rao Sune-Ate +1', AugPath='C' },
    },
    TP_MstrDT = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Heyoka Harness',
        Hands = { Name = 'Rao Kote +1', AugPath='C' },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = { Name = 'Rao Haidate +1', AugPath='C' },
        Feet = { Name = 'Rao Sune-Ate +1', AugPath='C' },
    },
    TP_Overdrive = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Neck = 'Shepherd\'s Chain',
        Ear1 = 'Rimeice Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Heyoka Harness',
        Hands = { Name = 'Rao Kote +1', AugPath='C' },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Overbearing Ring',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: "Regen"+10', [4] = 'Pet: Acc.+20', [5] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = { Name = 'Rao Haidate +1', AugPath='C' },
        Feet = { Name = 'Rao Sune-Ate +1', AugPath='C' },
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
end

profile.HandleCommand = function(args)
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
