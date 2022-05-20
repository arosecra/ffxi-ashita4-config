local profile = {};
local sets = {
    TP_MstrMelee = {
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Souv. Schaller +1', AugPath='D', Priority=2},
        Neck = 'Warder\'s Charm +1',
        Ear1 = { Name = 'Tuisto Earring', Priority=2},
        Ear2 = 'Handler\'s Earring +1',
        Body = { Name = 'Souv. Cuirass +1', AugPath='D', Priority=2},
        Hands = { Name = 'Souv. Handsch. +1', AugPath='D', Priority=2},
        Ring1 = { Name = 'Moonbeam Ring', Priority=2},
        Ring2 = 'Defending Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'VIT+30', [5] = 'Enmity+10' } },
        Waist = 'Isa Belt',
        Legs = { Name = 'Souv. Diechlings +1', AugPath='C', Priority=2},
        Feet = { Name = 'Souveran Schuhs +1', AugPath='C', Priority=2},
    },
    Priwen = {
        Sub = { Name = 'Priwen', AugPath='A' },
    },
    TP_HP = {
        Main = 'Nixxer',
        Sub = { Name = 'Priwen', AugPath='A' },
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Souv. Schaller +1', AugPath='D' },
        Neck = { Name = 'Unmoving Collar +1', AugPath='A' },
        Ear1 = 'Tuisto Earring',
        Ear2 = 'Odnowa Earring',
        Body = 'Rev. Surcoat +2',
        Hands = { Name = 'Souv. Handsch. +1', AugPath='D' },
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Meridian Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'HP+80', [2] = 'Eva.+20', [3] = '"Fast Cast"+10', [4] = 'Mag. Eva.+20' } },
        Waist = 'Steppe Sash',
        Legs = { Name = 'Souv. Diechlings +1', AugPath='C' },
        Feet = { Name = 'Souveran Schuhs +1', AugPath='C' },
    },
    Phalanx = {
        Main = 'Nixxer',
        Sub = { Name = 'Priwen', AugPath='A' },
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Valorous Mask', Augment = { [1] = 'Enmity-3', [2] = 'Phalanx +5', [3] = 'Mag. Acc.+7', [4] = '"Mag. Atk. Bns."+7' } },
        Neck = { Name = 'Unmoving Collar +1', AugPath='A', Priority=2},
        Ear1 = { Name = 'Tuisto Earring', Priority=2 },
        Ear2 = { Name = 'Mimir Earring', Priority=2 },
        Body = { Name = 'Valorous Mail', Augment = { [1] = '"Mag. Atk. Bns."+9', [2] = 'Mag. Acc.+9', [3] = 'Accuracy+34', [4] = 'Phalanx +4', [5] = 'Attack+15', [6] = 'Pet: STR+9' } },
        Hands = { Name = 'Souv. Handsch. +1', AugPath='D', Priority=2},
        Ring1 = { Name = 'Moonbeam Ring', Priority=2 },
        Ring2 = { Name = 'Meridian Ring', Priority=2 },
        Back = { Name = 'Weard Mantle', Augment = { [1] = 'Enmity+3', [2] = 'Phalanx +5', [3] = 'VIT+2', [4] = 'DEX+2' } },
        Waist = { Name = 'Steppe Sash', Priority=2 },
        Legs = { Name = 'Yorium Cuisses', Augment = { [1] = 'Spell interruption rate down -10%', [2] = 'Phalanx +3' } },
        Feet = { Name = 'Souveran Schuhs +1', AugPath='C', Priority=2},
    },
    Aegis = {
        Sub = 'Aegis',
    },
    FastCast = {
        Main = 'Colada',
        Sub = { Name = 'Nibiru Shield', AugPath='B', Priority=2},
        Ammo = 'Incantor Stone',
        Head = { Name = 'Carmine Mask +1', AugPath='D' },
        Neck = 'Voltsurge Torque',
        Ear1 = { Name = 'Tuisto Earring', Priority=3},
        Ear2 = { Name = 'Odnowa Earring', Priority=3},
        Body = { Name = 'Rev. Surcoat +3' , Priority=3},
        Hands = { Name = 'Odyssean Gauntlets', Augment = { [1] = '"Fast Cast"+4', [2] = 'Mag. Acc.+12', [3] = '"Mag. Atk. Bns."+7', [4] = 'AGI+5', [5] = 'Attack+9' } },
        Ring1 = { Name = 'Moonbeam Ring', Priority=3},
        Ring2 = { Name = 'Meridian Ring', Priority=3},
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'HP+80', [2] = 'Eva.+20', [3] = '"Fast Cast"+10', [4] = 'Mag. Eva.+20' }, Priority=2},
        Waist = { Name = 'Steppe Sash', Priority=3},
        Legs = { Name = 'Souv. Diechlings +1', AugPath='C', Priority=2},
        Feet = { Name = 'Carmine Greaves +1' },
    },
    Nixxer = {
        Main = 'Nixxer',
    },
    Protect = {
        Sub = { Name = 'Priwen', AugPath='A' },
    },
    TP_HP = {
        Main = 'Nixxer',
        Sub = { Name = 'Priwen', AugPath='A' },
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Souv. Schaller +1', AugPath='D' },
        Neck = { Name = 'Unmoving Collar +1', AugPath='A' },
        Ear1 = 'Tuisto Earring',
        Ear2 = 'Odnowa Earring',
        Body = { Name = 'Souv. Cuirass +1', AugPath='D' },
        Hands = { Name = 'Souv. Handsch. +1', AugPath='D' },
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Meridian Ring',
        Back = 'Moonbeam Cape',
        Waist = 'Steppe Sash',
        Legs = { Name = 'Souv. Diechlings +1', AugPath='C' },
        Feet = { Name = 'Souveran Schuhs +1', AugPath='C' },
    },
    SIRD = {
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Souv. Schaller +1', AugPath='D', Priority=2 },
        Neck = { Name = 'Unmoving Collar +1', AugPath='A', Priority=2 },
        Ear1 = { Name = 'Tuisto Earring', Priority=2 },
        Ear2 = { Name = 'Nourish. Earring +1', Priority=2 },
        Body = { Name = 'Yorium Cuirass', Augment = { [1] = 'Spell interruption rate down -10%', [2] = 'Phalanx +3' } },
        Hands = { Name = 'Yorium Gauntlets', Augment = 'Spell interruption rate down -10%' },
        Ring1 = { Name = 'Moonbeam Ring', Priority=2 },
        Ring2 = 'Defending Ring',
        Back = { Name = 'Moonbeam Cape', Priority=2 },
        Waist = 'Audumbla Sash',
        Legs = { Name = 'Yorium Cuisses', Augment = { [1] = 'Spell interruption rate down -10%', [2] = 'Phalanx +3' } },
        Feet = { Name = 'Odyssean Greaves', Augment = { [1] = 'Mag. Acc.+7', [2] = 'MND+10', [3] = '"Fast Cast"+4', [4] = '"Mag. Atk. Bns."+21' } },
    },
};

sets.Enhancing_Magic = sets.SIRD;
sets.Cure = sets.SIRD;

local settings = {
	Strategy='MstrMelee',
	IdleMain='Nixxer',
	IdleSub='Aegis'
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
