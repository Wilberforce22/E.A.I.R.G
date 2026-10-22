if room == rm_fail
{
	options = 1
	depth = -999
	draw_text(room_width/3-string_length("You have been scrapped!")/2,room_height/8,"You have been scrapped!")
	draw_text(room_width/4-string_length("Current wave: " + string(global.scores[1]) + ", Best wave: " + string(global.scores[3]))/2,room_height/8*5,"Current wave: " + string(global.scores[1]) + ", Best wave: " + string(global.scores[3]))
	draw_text(room_width/4-string_length("Current scrap: " + string(global.scores[2]) + ", Highest scrap: " + string(global.scores[4]))/2,room_height/8*6,"Current scrap: " + string(global.scores[2]) + ", Highest scrap: " + string(global.scores[4]))
}
if instance_exists(obj_player)
scr_shadow(room_width/10,room_height/10,room_width/10*9,room_height/10*9,obj_player.x+obj_player.sprite_width/2,obj_player.y+obj_player.sprite_width/2+5,obj_player.view,c_blue,c_black)
depth = 0
if menu == true
{
	depth = -999
	draw_set_colour(make_colour_rgb(69,69,69))
	draw_rectangle(10,10,room_width-10,room_height-10,false)
	draw_set_colour(c_white)
	draw_text(room_width/2-string_width(string(-cards+obj_player.card)+"/"+string(obj_player.card-1))/2,room_height/7,string(-cards+4)+"/3")
	if setup == 1
	{
		setup = 0
		wave += 1
		i = 0
		options = 0
		gamepad_set_vibration(0,0,0)
		repeat cards
		{
			i ++
			options += 1
		with instance_create_depth((room_width/(cards+1))*i,room_height/2,-99,obj_upgrade)
		{
		cardid = other.i - 1
		}
		}
		instance_create_depth(room_width/4*3.5,room_height/2*1.75,-99,obj_continue)
		difficulty *= 1.2
	}
}
else
global.play = true
