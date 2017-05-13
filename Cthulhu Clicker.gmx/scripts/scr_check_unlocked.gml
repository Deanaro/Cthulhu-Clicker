///Check and set icon sprite -HM

var item_level = obj_store_control.store[# 6, parent];
var item_unlock_item_num = obj_store_control.store[# 10, parent];
var item_unlocked = 1;

//Check if an item unlocked is required and check if purchased
if (item_unlock_item_num != 0) { //if item unlocker is required
    if (scr_check_purchased(item_unlock_item_num)) { //if unlocker item is purchased
        item_unlocked = 1;
    } else {
        item_unlocked = 0;
    }
} 

return item_unlocked;
