//this script loads the save data in save.ini to restore the state of players when the game was last saved.

// it requires no arguments


//check save file exists
if (file_exists(working_directory + "save.ini")) 
{
   //open save file

   ini_open(working_directory + "save.ini");

   //load in game variables to local variables
   obj_control.click_damage = ini_read_real('Variables', 'Click damage' , 0);
   obj_control.DPS = ini_read_real('Variables', 'DPS' , 0);
   obj_control.population = ini_read_real('Variables', 'Population' , 0);
   obj_control.afflicted = ini_read_real('Variables', 'Afflicted' , 0);
   obj_control.insanity = ini_read_real('Variables', 'Insanity' , 0);
   
   //load store ds_grid array
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
   
   //close save file
   ini_close();
}
