/* scr_calc_dps - HM
returns the dps of the item specified at the current level of the item
*/
var target_item = argument[0];

var item_efficiency_multiplier = obj_store_control.store[# 4, target_item];
var item_level = obj_store_control.store[# 2, target_item];
var item_cost = scr_calc_price(target_item, item_level);

// OLD: Initial Cost * (Global_Cost_Increase_Rate ^ Item_Level)
// TRIED: (Current_Cost / Cost_vs_DPS_Relationship_Var) * (Item_Multiplier - (Level * 0.01))
// NEW: (Current_Cost/Cost_vs_DPS_Relationship_Var)*(Item_Efficiency_Multiplier+ Item_Efficiency_Multiplier*(0.01 * Item_Level))

// && * sign(item_level) to prevent dps calc on level zero!


return func_decimal(((item_cost / obj_control.cost_dps_multi) * (item_efficiency_multiplier + item_efficiency_multiplier *(0.01 * item_level))) * sign(item_level) , 2);
