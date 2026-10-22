instance_create_depth(x,y,-99,obj_mouse)

i = 0
repeat 17
{
unique[i] = false
i ++
}
lock = false

difficulty = 1

enemies = round((difficulty * random_range(0.8,5))/2.35) + 1

enemytimer = random_range(5*difficulty,12*difficulty)

discount = 1

wave = 1

timer = 30
discount = 1
cards = 4
wave = 1
time = 0

global.scrap = 0

button = 0
options = 0
boss = false
bossenemy = false
gamepad_set_vibration(0,0,0)
i = 0

if room == rm_settings
repeat 4
{
	options += 1
	i += 1
	instance_create_depth(x,(i*40)+20,-999,obj_slider)
}
i = 0

if room == rm_menu
{
	options = 1
}
ini_open("save")
musicvol = ini_read_real("settings","music",1)
soundvol = ini_read_real("settings","sound",1)
shaderamnt = ini_read_real("settings","shader",1)
vfx = ini_read_real("settings","vfx",1)
ini_close()