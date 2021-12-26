local profile = {};
local sets = {
    FastCast = {
        Main = { Name = 'Solstice', AugPath='D' },
        Sub = 'Chanter\'s Shield',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = { Name = 'Merlinic Hood', Augment = { [1] = '"Fast Cast"+6', [2] = 'Mag. Acc.+6' } },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Handler\'s Earring +1',
        Ear2 = 'Loquac. Earring',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = 'MND+3', [2] = '"Fast Cast"+6', [3] = 'Mag. Acc.+5' } },
        Hands = { Name = 'Merlinic Dastanas', Augment = { [1] = 'STR+5', [2] = '"Mag. Atk. Bns."+10', [3] = '"Fast Cast"+5', [4] = 'Mag. Acc.+11' } },
        Ring1 = 'Kishar Ring',
        Ring2 = 'Prolix Ring',
        Back = { Name = 'Lifestream Cape', Augment = { [1] = 'Geomancy Skill +5', [2] = 'Indi. eff. dur. +20' } },
        Waist = 'Embla Sash',
        Legs = 'Geo. Pants +1',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = 'INT+4', [2] = 'Mag. Acc.+6', [3] = 'Magic burst dmg.+11%', [4] = '"Mag. Atk. Bns."+6' } },
    },
    Geomancy_Magic = {
        Main = 'Idris',
        Range = { Name = 'Dunna', AugPath='A' },
        Head = 'Azimuth Hood',
        Ear1 = 'Fulla Earring',
        Ear2 = 'Gna Earring',
        Body = { Name = 'Bagua Tunic +1', AugTrial=5331 },
        Hands = 'Geo. Mitaines +2',
        Back = { Name = 'Lifestream Cape', Augment = { [1] = 'Geomancy Skill +5', [2] = 'Indi. eff. dur. +20' } },
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
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Ea Hat +1',
        Neck = 'Mizu. Kubikazari',
        Ear1 = 'Barkaro. Earring',
        Ear2 = 'Friomisi Earring',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = 'INT+6', [2] = 'Mag. Acc.+11', [3] = 'Magic burst dmg.+8%', [4] = '"Mag. Atk. Bns."+12' } },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Mujin Band',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +30', [4] = 'INT+20' } },
        Waist = 'Acuity Belt +1',
        Legs = 'Ea Slops +1',
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
        Legs = 'Assid. Pants +1',
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
