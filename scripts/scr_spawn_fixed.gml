//this will spawn a fixed battle for boss and story battles
//this requires a global array to be filled with the objects you want to spawn as enemies
global.enemy_n = 0;
for(i = 0; i < global.max_enemies; i++)
{
    if(global.fixed_enemy[i] != 0)
    {
        global.enemy_n++;
        global.enemy[i] = instance_create(60, 100*i+80,global.fixed_enemy[i]);
    }
}
