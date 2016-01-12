if(argument0!=obj_temp_Teagan_battle){ // If the object we are attacking is not player deal damage to argument0
argument0.hp-=argument1
obj_temp_Teagan_battle.image_index=0

with(argument0){
if(argument0.hp<=0){argument0.alive=false argument0.image_alpha=0}
}

dmg_=instance_create(argument0.x +100,argument0.y,show_damage);
with(dmg_){
dmg_n=argument1;
alarm[0]=60;
}
}else{ // If we are attacking player deal damage and check if he died or not
global.player_hp-=argument1

if(global.player_hp<=0){global.player_hp=0 global.player_alive=false instance_create(0,0,obj_notice)}

dmg_=instance_create((room_width/100)*80,(room_height/100)*25,show_damage);
with(dmg_){
dmg_n=argument1;
alarm[0]=60;
}
}

//obj_control_encounter.alarm[0]=60 // None can attack for 2 seconds

/*

argument0 = enemy ID
argument1 = amount of damage dealt

This function deals damage to argument0 and checks if the argument0 is dead or not

It also displays damage dealt onscreen
