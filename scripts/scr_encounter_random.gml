if(global.encounter_lock=false){ // This locks the script if it's true so it doesn't loop over and over..

    enemy_type = argument0;
    rand = irandom(global.enc_frequency); // There is a 1 out of global.enc_frequency chance of starting a encounter
    if(rand>=0&&rand<=1){
        global.encounter_lock=true;
        if (room!=rm_battle){
                alp = 0;
                while(alp < 1)
                {
                alp=alp+0.03;

                draw_set_color(global.enc_fade_c);
                draw_set_alpha(alp);
                draw_rectangle(obj_temp_Teagan.x-(room_width/2),obj_temp_Teagan.y-(room_height/2),obj_temp_Teagan.x+(room_width/2),obj_temp_Teagan.y+(room_height/2),0);

                if(alp>=1){
                    global.encounter_lock=false;
                    global.current_enemy_type = enemy_type;
                    //instance_destroy();
                    room_goto(rm_battle);
                    
                    
                   
                    
                }
                }
                }
}
}

/*

this starts the encounter

//argument 0, type of enemy for random encounter
