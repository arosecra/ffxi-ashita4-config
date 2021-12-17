require('common')
local common_logic = {};

common_logic.pet_action_info = {
	[512]={name="Healing_Ruby",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[513]={name="Poison_Nails",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[514]={name="Shining_Ruby",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[515]={name="Glittering_Ruby",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[516]={name="Meteorite",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[517]={name="Healing_Ruby_II",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[518]={name="Searing_Light",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[519]={name="Holy_Mist",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[520]={name="Soothing_Ruby",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[521]={name="Regal_Scratch",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[522]={name="Mewing_Lullaby",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[523]={name="Eerie_Eye",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[524]={name="Level_?_Holy",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[525]={name="Raise_II",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[526]={name="Reraise_II",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[527]={name="Altana's_Favor",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[528]={name="Moonlit_Charge",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[529]={name="Crescnamet_Fang",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[530]={name="Lunar_Cry",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[531]={name="Lunar_Roar",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[532]={name="Ecliptic_Growl",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[533]={name="Ecliptic_Howl",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[534]={name="Eclipse_Bite",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[536]={name="Howling_Moon",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[537]={name="Lunar_Bay",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[538]={name="Heavnameward_Howl",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[539]={name="Impact",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[544]={name="Punch",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[545]={name="Fire_II",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[546]={name="Burning_Strike",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[547]={name="Double_Punch",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[548]={name="Crimson_Howl",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[549]={name="Fire_IV",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[550]={name="Flaming_Crush",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[551]={name="Meteor_Strike",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[552]={name="Inferno",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[553]={name="Inferno_Howl",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[554]={name="Conflag_Strike",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[560]={name="Rock_Throw",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[561]={name="Stone_II",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[562]={name="Rock_Buster",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[563]={name="Megalith_Throw",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[564]={name="Earthname_Ward",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[565]={name="Stone_IV",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[566]={name="Mountain_Buster",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[567]={name="Geocrush",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[568]={name="Earthname_Fury",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[569]={name="Earthname_Armor",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[570]={name="Crag_Throw",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[576]={name="Barracuda_Dive",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[577]={name="Water_II",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[578]={name="Tail_Whip",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[579]={name="Spring_Water",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[580]={name="Slowga",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[581]={name="Water_IV",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[582]={name="Spinning_Dive",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[583]={name="Grand_Fall",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[584]={name="Tidal_Wave",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[585]={name="Tidal_Roar",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[586]={name="Soothing_Currnamet",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[592]={name="Claw",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[593]={name="Aero_II",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[594]={name="Whispering_Wind",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[595]={name="Hastega",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[596]={name="Aerial_Armor",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[597]={name="Aero_IV",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[598]={name="Predator_Claws",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[599]={name="Wind_Blade",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[600]={name="Aerial_Blast",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[601]={name="Fleet_Wind",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[602]={name="Hastega_II",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[608]={name="Axe_Kick",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[609]={name="Blizzard_II",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[610]={name="Frost_Armor",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[611]={name="Sleepga",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[612]={name="Double_Slap",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[613]={name="Blizzard_IV",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[614]={name="Rush",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[615]={name="Heavnamely_Strike",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[616]={name="Diamond_Dust",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[617]={name="Diamond_Storm",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[618]={name="Crystal_Blessing",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[624]={name="Shock_Strike",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[625]={name="Thunder_II",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[626]={name="Rolling_Thunder",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[627]={name="Thunderspark",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[628]={name="Lightning_Armor",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[629]={name="Thunder_IV",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[630]={name="Chaotic_Strike",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[631]={name="Thunderstorm",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[632]={name="Judgmnamet_Bolt",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[633]={name="Shock_Squall",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[634]={name="Volt_Strike",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[639]={name="Healing_Breath_IV",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[640]={name="Healing_Breath",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[641]={name="Healing_Breath_II",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[642]={name="Healing_Breath_III",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[643]={name="Remove_Poison",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[644]={name="Remove_Blindness",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[645]={name="Remove_Paralysis",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[646]={name="Flame_Breath",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[647]={name="Frost_Breath",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[648]={name="Gust_Breath",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[649]={name="Sand_Breath",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[650]={name="Lightning_Breath",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[651]={name="Hydro_Breath",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[652]={name="Super_Climb",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[653]={name="Remove_Curse",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[654]={name="Remove_Disease",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[656]={name="Camisado",type="Blood_Pact_Rage",set="Blood_Pact_Physical"},
	[657]={name="Somnolnamece",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[658]={name="Nightmare",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[659]={name="Ultimate_Terror",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[660]={name="Noctoshield",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[661]={name="Dream_Shroud",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[662]={name="Nether_Blast",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[663]={name="Cacodemonia",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[664]={name="Ruinous_Omname",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[665]={name="Night_Terror",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[666]={name="Pavor_Nocturnus",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[667]={name="Blindside",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[668]={name="Deconstruction",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[669]={name="Chronoshift",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[670]={name="Zantetsukname",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[671]={name="Perfect_Defnamese",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[672]={name="Foot_Kick",type="Jug"},
	[673]={name="Dust_Cloud",type="Jug"},
	[674]={name="Whirl_Claws",type="Jug"},
	[675]={name="Head_Butt",type="Jug"},
	[676]={name="Dream_Flower",type="Jug"},
	[677]={name="Wild_Oats",type="Jug"},
	[678]={name="Leaf_Dagger",type="Jug"},
	[679]={name="Scream",type="Jug"},
	[680]={name="Roar",type="Jug"},
	[681]={name="Razor_Fang",type="Jug"},
	[682]={name="Claw_Cyclone",type="Jug"},
	[683]={name="Tail_Blow",type="Jug"},
	[684]={name="Fireball",type="Jug"},
	[685]={name="Blockhead",type="Jug"},
	[686]={name="Brain_Crush",type="Jug"},
	[687]={name="Infrasonics",type="Jug"},
	[688]={name="Secretion",type="Jug"},
	[689]={name="Lamb_Chop",type="Jug"},
	[690]={name="Rage",type="Jug"},
	[691]={name="Sheep_Charge",type="Jug"},
	[692]={name="Sheep_Song",type="Jug"},
	[693]={name="Bubble_Shower",type="Jug"},
	[694]={name="Bubble_Curtain",type="Jug"},
	[695]={name="Big_Scissors",type="Jug"},
	[696]={name="Scissor_Guard",type="Jug"},
	[697]={name="Metallic_Body",type="Jug"},
	[698]={name="Needleshot",type="Jug"},
	[699]={name="???_Needles",type="Jug"},
	[700]={name="Frogkick",type="Jug"},
	[701]={name="Spore",type="Jug"},
	[702]={name="Queasyshroom",type="Jug"},
	[703]={name="Numbshroom",type="Jug"},
	[704]={name="Shakeshroom",type="Jug"},
	[705]={name="Silnamece_Gas",type="Jug"},
	[706]={name="Dark_Spore",type="Jug"},
	[707]={name="Power_Attack",type="Jug"},
	[708]={name="Hi-Freq_Field",type="Jug"},
	[709]={name="Rhino_Attack",type="Jug"},
	[710]={name="Rhino_Guard",type="Jug"},
	[711]={name="Spoil",type="Jug"},
	[712]={name="Cursed_Sphere",type="Jug"},
	[713]={name="Vnameom",type="Jug"},
	[714]={name="Sandblast",type="Jug"},
	[715]={name="Sandpit",type="Jug"},
	[716]={name="Vnameom_Spray",type="Jug"},
	[717]={name="Mandibular_Bite",type="Jug"},
	[718]={name="Soporific",type="Jug"},
	[719]={name="Gloeosuccus",type="Jug"},
	[720]={name="Palsy_Pollname",type="Jug"},
	[721]={name="Geist_Wall",type="Jug"},
	[722]={name="Numbing_Noise",type="Jug"},
	[723]={name="Nimble_Snap",type="Jug"},
	[724]={name="Cyclotail",type="Jug"},
	[725]={name="Toxic_Spit",type="Jug"},
	[726]={name="Double_Claw",type="Jug"},
	[727]={name="Grapple",type="Jug"},
	[728]={name="Spinning_Top",type="Jug"},
	[729]={name="Filamnameted_Hold",type="Jug"},
	[730]={name="Chaotic_Eye",type="Jug"},
	[731]={name="Blaster",type="Jug"},
	[732]={name="Suction",type="Jug"},
	[733]={name="Drainkiss",type="Jug"},
	[734]={name="Snow_Cloud",type="Jug"},
	[735]={name="Wild_Carrot",type="Jug"},
	[736]={name="Suddname_Lunge",type="Jug"},
	[737]={name="Spiral_Spin",type="Jug"},
	[738]={name="Noisome_Powder",type="Jug"},
	[740]={name="Acid_Mist",type="Jug"},
	[741]={name="TP_Drainkiss",type="Jug"},
	[743]={name="Scythe_Tail",type="Jug"},
	[744]={name="Ripper_Fang",type="Jug"},
	[745]={name="Chomp_Rush",type="Jug"},
	[746]={name="Charged_Whisker",type="Jug"},
	[747]={name="Purulnamet_Ooze",type="Jug"},
	[748]={name="Corrosive_Ooze",type="Jug"},
	[749]={name="Back_Heel",type="Jug"},
	[750]={name="Jettatura",type="Jug"},
	[751]={name="Choke_Breath",type="Jug"},
	[752]={name="Fantod",type="Jug"},
	[753]={name="Tortoise_Stomp",type="Jug"},
	[754]={name="Hardname_Shell",type="Jug"},
	[755]={name="Aqua_Breath",type="Jug"},
	[756]={name="Wing_Slap",type="Jug"},
	[757]={name="Beak_Lunge",type="Jug"},
	[758]={name="Intimidate",type="Jug"},
	[759]={name="Recoil_Dive",type="Jug"},
	[760]={name="Water_Wall",type="Jug"},
	[761]={name="Snamesilla_Blades",type="Jug"},
	[762]={name="Tegmina_Buffet",type="Jug"},
	[763]={name="Molting_Plumage",type="Jug"},
	[764]={name="Swooping_Frnamezy",type="Jug"},
	[765]={name="Sweeping_Gouge",type="Jug"},
	[766]={name="Zealous_Snort",type="Jug"},
	[767]={name="Pnametapeck",type="Jug"},
	[768]={name="Tickling_Tnamedrils",type="Jug"},
	[769]={name="Stink_Bomb",type="Jug"},
	[770]={name="Nectarous_Deluge",type="Jug"},
	[771]={name="Nepnamethic_Plunge",type="Jug"},
	[772]={name="Somersault",type="Jug"},
	[773]={name="Pacifying_Ruby",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[774]={name="Foul_Waters",type="Jug"},
	[775]={name="Pestilnamet_Plume",type="Jug"},
	[776]={name="Pecking_Flurry",type="Jug"},
	[777]={name="Sickle_Slash",type="Jug"},
	[778]={name="Acid_Spray",type="Jug"},
	[779]={name="Spider_Web",type="Jug"},
	[780]={name="Regal_Gash",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[781]={name="Infected_Leech",type="Jug"},
	[782]={name="Gloom_Spray",type="Jug"},
	[786]={name="Disembowel",type="Jug"},
	[787]={name="Extirpating_Salvo",type="Jug"},
	[788]={name="Vnameom_Shower",type="Jug"},
	[789]={name="Mega_Scissors",type="Jug"},
	[790]={name="Frnamezied_Rage",type="Jug"},
	[791]={name="Rhinowrecker",type="Jug"},
	[792]={name="Fluid_Toss",type="Jug"},
	[793]={name="Fluid_Spread",type="Jug"},
	[794]={name="Digest",type="Jug"},
	[795]={name="Crossthrash",type="Jug"},
	[796]={name="Predatory_Glare",type="Jug"},
	[797]={name="Hoof_Volley",type="Jug"},
	[798]={name="Nihility_Song",type="Jug"},
	[960]={name="Clarsach_Call",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[961]={name="Welt",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[962]={name="Katabatic_Blades",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[963]={name="Lunatic_Voice",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[964]={name="Roundhouse",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[965]={name="Chinook",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[966]={name="Bitter_Elegy",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[967]={name="Sonic_Buffet",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[968]={name="Tornado_II",type="Blood_Pact_Rage",set="Blood_Pact_Magical"},
	[969]={name="Wind's_Blessing",type="Blood_Pact_Ward",set="Blood_Pact_Ward"},
	[970]={name="Hysteric_Assault",type="Blood_Pact_Rage",set="Blood_Pact_Magical"}
}

common_logic.pact_names = {
	["Healing_Ruby"]		=512,
	["Poison_Nails"]		=513,
	["Shining_Ruby"]		=514,
	["Glittering_Ruby"]		=515,
	["Meteorite"]			=516,
	["Healing_Ruby_II"]		=517,
	["Searing_Light"]		=518,
	["Holy_Mist"]			=519,
	["Soothing_Ruby"]		=520,
	["Regal_Scratch"]		=521,
	["Mewing_Lullaby"]		=522,
	["Eerie_Eye"]			=523,
	["Level_?_Holy"]		=524,
	["Raise_II"]			=525,
	["Reraise_II"]			=526,
	["Altana's_Favor"]		=527,
	["Moonlit_Charge"]		=528,
	["Crescnamet_Fang"]		=529,
	["Lunar_Cry"]			=530,
	["Lunar_Roar"]			=531,
	["Ecliptic_Growl"]		=532,
	["Ecliptic_Howl"]		=533,
	["Eclipse_Bite"]		=534,
	["Howling_Moon"]		=536,
	["Lunar_Bay"]			=537,
	["Heavnameward_Howl"]	=538,
	["Impact"]				=539,
	["Punch"]				=544,
	["Fire_II"]				=545,
	["Burning_Strike"]		=546,
	["Double_Punch"]		=547,
	["Crimson_Howl"]		=548,
	["Fire_IV"]				=549,
	["Flaming_Crush"]		=550,
	["Meteor_Strike"]		=551,
	["Inferno"]				=552,
	["Inferno_Howl"]		=553,
	["Conflag_Strike"]		=554,
	["Rock_Throw"]			=560,
	["Stone_II"]			=561,
	["Rock_Buster"]			=562,
	["Megalith_Throw"]		=563,
	["Earthname_Ward"]		=564,
	["Stone_IV"]			=565,
	["Mountain_Buster"]		=566,
	["Geocrush"]			=567,
	["Earthname_Fury"]		=568,
	["Earthname_Armor"]		=569,
	["Crag_Throw"]			=570,
	["Barracuda_Dive"]		=576,
	["Water_II"]			=577,
	["Tail_Whip"]			=578,
	["Spring_Water"]		=579,
	["Slowga"]				=580,
	["Water_IV"]			=581,
	["Spinning_Dive"]		=582,
	["Grand_Fall"]			=583,
	["Tidal_Wave"]			=584,
	["Tidal_Roar"]			=585,
	["Soothing_Currnamet"]	=586,
	["Claw"]				=592,
	["Aero_II"]				=593,
	["Whispering_Wind"]		=594,
	["Hastega"]				=595,
	["Aerial_Armor"]		=596,
	["Aero_IV"]				=597,
	["Predator_Claws"]		=598,
	["Wind_Blade"]			=599,
	["Aerial_Blast"]		=600,
	["Fleet_Wind"]			=601,
	["Hastega_II"]			=602,
	["Axe_Kick"]			=608,
	["Blizzard_II"]			=609,
	["Frost_Armor"]			=610,
	["Sleepga"]				=611,
	["Double_Slap"]			=612,
	["Blizzard_IV"]			=613,
	["Rush"]				=614,
	["Heavnamely_Strike"]	=615,
	["Diamond_Dust"]		=616,
	["Diamond_Storm"]		=617,
	["Crystal_Blessing"]	=618,
	["Shock_Strike"]		=624,
	["Thunder_II"]			=625,
	["Rolling_Thunder"]		=626,
	["Thunderspark"]		=627,
	["Lightning_Armor"]		=628,
	["Thunder_IV"]			=629,
	["Chaotic_Strike"]		=630,
	["Thunderstorm"]		=631,
	["Judgmnamet_Bolt"]		=632,
	["Shock_Squall"]		=633,
	["Volt_Strike"]			=634,
	["Healing_Breath_IV"]	=639,
	["Healing_Breath"]		=640,
	["Healing_Breath_II"]	=641,
	["Healing_Breath_III"]	=642,
	["Remove_Poison"]		=643,
	["Remove_Blindness"]	=644,
	["Remove_Paralysis"]	=645,
	["Flame_Breath"]		=646,
	["Frost_Breath"]		=647,
	["Gust_Breath"]			=648,
	["Sand_Breath"]			=649,
	["Lightning_Breath"]	=650,
	["Hydro_Breath"]		=651,
	["Super_Climb"]			=652,
	["Remove_Curse"]		=653,
	["Remove_Disease"]		=654,
	["Camisado"]			=656,
	["Somnolnamece"]		=657,
	["Nightmare"]			=658,
	["Ultimate_Terror"]		=659,
	["Noctoshield"]			=660,
	["Dream_Shroud"]		=661,
	["Nether_Blast"]		=662,
	["Cacodemonia"]			=663,
	["Ruinous_Omname"]		=664,
	["Night_Terror"]		=665,
	["Pavor_Nocturnus"]		=666,
	["Blindside"]			=667,
	["Deconstruction"]		=668,
	["Chronoshift"]			=669,
	["Zantetsukname"]		=670,
	["Perfect_Defnamese"]	=671,
	["Clarsach_Call"]		=960,
	["Welt"]				=961,
	["Katabatic_Blades"]	=962,
	["Lunatic_Voice"]		=963,
	["Roundhouse"]			=964,
	["Chinook"]				=965,
	["Bitter_Elegy"]		=966,
	["Sonic_Buffet"]		=967,
	["Tornado_II"]			=968,
	["Wind's_Blessing"]		=969,
	["Hysteric_Assault"]	=970
}

common_logic.OnLoad = function(gSettings, gFunc, settings)
    gSettings.AllowAddSet = true;
end

common_logic.OnUnload = function(sets, gFunc, gData, gState, gSettings, settings)
end

common_logic.HandleCommand = function(args, gFunc, Settings)
	if (args[1] == 'setvar') then
        Settings[args[2]] = args[3]
		print('setting ' .. args[2] .. ' to ' .. args[3])
    end
end

common_logic.HandleDefault = function(sets, gFunc, gData, gState, gSettings, settings)
    local player = gData.GetPlayer();
	
	local petAction = gState.PetAction;
    if (petAction ~= nil) then
		local petActionInfo = common_logic.pet_action_info[petAction.Id]
		if petActionInfo ~= nil and petActionInfo.set ~= nil and sets[petActionInfo.set] then
			gFunc.EquipSet(sets[petActionInfo.set])
		end
	else 
		if player.IsMoving then
			gFunc.EquipSet(sets.Moving)
		else
			gFunc.EquipSet('TP_' .. settings.Strategy);
		end
	end
	
	
end

common_logic.HandleAbility = function(sets, gFunc, gData, gState, gSettings, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	local actionFamily = actionName;
	
	local petAction = gState.PetAction;
    if (common_logic.pact_names[actionName] ~= nil) then
		actionFamily = "BloodPact"
	end
	
	if string.match(actionName, "_Roll") then
		actionFamily = "Phantom_Roll"
	elseif string.match(actionName, '_Maneuver') then
		actionFamily = "Maneuver"
	end
	--print(actionSkill)
	--print(actionType)
	print(actionName)
	--print(actionFamily)
	
	if sets[actionName] ~= nil then
		gFunc.EquipSet(sets[actionName]);
	elseif sets[actionFamily] ~= nil then
		gFunc.EquipSet(sets[actionFamily]);
	end
end

common_logic.HandleItem = function(sets, gFunc, gData, gState, gSettings, settings)
end

common_logic.HandlePrecast = function(sets, gFunc, gData, gState, gSettings, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	local actionType = action.ActionType:gsub("%s+", "_");
	local actionSkill = action.Skill:gsub("%s+", "_");
	if actionSkill == 'Singing' and sets.SongFastCast ~= nil then
		gFunc.EquipSet(sets.SongFastCast)	
	elseif sets.FastCast ~= nil then
		gFunc.EquipSet(sets.FastCast)
	end
end

common_logic.HandleMidcast = function(sets, gFunc, gData, gState, gSettings, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	local actionType = action.ActionType:gsub("%s+", "_");
	local actionSkill = action.Skill:gsub("%s+", "_");
	local actionFamily = actionName;
	
	
	--local petAction = gData.GetPetAction();
    --if (petAction ~= nil) then
	--	print("Pet Action in midcast")
	--	print(action.Name)
	--	print(petAction.Id)
	--	print(petAction.Name)
	--	print(petAction.Type)
	--	print(petAction.ActionType)
	--end
	
	local petAction = gData.GetPetAction();
    if (petAction ~= nil) then
		--print(petAction.Name)
        
	else
		if actionSkill == 'Singing' then
			if actionName == 'Pining_Nocturne' or
			   string.match(actionName, "Foe_Requiem") or
			   string.match(actionName, "Elegy") or
			   actionName == 'Magic_Finale' or
			   string.match(actionName, "Threnody") then
				actionFamily = 'SongAcc'
			else
				actionFamily = 'SongBuff'
			end
		end
		
		if string.match(actionName, 'Helix') then
			actionFamily = "Helix"
		end
		
		if string.match(actionName, 'Protect') then
			actionFamily = "Protect"
		end
		
		if actionSkill == 'Enhancing_Magic' then
			local perpetuance = gData.GetBuffCount(469)
			if perpetuance == 1 then
				if sets[actionName .. '_Perpetuance'] ~= nil then
					actionName = actionName .. '_Perpetuance';
				elseif sets[actionFamily .. '_Perpetuance'] ~= nil then
					actionFamily = actionFamily .. '_Perpetuance';
				elseif sets[actionSkill .. '_Perpetuance'] ~= nil then
					actionSkill = actionSkill .. '_Perpetuance';
				end
			end
		end
		
		--actual equiping happens here
		if sets[actionName] ~= nil then
			gFunc.EquipSet(sets[actionName]);
		elseif sets[actionFamily] ~= nil then
			gFunc.EquipSet(sets[actionFamily])
		elseif sets[actionSkill] ~= nil then
			gFunc.EquipSet(sets[actionSkill]);
		end
	end

			--print(actionSkill)
			--print(actionType)
end

common_logic.HandlePreshot = function(sets, gFunc, gData, gState, gSettings, settings)
	if sets.PreShot ~= nil then
		gFunc.EquipSet(sets.PreShot)
	end
end

common_logic.HandleMidshot = function(sets, gFunc, gData, gState, gSettings, settings)
	if sets.MidShot ~= nil then
		gFunc.EquipSet(sets.MidShot)
	end
end

common_logic.HandleWeaponskill = function(sets, gFunc, gData, gState, gSettings, settings)
	local action = gData.GetAction();
	local actionName = action.Name:gsub("%s+", "_");
	local actionType = action.ActionType:gsub("%s+", "_");
	if sets[actionName] ~= nil then
		gFunc.EquipSet(sets[actionName]);
	elseif sets[actionType] ~= nil then
		gFunc.EquipSet(sets[actionType]);
	end
end

return common_logic;
