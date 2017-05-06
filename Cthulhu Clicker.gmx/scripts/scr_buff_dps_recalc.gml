///recalculates the dps when a new shop item is bought
//lachlan

//if buff is avtive
if (obj_control.alarm[6] != -1)
{
    //calculate dps buff using buff amount and apply it.
    obj_control.DPS = obj_control.buff_amount * obj_control.DPS;
}
