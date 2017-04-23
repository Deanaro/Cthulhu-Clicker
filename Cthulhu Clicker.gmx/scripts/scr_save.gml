//this script can be called at any time to initiate a save

//requires no arguments

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
//loop through grid height
for(var i = 0; i<Ymax; i++)
{
    
    //save each width positon
        ini_write_real('1', 'level' + string(i), obj_store_control.store[# 2, i]);//level
        
}

//save the current time from local time
date_set_timezone(timezone_utc);
ini_write_real('time', 'local', date_current_datetime());

//save the current server time
ini_write_real('time', 'server time', global.server_datetime);


//close ini completing save
ini_close();

