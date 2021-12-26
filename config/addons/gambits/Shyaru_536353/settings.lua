require('common');

local settings = T{ };
settings["WHM"] = T{ };
settings["WHM"]["gambits"] = T{ };
settings["WHM"]["gambits"][1] = T{ };
settings["WHM"]["gambits"][1]["conditions"] = T{ };
settings["WHM"]["gambits"][1]["label"] = "Gambit 1 ";
settings["WHM"]["gambits"][1]["selected"] = "";
settings["WHM"]["gambits"][1]["condition_count"] = 0;
settings["WHM"]["gambits"][1]["on"] = false;
settings["WHM"]["count"] = 1;

return settings;
