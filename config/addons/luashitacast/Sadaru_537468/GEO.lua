local profile = {};
local sets = {
    FastCast = {
        Main = { Name = 'Solstice', AugPath='D' },
        Sub = 'Chanter\'s Shield',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = { Name = 'Merlinic Hood', Augment = { [1] = 'Mag. Acc.+21', [2] = 'CHR+15', [3] = 'Magic burst dmg.+6%', [4] = '"Mag. Atk. Bns."+34' } },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Handler\'s Earring +1',
        Ear2 = 'Loquac. Earring',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = 'INT+6', [2] = 'Mag. Acc.+11', [3] = 'Magic burst dmg.+8%', [4] = '"Mag. Atk. Bns."+12' } },
        Hands = { Name = 'Merlinic Dastanas', Augment = { [1] = 'STR+5', [2] = '"Mag. Atk. Bns."+10', [3] = '"Fast Cast"+5', [4] = 'Mag. Acc.+11' } },
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Prolix Ring',
        Back = { Name = 'Lifestream Cape', Augment = { [1] = 'Indi. eff. dur. +20', [2] = 'Geomancy Skill +5' } },
        Waist = 'Embla Sash',
        Legs = 'Geo. Pants +1',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = 'INT+4', [2] = 'Mag. Acc.+6', [3] = 'Magic burst dmg.+11%', [4] = '"Mag. Atk. Bns."+6' } },
    },
    Geomancy_Magic = {
        Main = 'Idris',
        Sub = 'Culminus',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = 'Azimuth Hood',
        Neck = 'Voltsurge Torque',
        Ear1 = 'Fulla Earring',
        Ear2 = 'Gna Earring',
        Body = { Name = 'Bagua Tunic +1', AugTrial=5331 },
        Hands = 'Geo. Mitaines +2',
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Mujin Band',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +30', [4] = 'INT+20' } },
        Waist = 'Othila Sash',
        Legs = { Name = 'Bagua Pants', AugTrial=5223 },
        Feet = 'Azimuth Gaiters',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    Elemental_Magic = {
        Main = { Name = 'Gada', Augment = { [1] = 'STR+2', [2] = '"Mag. Atk. Bns."+24', [3] = 'Mag. Acc.+22', [4] = '"Cure" potency +3%' } },
        Sub = 'Culminus',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = { Name = 'Merlinic Hood', Augment = { [1] = 'Mag. Acc.+21', [2] = 'CHR+15', [3] = 'Magic burst dmg.+6%', [4] = '"Mag. Atk. Bns."+34' } },
        Neck = 'Mizu. Kubikazari',
        Ear1 = 'Barkaro. Earring',
        Ear2 = 'Friomisi Earring',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = 'INT+6', [2] = 'Mag. Acc.+11', [3] = 'Magic burst dmg.+8%', [4] = '"Mag. Atk. Bns."+12' } },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Mujin Band',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +30', [4] = 'INT+20' } },
        Waist = 'Othila Sash',
        Legs = { Name = 'Merlinic Shalwar', Augment = { [1] = 'Mag. Acc.+13', [2] = 'Accuracy+4', [3] = '"Mag. Atk. Bns."+10', [4] = 'Magic burst dmg.+8%', [5] = 'INT+3' } },
        Feet = 'Jhakri Pigaches +2',
    },
    TP_MstrMelee = {
        Main = 'Idris',
        Sub = 'Culminus',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = { Name = 'Hagondes Hat +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -4%', [3] = 'Mag. Acc.+28' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Handler\'s Earring +1',
        Ear2 = 'Handler\'s Earring',
        Body = 'Jhakri Robe +2',
        Hands = 'Geo. Mitaines +1',
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Defending Ring',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +30', [4] = 'INT+20' } },
        Waist = 'Othila Sash',
        Legs = { Name = 'Hagondes Pants +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Pet: Rng. Acc.+25', [3] = 'Phys. dmg. taken -4%', [4] = 'Pet: Accuracy+25' } },
        Feet = { Name = 'Hag. Sabots +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -4%', [3] = 'Pet: Mag. Acc.+21' } },
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
