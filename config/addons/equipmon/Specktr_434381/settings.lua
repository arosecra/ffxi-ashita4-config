require('common');

local settings = T{ };
settings["padding"] = T{ };
settings["scale"] = T{ };
settings["slots"] = T{ };
settings["slots"]["theme"] = T{ };
settings["slots"]["show_ammo_count"] = T{ };
settings["slots"]["show_bg"] = T{ };
settings["slots"]["show_encumbrance"] = T{ };
settings["visible"] = T{ };
settings["background"] = T{ };
settings["ammo_font"] = T{ };
settings["ammo_font"]["background"] = T{ };
settings["y"] = T{ };
settings["x"] = T{ };
settings["opacity"] = T{ };
settings["padding"][1] = 1;
settings["scale"][1] = 1;
settings["slots"]["theme"][1] = 0;
settings["slots"]["show_ammo_count"][1] = true;
settings["slots"]["show_bg"][1] = true;
settings["slots"]["show_encumbrance"][1] = true;
settings["visible"][1] = true;
settings["background"]["visible"] = true;
settings["background"]["can_focus"] = false;
settings["background"]["locked"] = true;
settings["background"]["color"] = 2147483648;
settings["ammo_font"]["font_height"] = 12;
settings["ammo_font"]["font_family"] = "Arial";
settings["ammo_font"]["bold"] = true;
settings["ammo_font"]["color"] = 4294967295;
settings["ammo_font"]["visible"] = true;
settings["ammo_font"]["background"]["visible"] = false;
settings["ammo_font"]["color_outline"] = 4278190080;
settings["ammo_font"]["draw_flags"] = 48;
settings["y"][1] = 760;
settings["x"][1] = 740;
settings["opacity"][1] = 1;

return settings;
