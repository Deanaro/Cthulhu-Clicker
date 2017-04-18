//this script loads the save data in save.ini to restore the state of players when the game was last saved.

// it requires no arguments


//check save file exists
if (file_exists(working_directory + "save.ini")) 
{
   //open save file

   ini_open(working_directory + "save.ini");

   //load basic variables to local variables-------------------------------------------
   obj_control.click_damage = ini_read_real('Variables', 'Click damage' , 0);
   var DPS = ini_read_real('Variables', 'DPS' , 0);
   var population = ini_read_real('Variables', 'Population' , 0);
   var afflicted = ini_read_real('Variables', 'Afflicted' , 0);
   var insanity = ini_read_real('Variables', 'Insanity' , 0);
   
   //load store ds_grid array----------------------------------------------------------
   Ymax = round(ini_read_real('store dimentions', 'store height' , 38));
   Xmax = round(ini_read_real('store dimentions', 'store width' , 4));
   i = 0;
   
   //make array
   obj_store_control.store = ds_grid_create(Xmax,Ymax); //index,name,level,startval,icon
   
   //fill array
   while (i <= Ymax)
   {
        obj_store_control.store = ds_grid_add(store,0,i, ini_read_string('0', 'name' + string(i) , 'error')); // name
        obj_store_control.store = ds_grid_add(store,1,i,ini_read_real('1', 'level' + string(i) , 0)); // level
        obj_store_control.store = ds_grid_add(store,2,i,ini_read_real('2', 'stat' + string(i) , 0)); // stat
        obj_store_control.store = ds_grid_add(store,3,i,ini_read_real('3', 'icon' + string(i) , 'error')); // icon
   
   i = i + 1;
   
   }
   
   //add dps over time based on save file values---------------------------------------------------
   //save file variables already loaded into control_object
   //set UTC time zone
   date_set_timezone(timezone_utc);
   
   //compare the current and old time to get seconds
   diff = date_second_span(ini_read_real('time', 'local', date_current_datetime()), date_current_datetime());
  
   //calculate damage done and round to nearest interger
   damage = round(diff * DPS);
   
   // update varables with damage done
   population = population - damage;
   afflicted = afflicted + damage;
   insanity = insanity + damage;
   
   //update in game variables with new values
   obj_control.population = population;
   obj_control.afflicted = afflicted;
   obj_control.insanity = insanity;
   
   //close save file
   ini_close();
}
