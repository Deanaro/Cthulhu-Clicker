/* TO-DO:                                                                   */
/* -add part_type_death to spawn a little 'poof' when the particle dies.    */

//get passed info
var spawn_pos_x = argument[0];
var spawn_pos_y = argument[1];

//Create the particle system
part_sys_click = part_system_create();
part_system_depth(part_sys_click, -11);

//Create the clicker particle type
part_click = part_type_create();
// part_type_sprite(part_click, spr_ph_glob, 1, 0, 0);
part_type_sprite(part_click, spr_TROLOLOL, 1, 0, 0);
part_type_alpha2(part_click, 1, 0);
part_type_life(part_click, 50, 100);
part_type_speed(part_click, 0.5, 1.5, 0.05, 0);
part_type_direction(part_click, 90,  90, 0, -15);
part_type_scale(part_click, obj_control.zoom, obj_control.zoom);

//Create the Emitter @ the passed location
part_emitter_click = part_emitter_create(part_click);
part_emitter_region(part_sys_click, part_emitter_click, spawn_pos_x-52, spawn_pos_x+24, spawn_pos_y, spawn_pos_y, ps_shape_line, ps_distr_invgaussian);


