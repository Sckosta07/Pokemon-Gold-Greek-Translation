	object_const_def
	const ROUTE13_YOUNGSTER1
	const ROUTE13_YOUNGSTER2
	const ROUTE13_POKEFAN_M1
	const ROUTE13_POKEFAN_M2
	const ROUTE13_POKEFAN_M3

Route13_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmAlex:
	trainer POKEFANM, ALEX, EVENT_BEAT_POKEFANM_ALEX, PokefanmAlexSeenText, PokefanmAlexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAlexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmJoshua:
	trainer POKEFANM, JOSHUA, EVENT_BEAT_POKEFANM_JOSHUA, PokefanmJoshuaSeenText, PokefanmJoshuaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmJoshuaAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperPerry:
	trainer BIRD_KEEPER, PERRY, EVENT_BEAT_BIRD_KEEPER_PERRY, BirdKeeperPerrySeenText, BirdKeeperPerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperPerryAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperBret:
	trainer BIRD_KEEPER, BRET, EVENT_BEAT_BIRD_KEEPER_BRET, BirdKeeperBretSeenText, BirdKeeperBretBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperBretAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerKenny:
	trainer HIKER, KENNY, EVENT_BEAT_HIKER_KENNY, HikerKennySeenText, HikerKennyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerKennyAfterBattleText
	waitbutton
	closetext
	end

Route13TrainerTips:
	jumptext Route13TrainerTipsText

Route13Sign:
	jumptext Route13SignText

Route13DirectionsSign:
	jumptext Route13DirectionsSignText

Route13HiddenCalcium:
	hiddenitem CALCIUM, EVENT_ROUTE_13_HIDDEN_CALCIUM

PokefanmAlexSeenText:
	text "Γονάτισε στα"
	line "βασιλικά #μον!"
	done

PokefanmAlexBeatenText:
	text "Πως τολμάς να"
	line "μην νοιάζεσαι!"
	done

PokefanmAlexAfterBattleText:
	text "Δεν εύχονται όλοι"
	line "να γίνουν μια"
	cont "μέρα βασιλιάδες;"
	done

PokefanmJoshuaSeenText:
	text "Μιχιχι! Θες να"
	line "κάνεις μάχη με"
	cont "τα PIKACHU;"
	done

PokefanmJoshuaBeatenText:
	text "PI-PIKACHU!"
	done

PokefanmJoshuaAfterBattleText:
	text "Φαίνεται να έχεις"
	line "πολλά #μον,"

	para "μα το PIKACHU"
	line "είναι κορυφή."
	done

BirdKeeperPerrySeenText:
	text "Η ευκινησία είναι"
	line "το κλειδί στα"
	cont "#μον πουλιά."
	done

BirdKeeperPerryBeatenText:
	text "Με νίκησες"
	line "με ταχύτητα…"
	done

BirdKeeperPerryAfterBattleText:
	text "Τα #μον σου"
	line "έχουν καλή"
	cont "εκπαίδευση."
	done

BirdKeeperBretSeenText:
	text "Τσέκαρε τα δικά"
	line "μου. Απλώς"

	para "κοίτα χρώματα"
	line "και φτερά."
	done

BirdKeeperBretBeatenText:
	text "Φτου!"
	line "Όχι αρκετά καλός!"
	done

BirdKeeperBretAfterBattleText:
	text "Αν τα φροντίσεις,"
	line "αυτά χαίρονται."
	done

HikerKennySeenText:
	text "Πάω στο ΤΟΥΝΕΛ"
	line "ΒΡΑΧΟ για να"
	cont "πάρω ONIX."
	done

HikerKennyBeatenText:
	text "Έχασα…"
	done

HikerKennyAfterBattleText:
	text "Γεωλογικά χαρα-"
	line "κτηριστικά δεν"
	cont "αλλάζουν."

	para "Μα βασικά"
	line "αλλάζουν, λίγο"
	cont "λίγο."
	done

Route13TrainerTipsText:
	text "ΣΥΜΒΟΥΛΕΣ"

	para "Κοίτα! Εκεί πέρα,"
	line "στην αριστερή"
	cont "πλευρά της αφίσας."
	done

Route13SignText:
	text "ΔΡΟΜΟΣ 13"

	para "Βόρεια προς ΓΕΦΥΡΑ"
	line "ΕΠΙΣΤΗΜΗΣ"
	done

Route13DirectionsSignText:
	text "Βόρεια προς την"
	line "LAVENDER"

	para "Δυτικά της"
	line "FUCHSIA"
	done

Route13_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 29, 13, BGEVENT_READ, Route13TrainerTips
	bg_event 41, 11, BGEVENT_READ, Route13Sign
	bg_event 17, 13, BGEVENT_READ, Route13DirectionsSign
	bg_event 30, 13, BGEVENT_ITEM, Route13HiddenCalcium

	def_object_events
	object_event 42,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperPerry, -1
	object_event 43,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBirdKeeperBret, -1
	object_event 32,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerPokefanmJoshua, -1
	object_event 14, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerHikerKenny, -1
	object_event 25,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokefanmAlex, -1
