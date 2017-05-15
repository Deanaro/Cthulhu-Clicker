//this script will attempt to conntact our time server based on a php scripts url stored on it
//Lachlan


//make request
//server_datetime = http_get("https://lochiejohnson.000webhostapp.com/datetime.php"); - website wasencountering issues at time of commenting,as such another location has been set up.
server_datetime = http_get("http://locdog.x10host.com/php/datetime.php");
//return result
return(server_datetime)
