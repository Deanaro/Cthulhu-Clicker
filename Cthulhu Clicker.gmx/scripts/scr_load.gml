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
         damage = round(diff * DPS);
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
   //pop up to explin no dps due to internet disconnection
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
   
   
   
   
   //close save file
   ini_close();
}
