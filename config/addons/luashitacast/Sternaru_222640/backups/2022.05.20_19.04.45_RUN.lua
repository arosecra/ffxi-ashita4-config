local profile = {};
profile.Sets = {
    FastCast = {
        Head = { Name = 'Rune. Bandeau +2', Priority=2 },
        Neck = { Name = 'Unmoving Collar +1', AugPath='A', Priority=2 },
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Tuisto Earring',
        Body = { Name = 'Runeist Coat', Priority=2 },
        Hands = { Name = 'Runeist Mitons', Priority=2 },
        Ring1 = { Name = 'Moonbeam Ring', Priority=2 },
        Ring2 = { Name = 'Shneddick Ring', Priority=2 },
        Back = { Name = 'Moonbeam Cape', Priority=2 },
        Waist = { Name = 'Steppe Sash', Priority=2 },
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Carmine Greaves +1', AugPath='D', Priority=2 },
    },
    TP_MstrMelee = {
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Rune. Bandeau +2', Priority=2 },
        Neck = { Name = 'Unmoving Collar +1', AugPath='A', Priority=2 },
        Ear1 = { Name = 'Odnowa Earring', Priority=2 },
        Ear2 = { Name = 'Tuisto Earring', Priority=2 },
        Body = 'Sayadio\'s Kaftan',
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Attack+24', [2] = 'Pet: Damage taken -2%', [3] = 'Pet: "Dbl. Atk."+4', [4] = 'Pet: Rng.Atk.+24' } },
        Ring1 = { Name = 'Moonbeam Ring', Priority=2 },
        Ring2 = 'Defending Ring',
        Back = { Name = 'Moonbeam Cape', Priority=2 },
        Waist = { Name = 'Steppe Sash', Priority=2 },
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Carmine Greaves +1', AugPath='D', Priority=2 },
    },
    Phalanx = {
        Ammo = 'Staunch Tathlum',
        Head = 'Rune. Bandeau +2',
        Neck = { Name = 'Unmoving Collar +1', AugPath='A' },
        Ear1 = { Name = 'Tuisto Earring', Priority=2 },
        Ear2 = 'Mimir Earring',
        Body = { Name = 'Herculean Vest', Augment = { [1] = 'Attack+11', [2] = '"Triple Atk."+2', [3] = 'Phalanx +5', [4] = 'VIT+5', [5] = 'Accuracy+11' } },
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Attack+24', [2] = 'Pet: Damage taken -2%', [3] = 'Pet: "Dbl. Atk."+4', [4] = 'Pet: Rng.Atk.+24' } },
        Ring1 = { Name = 'Moonbeam Ring', Priority=2 },
        Ring2 = { Name = 'Meridian Ring', Priority=2 },
        Back = { Name = 'Moonbeam Cape', Priority=2 },
        Waist = { Name = 'Steppe Sash', Priority=2 },
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Carmine Greaves +1', AugPath='D', Priority=2 },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
};

local settings = {
	Strategy='MstrMelee'
}
local common_profile = gFunc.LoadFile('common/common_logic.lua');

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
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