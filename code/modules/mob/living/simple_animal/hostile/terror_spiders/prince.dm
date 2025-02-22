
// --------------------------------------------------------------------------------
// ----------------- TERROR SPIDERS: T3 PRINCE OF TERROR --------------------------
// --------------------------------------------------------------------------------
// -------------: ROLE: boss
// -------------: AI: no special ai
// -------------: SPECIAL: massive health
// -------------: TO FIGHT IT: a squad of at least 4 people with laser rifles.
// -------------: SPRITES FROM: Travelling Merchant, https://www.paradisestation.org/forum/profile/2715-travelling-merchant/

/mob/living/simple_animal/hostile/poison/terror_spider/prince
	name = "Prince of Terror spider"
	desc = "An enormous, terrifying spider. It looks like it is judging everything it sees. Its hide seems armored, and it bears the scars of many battles."
	spider_role_summary = "Miniboss terror spider. Lightning bruiser."
	ai_target_method = TS_DAMAGE_BRUTE
	icon_state = "terror_allblack"
	icon_living = "terror_allblack"
	icon_dead = "terror_allblack_dead"
	maxHealth = 600 // 30 laser shots
	health = 600
	regen_points_per_hp = 6 // double the normal - IE halved regen speed
	melee_damage_lower = 30
	melee_damage_upper = 40
	ventcrawler = 0
	ai_ventcrawls = FALSE
	environment_smash = ENVIRONMENT_SMASH_RWALLS
	idle_ventcrawl_chance = 0
	spider_tier = TS_TIER_3
	loudspeaker = TRUE
	spider_opens_doors = 2
	web_type = /obj/structure/spider/terrorweb/purple
	ai_spins_webs = FALSE
	gender = MALE

/mob/living/simple_animal/hostile/poison/terror_spider/prince/death(gibbed)
	if(can_die() && !hasdied && spider_uo71)
		UnlockBlastDoors("UO71_SciStorage")
	return ..()

/mob/living/simple_animal/hostile/poison/terror_spider/prince/spider_specialattack(mob/living/carbon/human/L)
	L.KnockDown(10 SECONDS)
	return ..()
