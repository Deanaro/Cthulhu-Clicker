//adds a sprite to draw on the cityscape.

if obj_control.cityscape_draw_list[0,0] = 0
{
obj_control.cityscape_draw_list[0,0] = argument0;//sprite_name
obj_control.cityscape_draw_list[0,1] = argument1;//x coord
obj_control.cityscape_draw_list[0,2] = argument2;//y coord
}
else
{
var temp = array_height_2d(obj_control.cityscape_draw_list);
obj_control.cityscape_draw_list[temp,0] = argument0;//sprite_name
obj_control.cityscape_draw_list[temp,1] = argument1;//x coord
obj_control.cityscape_draw_list[temp,2] = argument2;//y coord
}
