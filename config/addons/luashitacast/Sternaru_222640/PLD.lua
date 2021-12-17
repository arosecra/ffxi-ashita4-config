local profile = {};
local sets = {
    Protect = {
        Sub = { Name = 'Priwen', AugPath='A' },
    },
    FastCast = {
		Body = { Name = 'Rev. Surcoat +2', Priority=3 },
        
        Legs = { Name = 'Souv. Diechlings +1', AugPath='C', Priority=2 },
        Sub = { Name = 'Nibiru Shield', AugPath='B', Priority=2 },
        Waist = { Name = 'Steppe Sash', Priority=2},
        Ear1 = { Name = 'Tuisto Earring', Priority=2},
        Ear2 = { Name = 'Odnowa Earring', Priority=2},
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'HP+80', [2] = 'Eva.+20', [3] = '"Fast Cast"+10', [4] = 'Mag. Eva.+20' }, Priority=1 },
        Ring1 = { Name= 'Moonbeam Ring', Priority=2},
        Ring2 = { Name= 'Meridian Ring', Priority=2},
		
		Hands = { Name = 'Odyssean Gauntlets', Augment = { [1] = '"Fast Cast"+4', [2] = 'Mag. Acc.+12', [3] = '"Mag. Atk. Bns."+7', [4] = 'AGI+5', [5] = 'Attack+9' } },
        Ammo = 'Incantor Stone',
        Head = { Name = 'Carmine Mask +1', AugPath='D' },
        Neck = 'Voltsurge Torque',
		Feet = { Name = 'Odyssean Greaves', Augment = { [1] = 'Mag. Acc.+7', [2] = 'MND+10', [3] = '"Fast Cast"+4', [4] = '"Mag. Atk. Bns."+21' } },
    
	
	},
    TP_MstrMelee = {
        Ear1 = { Name = 'Tuisto Earring', Priority=1},
        Head = { Name = 'Souv. Schaller +1', AugPath='D', Priority=1 },
        Body = { Name = 'Souv. Cuirass +1', AugPath='D', Priority=1 },
        Hands = { Name = 'Souv. Handsch. +1', AugPath='D', Priority=1 },
        Legs = { Name = 'Souv. Diechlings +1', AugPath='C', Priority=1 },
        Feet = { Name = 'Souveran Schuhs +1', AugPath='C', Priority=1 },
		Ring1 = { Name= 'Moonbeam Ring', Priority=1},
        Back = { Name = 'Rudianos\'s Mantle', Augment = { [1] = 'Damage taken-5%', [2] = 'Mag. Eva.+20', [3] = 'Eva.+20', [4] = 'VIT+30', [5] = 'Enmity+10' }, Priority=1 },
        
		
        Sub = { Name = 'Aegis', AugTrial=4448 },
        Ammo = 'Staunch Tathlum',
        Neck = 'Warder\'s Charm',
        Ear2 = 'Handler\'s Earring +1',
        Ring2 = 'Defending Ring',
        Waist = 'Isa Belt',
    },
    Phalanx = {
		Hands = { Name = 'Souv. Handsch. +1', AugPath='D', Priority=1 },
        Feet = { Name = 'Souveran Schuhs +1', AugPath='C', Priority=1 },
		Neck = { Name= 'Dualism Collar +1', Priority=2},
        Ring1 = { Name= 'Moonbeam Ring', Priority=2},
        Ring2 = { Name= 'Meridian Ring', Priority=2},
        Waist = { Name= 'Steppe Sash', Priority=2},
        Ear1 = { Name= 'Tuisto Earring', Priority=2},
        
        Sub = { Name = 'Priwen', AugPath='A' },
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Yorium Barbuta', Augment = { [1] = 'Phalanx +3', [2] = 'Enmity+10' } },
        Ear2 = 'Mimir Earring',
        Body = { Name = 'Valorous Mail', Augment = { [1] = '"Mag. Atk. Bns."+9', [2] = 'Mag. Acc.+9', [3] = 'Accuracy+34', [4] = 'Phalanx +4', [5] = 'Attack+15', [6] = 'Pet: STR+9' } },
        Back = { Name = 'Weard Mantle', Augment = { [1] = 'Enmity+3', [2] = 'Phalanx +5', [3] = 'VIT+2', [4] = 'DEX+2' } },
        Legs = { Name = 'Yorium Cuisses', Augment = 'Phalanx +3' },
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
