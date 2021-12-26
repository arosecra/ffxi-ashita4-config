local profile = {};
local sets = {
    Cure = {
        Main = 'Nibiru Cudgel',
        Sub = 'Sors Shield',
        Ammo = 'Clarus Stone',
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = 'Phys. dmg. taken -3%', [2] = '"Cure" potency +7%' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Meili Earring',
        Ear2 = 'Lifestorm Earring',
        Body = 'Vrikodara Jupon',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" potency +7%' } },
        Ring1 = 'Haoma\'s Ring',
        Ring2 = 'Ephedra Ring',
        Back = 'Tempered Cape +1',
        Waist = 'Bishop\'s Sash',
        Legs = 'Acad. Pants +2',
        Feet = 'Acad. Loafers +1',
    },
    FastCast = {
        Main = 'Nibiru Cudgel',
        Sub = 'Sors Shield',
        Ammo = 'Clarus Stone',
        Head = { Name = 'Vanya Hood', AugPath='D' },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Lifestorm Earring',
        Body = 'Vrikodara Jupon',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" potency +7%' } },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Kishar Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Orvail Pants +1',
        Feet = { Name = 'Chironic Slippers', Augment = { [1] = '"Mag. Atk. Bns."+2', [2] = 'Mag. Acc.+15', [3] = '"Fast Cast"+6', [4] = 'DEX+5' } },
    },
    TP_MstrMelee = {
        Main = 'Bolelabunga',
        Sub = 'Sors Shield',
        Ammo = 'Clarus Stone',
        Head = { Name = 'Gende. Caubeen +1', Augment = { [1] = '"Cure" potency +7%', [2] = 'Phys. dmg. taken -3%' } },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Gwati Earring',
        Ear2 = 'Lifestorm Earring',
        Body = 'Vrikodara Jupon',
        Hands = { Name = 'Gende. Gages +1', Augment = { [1] = 'Magic dmg. taken -3%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" potency +7%' } },
        Ring1 = 'Echad Ring',
        Ring2 = 'Haoma\'s Ring',
        Back = 'Swith Cape +1',
        Waist = 'Bishop\'s Sash',
        Legs = 'Assid. Pants +1',
        Feet = { Name = 'Gende. Galosh. +1', Augment = { [1] = 'Magic dmg. taken -4%', [2] = 'Phys. dmg. taken -4%', [3] = '"Cure" spellcasting time -4%' } },
    },
    Moving = {
        Ring1 = 'Shneddick Ring',
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
