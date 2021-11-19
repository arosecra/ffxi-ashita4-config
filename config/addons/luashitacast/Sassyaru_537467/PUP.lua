local profile = {};
local sets = {
    TP_MstrMelee = {
        Main = { Name = 'Condemners', Augment = { [1] = 'Pet: Rng. Acc.+3', [2] = 'Pet: INT+6', [3] = 'Pet: Damage taken -3%', [4] = 'Pet: Accuracy+3' } },
        Range = 'Animator P +1',
        Head = 'Taeon Chapeau',
        Neck = 'Buffoon\'s Collar',
        Ear1 = 'Handler\'s Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Attack+18', [2] = 'Pet: Damage taken -3%', [3] = 'Pet: "Regen"+2', [4] = 'Pet: Rng.Atk.+18' } },
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Rng. Acc.+15', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+15', [4] = 'Pet: Crit.hit rate +4' } },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Visucius\'s Mantle', Augment = { [1] = 'Magic dmg. taken -10%', [2] = 'Pet: R.Acc.+19', [3] = 'Pet: R.Atk.+19', [4] = 'Pet: "Regen"+10', [5] = 'Pet: Acc.+19', [6] = 'Pet: Atk.+19' } },
        Waist = 'Klouskap Sash',
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Rng. Acc.+14', [2] = 'Pet: Damage taken -3%', [3] = 'Pet: Accuracy+14', [4] = 'Pet: Crit.hit rate +4' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: Attack+13', [2] = 'Pet: Crit.hit rate +3', [3] = 'Pet: Damage taken -3%', [4] = 'Pet: Rng.Atk.+13' } },
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
