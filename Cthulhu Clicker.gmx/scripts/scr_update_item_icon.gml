///Check and set icon sprite -HM


//Check if an item unlocked is required and check if purchased
if (scr_check_unlocked() = 1) { //if item unlocker is required
        item_icon_unlocked = obj_store_control.store[# 1, parent];
        item_icon = item_icon_unlocked;
} else {
        item_icon = item_icon_locked;
}


sprite_index = item_icon;
