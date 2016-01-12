for(i = 0; i < array_length_1d(global.party); i++ )
{
    instance_create((room_width/100)*80, (room_height / 2) + 80* i, global.party[i]);
}
