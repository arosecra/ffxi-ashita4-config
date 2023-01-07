local profile = {};
profile.Sets = {
    FastCast = {
        Main = { Name = 'Akademos', AugPath='C' },
        Sub = 'Clerisy Strap',
        Ammo = 'Sapience Orb',
        Head = { Name = 'Peda. M.Board +3', AugTrial=5469 },
        Neck = 'Orunmila\'s Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Enchntr. Earring +1',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Fast Cast"+5', [2] = 'Attack+18', [3] = 'INT+8' } },
        Hands = 'Gende. Gages +1',
        Ring1 = 'Kishar Ring',
        Ring2 = 'Prolix Ring',
        Back = { Name = 'Lugh\'s Cape', Augment = '"Fast Cast"+10' },
        Waist = 'Embla Sash',
        Legs = { Name = 'Psycloth Lappas', AugPath='D' },
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = '"Mag. Atk. Bns."+15', [2] = '"Fast Cast"+5', [3] = 'Mag. Acc.+14' } },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    Enhancing_Magic = {
        Head = { Name = 'Telchine Cap', Augment = 'Enh. Mag. eff. dur. +8' },
        Body = { Name = 'Telchine Chas.', Augment = 'Enh. Mag. eff. dur. +8' },
        Hands = { Name = 'Telchine Gloves', Augment = 'Enh. Mag. eff. dur. +6' },
        Waist = 'Embla Sash',
        Legs = { Name = 'Telchine Braconi', Augment = 'Enh. Mag. eff. dur. +10' },
        Feet = { Name = 'Telchine Pigaches', Augment = 'Enh. Mag. eff. dur. +7' },
    },
    Perpetuance = {
        Hands = 'Arbatel Bracers',
    },
    Helix = {
        Main = { Name = 'Akademos', AugPath='C' },
        Sub = 'Niobid Strap',
        Ammo = 'Erlene\'s Notebook',
        Head = { Name = 'Peda. M.Board +3', AugTrial=5469 },
        Neck = 'Mizu. Kubikazari',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Locus Ring',
        Ring2 = 'Mujin Band',
        Back = { Name = 'Lugh\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Merlinic Shalwar', Augment = { [1] = 'Mag. Acc.+1', [2] = 'MND+8', [3] = 'Magic burst dmg.+11%', [4] = '"Mag. Atk. Bns."+18' } },
        Feet = 'Jhakri Pigaches +2',
    },
    Enhancing_Magic_Perpetuance = {
        Head = { Name = 'Telchine Cap', Augment = 'Enh. Mag. eff. dur. +8' },
        Body = { Name = 'Telchine Chas.', Augment = 'Enh. Mag. eff. dur. +8' },
        Hands = 'Arbatel Bracers',
        Waist = 'Embla Sash',
        Legs = { Name = 'Telchine Braconi', Augment = 'Enh. Mag. eff. dur. +10' },
        Feet = { Name = 'Telchine Pigaches', Augment = 'Enh. Mag. eff. dur. +7' },
    },
    Elemental_Magic = {
        Main = { Name = 'Akademos', AugPath='C' },
        Sub = 'Niobid Strap',
        Ammo = 'Erlene\'s Notebook',
        Head = { Name = 'Peda. M.Board +3', AugTrial=5469 },
        Neck = 'Mizu. Kubikazari',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='D' },
        Ring1 = 'Locus Ring',
        Ring2 = 'Mujin Band',
        Back = { Name = 'Lugh\'s Cape', Augment = { [1] = '"Mag. Atk. Bns."+10', [2] = 'Mag. Acc+20', [3] = 'Magic Damage +20', [4] = 'INT+20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Merlinic Shalwar', Augment = { [1] = 'Mag. Acc.+1', [2] = 'MND+8', [3] = 'Magic burst dmg.+11%', [4] = '"Mag. Atk. Bns."+18' } },
        Feet = 'Jhakri Pigaches +2',
    },
    Immanence = {
        Hands = 'Arbatel Bracers',
    },
    Dia = {
        Head = 'Wh. Rarab Cap +1',
        Hands = { Name = 'Chironic Gloves', Augment = { [1] = '"Mag. Atk. Bns."+6', [2] = 'Mag. Acc.+6', [3] = '"Treasure Hunter"+1', [4] = 'STR+5', [5] = 'Accuracy+12', [6] = 'Attack+12', [7] = 'Pet: STR+10' } },
        Waist = 'Chaac Belt',
    },
    TP_MstrMelee = {
        Main = { Name = 'Akademos', AugPath='C' },
        Sub = 'Umbra Strap',
        Ammo = 'Homiliary',
        Head = { Name = 'Peda. M.Board +3', AugTrial=5469 },
        Neck = 'Loricate Torque +1',
        Ear1 = 'Genmei Earring',
        Ear2 = 'Ethereal Earring',
        Body = 'Jhakri Robe +2',
        Hands = { Name = 'Chironic Gloves', Augment = { [1] = 'Mag. Acc.+1', [2] = 'MND+7', [3] = '"Cure" potency +6%' } },
        Ring1 = { Name = 'Dark Ring', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Breath dmg. taken -3%', [3] = 'Phys. dmg. taken -4%' } },
        Ring2 = 'Defending Ring',
        Back = 'Solemnity Cape',
        Waist = 'Embla Sash',
        Legs = 'Assid. Pants +1',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = '"Avatar perpetuation cost" -4', [2] = 'Mag. Acc.+18', [3] = '"Refresh"+1', [4] = '"Mag. Atk. Bns."+18', [5] = 'DEX+2' } },
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
