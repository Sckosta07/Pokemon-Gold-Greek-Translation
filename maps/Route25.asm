	object_const_def
	const ROUTE25_MISTY
	const ROUTE25_COOLTRAINER_M1
	const ROUTE25_YOUNGSTER1
	const ROUTE25_LASS1
	const ROUTE25_YOUNGSTER2
	const ROUTE25_LASS2
	const ROUTE25_YOUNGSTER3
	const ROUTE25_LASS3
	const ROUTE25_SUPER_NERD
	const ROUTE25_COOLTRAINER_M2
	const ROUTE25_POKE_BALL

Route25_MapScripts:
	def_scene_scripts
	scene_script Route25Noop1Scene, SCENE_ROUTE25_NOOP
	scene_script Route25Noop2Scene, SCENE_ROUTE25_MISTYS_DATE

	def_callbacks

Route25Noop1Scene:
	end

Route25Noop2Scene:
	end

Route25MistyDate1Script:
	showemote EMOTE_HEART, ROUTE25_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, ROUTE25_COOLTRAINER_M1, 10
	turnobject ROUTE25_MISTY, DOWN
	applymovement ROUTE25_COOLTRAINER_M1, Route25MistysDateLeavesMovement1
	disappear ROUTE25_COOLTRAINER_M1
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject ROUTE25_MISTY, UP
	pause 10
	applymovement ROUTE25_MISTY, Route25MistyApproachesPlayerMovement1
	opentext
	writetext Route25MistyDateText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement ROUTE25_MISTY, Route25MistyLeavesPlayerMovement1
	turnobject PLAYER, LEFT
	applymovement ROUTE25_MISTY, Route25MistyLeavesMovement
	disappear ROUTE25_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene SCENE_ROUTE25_NOOP
	special RestartMapMusic
	end

Route25MistyDate2Script:
	showemote EMOTE_HEART, ROUTE25_MISTY, 15
	pause 30
	showemote EMOTE_SHOCK, ROUTE25_COOLTRAINER_M1, 10
	turnobject ROUTE25_MISTY, DOWN
	applymovement ROUTE25_COOLTRAINER_M1, Route25MistysDateLeavesMovement2
	disappear ROUTE25_COOLTRAINER_M1
	pause 15
	playmusic MUSIC_BEAUTY_ENCOUNTER
	turnobject ROUTE25_MISTY, UP
	pause 10
	applymovement ROUTE25_MISTY, Route25MistyApproachesPlayerMovement2
	opentext
	writetext Route25MistyDateText
	waitbutton
	closetext
	turnobject PLAYER, UP
	applymovement ROUTE25_MISTY, Route25MistyLeavesPlayerMovement2
	turnobject PLAYER, LEFT
	applymovement ROUTE25_MISTY, Route25MistyLeavesMovement
	disappear ROUTE25_MISTY
	clearevent EVENT_TRAINERS_IN_CERULEAN_GYM
	setscene SCENE_ROUTE25_NOOP
	special RestartMapMusic
	end

TrainerSchoolboyDudley:
	trainer SCHOOLBOY, DUDLEY, EVENT_BEAT_SCHOOLBOY_DUDLEY, SchoolboyDudleySeenText, SchoolboyDudleyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyDudleyAfterBattleText
	waitbutton
	closetext
	end

TrainerLassEllen:
	trainer LASS, ELLEN, EVENT_BEAT_LASS_ELLEN, LassEllenSeenText, LassEllenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassEllenAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyJoe:
	trainer SCHOOLBOY, JOE, EVENT_BEAT_SCHOOLBOY_JOE, SchoolboyJoeSeenText, SchoolboyJoeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyJoeAfterBattleText
	waitbutton
	closetext
	end

TrainerLassLaura:
	trainer LASS, LAURA, EVENT_BEAT_LASS_LAURA, LassLauraSeenText, LassLauraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassLauraAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperLloyd:
	trainer CAMPER, LLOYD, EVENT_BEAT_CAMPER_LLOYD, CamperLloydSeenText, CamperLloydBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperLloydAfterBattleText
	waitbutton
	closetext
	end

TrainerLassShannon:
	trainer LASS, SHANNON, EVENT_BEAT_LASS_SHANNON, LassShannonSeenText, LassShannonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassShannonAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdPat:
	trainer SUPER_NERD, PAT, EVENT_BEAT_SUPER_NERD_PAT, SupernerdPatSeenText, SupernerdPatBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdPatAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermKevin:
	faceplayer
	opentext
	checkevent EVENT_BEAT_COOLTRAINERM_KEVIN
	iftrue .AfterBattle
	checkevent EVENT_CLEARED_NUGGET_BRIDGE
	iftrue .AfterNuggetBridge
	writetext CooltrainermKevinNuggetText
	promptbutton
	verbosegiveitem NUGGET
	iffalse .NoRoomForNugget
	setevent EVENT_CLEARED_NUGGET_BRIDGE
.AfterNuggetBridge:
	writetext CooltrainermKevinSeenText
	waitbutton
	closetext
	winlosstext CooltrainermKevinBeatenText, 0
	loadtrainer COOLTRAINERM, KEVIN
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERM_KEVIN
	opentext
.AfterBattle:
	writetext CooltrainermKevinAfterBattleText
	waitbutton
.NoRoomForNugget:
	closetext
	end

BillsHouseSign:
	jumptext BillsHouseSignText

Route25Protein:
	itemball PROTEIN

Route25HiddenPotion:
	hiddenitem POTION, EVENT_ROUTE_25_HIDDEN_POTION

Route25MistysDateLeavesMovement1:
	big_step DOWN
	step_end

Route25MistysDateLeavesMovement2:
	big_step DOWN
	big_step DOWN
	step_end

Route25MistyApproachesPlayerMovement1:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyApproachesPlayerMovement2:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyLeavesPlayerMovement1:
	step DOWN
	step LEFT
	step_end

Route25MistyLeavesPlayerMovement2:
	step UP
	step LEFT
	step_end

Route25MistyLeavesMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

Route25MistyDateText:
	text "MISTY: Ω! Γιατί"
	line "έπρεπε να έρθεις"

	para "και να μας"
	line "ενοχλήσεις τώρα;"

	para "Ξέρεις πως"
	line "λέγονται τύποι"
	cont "σαν εσένα;"

	para "Ζιζάνια! Καλά"
	line "άκουσες, μικρέ!"

	para "…"

	para "…Ω;? Τα ΕΜΒΛΗΜΑΤΑ"
	line "που έχεις… Είναι"
	cont "ΕΜΒΛΗΜΑΤΑ JOHTO;"

	para "Αν έχεις οχτώ,"
	line "θα είσαι καλός."

	para "OK, τότε. Έλα"
	line "στο CERULEAN GYM."

	para "Θα χαρώ να"
	line "σε νικήσω."

	para "Είμαι η MISTY,"
	line "η ΗΓΕΤΗΣ GYM"
	cont "της CERULEAN."
	done

SchoolboyDudleySeenText:
	text "Νίκησε τους 6"
	line "εκπ/τες για να"
	cont "πάρεις δωράκι!"

	para "Πιστεύεις πως"
	line "έχεις ότι πρέπει;"
	done

SchoolboyDudleyBeatenText:
	text "Ω! Είσαι καλός!"
	done

SchoolboyDudleyAfterBattleText:
	text "Έκανα ότι μπορώ."
	line "Δεν μετανιώνω."
	done

LassEllenSeenText:
	text "Είμαι δεύτερη."
	line "Τώρα είναι σοβαρό!"
	done

LassEllenBeatenText:
	text "Πως έχασα έτσι;"
	done

LassEllenAfterBattleText:
	text "Έκανα ότι μπορώ."
	line "Δεν μετανιώνω."
	done

SchoolboyJoeSeenText:
	text "Εδώ ο No. 3!"
	line "Δεν είμαι εύκολος."
	done

SchoolboyJoeBeatenText:
	text "Ω! Χτυπιέμαι!"
	done

SchoolboyJoeAfterBattleText:
	text "Έκανα ότι μπορώ."
	line "Δεν μετανιώνω."
	done

LassLauraSeenText:
	text "Είμαι No. 4!"
	line "Κουράστηκες;"
	done

LassLauraBeatenText:
	text "Επίσης έχασα…"
	done

LassLauraAfterBattleText:
	text "Έκανα ότι μπορώ."
	line "Δεν μετανιώνω."
	done

CamperLloydSeenText:
	text "OK! No. 5."
	line "Θα σε νικήσω!"
	done

CamperLloydBeatenText:
	text "Αμάν! Πολύ δύναμη."
	done

CamperLloydAfterBattleText:
	text "Έκανα ότι μπορώ."
	line "Δεν μετανιώνω."
	done

LassShannonSeenText:
	text "Είμαι η τελευ-"
	line "ταία, μα σου λέω"
	cont "είμαι δύσκολη!"
	done

LassShannonBeatenText:
	text "Πλάκα κάνεις."
	done

LassShannonAfterBattleText:
	text "Έκανα ότι μπορώ."
	line "Δεν μετανιώνω."
	done

SupernerdPatSeenText:
	text "Μοφοφοφο…"

	para "Δεν έχω σχέση"
	line "με την εξάδα"
	cont "των εκπ/των."

	para "Περίμενα εδώ"
	line "για να σε νικήσω"

	para "οταν θα είχες"
	line "κουραστεί πια."
	done

SupernerdPatBeatenText:
	text "Δεν κουράστηκες"
	line "καθόλου;"
	done

SupernerdPatAfterBattleText:
	text "Συγνώμη… δεν"
	line "θα ξανά κλέψω…"
	done

CooltrainermKevinNuggetText:
	text "Έκανες μια"
	line "ακόμη μάχη από"

	para "ότι περίμενες, μα"
	line "νίκησες και έτσι."

	para "Όπως είπαμε,"
	line "νίκησες βραβείο."
	done

CooltrainermKevinSeenText:
	text "Μα αφού είδα"
	line "πως μάχεσαι,"

	para "θέλω να δω πως"
	line "θα τα πάω."

	para "Τι λες; Θα"
	line "κάνουμε μάχη."
	done

CooltrainermKevinBeatenText:
	text "Ποτέ δεν έκανα"
	line "τόσο ωραία μάχη!"
	done

CooltrainermKevinAfterBattleText:
	text "Ήταν σπουδαία"
	line "μάχη!"

	para "Εσύ και τα #-"
	line "μον σου είστε"
	cont "ανίκητοι!"
	done

BillsHouseSignText:
	text "ΘΑΛ. ΕΞΟΧΙΚΟ"
	line "ΣΠΙΤΙ του BILL"
	done

UnusedBillsHouseSignText: ; unreferenced
	text "ΣΠΙΤΙ του BILL"
	done

Route25_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 47,  5, BILLS_HOUSE, 1

	def_coord_events
	coord_event 42,  6, SCENE_ROUTE25_MISTYS_DATE, Route25MistyDate1Script
	coord_event 42,  7, SCENE_ROUTE25_MISTYS_DATE, Route25MistyDate2Script

	def_bg_events
	bg_event 45,  5, BGEVENT_READ, BillsHouseSign
	bg_event  4,  5, BGEVENT_ITEM, Route25HiddenPotion

	def_object_events
	object_event 46,  9, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_25_MISTY_BOYFRIEND
	object_event 46, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ROUTE_25_MISTY_BOYFRIEND
	object_event 12,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyDudley, -1
	object_event 16, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassEllen, -1
	object_event 21,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyJoe, -1
	object_event 22,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassLaura, -1
	object_event 25,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperLloyd, -1
	object_event 28, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassShannon, -1
	object_event 31,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerSupernerdPat, -1
	object_event 37,  8, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerCooltrainermKevin, -1
	object_event 32,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route25Protein, EVENT_ROUTE_25_PROTEIN
