local profile = {};
local sets = {
    Blue_Magic2 = {
        Main = 'Naegling',
        Sub = { Name = 'Nibiru Cudgel', AugPath='B' },
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Hashishin Kavuk +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Jhakri Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+30' } },
        Waist = 'Yamabuki-no-Obi',
        Legs = 'Hashishin Tayt +2',
        Feet = 'Hashi. Basmak +2',
    },
    FastCast = {
        Main = 'Naegling',
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
        Head = 'Jhakri Coronal +2',
        Neck = 'Fotia Gorget',
        Ear1 = { Name = 'Moonshade Earring', Augment = { [1] = 'TP Bonus +250', [2] = 'Attack+4' } },
        Ear2 = 'Odr Earring',
        Body = 'Assim. Jubbah +3',
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Apate Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+26' } },
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Hashishin Tayt +2',
        Feet = 'Jhakri Pigaches +2',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    Blue_Magic_Skill = {
        Head = { Name = 'Luh. Keffiyeh +1', AugTrial=5305 },
        Neck = 'Deceiver\'s Torque',
        Ear1 = 'Njordr Earring',
        Body = 'Assim. Jubbah +3',
        Hands = 'Rawhide Gloves',
        Back = { Name = 'Cornflower Cape', Augment = { [1] = 'Accuracy+4', [2] = 'Blue Magic skill +8', [3] = 'MP+29', [4] = 'DEX+1' } },
        Legs = 'Hashishin Tayt +2',
        Feet = { Name = 'Luhlaza Charuqs +1', AugTrial=5309 },
    },
    Blue_Magic_MAB = {
        Main = 'Naegling',
        Sub = { Name = 'Nibiru Cudgel', AugPath='B' },
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Hashishin Kavuk +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Jhakri Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+30' } },
        Waist = 'Yamabuki-no-Obi',
        Legs = 'Hashishin Tayt +2',
        Feet = 'Hashi. Basmak +2',
    },
    Blue_Magic_MACC = {
        Main = 'Naegling',
        Sub = { Name = 'Vampirism', Augment = { [1] = 'STR+7', [2] = 'DMG:+12', [3] = 'INT+9' } },
        Ammo = 'Ginsen',
        Head = 'Jhakri Coronal +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = 'Jhakri Cuffs +2',
        Ring1 = 'Begrudging Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+30' } },
        Waist = 'Eschan Stone',
        Legs = 'Jhakri Slops +2',
        Feet = 'Jhakri Pigaches +2',
    },
    Blue_Magic_Physical = {
        Main = 'Naegling',
        Sub = { Name = 'Vampirism', Augment = { [1] = 'STR+7', [2] = 'DMG:+12', [3] = 'INT+9' } },
        Ammo = 'Ginsen',
        Head = 'Jhakri Coronal +2',
        Neck = 'Deceiver\'s Torque',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Jhakri Robe +2',
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = '"Mag. Atk. Bns."+5', [2] = 'Mag. Acc.+33', [3] = 'Accuracy+9', [4] = 'CHR+3', [5] = 'Attack+9', [6] = '"Refresh"+2' } },
        Ring1 = 'Begrudging Ring',
        Ring2 = 'Petrov Ring',
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = 'Accuracy+20', [2] = '"Dbl.Atk."+10', [3] = 'Attack+20', [4] = 'DEX+26' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = 'Mag. Acc.+19', [2] = 'AGI+12', [3] = '"Mag. Atk. Bns."+33' } },
        Feet = 'Jhakri Pigaches +2',
    },
    TP_MstrDT = {
        Main = 'Naegling',
        Sub = { Name = 'Vampirism', Augment = { [1] = 'STR+7', [2] = 'DMG:+12', [3] = 'INT+9' } },
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Herculean Helm', Augment = { [1] = 'Damage taken-4%', [2] = 'Attack+9', [3] = 'STR+3' } },
        Neck = 'Loricate Torque +1',
        Ear1 = 'Genmei Earring',
        Ear2 = 'Ethereal Earring',
        Body = 'Ayanmo Corazza +2',
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Breath dmg. taken -3%', [3] = 'Phys. dmg. taken -4%' } },
        Ring2 = 'Defending Ring',
        Back = 'Solemnity Cape',
        Waist = 'Flume Belt',
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Damage taken-3%', [2] = 'Attack+27', [3] = 'Accuracy+14' } },
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
    temp = {
        Main = 'Naegling',
    },
    Blue_Magic = {
        Main = 'Naegling',
        Sub = { Name = 'Nibiru Cudgel', AugPath='B' },
        Ammo = { Name = 'Ghastly Tathlum +1', AugPath='A' },
        Head = 'Hashishin Kavuk +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = 'Hashishin Mintan +2',
        Hands = 'Hashi. Bazu. +2',
        Ring1 = 'Acumen Ring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Rosmerta\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+30' } },
        Waist = 'Yamabuki-no-Obi',
        Legs = 'Hashishin Tayt +2',
        Feet = 'Hashi. Basmak +2',
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
    common_profile.OnUnload(sets, gFunc, gData, gState, gSettings, settings)
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
