function scr_init(arg){
	//REMEMBER TO UPDATE THE REPEAT LOOP IN OBJ_UPGRADE
	switch(arg)
	{
		case 0:	//DMG
		{
			ids = 0
			unique[ids] = false
			index[ids] = 0
			rarities[ids] = 3
			cost_id[ids] = random_range(6,12)*(money/2)
			text[ids] = "More damage. This modification increases damage dealt via your laser."
		}
		break
		case 1: //HP
		{
			ids = 1
			unique[ids] = false
			index[ids] = 1
			rarities[ids] = 4
			cost_id[ids] = random_range(4,8)*(money/1.5)
			text[ids] = "More health. This modification increases the storage of your battery."
		}
		break
		case 2: //LIFESTEAL
		{
			ids = 2
			unique[ids] = false
			index[ids] = 2
			rarities[ids] = 5
			cost_id[ids] = random_range(9,18)*(money/3)
			text[ids] = "More lifesteal. This modification increases how much health attacking gives you."
		}
		break
		case 3: //REGEN
		{
			ids = 3
			unique[ids] = false
			index[ids] = 3
			rarities[ids] = 4
			cost_id[ids] = random_range(15,25)*(money/2.4)
			text[ids] = "More regen. This modification increases how much health you passively gain"
		}
		break
		case 4: //VIEW
		{
			ids = 4
			unique[ids] = false
			index[ids] = 4
			rarities[ids] = 8
			cost_id[ids] = random_range(7,14)*(money/3.7)
			text[ids] = "More vision. This modification increases how large the light around you is."
		}
		break
		case 5: //BLUEPRINTS
		{
			ids = 5
			unique[ids] = false
			index[ids] = 5
			rarities[ids] = 10
			cost_id[ids] = random_range(5,8)*(money/1.5)
			text[ids] = "Blueprints. This modification tells you how to use less scrap on upgrades."
		}
		break
		case 6: //LENSE
		{
			ids = 6
			unique[ids] = false
			index[ids] = 6
			rarities[ids] = 16
			cost_id[ids] = random_range(16,22)*(money/1.25)
			text[ids] = "Lense. This modification focuses your laser, making it use less power."
		}
		break
		case 7: //MAGNET
		{
			ids = 7
			unique[ids] = false
			index[ids] = 7
			rarities[ids] = 13
			cost_id[ids] = random_range(18,25)*(money/1.1)
			text[ids] = "Magnetism. This modification increases the salvaged scrap, however they spawn faster"
		}
		break
		case 8: //PANIC STRENGTH
		{
			ids = 8
			unique[ids] = false
			index[ids] = 8
			rarities[ids] = 15
			cost_id[ids] = random_range(18,41)*(money/4)
			text[ids] = "Panic strengthening. This modification increses defense when you approach deactivation."
		}
		break
		case 9: //MONEY STRENGTH
		{
			ids = 9
			unique[ids] = false
			index[ids] = 9
			rarities[ids] = 15
			cost_id[ids] = random_range(1,100)*(money/2)
			text[ids] = "Money strengthening. Give us money. It will help you. \"Taste that sweet defense\""
		}
		break
		case 10: //PIERCING
		{
			ids = 10
			unique[ids] = false
			index[ids] = 10
			rarities[ids] = 22
			cost_id[ids] = random_range(8,16)*(money/1.8)
			text[ids] = "Piercing. This modification increases the amount of enemies hit per laser."
		}
		break
		case 11: //REVIVE
		{
			ids = 11
			unique[ids] = false
			index[ids] = 11
			rarities[ids] = 33
			cost_id[ids] = random_range(70,120)*(money/3)
			text[ids] = "Backup. This modification creates another shell for you to use when your current one fails."
		}
		break
		case 12: //EXPLOSION
		{
			ids = 12
			unique[ids] = false
			index[ids] = 12
			rarities[ids] = 14
			cost_id[ids] = random_range(6,15)*(money/2.3)
			text[ids] = "Explosion. This modification causes enemies to explode, at the cost of more energy."
		}
		break
		case 13: //OVERCHARGE
		{
			ids = 13
			unique[ids] = false
			index[ids] = 13
			rarities[ids] = 15
			cost_id[ids] = random_range(6,8)*(money/1.2)
			text[ids] = "Overcharge. This modification increases your damage, at the cost of less scrap salvaged."
		}
		break
		case 14: //RADAR
		{
			ids = 14
			unique[ids] = false
			index[ids] = 14
			rarities[ids] = 14
			cost_id[ids] = random_range(8,12)*(money/2)
			text[ids] = "Disorient. This modification disrupts radars, causing less enemies to appear."
		}
		break
		case 15: //HEADS
		{
			ids = 15
			unique[ids] = true
			index[ids] = 15
			rarities[ids] = 30
			cost_id[ids] = random_range(18,29)*(money/2)
			text[ids] = "Two heads. This modification gives you a second head, that passively fires. Unique."
		}
		break
				case 16: //LASER
		{
			ids = 16
			unique[ids] = false
			index[ids] = 16
			rarities[ids] = 7
			cost_id[ids] = random_range(16,28)*(money/2)
			text[ids] = "Thick laser. This modification will make your laser thicker, but costs more energy."
		}
		break
	}
}

function scr_use(arg1){
	switch (arg1)
	{
		case 0: //DMG
		{
			obj_player.dmg += 0.8*(obj_settings.difficulty/2)
		}
		break
		case 1: //HP
		{
			obj_player.playermaxhp += 5
		}
		break
		case 2: //LIFESTEAL
		{
			obj_player.vamp += 0.03
		}
		break
		case 3: //REGEN
		{
			obj_player.healamnt += 0.01
		}
		break
		case 4: //VIEW
		{
			obj_player.view += 30
		}
		break
		case 5: //BLUEPRINTS
		{
			obj_settings.discount += 0.9
		}
		break
		case 6: //LENSE
		{
			obj_player.drainamnt -= 0.08
			obj_player.lasersize -= 0.5
		}
		break
		case 7: //MAGNET
		{
			obj_player.magnet += 1
		}
		break
		case 8: //PANIC STRENGTH
		{
			obj_player.deathfense += 1.5
		}
		break
		case 9: //MONEY STRENGTH
		{
			obj_player.def += (cost/15)/(obj_settings.difficulty/6)
		}
		break
		case 10: //PIERCING
		{
			obj_player.pierce += 1
		}
		break
		case 11: //REVIVE
		{
			obj_player.revives += 1
		}
		break
		case 12: //EXPLOSION
		{
			obj_player.explosivesize += 0.5
			obj_player.drainamnt += 0.05
		}
		break
		case 13: //OVERCHARGE
		{
			obj_player.scrap -= 1
			obj_player.dmg += 4
		}
		break
		case 14: //RADAR
		{
			obj_settings.difficulty -= 8
			if obj_settings.difficulty <= 1
			obj_settings.difficulty = 3
		}
		break
		case 15: //HEADS
		{
			obj_player.heads = 1
		}
		break
		case 16: //LASER
		{
			obj_player.lasersize += 2
			obj_player.drainamnt += 0.05
		}
		break
	}
}
	