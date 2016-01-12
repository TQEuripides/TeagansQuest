//this is a modified script for dialog
//the difference is it will stay on the screen until the player
//presses a button (default space)
//scr_text_dialog("text", spd)

if (!instance_exists(obj_text_dialog))
{
    ui_start = (room_height/100)*25;
    txt = instance_create(view_xview[0],view_yview[0]-ui_start, obj_text_dialog);

    with(txt)
    {  
        padding = 16;
        max_length = view_wview[0];
    
        text = argument0;
        spd = argument1;
        font = fnt_ff;
    
    
        draw_set_font(font);
        text_length = string_length(text);
        font_size = font_get_size(font);
    
        text_width = string_width_ext(text, font_size + (font_size/2), max_length);
        text_height = string_height_ext(text, font_size + (font_size/2), max_length);
    
        box_width = view_wview[0];
        box_height = view_hview[0] /3.25;
    }
}
