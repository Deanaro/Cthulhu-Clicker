store_item_number = argument[0]; //store item number 

if (obj_store_control.store[# 2, (store_item_number-1)] >= 1) {
    return 1;
} else {
    return 0;
}
