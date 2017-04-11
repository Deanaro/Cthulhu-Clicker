//this script can be called at any time to initiate a save


//check for and delete old file
if (file_exists("save.ini")) 
   {
   file_delete("save.ini");
   }

//create new save file
ini_open(working_directory + "save.ini");

ini_write_real('Variables', 'Click damage' , click_damage);
ini_write_real('Variables', 'DPS' , DPS);
ini_write_real('Variables', 'Population' , population);
ini_write_real('Variables', 'Afflicted' , afflicted);
ini_write_real('Variables', 'Insanity' , insanity);

//close ini completing save
ini_close();

