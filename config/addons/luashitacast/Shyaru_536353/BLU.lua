local profile = {};
local sets = {
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
	common_profile.HandleCommand(args, gFunc, settings)
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
