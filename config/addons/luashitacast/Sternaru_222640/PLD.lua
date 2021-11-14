local profile = {};
local sets = {
    FastCast = {
        Sub = { Name = 'Nibiru Shield', AugPath='B' },
        Ammo = 'Incantor Stone',
        Head = { Name = 'Carmine Mask +1', AugPath='D' },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Tuisto Earring',
        Ear2 = 'Odnowa Earring',
        Body = 'Rev. Surcoat +2',
        Hands = { Name = 'Odyssean Gauntlets', Augment = { [1] = '"Fast Cast"+4', [2] = 'Mag. Acc.+12', [3] = '"Mag. Atk. Bns."+7', [4] = 'AGI+5', [5] = 'Attack+9' } },
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Meridian Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'VIT+30', [5] = 'Enmity+10' } },
        Waist = 'Steppe Sash',
        Legs = { Name = 'Souv. Diechlings +1', AugPath='C' },
        Feet = { Name = 'Odyssean Greaves', Augment = { [1] = 'Mag. Acc.+7', [2] = 'MND+10', [3] = '"Fast Cast"+4', [4] = '"Mag. Atk. Bns."+21' } },
    },
    TP_MstrMelee = {
        Sub = { Name = 'Aegis', AugTrial=4448 },
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Souv. Schaller +1', AugPath='D' },
        Neck = 'Diemer Gorget',
        Ear1 = 'Handler\'s Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = { Name = 'Souv. Cuirass +1', AugPath='D' },
        Hands = { Name = 'Souv. Handsch. +1', AugPath='D' },
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Defending Ring',
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'VIT+30', [5] = 'Enmity+10' } },
        Waist = 'Isa Belt',
        Legs = { Name = 'Souv. Diechlings +1', AugPath='C' },
        Feet = { Name = 'Souveran Schuhs +1', AugPath='C' },
    },
    Phalanx = {
        Sub = { Name = 'Priwen', AugPath='A' },
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Yorium Barbuta', Augment = { [1] = 'Phalanx +3', [2] = 'Enmity+10' } },
        Neck = 'Dualism Collar +1',
        Ear1 = 'Tuisto Earring',
        Ear2 = 'Odnowa Earring',
        Body = { Name = 'Valorous Mail', Augment = { [1] = '"Mag. Atk. Bns."+9', [2] = 'Mag. Acc.+9', [3] = 'Accuracy+34', [4] = 'Phalanx +4', [5] = 'Attack+15', [6] = 'Pet: STR+9' } },
        Hands = { Name = 'Souv. Handsch. +1', AugPath='D' },
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Meridian Ring',
        Back = { Name = 'Weard Mantle', Augment = { [1] = 'Enmity+3', [2] = 'Phalanx +3', [3] = 'VIT+1', [4] = 'DEX+3' } },
        Waist = 'Steppe Sash',
        Legs = { Name = 'Yorium Cuisses', Augment = 'Phalanx +3' },
        Feet = { Name = 'Souveran Schuhs +1', AugPath='C' },
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
