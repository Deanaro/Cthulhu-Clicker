//this script loads the save data in save.ini to restore the state of players when the game was last saved.

// it requires no arguments


//check save file exists
if (file_exists(working_directory + "save.ini")) 
{
   //open save file

   ini_open(working_directory + "save.ini");

   //load in spawn location to loval variables
   click_damage = ini_read_real('Variables', 'Click damage' , 0);
   DPS = ini_read_real('Variables', 'DPS' , 0);
   population = ini_read_real('Variables', 'Population' , 0);
   afflicted = ini_read_real('Variables', 'Afflicted' , 0);
   insanity = ini_read_real('Variables', 'Insanity' , 0);
   
   //close save file
   ini_close();
}