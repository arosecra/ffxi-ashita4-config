local profile = {};
local sets = {
    Blue_Magic = {
        Main = { Name = 'Tizona', AugTrial=1022 },
        Sub = { Name = 'Vampirism', Augment = { [1] = 'STR+7', [2] = 'DMG:+12', [3] = 'INT+9' } },
        Ammo = 'Ghastly Tathlum',
        Head = 'Jhakri Coronal +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Jhakri Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+30' } },
        Waist = 'Yamabuki-no-Obi',
        Legs = 'Jhakri Slops +2',
        Feet = 'Jhakri Pigaches +2',
    },
    FastCast = {
        Ammo = 'Sapience Orb',
        Head = { Name = 'Taeon Chapeau', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = '"Mag. Atk. Bns."+15' } },
        Neck = 'Orunmila\'s Torque',
        Ear1 = 'Enchntr. Earring +1',
        Ear2 = 'Loquac. Earring',
        Body = { Name = 'Taeon Tabard', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = 'Pet: Evasion+23' } },
        Hands = { Name = 'Leyline Gloves', Augment = { [1] = 'Accuracy+14', [2] = '"Mag. Atk. Bns."+13', [3] = '"Fast Cast"+2', [4] = 'Mag. Acc.+13' } },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Epona\'s Ring',
        Back = 'Swith Cape +1',
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = { Name = 'Psycloth Lappas', AugPath='D' },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: DEF+25', [2] = '"Fast Cast"+5', [3] = 'Pet: Damage taken -4%' } },
    },
    TP_MstrMelee = {
        Ammo = 'Ginsen',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Asperity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = 'Apate Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+26' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+8', [2] = '"Dbl.Atk."+3', [3] = '"Triple Atk."+2', [4] = 'DEX+9' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+24', [2] = 'Attack+9', [3] = '"Triple Atk."+4' } },
    },
    Expiacion = {
        Ammo = 'Floestone',
        Head = 'Jhakri Coronal +2',
        Neck = 'Fotia Gorget',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = 'Attack+4' } },
        Ear2 = 'Odr Earring',
        Body = 'Assim. Jubbah +2',
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Apate Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+26' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Jhakri Slops +2',
        Feet = 'Jhakri Pigaches +2',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
};

local settings = {
	Strategy='MstrMelee'
}
local common_profile = gFunc.LoadFile('common/common_logic.lua');
profile.Sets = sets;

profile.OnLoad = function()
    common_profile.OnLoad(sets, gFunc, settings)
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
    common_profile.OnUnload(sets, gFunc, settings)
end

profile.HandleCommand = function(args)
    common_profile.HandleCommand(sets, gFunc, settings)
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
