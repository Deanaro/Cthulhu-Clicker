///updates the cost and damage of items in the store
//~DC
obj_control.DPS = 0;
for(var i =0;i < ds_grid_height(obj_store_control.store);i++)
{
//    price
obj_store_control.item_price[i] = floor(obj_store_control.store[# 3, i] * power(1.07,obj_store_control.store[# 2, i]));
//    DPS
obj_store_control.item_DPS[i] = floor(obj_store_control.store[# 3, i] * obj_store_control.store[# 2, i]/20);
obj_control.DPS += obj_store_control.item_DPS[i];
}
