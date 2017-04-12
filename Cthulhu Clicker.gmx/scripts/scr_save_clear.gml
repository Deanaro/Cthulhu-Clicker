//this script can be called at any time to initiate a save


//check for and delete old file
if (file_exists("save.ini")) 
   {
   file_delete("save.ini");
   }

//create new save file
ini_open(working_directory + "save.ini");

ini_write_real('Variables', 'Click damage' , 1);
ini_write_real('Variables', 'DPS' , 0);
ini_write_real('Variables', 'Population' , 7000000000);
ini_write_real('Variables', 'Afflicted' , 0);
ini_write_real('Variables', 'Insanity' , 0);

//close ini completing save
ini_close();

scr_load();
