local profile = {};
local sets = {
    TP_MstrMelee = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Attack+18', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Regen"+3', [4] = 'Pet: Rng.Atk.+18' } },
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Rng. Acc.+15', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+15', [4] = 'Pet: "Dbl. Atk."+2' } },
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Rng. Acc.+14', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+14', [4] = 'Pet: "Regen"+3' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: Attack+17', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Regen"+3', [4] = 'Pet: Rng.Atk.+17' } },
        Range = 'Animator P +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Handler\'s Earring +1',
        Ear2 = { Name = 'Kara. Earring +1', Augment = { [1] = 'Accuracy+12', [2] = '"Store TP"+4', [3] = 'Mag. Acc.+12' } },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+19', [2] = 'Pet: R.Atk.+19', [3] = 'Pet: Haste+10', [4] = 'Pet: Acc.+19', [5] = 'Pet: Atk.+19' } },
        Waist = 'Klouskap Sash',
    },
    Maneuver = {
        Neck = 'Buffoon\'s Collar',
        Ear2 = 'Karagoz Earring',
        Body = 'Kara. Farsetto +1',
        Hands = 'Foire Dastanas +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+19', [2] = 'Pet: R.Atk.+19', [3] = 'Pet: Haste+10', [4] = 'Pet: Acc.+19', [5] = 'Pet: Atk.+19' } },
    },
    TP_PetMelee = {
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Body = 'Pitre Tobe +3',
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Rng. Acc.+15', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+15', [4] = 'Pet: "Dbl. Atk."+2' } },
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Rng. Acc.+14', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+14', [4] = 'Pet: "Regen"+3' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: Attack+17', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: "Regen"+3', [4] = 'Pet: Rng.Atk.+17' } },
        Range = 'Animator P +1',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Handler\'s Earring +1',
        Ear2 = { Name = 'Kara. Earring +1', Augment = { [1] = 'Accuracy+12', [2] = '"Store TP"+4', [3] = 'Mag. Acc.+12' } },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+19', [2] = 'Pet: R.Atk.+19', [3] = 'Pet: Haste+10', [4] = 'Pet: Acc.+19', [5] = 'Pet: Atk.+19' } },
        Waist = 'Klouskap Sash',
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