store = ds_grid_create(9,0); //index,name,level,startval,icon


//set max level to -1 if there is no max level.
//item type is indexed. item types will be defined later.
//set event level to 0 if there is no event.
// name 0, icon 1, level 2, base stat 3, multiplayer 4, item type 5, max level 6, locked 7, event level 8, event x-parameter 9, event y-parameter 10, event sprite 11
scr_item_add("Cultist",spr_placeholdericon,0,10, 2, 0, -1,0,0,0,0,0); // name, icon, level, base stat, multyplayer, item type, max level, locked, event level;
scr_item_add("event test",spr_placeholdericon,0,74, 4, 0, -1,0,5,32,43,spr_cityscape_event); 
scr_item_add("once",spr_placeholdericon,0,215, 5, 0, -1,0,0,0,0,0); 
scr_item_add("told",spr_placeholdericon,0,946, 6, 0, -1,0,0,0,0,0); 
scr_item_add("me",spr_placeholdericon,0,16054, 7, 0, -1,0,0,0,0,0); 
