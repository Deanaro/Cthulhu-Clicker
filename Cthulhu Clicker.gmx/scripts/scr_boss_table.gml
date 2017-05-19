//builds an array of boss data 
//lachlan

//structure
// boss_array[x,0] = NAME
// boss_array[x,1] = HEALTH
// boss_array[x,2] = TIME TO KILL
// boss_array[x,3] = REWARD
// boss_array[x,4] = passive dps
// boss_array[x,5] = trigger population (note: 7000000000 - pop to have afflicted)
// boss_array[x,6] = defeated  - 0 not beat - 1 beat
// boss_array[x,7] = sprite (e.g 'spr_boss')


//boss 1
boss_array[0,0] = "boss_1";
boss_array[0,1] = 100;
boss_array[0,2] = 30;
boss_array[0,3] = 50;
boss_array[0,4] = 1;
boss_array[0,5] = 7000000000 - 100;
boss_array[0,6] = 0;
boss_array[0,7] = "spr_placeholder_boss";

//boss 2
boss_array[1,0] = 'boss_2';
boss_array[1,1] = 250;
boss_array[1,2] = 25;
boss_array[1,3] = 75;
boss_array[1,4] = 2;
boss_array[1,5] = 7000000000 - 400;
boss_array[1,6] = 0;
boss_array[1,7] = "spr_placeholder_boss";
