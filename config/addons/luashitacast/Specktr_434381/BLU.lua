local profile = {};
profile.Sets = {
    FastCast = {
        Sub = { Name = 'Vampirism', Augment = { [1] = 'STR+7', [2] = 'DMG:+12', [3] = 'INT+9' } },
        Ammo = 'Sapience Orb',
        Head = { Name = 'Carmine Mask +1', AugPath='D' },
        Body = { Name = 'Taeon Tabard', Augment = '"Fast Cast"+5' },
        Hands = { Name = 'Leyline Gloves', Augment = { [1] = 'Accuracy+14', [2] = '"Mag. Atk. Bns."+13', [3] = '"Fast Cast"+2', [4] = 'Mag. Acc.+13' } },
        Legs = { Name = 'Psycloth Lappas', AugPath='D' },
        Feet = { Name = 'Carmine Greaves +1', AugPath='D' },
        Neck = 'Orunmila\'s Torque',
        Ear1 = 'Enchntr. Earring +1',
        Ear2 = 'Loquac. Earring',
        Ring1 = 'Kishar Ring',
        Ring2 = 'Prolix Ring',
        Back = 'Swith Cape +1',
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
    },
    Expiacion = {
        Ammo = 'Floestone',
        Head = 'Hashishin Kavuk +3',
        Neck = 'Fotia Gorget',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = 'Attack+4' } },
        Ear2 = 'Odr Earring',
        Body = 'Assim. Jubbah +3',
        Hands = 'Hashi. Bazu. +3',
        Ring1 = 'Apate Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+26' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +2',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    Blue_Magic_Skill = {
        Head = { Name = 'Luh. Keffiyeh +1', AugTrial=5305 },
        Neck = 'Deceiver\'s Torque',
        Ear1 = 'Njordr Earring',
        Ear2 = { Name = 'Hashi. Earring +1', Augment = { [1] = 'Accuracy+14', [2] = '"Dbl.Atk."+5', [3] = 'Mag. Acc.+14' } },
        Body = 'Assim. Jubbah +3',
        Hands = 'Rawhide Gloves',
        Back = { Name = 'Cornflower Cape', Augment = { [1] = 'Accuracy+4', [2] = 'Blue Magic skill +8', [3] = 'MP+29', [4] = 'DEX+1' } },
        Legs = 'Hashishin Tayt +3',
        Feet = { Name = 'Luhlaza Charuqs +1', AugTrial=5309 },
    },
    Blue_Magic_MAB = {
        Sub = { Name = 'Nibiru Cudgel', AugPath='B' },
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Hashishin Kavuk +3',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Jhakri Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+30' } },
        Waist = 'Yamabuki-no-Obi',
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +2',
    },
    Blue_Magic_MACC = {
        Sub = { Name = 'Vampirism', Augment = { [1] = 'STR+7', [2] = 'DMG:+12', [3] = 'INT+9' } },
        Ammo = 'Ginsen',
        Head = 'Hashishin Kavuk +3',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = { Name = 'Hashi. Earring +1', Augment = { [1] = 'Accuracy+14', [2] = '"Dbl.Atk."+5', [3] = 'Mag. Acc.+14' } },
        Body = 'Hashishin Mintan +3',
        Hands = 'Hashi. Bazu. +3',
        Ring1 = 'Begrudging Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+30' } },
        Waist = 'Eschan Stone',
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +2',
    },
    Blue_Magic_Physical = {
        Sub = { Name = 'Vampirism', Augment = { [1] = 'STR+7', [2] = 'DMG:+12', [3] = 'INT+9' } },
        Ammo = 'Ginsen',
        Head = 'Hashishin Kavuk +3',
        Neck = 'Deceiver\'s Torque',
        Ear1 = 'Cessance Earring',
        Ear2 = { Name = 'Hashi. Earring +1', Augment = { [1] = 'Accuracy+14', [2] = '"Dbl.Atk."+5', [3] = 'Mag. Acc.+14' } },
        Body = 'Hashishin Mintan +3',
        Hands = 'Hashi. Bazu. +3',
        Ring1 = 'Begrudging Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+26' } },
        Waist = 'Eschan Stone',
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +2',
    },
    TP_MstrDT = {
        Ammo = 'Staunch Tathlum',
        Head = 'Hashishin Kavuk +3',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Njordr Earring',
        Ear2 = { Name = 'Hashi. Earring +1', Augment = { [1] = 'Accuracy+14', [2] = '"Dbl.Atk."+5', [3] = 'Mag. Acc.+14' } },
        Body = 'Hashishin Mintan +3',
        Hands = 'Hashi. Bazu. +3',
        Ring1 = 'Jhakri Ring',
        Ring2 = 'Defending Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+26' } },
        Waist = 'Flume Belt',
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +2',
    },
    TP_MstrMelee = {
        Ammo = 'Ginsen',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Asperity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = { Name = 'Hashi. Earring +1', Augment = { [1] = 'Accuracy+14', [2] = '"Dbl.Atk."+5', [3] = 'Mag. Acc.+14' } },
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = 'Apate Ring',
        Ring2 = 'Epona\'s Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+26' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+8', [2] = '"Dbl.Atk."+3', [3] = '"Triple Atk."+2', [4] = 'DEX+9' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+24', [2] = 'Attack+9', [3] = '"Triple Atk."+4' } },
    },
    Blue_Magic = {
        Sub = { Name = 'Nibiru Cudgel', AugPath='B' },
        Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
        Head = 'Hashishin Kavuk +3',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = 'Hashishin Mintan +3',
        Hands = 'Hashi. Bazu. +3',
        Ring1 = 'Acumen Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+30' } },
        Waist = 'Yamabuki-no-Obi',
        Legs = 'Hashishin Tayt +3',
        Feet = 'Hashi. Basmak +2',
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