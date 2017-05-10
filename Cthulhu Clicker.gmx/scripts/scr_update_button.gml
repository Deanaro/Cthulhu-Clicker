//If item is locked, change item cost to 'Max Level' indicator
if (obj_store_control.store[# 7, parent] = 1) {
    button_text = "MAX LVL!";
} else {
    button_text = string(obj_store_control.item_price[parent]);
}
