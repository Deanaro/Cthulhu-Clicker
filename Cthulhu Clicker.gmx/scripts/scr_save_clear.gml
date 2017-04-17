//this script can be called at any time to delete the save file


//check for and delete old file
if (file_exists("save.ini")) 
   {
   file_delete("save.ini");
   }


