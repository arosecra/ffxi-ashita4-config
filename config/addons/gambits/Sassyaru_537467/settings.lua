require('common');

local settings = T{ };
settings["PUP"] = T{ };
settings["PUP"]["gambits"] = T{ };
settings["PUP"]["gambits"][1] = T{ };
settings["PUP"]["gambits"][1]["conditions"] = T{ };
settings["BRD"] = T{ };
settings["BRD"]["gambits"] = T{ };
settings["BRD"]["gambits"][1] = T{ };
settings["BRD"]["gambits"][1]["conditions"] = T{ };
settings["PUP"]["gambits"][1]["label"] = "Gambit 1 maneuver";
settings["PUP"]["gambits"][1]["selected"] = "maneuver";
settings["PUP"]["gambits"][1]["condition_count"] = 0;
settings["PUP"]["gambits"][1]["on"] = true;
settings["PUP"]["count"] = 1;
settings["BRD"]["gambits"][1]["label"] = "Gambit 1 songs";
settings["BRD"]["gambits"][1]["selected"] = "songs";
settings["BRD"]["gambits"][1]["condition_count"] = 0;
settings["BRD"]["gambits"][1]["on"] = true;
settings["BRD"]["count"] = 1;

return settings;
