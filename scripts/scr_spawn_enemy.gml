global.enemy = ds_list_create();

for (i=0;i<argument1;i+=1){
    //global.enemy=instance_create(60,100*i+80,argument0);
    ds_list_add(global.enemy,(instance_create(60,100*i+80,argument0)));
    show_debug_message("ds list size is " + string(ds_list_size(global.enemy)));
}

/*

argument0 = enemy to spawn
argument1 = amount of enemies to spawn

Each enemy is written into an array and stored there
