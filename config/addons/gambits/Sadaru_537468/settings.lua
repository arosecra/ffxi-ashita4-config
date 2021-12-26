require('common');

local settings = T{ };
settings["GEO"] = T{ };
settings["GEO"]["gambits"] = T{ };
settings["GEO"]["gambits"][1] = T{ };
settings["GEO"]["gambits"][1]["conditions"] = T{ };
settings["GEO"]["gambits"][2] = T{ };
settings["GEO"]["gambits"][2]["conditions"] = T{ };
settings["GEO"]["gambits"][1]["label"] = "Gambit 1 bubble";
settings["GEO"]["gambits"][1]["selected"] = "bubble";
settings["GEO"]["gambits"][1]["condition_count"] = 0;
settings["GEO"]["gambits"][1]["on"] = true;
settings["GEO"]["gambits"][2]["label"] = "Gambit 2 luopan";
settings["GEO"]["gambits"][2]["selected"] = "luopan";
settings["GEO"]["gambits"][2]["condition_count"] = 0;
settings["GEO"]["gambits"][2]["on"] = false;
settings["GEO"]["count"] = 2;

return settings;
