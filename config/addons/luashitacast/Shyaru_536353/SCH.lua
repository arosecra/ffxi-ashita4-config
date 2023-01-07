local profile = {};
profile.Sets = {
    Regen = {
        Main = { Name = 'Musa', AugPath='C' },
        Head = 'Arbatel Bonnet +3',
        Body = { Name = 'Telchine Chas.', Augment = 'Enh. Mag. eff. dur. +10' },
        Hands = { Name = 'Telchine Gloves', Augment = 'Enh. Mag. eff. dur. +9' },
        Waist = 'Embla Sash',
        Back = 'Lugh\'s Cape',
        Legs = { Name = 'Telchine Braconi', Augment = 'Enh. Mag. eff. dur. +10' },
        Feet = { Name = 'Telchine Pigaches', Augment = 'Enh. Mag. eff. dur. +9' },
    },
    FastCast = {
        Main = { Name = 'Musa', AugPath='C' },
        Ammo = 'Clarus Stone',
        Head = { Name = 'Vanya Hood', AugPath='D' },
        Neck = 'Voltsurge Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Lifestorm Earring',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Mag. Atk. Bns."+20', [2] = 'INT+15', [3] = 'Accuracy+13', [4] = 'Mag. Acc.+20', [5] = 'Attack+13', [6] = 'Crit. hit damage +2%' } },
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" potency +7%' } },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Orvail Pants +1',
        Feet = { Name = 'Chironic Slippers', Augment = { [1] = '"Mag. Atk. Bns."+2', [2] = 'Mag. Acc.+15', [3] = '"Fast Cast"+6', [4] = 'DEX+5' } },
    },
    Enhancing_Magic_Perpetuance = {
        Main = { Name = 'Musa', AugPath='C' },
        Head = { Name = 'Telchine Cap', Augment = 'Enh. Mag. eff. dur. +10' },
        Body = { Name = 'Telchine Chas.', Augment = 'Enh. Mag. eff. dur. +10' },
        Hands = 'Arbatel Bracers +3',
        Waist = 'Embla Sash',
        Legs = { Name = 'Telchine Braconi', Augment = 'Enh. Mag. eff. dur. +10' },
        Feet = { Name = 'Telchine Pigaches', Augment = 'Enh. Mag. eff. dur. +9' },
    },
    Cure = {
        Main = 'Nibiru Cudgel',
        Sub = 'Sors Shield',
        Ammo = 'Clarus Stone',
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = '"Cure" potency +7%', [2] = 'Phys. dmg. taken -3%' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Meili Earring',
        Ear2 = 'Lifestorm Earring',
        Body = 'Vrikodara Jupon',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" potency +7%' } },
        Ring1 = 'Sirona\'s Ring',
        Ring2 = 'Metamorph Ring',
        Back = 'Tempered Cape +1',
        Waist = 'Bishop\'s Sash',
        Legs = 'Acad. Pants +2',
        Feet = { Name = 'Chironic Slippers', Augment = { [1] = '"Mag. Atk. Bns."+2', [2] = 'Mag. Acc.+15', [3] = '"Fast Cast"+6', [4] = 'DEX+5' } },
    },
    Regen_Perpetuance = {
        Main = { Name = 'Musa', AugPath='C' },
        Head = 'Arbatel Bonnet +3',
        Body = { Name = 'Telchine Chas.', Augment = 'Enh. Mag. eff. dur. +10' },
        Hands = 'Arbatel Bracers +3',
        Waist = 'Embla Sash',
        Back = 'Lugh\'s Cape',
        Legs = { Name = 'Telchine Braconi', Augment = 'Enh. Mag. eff. dur. +10' },
        Feet = { Name = 'Telchine Pigaches', Augment = 'Enh. Mag. eff. dur. +9' },
    },
    Elemental_Magic = {
        Main = { Name = 'Akademos', AugPath='C' },
        Sub = 'Enki Strap',
        Ammo = 'Ghastly Tathlum',
        Head = 'Acad. Mortar. +2',
        Neck = 'Mizu. Kubikazari',
        Ear1 = 'Static Earring',
        Ear2 = { Name = 'Arbatel Earring', Augment = 'Mag. Acc.+8' },
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='A' },
        Ring1 = 'Locus Ring',
        Ring2 = 'Mujin Band',
        Back = 'Swith Cape +1',
        Waist = 'Acuity Belt',
        Legs = { Name = 'Amalric Slops +1', AugPath='A' },
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = 'Mag. Acc.+13', [2] = 'INT+2', [3] = 'Magic burst dmg.+10%', [4] = '"Mag. Atk. Bns."+10' } },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    Enhancing_Magic = {
        Main = { Name = 'Musa', AugPath='C' },
        Head = { Name = 'Telchine Cap', Augment = 'Enh. Mag. eff. dur. +10' },
        Body = { Name = 'Telchine Chas.', Augment = 'Enh. Mag. eff. dur. +10' },
        Hands = { Name = 'Telchine Gloves', Augment = 'Enh. Mag. eff. dur. +9' },
        Waist = 'Embla Sash',
        Legs = { Name = 'Telchine Braconi', Augment = 'Enh. Mag. eff. dur. +10' },
        Feet = { Name = 'Telchine Pigaches', Augment = 'Enh. Mag. eff. dur. +9' },
    },
    TP_MstrMelee = {
        Main = 'Bolelabunga',
        Sub = 'Sors Shield',
        Ammo = 'Clarus Stone',
        Head = 'Arbatel Bonnet +3',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Gwati Earring',
        Ear2 = 'Lifestorm Earring',
        Body = 'Arbatel Gown +3',
        Hands = 'Arbatel Bracers +3',
        Ring1 = 'Echad Ring',
        Ring2 = 'Haoma\'s Ring',
        Back = 'Lugh\'s Cape',
        Waist = 'Bishop\'s Sash',
        Legs = 'Assid. Pants +1',
        Feet = { Name = 'Gende. Galosh. +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" spellcasting time -4%' } },
    },
    Enfeebling_Magic = {
        Main = { Name = 'Nibiru Cudgel', AugPath='B' },
        Sub = 'Sors Shield',
        Ammo = 'Clarus Stone',
        Head = 'Arbatel Bonnet +3',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Gwati Earring',
        Ear2 = { Name = 'Arbatel Earring', Augment = 'Mag. Acc.+8' },
        Body = 'Arbatel Gown +3',
        Hands = 'Arbatel Bracers +2',
        Ring1 = 'Echad Ring',
        Ring2 = 'Haoma\'s Ring',
        Back = 'Swith Cape +1',
        Waist = 'Acuity Belt',
        Legs = 'Acad. Pants +2',
        Feet = 'Jhakri Pigaches +1',
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