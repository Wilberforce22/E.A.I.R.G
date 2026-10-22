global.play = true
shake_remain = 5
zoom = 0
shake_length = 0
mult = 1
lock = false
extramult = 0
application_surface_draw_enable(false)
star = 0
if room == rm_init
room = rm_menu
global.scrap = 0
menu = false
timer = 30
deadzone = 0.1
gamepad_set_axis_deadzone(0,deadzone)
discount = 1
cards = 6
wave = 1
time = 0
i = 0
repeat 17
{
unique[i] = false
i ++
}
setup = 1
global.scores[4] = 0

controller = false
button = 0
options = 0
dontdoagain = false
boss = false
bossenemy = 0
cardmenu = false
maxhp = 0
setmenu = false
window_enable_borderless_fullscreen(true)

ini_open("save")
musicvol = ini_read_real("settings","music",1)
soundvol = ini_read_real("settings","sound",1)
shaderamnt = ini_read_real("settings","shader",1)
vfx = ini_read_real("settings","vfx",1)
ini_close()
audio_play_sound(musicthing,4,true,5*obj_settings.musicvol)