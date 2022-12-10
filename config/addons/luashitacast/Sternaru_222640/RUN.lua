local profile = {};
profile.Sets = {
    FastCast = {
        Head = 'Rune. Bandeau +2',
        Neck = { Name = 'Unmoving Collar +1', AugPath='A' },
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Tuisto Earring',
        Body = 'Erilaz Surcoat +3',
        Hands = 'Erilaz Gauntlets +2',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Kishar Ring',
        Back = 'Moonbeam Cape',
        Waist = 'Steppe Sash',
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Carmine Greaves +1', AugPath='D' },
    },
    Phalanx = {
        Main = 'Epeolatry',
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Fu. Bandeau +3', AugTrial=5471 },
        Neck = { Name = 'Unmoving Collar +1', AugPath='A' },
        Ear1 = 'Tuisto Earring',
        Ear2 = 'Mimir Earring',
        Body = { Name = 'Herculean Vest', Augment = { [1] = 'Attack+11', [2] = '"Triple Atk."+2', [3] = 'Phalanx +5', [4] = 'VIT+5', [5] = 'Accuracy+11' } },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = '"Mag. Atk. Bns."+20', [2] = 'Mag. Acc.+20', [3] = 'Accuracy+4', [4] = 'Phalanx +3', [5] = 'Attack+4', [6] = 'CHR+8' } },
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Meridian Ring',
        Back = 'Moonbeam Cape',
        Waist = 'Steppe Sash',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = 'Mag. Acc.+18', [2] = '"Mag. Atk. Bns."+28', [3] = 'Accuracy+10', [4] = 'Phalanx +5', [5] = 'Attack+10', [6] = 'Rng.Atk.+27' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'INT+2', [2] = 'Accuracy+12', [3] = 'Phalanx +5', [4] = 'Attack+12', [5] = 'DEX+10' } },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    TP_MstrMelee = {
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Erilaz Galea +3', Priority=2 },
        Neck = 'Warder\'s Charm +1',
        Ear1 = { Name = 'Odnowa Earring', Priority=2 },
        Ear2 = { Name = 'Tuisto Earring', Priority=2 },
        Body = 'Erilaz Surcoat +3',
        Hands = 'Erilaz Gauntlets +2',
        Ring1 = { Name = 'Moonbeam Ring', Priority=2 },
        Ring2 = 'Defending Ring',
        Back = { Name = 'Moonbeam Cape', Priority=2 },
        Waist = { Name = 'Steppe Sash', Priority=2 },
        Legs = 'Eri. Leg Guards +2',
        Feet = 'Erilaz Greaves +2',
    },
    Dimidiation = {
        Ammo = 'Floestone',
        Head = { Name = 'Rune. Bandeau +2', Priority=2 },
        Ear1 = { Name = 'Odnowa Earring', Priority=2 },
        Ear2 = { Name = 'Tuisto Earring', Priority=2 },
        Body = 'Sayadio\'s Kaftan',
        Hands = 'Meg. Gloves +2',
        Ring1 = { Name = 'Moonbeam Ring', Priority=2 },
        Ring2 = 'Rajas Ring',
        Back = { Name = 'Moonbeam Cape', Priority=2 },
        Waist = { Name = 'Steppe Sash', Priority=2 },
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Carmine Greaves +1', AugPath='D', Priority=2 },
    },
    Regen = {
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Rune. Bandeau +2', Priority=2 },
        Neck = { Name = 'Unmoving Collar +1', AugPath='A' },
        Ear1 = { Name = 'Odnowa Earring', Priority=2 },
        Ear2 = { Name = 'Tuisto Earring', Priority=2 },
        Body = { Name = 'Futhark Coat +3', AugTrial=5493, Priority=2 },
        Hands = 'Runeist Mitons',
        Ring1 = { Name = 'Moonbeam Ring', Priority=2 },
        Ring2 = 'Defending Ring',
        Back = { Name = 'Moonbeam Cape', Priority=2 },
        Waist = { Name = 'Steppe Sash', Priority=2 },
        Legs = { Name = 'Futhark Trousers', AugTrial=5228 },
        Feet = { Name = 'Carmine Greaves +1', AugPath='D', Priority=2 },
    }
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