//supply up to five arguments to be enemies for the fixed battle

//just use 0 to indicate nothing is there
global.fixed_enemy[0] = argument0;
global.fixed_enemy[1] = argument1;
global.fixed_enemy[2] = argument2;
global.fixed_enemy[3] = argument3;
global.fixed_enemy[4] = argument4;

if (room!=rm_battle)
{
    alp = 0;
    while(alp < 1)
    {
                alp=alp+0.03;

                draw_set_color(global.enc_fade_c);
                draw_set_alpha(alp);
                draw_rectangle(obj_temp_Teagan.x-(room_width/2),obj_temp_Teagan.y-(room_height/2),obj_temp_Teagan.x+(room_width/2),obj_temp_Teagan.y+(room_height/2),0);

                if(alp>=1){
                    
                    global.battle_fixed = true;
                    //instance_destroy();
                    room_goto(rm_battle);
                    
                    
                    //obj_battle_controller.ready = true;
                    //global.battle_fixed = false;
                }
    }
}
