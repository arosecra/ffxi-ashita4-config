local profile = {};
local sets = {
    TP_MstrMelee = {
        Main = 'Aymur',
        Sub = { Name = 'Beatific Shield +1', Augment = { [1] = 'Phys. dmg. taken -4%', [2] = 'Spell interruption rate down -10%' } },
        Ammo = 'Livid Broth',
        Head = { Name = 'Anwig Salade', Augment = { [1] = 'Accuracy+3', [2] = 'Pet: Damage taken -10%', [3] = 'Attack+3', [4] = 'Pet: Haste+5' } },
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = 'Handler\'s Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Tot. Jackcoat +3',
        Hands = { Name = 'Taeon Gloves', Augment = { [1] = 'Pet: Rng. Acc.+23', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+23', [4] = 'Pet: "Dbl. Atk."+5' } },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Artio\'s Mantle', Augment = { [1] = 'Pet: R.Acc.+20', [2] = 'Pet: R.Atk.+20', [3] = 'Pet: Haste+10', [4] = 'Pet: Attack+10', [5] = 'Pet: Rng.Atk.+10', [6] = 'Pet: Acc.+20', [7] = 'Pet: Atk.+20' } },
        Waist = 'Isa Belt',
        Legs = { Name = 'Taeon Tights', Augment = { [1] = 'Pet: Rng. Acc.+23', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+23', [4] = 'Pet: "Dbl. Atk."+5' } },
        Feet = { Name = 'Taeon Boots', Augment = { [1] = 'Pet: Rng. Acc.+24', [2] = 'Pet: Damage taken -4%', [3] = 'Pet: Accuracy+24', [4] = 'Pet: "Dbl. Atk."+5' } },
    },
    FastCast = {
        Main = 'Aymur',
        Sub = { Name = 'Beatific Shield +1', Augment = { [1] = 'Phys. dmg. taken -4%', [2] = 'Spell interruption rate down -10%' } },
        Ammo = 'Livid Broth',
        Head = { Name = 'Taeon Chapeau', Augment = '"Fast Cast"+5' },
        Neck = 'Orunmila\'s Torque',
        Ear1 = 'Enchntr. Earring +1',
        Ear2 = 'Loquac. Earring',
        Body = { Name = 'Taeon Tabard', Augment = '"Fast Cast"+5' },
        Hands = { Name = 'Taeon Gloves', Augment = '"Fast Cast"+5' },
        Ring1 = 'Prolix Ring',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Artio\'s Mantle', Augment = '"Fast Cast"+10' },
        Waist = 'Isa Belt',
        Legs = { Name = 'Taeon Tights', Augment = '"Fast Cast"+5' },
        Feet = { Name = 'Taeon Boots', Augment = '"Fast Cast"+5' },
    },
    Primal_Rend = {
        Main = 'Aymur',
        Sub = { Name = 'Beatific Shield +1', Augment = { [1] = 'Phys. dmg. taken -4%', [2] = 'Spell interruption rate down -10%' } },
        Ammo = 'Livid Broth',
        Head = { Name = 'Ankusa Helm +3', AugTrial=5458 },
        Neck = 'Sanctity Necklace',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Friomisi Earring',
        Body = { Name = 'Jumalik Mail', Augment = { [1] = 'HP+40', [2] = 'Attack+10', [3] = 'Enmity+7' } },
        Hands = { Name = 'Leyline Gloves', Augment = { [1] = 'Accuracy+14', [2] = '"Mag. Atk. Bns."+13', [3] = '"Fast Cast"+2', [4] = 'Mag. Acc.+13' } },
        Ring1 = { Name = 'Demon\'s Ring', Augment = { [1] = '"Resist Blind"+2', [2] = '"Mag. Atk. Bns."+3' } },
        Ring2 = 'Acumen Ring',
        Back = { Name = 'Artio\'s Mantle', Augment = '"Fast Cast"+10' },
        Waist = 'Isa Belt',
        Legs = { Name = 'Valorous Hose', Augment = { [1] = 'STR+5', [2] = '"Mag. Atk. Bns."+23', [3] = 'Crit. hit damage +3%' } },
        Feet = { Name = 'Valorous Greaves', Augment = { [1] = 'Crit. hit damage +3%', [2] = '"Mag. Atk. Bns."+25' } },
    },
    Call_Beast = {
        Hands = { Name = 'Ankusa Gloves +3', AugTrial=5502 },
    },
    Bestial_Loyalty = {
        Hands = { Name = 'Ankusa Gloves +3', AugTrial=5502 },
    },
    Familiar = {
        Legs = { Name = 'Ankusa Trousers +3', AugTrial=5524 },
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