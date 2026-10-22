instance_create_depth(x,y,-9999,obj_explosion)
audio_play_sound(explosion,1,false,1.5*obj_settings.soundvol,0,random(1))
audio_play_sound(robot_die,1,false,1*obj_settings.soundvol,0,random_range(0.9,1.1))
audio_play_sound(robot_die_2,1,false,1*obj_settings.soundvol,0,random_range(3,4.5))
if obj_settings.vfx == 1
{
	obj_player.heightsquish -= 0.5
	obj_player.widesquish += 1
obj_settings.extramult += (4 / min((obj_settings.extramult+1/8)+1,4))*obj_settings.shaderamnt
obj_settings.zoom += (40/(obj_settings.zoom/4)+1)
}
if obj_settings.boss == true
{
	repeat random_range(30+obj_player.magnet-obj_player.scrap+(obj_settings.wave/5)+obj_settings.difficulty,35+obj_player.magnet-obj_player.scrap+(obj_settings.wave/5)+obj_settings.difficulty)
{
	instance_create_depth(x,y,-9,obj_scrap)
}
}
else
{
if type != -1
{
if type == 6
	repeat random_range(6+obj_player.magnet+time-obj_player.scrap+(obj_settings.wave/5),8+obj_player.magnet+time-obj_player.scrap+(obj_settings.wave/5))
{
	instance_create_depth(x,y,-9,obj_scrap)
}
if type == 5
{
	repeat random_range(6+obj_player.magnet-obj_player.scrap+(obj_settings.wave/5),8+obj_player.magnet-obj_player.scrap+(obj_settings.wave/5))
{
	instance_create_depth(x,y,-9,obj_scrap)
}
}
else
repeat random_range(3+obj_player.magnet-obj_player.scrap+(obj_settings.wave/5),6+obj_player.magnet-obj_player.scrap+(obj_settings.wave/5))
{
	instance_create_depth(x,y,-9,obj_scrap)
}
}
}