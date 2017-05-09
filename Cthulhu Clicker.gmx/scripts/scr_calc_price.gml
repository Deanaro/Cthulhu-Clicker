/* scr_calc_price - HM
returns the price of an item given the item array number and the required level upgrade cost
if no level is provided, the current level price is returned
1st argument = array item number
2nd argument = item level
*/

var target_item = argument[0];

var item_base_cost = obj_store_control.store[# 3, target_item];
var target_level = obj_store_control.store[# 2, target_item];

if (argument_count > 1) {
    target_level += argument[1];
}

// Initial Cost * (Global_Cost_Increase_Rate ^ Item_Level)
return func_decimal(item_base_cost * (power((obj_control.cost_increase_rate), target_level)), 2);
