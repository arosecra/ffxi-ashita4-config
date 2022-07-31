local profile = {};
profile.Sets = {
    tp = {
        Main = 'Ice Lance',
        Neck = 'Fotia Gorget',
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Raptor Jerkin',
        Hands = 'Stone Mufflers',
        Ring1 = 'Defending Ring',
        Ring2 = 'Warp Ring',
        Back = 'Shadow Mantle',
        Waist = 'Nierenschutz',
        Legs = 'Raptor Trousers',
        Feet = 'Raptor Ledelsens',
    },
};

profile.Packer = {
};

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