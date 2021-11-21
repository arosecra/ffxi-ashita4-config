local profile = {};
local sets = {
    FastCast = {
        Head = { Name = 'Vanya Hood', AugPath='D' },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Gersemi Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Phys. dmg. taken -2%', [2] = 'Song spellcasting time -5%' } },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Warp Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Telchine Pigaches', Augment = '"Fast Cast"+5' },
    },
    SongFastCast = {
        Head = { Name = 'Vanya Hood', AugPath='D' },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Gersemi Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Phys. dmg. taken -2%', [2] = 'Song spellcasting time -5%' } },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Warp Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = { Name = 'Gende. Spats +1', Augment = { [1] = 'Phys. dmg. taken -2%', [2] = 'Song spellcasting time -4%' } },
        Feet = { Name = 'Telchine Pigaches', Augment = '"Fast Cast"+5' },
    },
    SongBuff = {
        Head = 'Fili Calot',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Musical Earring',
        Ear2 = 'Gersemi Earring',
        Body = 'Fili Hongreline',
        Hands = 'Fili Manchettes',
        Ring1 = 'Metamorph Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Mag. Acc+20', [2] = 'CHR+20', [3] = 'Magic Damage +20' } },
        Waist = 'Corsette',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +2',
    },
    SongAcc = {
        Head = 'Inyanga Tiara',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Musical Earring',
        Ear2 = 'Gersemi Earring',
        Body = 'Inyanga Jubbah +1',
        Hands = 'Inyanga Dastanas',
        Ring1 = 'Metamorph Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Mag. Acc+20', [2] = 'CHR+20', [3] = 'Magic Damage +20' } },
        Waist = 'Corsette',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Inyanga Crackows',
    },
    TP_MstrMelee = {
        Head = 'Aya. Zucchetto +1',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Musical Earring',
        Ear2 = 'Gersemi Earring',
        Body = { Name = 'Gende. Bliaut +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -4%', [3] = 'Song recast delay -3' } },
        Hands = 'Aya. Manopolas +1',
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Warp Ring',
        Back = 'Pahtli Cape',
        Waist = 'Corsette',
        Legs = 'Aya. Cosciales +2',
        Feet = { Name = 'Gende. Galosh. +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" spellcasting time -5%' } },
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
