	object_const_def
	const GOLDENRODUNDERGROUNDWAREHOUSE_ROCKET1
	const GOLDENRODUNDERGROUNDWAREHOUSE_ROCKET2
	const GOLDENRODUNDERGROUNDWAREHOUSE_ROCKET3
	const GOLDENRODUNDERGROUNDWAREHOUSE_GENTLEMAN
	const GOLDENRODUNDERGROUNDWAREHOUSE_POKE_BALL1
	const GOLDENRODUNDERGROUNDWAREHOUSE_POKE_BALL2

GoldenrodUndergroundWarehouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, GoldenrodUndergroundWarehouseResetSwitchesCallback

GoldenrodUndergroundWarehouseResetSwitchesCallback:
	clearevent EVENT_SWITCH_1
	clearevent EVENT_SWITCH_2
	clearevent EVENT_SWITCH_3
	clearevent EVENT_EMERGENCY_SWITCH
	clearevent EVENT_DOOR_1_OPEN
	clearevent EVENT_DOOR_2_OPEN
	clearevent EVENT_DOOR_3_OPEN
	clearevent EVENT_DOOR_4_OPEN
	clearevent EVENT_DOOR_5_OPEN
	clearevent EVENT_DOOR_6_OPEN
	clearevent EVENT_DOOR_7_OPEN
	clearevent EVENT_DOOR_8_OPEN
	clearevent EVENT_DOOR_9_OPEN
	clearevent EVENT_DOOR_10_OPEN
	clearevent EVENT_DOOR_11_OPEN
	setval 0
	writemem wUndergroundSwitchPositions
	endcallback

TrainerGruntM24:
	trainer GRUNTM, GRUNTM_24, EVENT_BEAT_ROCKET_GRUNTM_24, GruntM24SeenText, GruntM24BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM24AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM14:
	trainer GRUNTM, GRUNTM_14, EVENT_BEAT_ROCKET_GRUNTM_14, GruntM14SeenText, GruntM14BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM14AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM15:
	trainer GRUNTM, GRUNTM_15, EVENT_BEAT_ROCKET_GRUNTM_15, GruntM15SeenText, GruntM15BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM15AfterBattleText
	waitbutton
	closetext
	end

GoldenrodUndergroundWarehouseDirectorScript:
	faceplayer
	opentext
	checkevent EVENT_RECEIVED_CARD_KEY
	iftrue .GotCardKey
	writetext DirectorIntroText
	promptbutton
	verbosegiveitem CARD_KEY
	setevent EVENT_RECEIVED_CARD_KEY
	setevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_1
	clearevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_2
	clearevent EVENT_GOLDENROD_DEPT_STORE_B1F_LAYOUT_3
	writetext DirectorCardKeyText
	promptbutton
.GotCardKey:
	writetext DirectorAfterText
	waitbutton
	closetext
	end

GoldenrodUndergroundWarehouseMaxEther:
	itemball MAX_ETHER

GoldenrodUndergroundWarehouseTMSleepTalk:
	itemball TM_SLEEP_TALK

GruntM24SeenText:
	text "Πως έφτασες"
	line "μέχρι εδώ;"

	para "Υποθέτω πως"
	line "δεν μπορώ. Θα"
	cont "σε νικήσω."
	done

GruntM24BeatenText:
	text "Με νίκησε…"
	done

GruntM24AfterBattleText:
	text "Οι ΠΥΡΑΥΛΟΙ"
	line "θα συνεχίσουν,"
	cont "περιμένοντας για"
	cont "τον GIOVANNI."

	para "Θα κάνουμε"
	line "ότι χρειαστεί."
	done

GruntM14SeenText:
	text "Δεν θα πας"
	line "παραπέρα!"

	para "Δεν δείχνω έλεος"
	line "σε εχθρούς, ούτε"
	cont "σε βρωμόπαιδα!"
	done

GruntM14BeatenText:
	text "Να πάρει!"
	done

GruntM14AfterBattleText:
	text "Έχασα…"

	para "Παρακαλώ συγνώμη,"
	line "GIOVANNI!"
	done

GruntM15SeenText:
	text "Χγιακ-χγιακ-χγιακ!"
	line "Σε θυμάμαι!"

	para "Με νίκησες στο"
	line "κρυσφήγετο μας!"
	done

GruntM15BeatenText:
	text "Χγιακ-χγιακ-χγιακ!"
	line "Άρα, τι έγινε;"
	done

GruntM15AfterBattleText:
	text "Χγιακ-χγιακ-χγιακ!"
	line "Τι ατυχία!"
	cont "Θα σε θύμαμαι!"
	done

DirectorIntroText:
	text "ΔΙΕΥΘΥΝΤΗΣ: Τι;"
	line "Ποιός; Ήρθες να"
	cont "με σώσεις;"

	para "Ευχαριστώ!"

	para "Ο ΠΥΡΓΟΣ ΡΑΔΙΟ!"

	para "Τι συμβαίνει"
	line "εκεί;"

	para "Κατάληψη από"
	line "τους ΠΥΡΑΥΛΟΥΣ;"

	para "Ορίστε. Πάρε την"
	line "ΚΑΡΤΑ ΚΛΕΙΔΙ."
	done

DirectorCardKeyText:
	text "ΔΙΕΥΘΥΝΤΗΣ: Με"
	line "αυτό ανοίγεις τον"
	cont "3ο όροφο."
	done

DirectorAfterText:
	text "Σε παρακαλώ"
	line "να βοηθήσεις."

	para "Δεν ξέρουμε τι"
	line "θα γίνει αν"

	para "πάρουν τον"
	line "πομπό."

	para "Θα μπορούν να"
	line "ελέγξουν τα"

	para "#μον βάζοντας"
	line "ειδικό σήμα!"

	para "Είσαι ο μόνος"
	line "που βασίζομαι."

	para "Παρακαλώ σώσε"
	line "τον ΠΥΡΓΟ ΡΑΔΙΟ…"

	para "Και όλα τα #-"
	line "μον παντού!"
	done

GoldenrodUndergroundWarehouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 12, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 2
	warp_event  3, 12, GOLDENROD_UNDERGROUND_SWITCH_ROOM_ENTRANCES, 3
	warp_event 17,  2, GOLDENROD_DEPT_STORE_B1F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  8, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM24, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  8, 15, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM14, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 14,  3, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerGruntM15, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 12,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodUndergroundWarehouseDirectorScript, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 18, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundWarehouseMaxEther, EVENT_GOLDENROD_UNDERGROUND_WAREHOUSE_MAX_ETHER
	object_event 13,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, GoldenrodUndergroundWarehouseTMSleepTalk, EVENT_GOLDENROD_UNDERGROUND_WAREHOUSE_TM_SLEEP_TALK
