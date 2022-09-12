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
        Ring2 = 'Kishar Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Aya. Cosciales +2',
        Feet = 'Fili Cothurnes +2',
    },
    SongFastCast = {
        Head = { Name = 'Vanya Hood', AugPath='D' },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Gersemi Earring',
        Body = 'Inyanga Jubbah +2',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Phys. dmg. taken -2%', [2] = 'Song spellcasting time -5%' } },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = { Name = 'Gende. Spats +1', Augment = { [1] = 'Phys. dmg. taken -2%', [2] = 'Song spellcasting time -4%' } },
        Feet = 'Fili Cothurnes +2',
    },
    SongBuff = {
        Head = 'Fili Calot +2',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Musical Earring',
        Ear2 = 'Gersemi Earring',
        Body = 'Fili Hongreline +2',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Metamorph Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Mag. Acc+20', [2] = 'CHR+20', [3] = 'Magic Damage +20' } },
        Waist = 'Corsette',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +2',
    },
    SongAcc = {
        Head = 'Fili Calot +2',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Musical Earring',
        Ear2 = 'Gersemi Earring',
        Body = 'Fili Hongreline +2',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Metamorph Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Mag. Acc+20', [2] = 'CHR+20', [3] = 'Magic Damage +20' } },
        Waist = 'Corsette',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Fili Cothurnes +2',
    },
    TP_MstrMelee = {
        Head = 'Fili Calot +2',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Musical Earring',
        Ear2 = 'Gersemi Earring',
        Body = 'Fili Hongreline +2',
        Hands = 'Fili Manchettes +2',
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Warp Ring',
        Back = 'Pahtli Cape',
        Waist = 'Corsette',
        Legs = 'Fili Rhingrave +2',
        Feet = 'Fili Cothurnes +2',
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
