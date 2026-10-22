image_xscale = 2
image_yscale = 2
image_speed = 0
depth = -9999
bought = 0
ids = 0
cardid = 0
money = ((obj_settings.difficulty*1.1)/obj_settings.discount)*(obj_player.magnet/2.3)
unique[0] = false
ids = 0

repeat array_length(obj_settings.unique)
{
scr_init(ids)
ids ++
}
ids -= 1
rarity = round(random_range(4+round(obj_settings.wave/2),min(4+obj_settings.wave*2,array_highest(rarities)+1)))
card_id = round(random_range(0,(ids)))
i = false
killme = 0
while i == false
{
	killme += 1
card_id = round(random(ids))
if rarities[card_id] < rarity
{
	if obj_settings.unique[card_id] == false
	i = true
}
if killme >= 100
{
card_id = 0
scr_init(card_id)
break
}
}
cost = round(cost_id[card_id])+round(obj_settings.difficulty) //Cost calculation