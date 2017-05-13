///updates the cost and damage of all items in the store
//~DC
var total_cost = 0;
obj_control.DPS = 0;
obj_control.click_damage =1;
for(var item_num =0;item_num < ds_grid_height(obj_store_control.store);item_num++)
{
        //    price
        total_cost = 0;
        for( var buy_multi =0; buy_multi < obj_purchasemultiplier.multiplier[obj_purchasemultiplier.M_index]; buy_multi++)
        {
            total_cost += scr_calc_price(item_num, buy_multi);
        }
        obj_store_control.item_price[item_num] = total_cost;
        
        //    DPS
        obj_store_control.item_DPS[item_num] = scr_calc_dps(item_num);
        
        if obj_store_control.store[# 5,item_num] = 0 //if type = dps
        {
        obj_control.DPS += obj_store_control.item_DPS[item_num];
        }
        else //if type = click
        {
            obj_control.click_damage += obj_store_control.item_DPS[item_num];
        }
        
        //Item LOCK (if max level reached)
        if (obj_store_control.store[# 2, item_num] = obj_store_control.store[# 6, item_num]) {
            obj_store_control.store[# 7, item_num] = 1;
        }
        
    scr_update_all_item_icon();
}

