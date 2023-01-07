local profile = {};
profile.Sets = {
    FastCast = {
        Head = 'Aya. Zucchetto +2',
        Neck = 'Voltsurge Torque',
        Ear1 = 'Loquac. Earring',
        Body = 'Vrikodara Jupon',
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = 'Swith Cape +1',
        Legs = 'Aya. Cosciales +2',
    },
    Blue_Magic = {
        Main = { Name = 'Nibiru Cudgel', AugPath='B' },
        Sub = 'Bolelabunga',
        Ammo = 'Moogle Moolah',
        Head = 'Hashishin Kavuk +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Gwati Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='A' },
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Warp Ring',
        Back = 'Cornflower Cape',
        Waist = 'Acuity Belt',
        Legs = { Name = 'Amalric Slops +1', AugPath='A' },
        Feet = 'Hashi. Basmak +2',
    },
    TP_MstrMelee = {
        Main = { Name = 'Nibiru Cudgel', AugPath='B' },
        Sub = 'Bolelabunga',
        Head = 'Hashishin Kavuk +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Gwati Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = { Name = 'Amalric Gages +1', AugPath='A' },
        Ring1 = 'Shneddick Ring',
        Ring2 = 'Warp Ring',
        Back = 'Cornflower Cape',
        Waist = 'Acuity Belt',
        Legs = { Name = 'Amalric Slops +1', AugPath='A' },
        Feet = 'Hashi. Basmak +2',
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