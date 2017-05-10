///a list of all the items, new items to be created here1
//~DC

store = ds_grid_create(0,0);
//set max level to -1 if there is no max level.
//item type is indexed. item types will be defined later.
//set event level to 0 if there is no event.
//              name 0, icon 1, level 2, base stat 3, multiplier 4, item type 5, max level 6, locked 7, event level 8, event object 9
scr_item_add("Cthulhu's Psyche (Click Damage)",   spr_icon_tentacle,  0,  10,     1.02,     1, 50, 0,  0,  0);
scr_item_add("Uncover Scripture",   spr_icon_tentacle,  0,  50,     1,     0, 1, 0,  0,  0); // name, icon, level, base stat, multyplayer, item type, max level, locked, event level, event object;
scr_item_add("Fey Minions",         spr_icon_locked,    0,  15,     1.2,     0, 50, 0,  0,  0); 
scr_item_add("Demonic Insects",     spr_icon_tentacle,  0,  50,     1.1,  0,  50, 0,  0,  0); 
scr_item_add("Ocean Beast",         spr_icon_locked,    0,  300,    1.05,  0,  50, 0,  0,  0); 
scr_item_add("Cthulhu's Worshippers",spr_icon_tentacle, 0,  2000,   0,     0, 1, 0,  0,  0); 
scr_item_add("Cultist Spread",      spr_icon_tentacle,  0,  750,    1.03,  0,  50, 0,  0,  0); 
scr_item_add("Artefacts Found",     spr_icon_tentacle,  0,  1000,   1.04,  0,  50, 0,  0,  0); 
scr_item_add("Zealots Plead",       spr_icon_tentacle,  0,  3000,   1.05,  0,  50, 0,  0,  0); 
scr_item_add("Pleasure and Pain",   spr_icon_tentacle,  0,  5000,   1.06,  0,  50, 0,  0,  0); 
scr_item_add("Elemental Interference",spr_icon_tentacle,0,  10000,  1.07,  0,  50, 0,  0,  0); 
scr_item_add("Storming Oceans",     spr_icon_tentacle,  0,  50000,  1.08,  0,  50, 0,  0,  0); 
scr_item_add("Blight",              spr_icon_tentacle,  0,  100000, 1.09,  0,  50, 0,  0,  0); 
scr_item_add("Nightmare Pandemic",  spr_icon_tentacle,  0,  200000, 1.1,   0,  50, 0,  0,  0); 
scr_item_add("Ruins Rise",          spr_icon_tentacle,  0,  1000000,0,     0,  50, 0,  0,  0); 
scr_item_add("Blood Sky",           spr_icon_tentacle,  0,  500000, 1.11,  0,  50, 0,  0,  0); 
scr_item_add("Diseased Produce",    spr_icon_tentacle,  0,  750000, 1.12,  0,  50, 0,  0,  0);
scr_item_add("Winged Torment",      spr_icon_tentacle,  0,  1000000,1.13,  0,  50, 0,  0,  0); 
scr_item_add("Mysterious Monolith", spr_icon_tentacle,  0,  1200000,1.14,  0,  50, 0,  0,  0); 
scr_item_add("Godzilla",            spr_icon_tentacle,  0,  1500000,1.15,  0,  50, 0,  0,  0); 
scr_item_add("Tentacle Beasts",     spr_icon_tentacle,  0,  2000000,1.16,  0,  50, 0,  0,  0); 
