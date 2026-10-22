if instance_exists(bossenemy) && boss == true
{
	//draw_text_transformed(20,130,"boss: " + string(bossenemy.hp/maxhp),2,2,0)
draw_set_colour(c_white)
draw_rectangle(display_get_gui_width()/10,display_get_gui_height()/10,(display_get_gui_width()/10)*9,(display_get_gui_height()/10)*2,false)
draw_set_colour(c_blue)
draw_rectangle(display_get_gui_width()/10+10,display_get_gui_height()/10+10,min((bossenemy.hp/maxhp)+0.15,1)*(display_get_gui_width()/10)*9-10,(display_get_gui_height()/10)*2-10,false)
}
draw_set_colour(c_white)
draw_text_transformed(20,20,"Scrap: " + string(global.scrap),2,2,0)
draw_text_transformed(20,50,"Wave: " + string(wave),2,2,0)
//draw_text_transformed(20,80,"enemies: " + string(enemies),2,2,0)
//draw_text_transformed(20,100,"difficulty: " + string(difficulty),2,2,0)