//Jackets with buttons, used for labcoats, IA jackets, First Responder jackets, and brown jackets.
/obj/item/clothing/suit/storage/toggle
	var/base_state
	var/base_wear_state
	verb/toggle()
		set name = "Toggle Coat Buttons"
		set category = "Object"
		set src in usr
		if(!usr.canmove || usr.stat || usr.restrained())
			return 0

		if(icon_state != base_state) //Will check whether icon state is currently set to the "open" or "closed" state and switch it around with a message to the user
			icon_state = base_state
			wear_state = base_wear_state
			usr << "You button up the coat."
		else
			icon_state = base_state + "_open"
			usr << "You unbutton the coat."
			wear_state = base_wear_state + "_open"
		update_clothing_icon()	//so our overlays update

/obj/item/clothing/suit/storage/toggle/New()
	..()
	if(!base_state)
		base_state = icon_state
		base_wear_state = wear_state
	else
		base_wear_state = copytext(wear_state,1,-5)

/obj/item/clothing/suit/storage/toggle/varsityred
	name = "red varsity jacket"
	icon_state = "varsity_red"
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/varsityblue
	name = "blue varsity jacket"
	icon_state = "varsity_blue"
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/varsityblack
	name = "black varsity jacket"
	icon_state = "varsity_black"
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/varsitybrown
	name = "brown varsity jacket"
	desc = "Where are you right now?"
	icon_state = "varsity_brown"
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/bomber
	name = "bomber jacket"
	desc = "A thick, well-worn WW2 leather bomber jacket."
	icon_state = "bomber"
	body_parts_covered = UPPER_TORSO|ARMS
	cold_protection = UPPER_TORSO|ARMS
	min_cold_protection_temperature = T0C - 20
	siemens_coefficient = 0.7

/obj/item/clothing/suit/storage/toggle/bomber/niels
	name = "black bomber jacket"
	desc = "A well-worn leather bomber jacket. Looks like a part of some local law enforcement agency outfit."
	icon_state = "niels_bomber"
	item_state = "leather_jacket"

/obj/item/clothing/suit/storage/toggle/leather_jacket
	name = "leather jacket"
	desc = "A black leather coat."
	icon_state = "leather_jacket"
	item_state = "leather_jacket"
	wear_state = "leather_jacket"
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/leather_jacket/fox
	name = "fox leather jacket"
	wear_state = "leather_jacket_fox"

/obj/item/clothing/suit/storage/toggle/leather_jacket/wolf
	name = "wolf leather jacket"
	wear_state = "leather_jacket_wolf"

/obj/item/clothing/suit/storage/toggle/leather_jacket/mouse
	name = "rat leather jacket"
	wear_state = "leather_jacket_mouse"

/obj/item/clothing/suit/storage/toggle/leather_jacket/boar
	name = "boar leather jacket"
	wear_state = "leather_jacket_boar"

/obj/item/clothing/suit/storage/toggle/leather_jacket/skull
	name = "skull leather jacket"
	wear_state = "leather_jacket_skull"

/obj/item/clothing/suit/storage/toggle/leather_jacket/snake
	name = "snake leather jacket"
	wear_state = "leather_jacket_snake"

/obj/item/clothing/suit/storage/toggle/leather_jacket/cerberus
	name = "cerberus leather jacket"
	wear_state = "leather_jacket_cerberus"

/obj/item/clothing/suit/storage/toggle/leather_jacket/nanotrasen
	name = "NT leather jacket"
	desc = "A black leather coat. The letters NT are proudly displayed on the back."
	wear_state = "leather_jacket_nt"

/obj/item/clothing/suit/storage/toggle/brown_jacket
	name = "leather jacket"
	desc = "A brown leather coat."
	icon_state = "brown_jacket"
	item_state = "brown_jacket"
	wear_state = "brown_jacket"
	body_parts_covered = UPPER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/brown_jacket/nanotrasen
	desc = "A brown leather coat. The letters NT are proudly displayed on the back."
	wear_state = "brown_jacket_nt"

/obj/item/clothing/suit/storage/toggle/hoodie
	name = "grey hoodie"
	desc = "A warm, grey sweatshirt."
	icon_state = "grey_hoodie"
	item_state = "grey_hoodie"
	min_cold_protection_temperature = T0C - 20
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/suit/storage/toggle/hoodie/black
	name = "black hoodie"
	desc = "A warm, black sweatshirt."
	icon_state = "black_hoodie"

