local profile = {};
local sets = {
    FastCast = {
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
    },
    PreShot = {
        Main = 'Naegling',
        Sub = 'Nusku Shield',
        Range = 'Death Penalty',
        Ammo = 'Living Bullet',
        Head = { Name = 'Taeon Chapeau', Augment = '"Snapshot"+9' },
        Neck = 'Loricate Torque +1',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Pursuer\'s Doublet', AugPath='D' },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Defending Ring',
        Back = 'Ground. Mantle +1',
        Waist = 'Impulse Belt',
        Legs = 'Nahtirah Trousers',
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+24', [2] = 'Attack+9', [3] = '"Triple Atk."+4' } },
    },
    TP_MstrMelee = {
        Main = 'Naegling',
        Sub = 'Nusku Shield',
        Range = 'Death Penalty',
        Ammo = 'Living Bullet',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Loricate Torque +1',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Defending Ring',
        Back = 'Ground. Mantle +1',
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+8', [2] = '"Dbl.Atk."+3', [3] = '"Triple Atk."+2', [4] = 'DEX+9' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+24', [2] = 'Attack+9', [3] = '"Triple Atk."+4' } },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    QuickDraw = {
        Head = { Name = 'Taeon Chapeau', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = '"Mag. Atk. Bns."+15' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Lanun Frac +2', AugTrial=5378 },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Crit.hit rate+1', [2] = 'Mag. Acc.+20', [3] = 'VIT+6', [4] = '"Mag. Atk. Bns."+35' } },
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Acumen Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Mag. Acc+20', [3] = 'AGI+30', [4] = 'Magic Damage +20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = 'Mag. Acc.+19', [2] = 'AGI+12', [3] = '"Mag. Atk. Bns."+33' } },
        Feet = { Name = 'Lanun Bottes +2', AugTrial=5444 },
    },
    MidShot = {
        Main = 'Naegling',
        Sub = 'Nusku Shield',
        Range = 'Death Penalty',
        Ammo = 'Living Bullet',
        Head = 'Meghanada Visor +1',
        Neck = 'Iskur Gorget',
        Ear1 = 'Beyla Earring',
        Ear2 = 'Enervating Earring',
        Body = 'Nisroch Jerkin',
        Hands = 'Meg. Gloves +1',
        Ring1 = 'Longshot Ring',
        Ring2 = 'Paqichikaji Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Rng.Acc.+30', [2] = '"Store TP"+10', [3] = 'AGI+20', [4] = 'Rng.Atk.+20' } },
        Waist = 'Eschan Stone',
        Legs = 'Meg. Chausses +1',
        Feet = 'Meg. Jam. +2',
    },
    Phantom_Roll = {
        Head = { Name = 'Lanun Tricorne +1', AugTrial=5310 },
        Hands = 'Chasseur\'s Gants +1',
        Ring1 = 'Barataria Ring',
        Back = 'Camulus\'s Mantle',
    },
    Leaden_Salute = {
        Main = 'Naegling',
        Sub = 'Nusku Shield',
        Range = 'Death Penalty',
        Ammo = 'Living Bullet',
        Head = 'Pixie Hairpin +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Lanun Frac +2', AugTrial=5378 },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Crit.hit rate+1', [2] = 'Mag. Acc.+20', [3] = 'VIT+6', [4] = '"Mag. Atk. Bns."+35' } },
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Archon Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Mag. Acc+20', [3] = 'AGI+30', [4] = 'Magic Damage +20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = 'Mag. Acc.+19', [2] = 'AGI+12', [3] = '"Mag. Atk. Bns."+33' } },
        Feet = { Name = 'Lanun Bottes +2', AugTrial=5444 },
    },
    Wildfire = {
        Main = 'Naegling',
        Sub = 'Nusku Shield',
        Range = 'Death Penalty',
        Ammo = 'Living Bullet',
        Head = { Name = 'Taeon Chapeau', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = '"Mag. Atk. Bns."+15' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Lanun Frac +2', AugTrial=5378 },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Crit.hit rate+1', [2] = 'Mag. Acc.+20', [3] = 'VIT+6', [4] = '"Mag. Atk. Bns."+35' } },
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Acumen Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Mag. Acc+20', [3] = 'AGI+30', [4] = 'Magic Damage +20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = 'Mag. Acc.+19', [2] = 'AGI+12', [3] = '"Mag. Atk. Bns."+33' } },
        Feet = { Name = 'Lanun Bottes +2', AugTrial=5444 },
    },
    Hot_Shot = {
        Main = 'Naegling',
        Sub = 'Nusku Shield',
        Range = 'Death Penalty',
        Ammo = 'Living Bullet',
        Head = { Name = 'Taeon Chapeau', Augment = { [1] = 'Pet: Damage taken -4%', [2] = '"Fast Cast"+5', [3] = '"Mag. Atk. Bns."+15' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Hecate\'s Earring',
        Body = { Name = 'Lanun Frac +2', AugTrial=5378 },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Crit.hit rate+1', [2] = 'Mag. Acc.+20', [3] = 'VIT+6', [4] = '"Mag. Atk. Bns."+35' } },
        Ring1 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Ring2 = 'Acumen Ring',
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Weapon skill damage +10%', [2] = 'Mag. Acc+20', [3] = 'AGI+30', [4] = 'Magic Damage +20' } },
        Waist = 'Eschan Stone',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = 'Mag. Acc.+19', [2] = 'AGI+12', [3] = '"Mag. Atk. Bns."+33' } },
        Feet = { Name = 'Lanun Bottes +2', AugTrial=5444 },
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
    common_profile.HandleCommand(sets, gFunc, gData, gState, gSettings, settings)
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
