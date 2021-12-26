require('common');

local settings = T{ };
settings["COR"] = T{ };
settings["COR"]["gambits"] = T{ };
settings["COR"]["gambits"][1] = T{ };
settings["COR"]["gambits"][1]["conditions"] = T{ };
settings["COR"]["gambits"][2] = T{ };
settings["COR"]["gambits"][2]["conditions"] = T{ };
settings["COR"]["gambits"][1]["label"] = "Gambit 1 phantom_roll_1";
settings["COR"]["gambits"][1]["selected"] = "phantom_roll_1";
settings["COR"]["gambits"][1]["condition_count"] = 0;
settings["COR"]["gambits"][1]["on"] = true;
settings["COR"]["gambits"][2]["label"] = "Gambit 2 phantom_roll_2";
settings["COR"]["gambits"][2]["selected"] = "phantom_roll_2";
settings["COR"]["gambits"][2]["condition_count"] = 0;
settings["COR"]["gambits"][2]["on"] = true;
settings["COR"]["count"] = 2;

return settings;
