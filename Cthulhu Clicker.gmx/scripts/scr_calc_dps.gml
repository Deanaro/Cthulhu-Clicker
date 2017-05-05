/* scr_calc_dps - HM
returns the dps of the item specified at the current level of the item
*/
var target_item = argument[0];

var item_efficiency_multiplier = obj_store_control.store[# 4, target_item];
var item_level = obj_store_control.store[# 2, target_item];
var item_cost = scr_calc_price(target_item, item_level);

return func_decimal(((item_cost / obj_control.cost_dps_multi) * (item_efficiency_multiplier ^ item_level)) * sign(item_level) , 2);
