//this script can be called at any time to initiate a save


//check for and delete old file
if (file_exists("save.ini")) 
   {
   file_delete("save.ini");
   }

//create new save file
ini_open(working_directory + "save.ini");

//save non arrayed values
ini_write_real('Variables', 'Click damage' , click_damage);
ini_write_real('Variables', 'DPS' , DPS);
ini_write_real('Variables', 'Population' , population);
ini_write_real('Variables', 'Afflicted' , afflicted);
ini_write_real('Variables', 'Insanity' , insanity);

//save store ds grid array
//save the store array size
ini_write_real('store dimentions', 'store height' , ds_grid_height(obj_store_control.store));
ini_write_real('store dimentions', 'store width' , ds_grid_width(obj_store_control.store));

//set saving variables
Ymax = round(ds_grid_height(obj_store_control.store));
i = 0;
//loop through grid height
while (i <= Ymax)
{
    
    //save each width positon
        ini_write_string('0', 'name' + string(i) , string(ds_grid_get(obj_store_control.store, 0, i)));//name
        ini_write_real('1', 'level' + string(i), real(ds_grid_get(obj_store_control.store, 1, i)));//level
        ini_write_real('2', 'stat' + string(i), real(ds_grid_get(obj_store_control.store, 2, i)));//stat
        ini_write_string('3', 'icon' + string(i), string(ds_grid_get(obj_store_control.store, 3, i)));//icon
        

    i = i + 1;   
}

//save the current time from local time
date_set_timezone(timezone_utc);
ini_write_real('time', 'local', date_current_datetime());



//close ini completing save
ini_close();

