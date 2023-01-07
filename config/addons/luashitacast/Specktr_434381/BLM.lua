local profile = {};
profile.Sets = {
    FastCast = {
        Main = { Name = 'Grioavolr', Augment = { [1] = 'Blood Pact Dmg.+6', [2] = 'DMG:+8', [3] = 'Pet: Mag. Acc.+24', [4] = 'Pet: "Mag. Atk. Bns."+19' } },
        Sub = 'Niobid Strap',
        Ammo = 'Sapience Orb',
        Head = { Name = 'Psycloth Tiara', AugPath='D' },
        Neck = 'Orunmila\'s Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Enchntr. Earring +1',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Fast Cast"+5', [2] = 'Attack+18', [3] = 'INT+8' } },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = { Name = 'Psycloth Lappas', AugPath='D' },
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = '"Mag. Atk. Bns."+15', [2] = '"Fast Cast"+5', [3] = 'Mag. Acc.+14' } },
    },
    Elemental_Magic = {
        Main = { Name = 'Grioavolr', Augment = { [1] = 'Blood Pact Dmg.+6', [2] = 'DMG:+8', [3] = 'Pet: Mag. Acc.+24', [4] = 'Pet: "Mag. Atk. Bns."+19' } },
        Sub = 'Niobid Strap',
        Ammo = 'Ghastly Tathlum +1',
        Head = { Name = 'Merlinic Hood', Augment = { [1] = '"Mag. Atk. Bns."+24', [2] = 'Mag. Acc.+37' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Barkaro. Earring',
        Ear2 = 'Friomisi Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Locus Ring',
        Ring2 = 'Acumen Ring',
        Back = 'Argocham. Mantle',
        Waist = 'Eschan Stone',
        Legs = { Name = 'Merlinic Shalwar', Augment = { [1] = 'Mag. Acc.+1', [2] = 'MND+8', [3] = 'Magic burst dmg.+11%', [4] = '"Mag. Atk. Bns."+18' } },
        Feet = 'Jhakri Pigaches +2',
    },
    TP_MstrMelee = {
        Main = { Name = 'Grioavolr', Augment = { [1] = 'Blood Pact Dmg.+6', [2] = 'DMG:+8', [3] = 'Pet: Mag. Acc.+24', [4] = 'Pet: "Mag. Atk. Bns."+19' } },
        Sub = 'Niobid Strap',
        Ammo = 'Ghastly Tathlum +1',
        Head = { Name = 'Merlinic Hood', Augment = { [1] = '"Mag. Atk. Bns."+24', [2] = 'Mag. Acc.+37' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Barkaro. Earring',
        Ear2 = 'Friomisi Earring',
        Body = 'Jhakri Robe +2',
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Locus Ring',
        Ring2 = 'Acumen Ring',
        Back = 'Argocham. Mantle',
        Waist = 'Eschan Stone',
        Legs = 'Assid. Pants +1',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = '"Avatar perpetuation cost" -4', [2] = 'Mag. Acc.+18', [3] = '"Refresh"+1', [4] = '"Mag. Atk. Bns."+18', [5] = 'DEX+2' } },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
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