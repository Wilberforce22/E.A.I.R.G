obj_settings.menu = false
obj_settings.enemies = round(obj_settings.difficulty * random_range(2,3)) + 1 * obj_settings.wave
obj_settings.enemytimer = random_range(20,50)
obj_player.invframes = 100
obj_player.def += obj_settings.difficulty/20
obj_player.playerhp += (obj_player.playermaxhp/2)
instance_destroy(obj_upgrade)
instance_destroy()