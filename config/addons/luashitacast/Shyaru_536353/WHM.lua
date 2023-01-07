local profile = {};
profile.Sets = {
    Cure = {
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = '"Cure" potency +7%', [2] = 'Phys. dmg. taken -3%' } },
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
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = '"Cure" potency +7%', [2] = 'Phys. dmg. taken -3%' } },
        Neck = 'Orison Locket',
        Ear1 = 'Meili Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" potency +7%' } },
        Ring1 = 'Kishar Ring',
        Ring2 = 'Metamorph Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Chironic Slippers', Augment = { [1] = '"Mag. Atk. Bns."+2', [2] = 'Mag. Acc.+15', [3] = '"Fast Cast"+6', [4] = 'DEX+5' } },
    },
    Dispel = {
        Head = 'Aya. Zucchetto +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Gwati Earring',
        Ear2 = 'Glorious Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = 'Aya. Manopolas +1',
        Ring1 = 'Metamorph Ring',
        Ring2 = 'Inyanga Ring',
        Back = { Name = 'Alaunus\'s Cape', Augment = { [1] = '"Cure" potency +10%', [2] = 'Mag. Acc+20', [3] = 'MND+30', [4] = 'Magic Damage +20' } },
        Waist = 'Bishop\'s Sash',
        Legs = 'Aya. Cosciales +2',
        Feet = 'Theo. Duckbills +2',
    },
    Enfeebling_Magic = {
        Head = 'Aya. Zucchetto +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Gwati Earring',
        Ear2 = 'Glorious Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = 'Aya. Manopolas +1',
        Ring1 = 'Metamorph Ring',
        Ring2 = 'Inyanga Ring',
        Back = { Name = 'Alaunus\'s Cape', Augment = { [1] = '"Cure" potency +10%', [2] = 'Mag. Acc+20', [3] = 'MND+30', [4] = 'Magic Damage +20' } },
        Waist = 'Bishop\'s Sash',
        Legs = 'Aya. Cosciales +2',
        Feet = 'Theo. Duckbills +2',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    Curse = {
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = '"Cure" potency +7%', [2] = 'Phys. dmg. taken -3%' } },
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
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = '"Cure" potency +7%', [2] = 'Phys. dmg. taken -3%' } },
        Neck = 'Orison Locket',
        Ear1 = 'Meili Earring',
        Ear2 = 'Glorious Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" potency +7%' } },
        Ring1 = 'Inyanga Ring',
        Ring2 = 'Metamorph Ring',
        Back = 'Tempered Cape +1',
        Waist = 'Bishop\'s Sash',
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Gende. Galosh. +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" spellcasting time -4%' } },
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