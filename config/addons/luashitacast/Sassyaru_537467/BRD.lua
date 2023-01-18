local profile = {};
profile.Sets = {
    FastCast = {
        Head = { Name = 'Vanya Hood', AugPath='D' },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = { Name = 'Fili Earring +2', Augment = { [1] = 'Damage taken-6%', [2] = 'Mag. Acc.+17', [3] = 'Accuracy+17', [4] = 'CHR+9', [5] = 'MND+9' } },
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
        Ear2 = { Name = 'Fili Earring +2', Augment = { [1] = 'Damage taken-6%', [2] = 'Mag. Acc.+17', [3] = 'Accuracy+17', [4] = 'CHR+9', [5] = 'MND+9' } },
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
        Head = 'Fili Calot +3',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Gersemi Earring',
        Ear2 = { Name = 'Fili Earring +2', Augment = { [1] = 'Damage taken-6%', [2] = 'Mag. Acc.+17', [3] = 'Accuracy+17', [4] = 'CHR+9', [5] = 'MND+9' } },
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +3',
        Ring1 = 'Metamorph Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Mag. Acc+20', [2] = 'CHR+20', [3] = 'Magic Damage +20' } },
        Waist = 'Corsette',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Brioso Slippers +2',
    },
    SongAcc = {
        Head = 'Fili Calot +3',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Gersemi Earring',
        Ear2 = { Name = 'Fili Earring +2', Augment = { [1] = 'Damage taken-6%', [2] = 'Mag. Acc.+17', [3] = 'Accuracy+17', [4] = 'CHR+9', [5] = 'MND+9' } },
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +3',
        Ring1 = 'Metamorph Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = { Name = 'Intarabus\'s Cape', Augment = { [1] = 'Mag. Acc+20', [2] = 'CHR+20', [3] = 'Magic Damage +20' } },
        Waist = 'Corsette',
        Legs = 'Inyanga Shalwar +2',
        Feet = 'Fili Cothurnes +3',
    },
    TP_MstrMelee = {
        Head = 'Fili Calot +3',
        Neck = 'Moonbow Whistle',
        Ear1 = 'Gersemi Earring',
        Ear2 = { Name = 'Fili Earring +2', Augment = { [1] = 'Damage taken-6%', [2] = 'Mag. Acc.+17', [3] = 'Accuracy+17', [4] = 'CHR+9', [5] = 'MND+9' } },
        Body = 'Fili Hongreline +3',
        Hands = 'Fili Manchettes +3',
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Warp Ring',
        Back = 'Pahtli Cape',
        Waist = 'Corsette',
        Legs = 'Fili Rhingrave +3',
        Feet = 'Fili Cothurnes +3',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
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