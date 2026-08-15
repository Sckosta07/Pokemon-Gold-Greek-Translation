	object_const_def
	const UNIONCAVE1F_POKEFAN_M1
	const UNIONCAVE1F_SUPER_NERD
	const UNIONCAVE1F_POKEFAN_M2
	const UNIONCAVE1F_FISHER1
	const UNIONCAVE1F_FISHER2
	const UNIONCAVE1F_POKE_BALL1
	const UNIONCAVE1F_POKE_BALL2
	const UNIONCAVE1F_POKE_BALL3
	const UNIONCAVE1F_POKE_BALL4

UnionCave1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokemaniacLarry:
	trainer POKEMANIAC, LARRY, EVENT_BEAT_POKEMANIAC_LARRY, PokemaniacLarrySeenText, PokemaniacLarryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacLarryAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerRussell:
	trainer HIKER, RUSSELL, EVENT_BEAT_HIKER_RUSSELL, HikerRussellSeenText, HikerRussellBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerRussellAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerDaniel:
	trainer HIKER, DANIEL, EVENT_BEAT_HIKER_DANIEL, HikerDanielSeenText, HikerDanielBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerDanielAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherBill:
	trainer FIREBREATHER, BILL, EVENT_BEAT_FIREBREATHER_BILL, FirebreatherBillSeenText, FirebreatherBillBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherBillAfterBattleText
	waitbutton
	closetext
	end

TrainerFirebreatherRay:
	trainer FIREBREATHER, RAY, EVENT_BEAT_FIREBREATHER_RAY, FirebreatherRaySeenText, FirebreatherRayBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherRayAfterBattleText
	waitbutton
	closetext
	end

UnionCave1FGreatBall:
	itemball GREAT_BALL

UnionCave1FPotion:
	itemball POTION

UnionCave1FXAttack:
	itemball X_ATTACK

UnionCave1FAwakening:
	itemball AWAKENING

UnionCave1FUnusedSign: ; unreferenced
	jumptext UnionCave1FUnusedSignText

HikerRussellSeenText:
	text "Πας στην"
	line "AZALEA, έτσι;"

	para "Θα δούμε αν τα"
	line "#μον μου είναι"
	cont "καλά για μάχη."
	done

HikerRussellBeatenText:
	text "Ωχ, ωχ, ωχ!"
	done

HikerRussellAfterBattleText:
	text "Εντάξει, τότε!"
	line "Το αποφάσισα."

	para "Δεν φεύγω"
	line "μέχρι να τα"
	cont "δυναμώσω!"
	done

PokemaniacLarrySeenText:
	text "Πήγα πολύ"
	line "μακριά για"
	cont "ψάξιμο #μον."

	para "Ψάχνεις και"
	line "εσύ για #μον;"

	para "Τότε είσαι συ-"
	line "λλέκτης αντίπαλος!"
	done

PokemaniacLarryBeatenText:
	text "Αγχ. Τα φτωχά"
	line "μου #μον…"
	done

PokemaniacLarryAfterBattleText:
	text "Κάθε Παρασκευή,"
	line "ακούω #μον"

	para "να βρυχάται από"
	line "μέσα στην σπηλιά."
	done

HikerDanielSeenText:
	text "Ωχ! Τι"
	line "έκπληξη!"

	para "Δεν περίμενα να"
	line "δω κάποιον εδώ!"
	done

HikerDanielBeatenText:
	text "Αμάν! Νικήθηκα"
	line "κατά κράτος!"
	done

HikerDanielAfterBattleText:
	text "Με ξεγέλασαν"
	line "να πάρω ΟΥΡΑ"
	cont "SLOWPOKE."

	para "Λυπάμαι το"
	line "φτωχό #μον."
	done

FirebreatherBillSeenText:
	text "Ο ΥΠΕΡΗΧΟΣ του"
	line "ZUBAΤ κάνει"
	cont "σύγχυση."

	para "Έχω νευριάσει πολύ"
	line "με αυτό!"
	done

FirebreatherBillBeatenText:
	text "Κάηκα!"
	done

FirebreatherBillAfterBattleText:
	text "Τα Σαββατοκύριακα"
	line "ακούω βρυχηθμούς"

	para "από μέσα"
	line "στην σπηλιά."
	done

FirebreatherRaySeenText:
	text "Αν έχεις φως, η"
	line "σπηλιά είναι οκ."

	para "Αν είσαι δυνατός,"
	line "τα #μον"
	cont "δεν σε φοβίζουν."
	done

FirebreatherRayBeatenText:
	text "ΛΑΜΨΗ!"
	done

FirebreatherRayAfterBattleText:
	text "Είναι η φωτιά"
	line "του #μον που"
	cont "φωτίζει τη σπηλιά."
	done

UnionCave1FUnusedSignText:
	text "ΣΠΗΛΙΑ ΕΝΩΣΗΣ"
	done

UnionCave1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 19, UNION_CAVE_B1F, 3
	warp_event  3, 33, UNION_CAVE_B1F, 4
	warp_event 17, 31, ROUTE_33, 1
	warp_event 17,  3, ROUTE_32, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerDaniel, -1
	object_event  4, 21, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacLarry, -1
	object_event 15,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerRussell, -1
	object_event 16, 31, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerFirebreatherRay, -1
	object_event 15, 15, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherBill, -1
	object_event 17, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FGreatBall, EVENT_UNION_CAVE_1F_GREAT_BALL
	object_event  4,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FPotion, EVENT_UNION_CAVE_1F_POTION
	object_event  4, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FXAttack, EVENT_UNION_CAVE_1F_X_ATTACK
	object_event 12, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, UnionCave1FAwakening, EVENT_UNION_CAVE_1F_AWAKENING
