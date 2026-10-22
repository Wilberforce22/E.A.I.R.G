dmg = 2+obj_settings.difficulty*1.5
direction = point_direction(x,y,obj_player.x+obj_player.sprite_width/2-obj_player.xspd,obj_player.y+sprite_height/2-obj_player.yspd)
speed = random_range(3,6)
image_angle = direction