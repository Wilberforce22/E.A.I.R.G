dmg = obj_player.dmg*4
enemy = instance_nearest(x,y,obj_enemy)
direction = point_direction(x,y,enemy.x+enemy.sprite_width/2,enemy.y+enemy.sprite_height/2)
direction += random_range(-4,4)
speed = random_range(4,6)
image_angle = direction
pierce = obj_player.pierce