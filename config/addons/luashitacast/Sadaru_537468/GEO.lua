local profile = {};
profile.Sets = {
    FastCast = {
        Main = { Name = 'Solstice', AugPath='D' },
        Sub = 'Chanter\'s Shield',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = { Name = 'Merlinic Hood', Augment = { [1] = '"Fast Cast"+6', [2] = 'Mag. Acc.+6' } },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Handler\'s Earring +1',
        Ear2 = 'Loquac. Earring',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = 'MND+3', [2] = '"Fast Cast"+6', [3] = 'Mag. Acc.+5' } },
        Ring1 = 'Kishar Ring',
        Ring2 = 'Prolix Ring',
        Back = { Name = 'Lifestream Cape', Augment = { [1] = 'Geomancy Skill +5', [2] = 'Indi. eff. dur. +20' } },
        Waist = 'Embla Sash',
        Legs = 'Geomancy Pants +2',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = '"Fast Cast"+7', [2] = 'INT+4' } },
    },
    Geomancy_Magic = {
        Main = 'Idris',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = 'Azimuth Hood +3',
        Ear1 = 'Fulla Earring',
        Ear2 = 'Gna Earring',
        Body = { Name = 'Bagua Tunic +1', AugTrial=5331 },
        Hands = 'Geo. Mitaines +2',
        Back = { Name = 'Lifestream Cape', Augment = { [1] = 'Geomancy Skill +5', [2] = 'Indi. eff. dur. +20' } },
        Waist = 'Othila Sash',
        Legs = { Name = 'Bagua Pants', AugTrial=5223 },
        Feet = 'Azimuth Gaiters +2',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    Elemental_Magic = {
        Main = { Name = 'Gada', Augment = { [1] = 'STR+2', [2] = '"Mag. Atk. Bns."+24', [3] = 'Mag. Acc.+22', [4] = '"Cure" potency +3%' } },
        Sub = 'Culminus',
        Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
        Head = 'Ea Hat +1',
        Neck = 'Mizu. Kubikazari',
        Ear1 = 'Barkaro. Earring',
        Ear2 = { Name = 'Azimuth Earring', Augment = 'Mag. Acc.+10' },
        Body = 'Azimuth Coat +3',
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Mujin Band',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +30', [4] = 'INT+20' } },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Azimuth Tights +3',
        Feet = 'Jhakri Pigaches +2',
    },
    TP_MstrMelee = {
        Main = 'Idris',
        Sub = 'Culminus',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = 'Azimuth Hood +3',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Handler\'s Earring +1',
        Ear2 = 'Handler\'s Earring',
        Body = 'Azimuth Coat +3',
        Hands = { Name = 'Bagua Mitaines +3', AugTrial=5514 },
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Defending Ring',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +30', [4] = 'INT+20' } },
        Waist = 'Othila Sash',
        Legs = 'Assid. Pants +1',
        Feet = 'Azimuth Gaiters +2',
    },
    Aspir = {
        Main = 'Idris',
        Sub = 'Culminus',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = { Name = 'Bagua Galero', AugTrial=5220 },
        Neck = 'Erra Pendant',
        Ear1 = 'Barkaro. Earring',
        Ear2 = { Name = 'Azimuth Earring', Augment = 'Mag. Acc.+10' },
        Body = 'Geomancy Tunic +2',
        Hands = { Name = 'Bagua Mitaines +3', AugTrial=5514 },
        Ring1 = 'Kishar Ring',
        Ring2 = 'Jhakri Ring',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +30', [4] = 'INT+20' } },
        Waist = 'Othila Sash',
        Legs = 'Azimuth Tights +3',
        Feet = 'Azimuth Gaiters +2',
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