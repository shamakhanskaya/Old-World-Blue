/datum/species/arachna
	name = "Arachna"
	name_plural = "Arachnas"
	language = "Sol Common"
	primitive_form = "Monkey"
//	eyes = "arachna_eyes"
	unarmed_attacks = list(
		new /datum/unarmed_attack/stomp,
		new /datum/unarmed_attack/kick,
		new /datum/unarmed_attack/punch,
		new /datum/unarmed_attack/bite
		)
	gluttonous = 1
	blurb = "Arachna history here"


	inherent_verbs = list(
		/mob/living/carbon/human/arachna/verb/add_venom,
		/mob/living/carbon/human/arachna/verb/remove_venom,
		/mob/living/carbon/human/arachna/proc/prepare_bite,
		/mob/living/carbon/human/arachna/proc/use_silk_gland
	)

	has_organ = list(
		O_LUNGS =        /obj/item/organ/internal/lungs,
		O_HEART =        /obj/item/organ/internal/heart/arachna,
		O_KIDNEYS =      /obj/item/organ/internal/kidneys/arachna,
		O_EYES =         /obj/item/organ/internal/eyes,
		O_LIVER =        /obj/item/organ/internal/liver,
		O_APPENDIX =     /obj/item/organ/internal/appendix,
		"poison_gland" = /obj/item/organ/internal/arachna/poison_gland,
		"silk_gland" =   /obj/item/organ/internal/arachna/silk_gland,
		O_BRAIN =        /obj/item/organ/internal/brain
		)

	has_limbs = list(
		BP_CHEST =  /datum/organ_description,
		BP_GROIN =  /datum/organ_description/groin/arachna,
		BP_HEAD   = /datum/organ_description/head,
		BP_L_ARM  = /datum/organ_description/arm/left,
		BP_R_ARM  = /datum/organ_description/arm/right,
		BP_L_LEG  = /datum/organ_description/leg/left,
		BP_R_LEG  = /datum/organ_description/leg/right,
		BP_L_HAND = /datum/organ_description/hand/left,
		BP_R_HAND = /datum/organ_description/hand/right,
		BP_L_FOOT = /datum/organ_description/foot/left,
		BP_R_FOOT = /datum/organ_description/foot/right
	)

	/*has_limbs = list(
		BP_CHEST =    list("path" = /obj/item/organ/external/chest),
		"abdomen" =  list("path" = /obj/item/organ/external/groin/arachna),
		BP_HEAD =     list("path" = /obj/item/organ/external/head),
		BP_L_ARM =    list("path" = /obj/item/organ/external/arm),
		BP_R_ARM =    list("path" = /obj/item/organ/external/arm/right),
		BP_L_HAND =   list("path" = /obj/item/organ/external/hand),
		BP_R_HAND =   list("path" = /obj/item/organ/external/hand/right),
		"l_f_leg" =  list("path" = /obj/item/organ/external/leg/arachna/left/f_leg),
		"l_f_foot" = list("path" = /obj/item/organ/external/foot/arachna/left/f_foot),
		"l_mf_leg" =  list("path" = /obj/item/organ/external/leg/arachna/left/mf_leg),
		"l_mf_foot" = list("path" = /obj/item/organ/external/foot/arachna/left/mf_foot),
		"l_mb_leg" =  list("path" = /obj/item/organ/external/leg/arachna/left/mb_leg),
		"l_mb_foot" = list("path" = /obj/item/organ/external/foot/arachna/left/mb_foot),
		"l_b_leg" =  list("path" = /obj/item/organ/external/leg/arachna/left/b_leg),
		"l_b_foot" = list("path" = /obj/item/organ/external/foot/arachna/left/b_foot),
		"r_f_leg" =  list("path" = /obj/item/organ/external/leg/arachna/right/f_leg),
		"r_f_foot" = list("path" = /obj/item/organ/external/foot/arachna/right/f_foot),
		"r_mf_leg" =  list("path" = /obj/item/organ/external/leg/arachna/right/mf_leg),
		"r_mf_foot" = list("path" = /obj/item/organ/external/foot/arachna/right/mf_foot),
		"r_mb_leg" =  list("path" = /obj/item/organ/external/leg/arachna/right/mb_leg),
		"r_mb_foot" = list("path" = /obj/item/organ/external/foot/arachna/right/mb_foot),
		"r_b_leg" =  list("path" = /obj/item/organ/external/leg/arachna/right/b_leg),
		"r_b_foot" = list("path" = /obj/item/organ/external/foot/arachna/right/b_foot)
	)*/


	flags = IS_RESTRICTED | IS_WHITELISTED | HAS_SKIN_TONE | HAS_EYE_COLOR

	icobase = 'code/modules/mob/living/carbon/arachna/r_arachna.dmi'
	deform = 'code/modules/mob/living/carbon/arachna/r_def_arachna.dmi'

/datum/species/arachna/handle_post_spawn(var/mob/living/carbon/human/H)
	H.gender = FEMALE
	return ..()




datum/species/arachna/Stat(var/mob/living/carbon/human/H)
	..()
	var/obj/item/organ/internal/arachna/P = H.internal_organs_by_name["poison_gland"]
	if(P)
		stat("Poison Stored:", " [P.reagents.total_volume]/[P.reagents.maximum_volume]")
	P = H.internal_organs_by_name["silk_gland"]
	if(P)
		stat("Silk Stored:", " [P:silk]/[P:silk_max]")
	return
