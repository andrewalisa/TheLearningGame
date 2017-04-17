//Getting the message_draw that is passed
message_draw = argument0; 

//The positions of the rectangles, text, and the "Press Z to continue."
xpos_rect1 = 0;
ypos_rect1 = room_height/2;
xpos_rect2 = room_width;
ypos_rect2 = room_height;

xpos_text = 6;
ypos_text = 200;

xpos_z = 8;
ypos_z = 356;

//Only draw the textbox if the global.game_state is on the textbox state. 
if (global.game_state == global.game_state_textbox){
    //Setting the background color
    draw_set_color(c_black);

    //Setting the rectangle
    draw_rectangle(xpos_rect1, ypos_rect1, xpos_rect2, ypos_rect2, false);
    //Changing the font color to white
    draw_set_color(c_white); 
    //Displaying the message
    draw_text_ext(xpos_text, ypos_text, message_draw, 14, room_width-10);
    
    //Changing the font color to red
    draw_set_color(c_red);
    //Informing the user that they have to press z to continue. 
    draw_text_ext(xpos_z, ypos_z, "Please press Z to continue.", 15, room_width);
}
