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
   var counter_dps = ini_read_real('Variables', 'Counter dps' , 0);
  
   
   //fill array
   
   for(var i =0; i < ds_grid_height(obj_store_control.store); i++)
   {
        obj_store_control.store[# 2, i] = ini_read_real('1', 'level' + string(i) , 0);
   }
   
   //add dps over time based on save file values---------------------------------------------------
   //save file variables already loaded into control_object
   //set UTC time zone
   date_set_timezone(timezone_utc);
   
   //get save date time
   var save_datetime = ini_read_real('time', 'server time', global.server_datetime);
   
   //check if server time was not recived this play or last play note: compared time is server time as of writing script
   if(global.server_datetime > 1492918508)
   {
        if (save_datetime > 1492918508)
        {
         //compare the current and old time to get seconds
         var diff =  global.server_datetime - save_datetime;
  
         //calculate damage done and round to nearest interger
         damage = round(diff * (DPS - counter_dps));
         with instance_create(0,0,obj_popup)
         {
         afkinsanity = other.damage;
         }
   
          // update varables with damage done
          population = population - damage;
          afflicted = afflicted + damage;
          insanity = insanity + damage;
   
         //update in game variables with new values
         obj_control.population = population;
         obj_control.afflicted = afflicted;
         obj_control.insanity = insanity;
         }
         
         //pop up to explin no dps due to internet disconnection
         else
            {
                 //set variables
                 obj_control.population = population;
                 obj_control.afflicted = afflicted;
                 obj_control.insanity = insanity;
                 
                 //reason for no dps
                 reason = "
                 no server connection at end of last play";
                 
                 with instance_create(0,0,obj_no_dps)
                 {
                 reason = other.reason;
                 }
                 
             }
   }
   //pop up to explain no dps due to internet disconnection
   else
   {
         obj_control.population = population;
         obj_control.afflicted = afflicted;
         obj_control.insanity = insanity;
         
         //reason for no dps
                 reason = "
                 no server connection established";
                 
                 with instance_create(0,0,obj_no_dps)
                 {
                 reason = other.reason;
                 }
         
   }
   
//load statistics array - lachlan
r = 0;
t = 0;
position = 0;
max_position = ini_read_real('stats_array', 'positon_max', 'error');
//every second entry is a string this is used to keep track of if data will be string or not
string_read = 1;
//loop array
while (position <= max_position)
    {
    while (t <= 1)
        {
        //check if data is string
        if (string_read = 1)
            {
            obj_control.stats_array[r,t] = ini_read_string('stats_array', 'positon' + string(position), 'error');
            strng_read = 0;
            }
        else
            {
            obj_control.stats_array[r,t] = ini_read_real('stats_array', 'positon' + string(position), 'error');
            obj_control.stats_array[r,t] = real(obj_control.stats_array[r,t]);
            strng_read = 1;
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

    
    
//load Boss array - lachlan
r = 0;
t = 0;
position = 0;
max_position = ini_read_real('boss_array', 'positon_max', 'error');
//every second entry is a string this is used to keep track of if data will be string or not

//loop array
while (position <= max_position)
    {
    while (t <= array_length_2d(obj_control.boss_array, r) - 1)
        {
        //1 and 7 columns in the boss table is a string
        if (t = 0 or t = 7)
            {
            obj_control.boss_array[r,t] = ini_read_string('boss_array', 'positon' + string(position), 'error');
            
            }
        else
            {
            obj_control.boss_array[r,t] = ini_read_real('boss_array', 'positon' + string(position), 'error');
            obj_control.boss_array[r,t] = real(obj_control.boss_array[r,t]);
            
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
   
   
   //close save file
   ini_close();
   
   //load highest dps into global - lachlan
   global.highest_dps = real(obj_control.stats_array[5,1]);
   
   //update local time, used to track active playtime - lachlan
   date_set_timezone(timezone_utc);
   local_time = date_current_datetime();
   
}
