local profile = {};
local sets = {
    FastCast = {
        Main = 'Nibiru Cudgel',
        Sub = 'Dullahan Shield',
        Ammo = 'Mogratuity',
        Head = 'Aya. Zucchetto +2',
        Neck = 'Voltsurge Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Gwati Earring',
        Body = 'Vrikodara Jupon',
        Hands = { Name = 'Amalric Gages +1', AugPath='A' },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = 'Cornflower Cape',
        Waist = 'Sailfi Belt',
        Legs = 'Aya. Cosciales +2',
        Feet = 'Jhakri Pigaches +1',
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
