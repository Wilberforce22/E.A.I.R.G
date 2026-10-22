draw_set_colour(c_aqua)
draw_rectangle(room_width/10,y+sprite_height/2,(room_width/10)*9,y-1+sprite_height/2,false)
draw_self()
if type == 3
draw_text_transformed(x,y+5,round(value),1,1,0)
else
draw_text_transformed(x,y+5,round(value*100),1,1,0)
draw_text_transformed(room_width/2,y-20,text,1,1,0)
//draw_text_transformed(x,y+20,round(obj_settings.musicvol*100),2,2,0)