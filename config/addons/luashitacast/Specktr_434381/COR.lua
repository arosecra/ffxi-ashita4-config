local profile = {};
local sets = {
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
};

profile.Sets = sets;

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;
