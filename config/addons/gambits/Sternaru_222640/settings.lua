require('common');

local settings = T{ };
settings["PLD"] = T{ };
settings["PLD"]["gambits"] = T{ };
settings["PLD"]["gambits"][1] = T{ };
settings["PLD"]["gambits"][2] = T{ };
settings["PLD"]["gambits"][2]["conditions"] = T{ };
settings["PLD"]["gambits"][3] = T{ };
settings["PLD"]["gambits"][3]["conditions"] = T{ };
settings["PLD"]["gambits"][4] = T{ };
settings["PLD"]["gambits"][4]["conditions"] = T{ };
settings["PLD"]["gambits"][1]["on"] = false;
settings["PLD"]["gambits"][1]["label"] = "Gambit 1 majesty";
settings["PLD"]["gambits"][1]["condition_count"] = 0;
settings["PLD"]["gambits"][1]["selected"] = "majesty";
settings["PLD"]["gambits"][2]["label"] = "Gambit 2 shield_bash";
settings["PLD"]["gambits"][2]["selected"] = "shield_bash";
settings["PLD"]["gambits"][2]["condition_count"] = 0;
settings["PLD"]["gambits"][2]["on"] = false;
settings["PLD"]["gambits"][3]["label"] = "Gambit 3 cocoon";
settings["PLD"]["gambits"][3]["selected"] = "cocoon";
settings["PLD"]["gambits"][3]["condition_count"] = 0;
settings["PLD"]["gambits"][3]["on"] = true;
settings["PLD"]["gambits"][4]["label"] = "Gambit 4 blank_gaze";
settings["PLD"]["gambits"][4]["selected"] = "blank_gaze";
settings["PLD"]["gambits"][4]["condition_count"] = 0;
settings["PLD"]["gambits"][4]["on"] = false;
settings["PLD"]["count"] = 4;

return settings;
