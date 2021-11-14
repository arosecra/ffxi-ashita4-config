local profile = {};
local sets = {
    Cure = {
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = 'Phys. dmg. taken -3%', [2] = '"Cure" potency +7%' } },
        Neck = 'Orison Locket',
        Ear1 = 'Meili Earring',
        Ear2 = 'Glorious Earring',
        Body = 'Ebers Bliaut +1',
        Hands = 'Theophany Mitts +2',
        Ring1 = 'Sirona\'s Ring',
        Ring2 = 'Metamorph Ring',
        Back = 'Tempered Cape +1',
        Waist = 'Bishop\'s Sash',
        Legs = 'Ebers Pant. +1',
        Feet = 'Theo. Duckbills +2',
    },
    FastCast = {
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = 'Phys. dmg. taken -3%', [2] = '"Cure" potency +7%' } },
        Neck = 'Orison Locket',
        Ear1 = 'Meili Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" potency +7%' } },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Metamorph Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Aya. Cosciales +1',
        Feet = { Name = 'Chironic Slippers', Augment = { [1] = '"Mag. Atk. Bns."+2', [2] = 'Mag. Acc.+15', [3] = '"Fast Cast"+6', [4] = 'DEX+5' } },
    },
    Curse = {
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = 'Phys. dmg. taken -3%', [2] = '"Cure" potency +7%' } },
        Neck = 'Malison Medallion',
        Ear1 = 'Meili Earring',
        Ear2 = 'Glorious Earring',
        Body = 'Ebers Bliaut +1',
        Hands = 'Theophany Mitts +2',
        Ring1 = 'Haoma\'s Ring',
        Ring2 = 'Ephedra Ring',
        Back = 'Tempered Cape +1',
        Waist = 'Bishop\'s Sash',
        Legs = 'Ebers Pant. +1',
        Feet = { Name = 'Gende. Galosh. +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" spellcasting time -4%' } },
    },
    TP_MstrMelee = {
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = 'Phys. dmg. taken -3%', [2] = '"Cure" potency +7%' } },
        Neck = 'Orison Locket',
        Ear1 = 'Meili Earring',
        Ear2 = 'Glorious Earring',
        Body = 'Inyanga Jubbah',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" potency +7%' } },
        Ring1 = 'Inyanga Ring',
        Ring2 = 'Metamorph Ring',
        Back = 'Tempered Cape +1',
        Waist = 'Bishop\'s Sash',
        Legs = 'Aya. Cosciales +1',
        Feet = { Name = 'Gende. Galosh. +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" spellcasting time -4%' } },
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
