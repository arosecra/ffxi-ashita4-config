local profile = {};
local sets = {
    Phantom_Roll = {
        Head = { Name = 'Lanun Tricorne +1', AugTrial=5310 },
        Hands = 'Chasseur\'s Gants +1',
        Ring1 = 'Barataria Ring',
        Back = 'Camulus\'s Mantle',
        Waist = 'Sailfi Belt',
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
    },
    QuickDraw = {
        Main = { Name = 'Rostam', AugPath='C' },
        Sub = 'Nusku Shield',
        Range = 'Compensator',
        Ammo = 'Bronze Bullet',
        Head = 'Laksa. Tricorne +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Handler\'s Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Rawhide Vest',
        Hands = 'Laksa. Gants +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Gunslinger\'s Cape',
        Waist = 'Sailfi Belt',
        Legs = 'Laksa. Trews +2',
        Feet = 'Meg. Jam. +2',
    },
    MidShot = {
        Head = 'Laksa. Tricorne +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Handler\'s Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Nisroch Jerkin',
        Hands = 'Regal Gloves',
        Ring1 = 'Paqichikaji Ring',
        Ring2 = 'Arewe Ring',
        Back = 'Gunslinger\'s Cape',
        Waist = 'Impulse Belt',
        Legs = 'Laksa. Trews +2',
        Feet = 'Meg. Jam. +2',
    },
    PreShot = {
        Range = 'Compensator',
        Ammo = 'Bronze Bullet',
        Head = 'Aurore Beret +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Handler\'s Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Rawhide Vest',
        Hands = 'Chasseur\'s Gants +1',
        Ring1 = 'Barataria Ring',
        Ring2 = 'Warp Ring',
        Back = 'Navarch\'s Mantle',
        Waist = 'Impulse Belt',
        Legs = 'Laksa. Trews +2',
        Feet = 'Meg. Jam. +2',
    },
    TP_MstrMelee = {
        Head = 'Laksa. Tricorne +2',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Handler\'s Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Laksa. Frac +2',
        Hands = 'Laksa. Gants +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Gunslinger\'s Cape',
        Waist = 'Sailfi Belt',
        Legs = 'Laksa. Trews +2',
        Feet = 'Meg. Jam. +2',
    },
};

local settings = {
	Strategy='MstrMelee'
}
local common_profile = gFunc.LoadFile('common/common_logic.lua');
profile.Sets = sets;

profile.OnLoad = function()
    common_profile.OnLoad(sets, gFunc, gData, gState, gSettings, settings)
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
