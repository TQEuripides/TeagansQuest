for (i=0;i<argument1;i+=1){
global.enemy[i]=instance_create(60,100*i+80,argument0);
}

/*

argument0 = enemy to spawn
argument1 = amount of enemies to spawn

Each enemy is written into an array and stored there
