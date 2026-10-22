draw_self()
if bought == 0
draw_sprite_stretched(spr_upgradesprites,index[card_id],x-30,y-62.1,60,60)
draw_set_colour(c_white)
if bought == 0
draw_text(x-sprite_width/2+2,y-sprite_height/2,cost)
//draw_text(x+sprite_width/2-2,y-sprite_height/2,rarities[card_id])
//draw_text(x+sprite_width/2-2,y+sprite_height/2,rarity)
draw_set_colour(c_black)
if bought == 0
draw_text_ext_transformed(x-sprite_width/2+2,y,text[card_id],12,sprite_width*1.75-2,0.55,0.55,0)
else
draw_text_ext_transformed(x-sprite_width/2+2,y,"You already bought this card!",12,sprite_width*1.75-2,0.55,0.55,0)
if bought == 1
{
	draw_sprite_stretched(spr_Upgrade_Card_lock,3,x-sprite_width/2,y-sprite_height/2,sprite_width,sprite_height)
}
else
{
if obj_settings.cards == 1 || (card_id != 999 && obj_settings.unique[card_id] == 1)
draw_sprite_stretched(spr_Upgrade_Card_lock,1,x-sprite_width/2,y-sprite_height/2,sprite_width,sprite_height)
else
if cost > global.scrap
draw_sprite_stretched(spr_Upgrade_Card_lock,2,x-sprite_width/2,y-sprite_height/2,sprite_width,sprite_height)
}