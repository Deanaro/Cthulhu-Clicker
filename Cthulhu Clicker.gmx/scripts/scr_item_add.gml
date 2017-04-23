///adds an item to the store ds_grid
//~DC
var temp = ds_grid_height(store);
ds_grid_resize(store,10,temp+1);
ds_grid_add(store, 0, temp, argument0);    //name
ds_grid_add(store, 1, temp, argument1);    //icon
ds_grid_add(store, 2, temp, argument2);    //level
ds_grid_add(store, 3, temp, argument3);    //base stat
ds_grid_add(store, 4, temp, argument4);    //multiplayer
ds_grid_add(store, 5, temp, argument5);    //item type
ds_grid_add(store, 6, temp, argument6);    //max level
ds_grid_add(store, 7, temp, argument7);    //locked
ds_grid_add(store, 8, temp, argument8);    //event
ds_grid_add(store, 9, temp, argument9);  //object
