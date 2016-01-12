//sample script calling below:
//scr_text("Text", speed, x, y, no of seconds to wait)
//this script will pop up a dialog box with the supplied text, at the given speed,
//at the desired location, x, y

//this brand of text box will run for a certain number of seconds
//before closing

txt = instance_create(argument2, argument3, obj_text);

with(txt)
{
    padding = 16;   //amount of pixel gap between edge of window and text
    max_length = view_wview[0];
    
    text = argument0;
    spd = argument1;
    font = fnt_ff;
    timer = argument4;
    
    draw_set_font(font);
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    text_width = string_width_ext(text, font_size + (font_size/2), max_length);
    text_height = string_height_ext(text, font_size + (font_size/2), max_length);
    
    box_width = text_width + (padding * 2);
    box_height = text_height + (padding * 2);
    
    
    
    
}
