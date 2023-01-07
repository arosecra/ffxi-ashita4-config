local profile = {};
profile.Sets = {
    TP_MstrMelee = {
        Main = 'Trial Blade',
        Sub = 'Nepenthe Grip',
        Ammo = 'Staunch Tathlum',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Ethereal Earring',
        Ear2 = { Name = 'Erilaz Earring', Augment = { [1] = 'Accuracy+7', [2] = 'Mag. Acc.+7' } },
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = 'Defending Ring',
        Ring2 = 'Warp Ring',
        Back = 'Ground. Mantle +1',
        Waist = 'Flume Belt',
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+8', [2] = '"Dbl.Atk."+3', [3] = '"Triple Atk."+2', [4] = 'DEX+9' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+24', [2] = 'Attack+9', [3] = '"Triple Atk."+4' } },
    },
    Phalanx = {
        Ammo = 'Staunch Tathlum',
        Body = { Name = 'Herculean Vest', Augment = { [1] = '"Mag. Atk. Bns."+7', [2] = 'Mag. Acc.+7', [3] = 'INT+6', [4] = 'Blood Pact Dmg.+7', [5] = 'Phalanx +4', [6] = 'Attack+15', [7] = 'Accuracy+15' } },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+22', [2] = 'Phalanx +4', [3] = 'Pet: Rng.Atk.+19', [4] = 'Pet: Attack+19' } },
        Ring1 = 'Defending Ring',
        Waist = 'Olympus Sash',
        Legs = { Name = 'Herculean Trousers', Augment = { [1] = 'Pet: "Dbl.Atk."+2', [2] = 'Mag. Acc.+10', [3] = 'Pet: Crit.hit rate +2', [4] = 'Phalanx +5', [5] = '"Mag. Atk. Bns."+10', [6] = 'Magic dmg. taken -1%' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Dbl.Atk."+1', [2] = '"Mag. Atk. Bns."+2', [3] = 'Mag. Acc.+2', [4] = 'Rng.Acc.+6', [5] = 'Phalanx +4', [6] = 'Attack+11', [7] = 'Accuracy+11' } },
    },
    FastCast = {
        Main = 'Trial Blade',
        Sub = 'Nepenthe Grip',
        Ammo = 'Sapience Orb',
        Head = { Name = 'Carmine Mask +1', AugPath='D' },
        Neck = 'Orunmila\'s Torque',
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Enchntr. Earring +1',
        Body = { Name = 'Taeon Tabard', Augment = '"Fast Cast"+5' },
        Hands = { Name = 'Leyline Gloves', Augment = { [1] = 'Accuracy+14', [2] = '"Mag. Atk. Bns."+13', [3] = '"Fast Cast"+2', [4] = 'Mag. Acc.+13' } },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Legs = { Name = 'Taeon Tights', Augment = '"Fast Cast"+5' },
        Feet = { Name = 'Carmine Greaves +1', AugPath='D' },
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