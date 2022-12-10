local profile = {};
local sets = {
    FastCast = {
        Sub = 'Chanter\'s Shield',
        Head = { Name = 'Merlinic Hood', Augment = { [1] = '"Fast Cast"+6', [2] = 'Mag. Acc.+6' } },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Barkaro. Earring',
        Ear2 = 'Loquac. Earring',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = 'MND+3', [2] = '"Fast Cast"+6', [3] = 'Mag. Acc.+5' } },
        Hands = { Name = 'Merlinic Dastanas', Augment = { [1] = 'STR+5', [2] = '"Mag. Atk. Bns."+10', [3] = '"Fast Cast"+5', [4] = 'Mag. Acc.+11' } },
        Ring1 = 'Kishar Ring',
        Ring2 = 'Prolix Ring',
        Waist = 'Embla Sash',
        Feet = 'Jhakri Pigaches +2',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    TP_MstrMelee = {
        Main = { Name = 'Gada', Augment = { [1] = 'STR+2', [2] = '"Mag. Atk. Bns."+24', [3] = 'Mag. Acc.+22', [4] = '"Cure" potency +3%' } },
        Sub = 'Culminus',
        Head = 'Jhakri Coronal',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Barkaro. Earring',
        Ear2 = 'Friomisi Earring',
        Body = 'Jhakri Robe +2',
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Shneddick Ring',
        Back = 'Nexus Cape',
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Assid. Pants +1',
        Feet = 'Jhakri Pigaches +2',
    },
    Elemental_Magic = {
        Main = { Name = 'Gada', Augment = { [1] = 'STR+2', [2] = '"Mag. Atk. Bns."+24', [3] = 'Mag. Acc.+22', [4] = '"Cure" potency +3%' } },
        Sub = 'Culminus',
        Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
        Head = 'Ea Hat +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Barkaro. Earring',
        Ear2 = 'Friomisi Earring',
        Body = 'Ea Houppe. +1',
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Mujin Band',
        Back = 'Nexus Cape',
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Ea Slops +1',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = 'INT+4', [2] = 'Mag. Acc.+6', [3] = 'Magic burst dmg.+11%', [4] = '"Mag. Atk. Bns."+6' } },
    },
    Aspir = {
        Main = { Name = 'Gada', Augment = { [1] = 'STR+2', [2] = '"Mag. Atk. Bns."+24', [3] = 'Mag. Acc.+22', [4] = '"Cure" potency +3%' } },
        Sub = 'Culminus',
        Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
        Head = 'Ea Hat +1',
        Neck = 'Erra Pendant',
        Ear1 = 'Barkaro. Earring',
        Ear2 = 'Friomisi Earring',
        Body = 'Jhakri Robe +2',
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Mallquis Ring',
        Ring2 = 'Jhakri Ring',
        Back = 'Nexus Cape',
        Waist = 'Fucho-no-Obi',
        Legs = 'Ea Slops +1',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = 'INT+4', [2] = 'Mag. Acc.+6', [3] = 'Magic burst dmg.+11%', [4] = '"Mag. Atk. Bns."+6' } },
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