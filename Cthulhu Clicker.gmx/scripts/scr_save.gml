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

//check if current dps is higher then highest dps before - lachlan

if (obj_control.DPS > obj_control.stats_array[5,1])
    {
    obj_control.stats_array[5,1] = obj_control.DPS;
    }

//calculate active play time -lachlan
stats_array[8,1] = real(stats_array[8,1]) + date_second_span(obj_control.last_save_time, date_current_datetime());
obj_control.last_save_time = date_current_datetime();

//save statistics array - lachlan
r = 0;
t = 0;
position = 0;
//loop array
while (r <= array_height_2d(stats_array) - 1)
    {
    while (t <= array_length_2d(stats_array, 0) - 1)
        {
        //check if data is string
        if (is_string(stats_array[r,t]))
            {
            ini_write_string('stats_array', 'positon' + string(position), stats_array[r,t]);
            }
        else
            {
            ini_write_real('stats_array', 'positon' + string(position), stats_array[r,t]);
            }
            //add 1 to position
            position = position + 1;
            //increase t
            t = t + 1;
            
        }
    //increase r
    r = r + 1;
    //reset t
    t = 0;
    }
//save position to make load easyer to handle
ini_write_real('stats_array', 'positon_max', (array_height_2d(stats_array) * 2) - 1);

//close ini completing save
ini_close();

