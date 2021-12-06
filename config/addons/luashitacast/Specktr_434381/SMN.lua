local profile = {};
local sets = {
    Blood_Pact_Physical = {
		Head = 'Tali\'ah Turban +2',
        Neck = 'Shulmanu Collar',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Con. Doublet +2',
        Hands = { Name = 'Merlinic Dastanas', Augment = { [1] = 'Blood Pact Dmg.+6', [2] = 'Pet: INT+5', [3] = 'Pet: Mag. Acc.+7', [4] = 'Pet: "Mag. Atk. Bns."+14' } },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Campestres\'s Cape', Augment = { [1] = 'Pet: M.Dmg.+20', [2] = 'Pet: M.Acc.+20', [3] = 'Pet: Haste+10' } },
        Waist = 'Klouskap Sash',
        Legs = 'Tali\'ah Sera. +2',
        Feet = 'Con. Pigaches +1',
    },
    FastCast = {
        Head = { Name = 'Psycloth Tiara', AugPath='D' },
        Neck = 'Orunmila\'s Torque',
        Ear1 = 'Loquac. Earring',
        Ear2 = 'Enchntr. Earring +1',
        Body = { Name = 'Merlinic Jubbah', Augment = { [1] = '"Fast Cast"+5', [2] = 'Attack+18', [3] = 'INT+8' } },
        Hands = 'Tali\'ah Gages +2',
        Ring1 = 'Prolix Ring',
        Ring2 = 'Evoker\'s Ring',
        Back = 'Swith Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Assid. Pants +1',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = '"Mag. Atk. Bns."+15', [2] = '"Fast Cast"+5', [3] = 'Mag. Acc.+14' } },
    },
    Blood_Pact_Magical = {
        Head = 'Psycloth Tiara',
        Neck = 'Adad Amulet',
        Ear1 = 'Domes. Earring',
        Ear2 = 'Handler\'s Earring +1',
        Body = 'Con. Doublet +2',
        Hands = { Name = 'Merlinic Dastanas', Augment = { [1] = 'Blood Pact Dmg.+6', [2] = 'Pet: INT+5', [3] = 'Pet: Mag. Acc.+7', [4] = 'Pet: "Mag. Atk. Bns."+14' } },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Varar Ring +1',
        Back = { Name = 'Campestres\'s Cape', Augment = { [1] = 'Pet: M.Dmg.+20', [2] = 'Pet: M.Acc.+20', [3] = 'Pet: Haste+10' } },
        Waist = 'Klouskap Sash',
        Legs = 'Tali\'ah Sera. +2',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = 'Pet: "Mag. Atk. Bns."+30', [2] = 'Pet: Mag. Acc.+14', [3] = 'Blood Pact Dmg.+5' } },
    },
    TP_MstrMelee = {
        Head = 'Beckoner\'s Horn +1',
        Neck = 'Caller\'s Pendant',
        Ear1 = 'Handler\'s Earring +1',
        Ear2 = 'Handler\'s Earring',
        Body = { Name = 'Amalric Doublet +1', AugPath='A' },
        Hands = 'Tali\'ah Gages +2',
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Evoker\'s Ring',
        Back = { Name = 'Campestres\'s Cape', Augment = { [1] = 'Pet: M.Dmg.+20', [2] = 'Pet: M.Acc.+20', [3] = 'Pet: Haste+10' } },
        Waist = 'Klouskap Sash',
        Legs = 'Assid. Pants +1',
        Feet = { Name = 'Merlinic Crackows', Augment = { [1] = '"Avatar perpetuation cost" -4', [2] = 'Mag. Acc.+18', [3] = '"Refresh"+1', [4] = '"Mag. Atk. Bns."+18', [5] = 'DEX+2' } },
    },
    BloodPact = {
        Head = 'Beckoner\'s Horn +1',
        Neck = 'Melic Torque',
        Ear1 = 'Handler\'s Earring +1',
        Ear2 = 'Handler\'s Earring',
        Body = 'Con. Doublet +2',
        Hands = { Name = 'Glyphic Bracers +1', AugTrial=5302 },
        Ring1 = 'Varar Ring +1',
        Ring2 = 'Evoker\'s Ring',
        Back = { Name = 'Conveyance Cape', Augment = { [1] = 'Summoning magic skill +1', [2] = 'Blood Pact Dmg.+2', [3] = 'Pet: Enmity+10', [4] = 'Blood Pact ab. del. II -2' } },
        Waist = 'Klouskap Sash',
        Legs = 'Beck. Spats +1',
        Feet = { Name = 'Glyph. Pigaches +1', AugTrial=5304 },
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
end

profile.HandleCommand = function(args)
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
