store = ds_grid_create(8,0); //index,name,level,startval,icon


//set max level to -1 if there is no max level.
//item type is indexed. item types will be defined later
// name 0, icon 1, level 2, base stat 3, multyplayer 4, item type 5, max level 6, locked 7
scr_item_add("Cultist",spr_placeholdericon,0,10, 2, 0, -1,0); // name, icon, level, base stat, multyplayer, item type, max level, locked;
scr_item_add("somebody",spr_placeholdericon,0,74, 4, 0, -1,0); 
scr_item_add("once",spr_placeholdericon,0,215, 5, 0, -1,0); 
scr_item_add("told",spr_placeholdericon,0,946, 6, 0, -1,0); 
scr_item_add("me",spr_placeholdericon,0,16054, 7, 0, -1,0); 
