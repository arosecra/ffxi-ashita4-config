local profile = {};
profile.Sets = {
    Tancho = {
        Main = 'Tancho',
    },
    AbysseaProcDagger = {
        Main = 'Chicken Knife II',
    },
    AbysseaProcSword = {
        Main = 'Save the Queen II',
    },
    AbysseaProcGreatSword = {
        Main = 'Lament',
	},
    AbysseaProcScythe = {
        Main = 'Lost sickle',
    },
    AbysseaProcPolearm = {
        Main = 'Tzee Xicu\'s Blade',
    },
    AbysseaProcKatana = {
        Main = 'Trainee Burin',
    },
    AbysseaProcGreatKatana = {
        Main = 'Mutsunokami',
    },
    AbysseaProcClub = {
        Main = 'Soulflayer\'s Wand',
    },
    AbysseaProcStaff = {
        Main = 'Lamia Staff',
    },
    FastCast = {
        Head = { Name = 'Taeon Chapeau', Augment = '"Fast Cast"+5' },
        Hands = { Name = 'Taeon Gloves', Augment = '"Fast Cast"+5' },
        Legs = { Name = 'Taeon Tights', Augment = '"Fast Cast"+5' },
        Feet = { Name = 'Taeon Boots', Augment = '"Fast Cast"+5' },
    },
    TP_TH = {
        Ammo = 'Ginsen',
        Head = 'Wh. Rarab Cap +1',
        Neck = 'Asperity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Pet: DEX+10', [2] = '"Treasure Hunter"+1', [3] = '"Cure" potency +4%' } },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = 'Ground. Mantle +1',
        Waist = 'Chaac Belt',
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+8', [2] = '"Dbl.Atk."+3', [3] = '"Triple Atk."+2', [4] = 'DEX+9' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = '"Rapid Shot"+3', [2] = '"Treasure Hunter"+1', [3] = 'Accuracy+1', [4] = '"Mag. Atk. Bns."+10', [5] = 'Attack+1', [6] = 'Mag. Acc.+10' } },
    },
    TP_MstrMelee = {
        Ammo = 'Ginsen',
        Head = { Name = 'Adhemar Bonnet +1', AugPath='B' },
        Neck = 'Asperity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Adhemar Jacket +1', AugPath='B' },
        Hands = { Name = 'Herculean Gloves', Augment = { [1] = 'Accuracy+24', [2] = 'CHR+7', [3] = 'Attack+9', [4] = '"Triple Atk."+4' } },
        Ring1 = 'Epona\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = 'Ground. Mantle +1',
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = { Name = 'Samnuha Tights', Augment = { [1] = 'STR+8', [2] = '"Dbl.Atk."+3', [3] = '"Triple Atk."+2', [4] = 'DEX+9' } },
        Feet = { Name = 'Herculean Boots', Augment = { [1] = 'Accuracy+24', [2] = 'Attack+9', [3] = '"Triple Atk."+4' } },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
};

profile.Packer = {
};

local settings = {
	Strategy='MstrMelee',
    IdleMain='Tancho'
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