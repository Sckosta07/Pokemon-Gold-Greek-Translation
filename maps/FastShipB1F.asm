	object_const_def
	const FASTSHIPB1F_SAILOR1
	const FASTSHIPB1F_SAILOR2
	const FASTSHIPB1F_SAILOR3
	const FASTSHIPB1F_LASS
	const FASTSHIPB1F_SUPER_NERD
	const FASTSHIPB1F_SAILOR4
	const FASTSHIPB1F_FISHER
	const FASTSHIPB1F_BLACK_BELT
	const FASTSHIPB1F_SAILOR5
	const FASTSHIPB1F_TEACHER
	const FASTSHIPB1F_YOUNGSTER1
	const FASTSHIPB1F_YOUNGSTER2

FastShipB1F_MapScripts:
	def_scene_scripts
	scene_script FastShipB1FNoop1Scene, SCENE_FASTSHIPB1F_SAILOR_BLOCKS
	scene_script FastShipB1FNoop2Scene, SCENE_FASTSHIPB1F_NOOP

	def_callbacks

FastShipB1FNoop1Scene:
	end

FastShipB1FNoop2Scene:
	end

FastShipB1FSailorBlocksLeft:
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_RIGHT
	iftrue FastShipB1FAlreadyBlocked
	applymovement FASTSHIPB1F_SAILOR2, FastShipB1FSailorBlocksLeftMovement
	moveobject FASTSHIPB1F_SAILOR1, 30, 6
	appear FASTSHIPB1F_SAILOR1
	pause 5
	disappear FASTSHIPB1F_SAILOR2
	end

FastShipB1FSailorBlocksRight:
	checkevent EVENT_FAST_SHIP_B1F_SAILOR_LEFT
	iftrue FastShipB1FAlreadyBlocked
	applymovement FASTSHIPB1F_SAILOR1, FastShipB1FSailorBlocksRightMovement
	moveobject FASTSHIPB1F_SAILOR2, 31, 6
	appear FASTSHIPB1F_SAILOR2
	pause 5
	disappear FASTSHIPB1F_SAILOR1
	end

FastShipB1FAlreadyBlocked:
	end

FastShipB1FSailorScript:
	faceplayer
	opentext
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iftrue .FirstTime
	checkevent EVENT_FAST_SHIP_LAZY_SAILOR
	iftrue .LazySailor
	checkevent EVENT_FAST_SHIP_INFORMED_ABOUT_LAZY_SAILOR
	iftrue .AlreadyInformed
	writetext FastShipB1FOnDutySailorText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_INFORMED_ABOUT_LAZY_SAILOR
	clearevent EVENT_FAST_SHIP_CABINS_NNW_NNE_NE_SAILOR
	end

.AlreadyInformed:
	writetext FastShipB1FOnDutySailorRefusedText
	waitbutton
	closetext
	end

.LazySailor:
	writetext FastShipB1FOnDutySailorThanksText
	checkevent EVENT_FAST_SHIP_FOUND_GIRL
	iffalse .NotFoundGirl
	waitbutton
	closetext
	end

.NotFoundGirl:
	promptbutton
	writetext FastShipB1FOnDutySailorSawLittleGirlText
	waitbutton
	closetext
	end

.FirstTime:
	writetext FastShipB1FOnDutySailorDirectionsText
	waitbutton
	closetext
	end

TrainerSailorJeff:
	trainer SAILOR, JEFF, EVENT_BEAT_SAILOR_JEFF, SailorJeffSeenText, SailorJeffBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorJeffAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerDebra:
	trainer PICNICKER, DEBRA, EVENT_BEAT_PICNICKER_DEBRA, PicnickerDebraSeenText, PicnickerDebraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerDebraAfterBattleText
	waitbutton
	closetext
	end

TrainerJugglerFritz:
	trainer JUGGLER, FRITZ, EVENT_BEAT_JUGGLER_FRITZ, JugglerFritzSeenText, JugglerFritzBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerFritzAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorGarrett:
	trainer SAILOR, GARRETT, EVENT_BEAT_SAILOR_GARRETT, SailorGarrettSeenText, SailorGarrettBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorGarrettAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherJonah:
	trainer FISHER, JONAH, EVENT_BEAT_FISHER_JONAH, FisherJonahSeenText, FisherJonahBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherJonahAfterBattleText
	waitbutton
	closetext
	end

TrainerBlackbeltWai:
	trainer BLACKBELT_T, WAI, EVENT_BEAT_BLACKBELT_WAI, BlackbeltWaiSeenText, BlackbeltWaiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltWaiAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorKenneth:
	trainer SAILOR, KENNETH, EVENT_BEAT_SAILOR_KENNETH, SailorKennethSeenText, SailorKennethBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorKennethAfterBattleText
	waitbutton
	closetext
	end

TrainerTeacherShirley:
	trainer TEACHER, SHIRLEY, EVENT_BEAT_TEACHER_SHIRLEY, TeacherShirleySeenText, TeacherShirleyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherShirleyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyNate:
	trainer SCHOOLBOY, NATE, EVENT_BEAT_SCHOOLBOY_NATE, SchoolboyNateSeenText, SchoolboyNateBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyNateAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyRicky:
	trainer SCHOOLBOY, RICKY, EVENT_BEAT_SCHOOLBOY_RICKY, SchoolboyRickySeenText, SchoolboyRickyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyRickyAfterBattleText
	waitbutton
	closetext
	end

FastShipB1FTrashcan:
	jumpstd TrashCanScript

FastShipB1FSailorBlocksRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	turn_head DOWN
	step_end

FastShipB1FSailorBlocksLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	turn_head DOWN
	step_end

FastShipB1FOnDutySailorText:
	text "Έι, φίλε. Μπο-"
	line "ρεις να βρεις τον"
	cont "φίλο μου;"

	para "Χαζολογάει"
	line "κάπου, αυτός"
	cont "ο τεμπέλης!"

	para "Θέλω να του"
	line "πω, μα δουλεύω"
	cont "αυτή τη στιγμή."
	done

FastShipB1FOnDutySailorRefusedText:
	text "Ω, αμάν…"

	para "Ο ΚΑΠΕΤΑΝΙΟΣ"
	line "θα νευριάσει…"
	done

FastShipB1FOnDutySailorThanksText:
	text "Ευχαριστώ φίλε!"
	line "Τον μάλωσα"

	para "καλά ώστε να"
	line "μην χαζολογάει!"
	done

FastShipB1FOnDutySailorSawLittleGirlText:
	text "Κοριτσάκι;"

	para "Νομίζω την"
	line "είδα από εκεί."
	done

FastShipB1FOnDutySailorDirectionsText:
	text "Η τραπεζαρία"
	line "είναι μπροστά."

	para "Οι σκάλες στο"
	line "τέρμα οδηγούν"
	cont "στον ΚΑΠΕΤΑΝΙΟ."
	done

SailorJeffSeenText:
	text "Τίποτα δεν"
	line "ξεπερνά μάχες"
	cont "στο διάλειμμα."
	done

SailorJeffBeatenText:
	text "Νίκα ή χάσε, το"
	line "διάλειμμα έφυγε!"
	done

SailorJeffAfterBattleText:
	text "Υποθέτω πως"
	line "δεν νικάω αν"
	cont "δεν σοβαρευτώ."
	done

PicnickerDebraSeenText:
	text "Βαριέμαι πολύ."
	line "Θες μια μάχη;"
	done

PicnickerDebraBeatenText:
	text "Όου! Είσαι"
	line "πολύ δυνατός!"
	done

PicnickerDebraAfterBattleText:
	text "SAFFRON, CELADON…"
	line "Άκουσα υπάρχουν"

	para "πολλές πόλεις"
	line "στο KANTO."
	done

JugglerFritzSeenText:
	text "Αρρφ…"
	line "Έχω ναυτία!"
	done

JugglerFritzBeatenText:
	text "Δεν κουνιέμαι"
	line "ούτε λίγο…"
	done

JugglerFritzAfterBattleText:
	text "Όχι άλλα πλοία"
	line "για μένα. Άλλη φο-"

	para "ρά θα πάω με"
	line "το ΤΡΕΝΟ ΜΑΓΝΗΤΗ."
	done

SailorGarrettSeenText:
	text "Εδώ δουλεύουμε"
	line "εμείς οι ναύτες!"
	done

SailorGarrettBeatenText:
	text "Έχασα στο"
	line "γήπεδο μου…"
	done

SailorGarrettAfterBattleText:
	text "Έχουμε διάφορους"
	line "επιβάτες από τη"

	para "VERMILION στην"
	line "OLIVINE."
	done

FisherJonahSeenText:
	text "Αν και είμαστε"
	line "στη θάλασσα, δεν"
	cont "γίνεται το ψάρεμα!"

	para "Τι βαρετό!"
	line "Ας παλέψουμε!"
	done

FisherJonahBeatenText:
	text "Δ… Δεν"
	line "βαριέμαι πια…"
	done

FisherJonahAfterBattleText:
	text "Θα ψαρέψω στη"
	line "αποβάθρα."
	done

BlackbeltWaiSeenText:
	text "Γυμνάζω τα πόδια"
	line "μου, κοντράροντας"

	para "το κούνημα αυτού"
	line "του πλοίου!"
	done	

BlackbeltWaiBeatenText:
	text "Κουνάω και"
	line "γυρίζω!"
	done

BlackbeltWaiAfterBattleText:
	text "Δεν βρήκα τον"
	line "ΒΑΣΙΛΙΑ ΚΑΡΑΤΕ"
	cont "στο JOHTO."

	para "Υποτίθεται πως"
	line "προπονείται σε"
	cont "μια σπηλιά κάπου."
	done

SailorKennethSeenText:
	text "Ειμαι ναυτάκι!"

	para "Μα προπονώ"
	line "#μον, άρα θα"
	cont "γίνω ΠΡΩΤΑΘΛΗΤΗΣ!"
	done

SailorKennethBeatenText:
	text "Η ελλειξψη μου"
	line "είναι προφανές…"
	done

SailorKennethAfterBattleText:
	text "8 ΕΜΒΛΗΜΑΤΑ!"
	line "Πρέπει να δείχνουν"

	para "ότι νίκησες τους"
	line "ΗΓΕΤΕΣ GYM."

	para "Σίγουρα είσαι"
	line "πολύ καλός!"
	done

TeacherShirleySeenText:
	text "Μην αγγίζεις"
	line "τους μαθητές μου!"
	done

TeacherShirleyBeatenText:
	text "Ααακ!"
	done

TeacherShirleyAfterBattleText:
	text "Είμαστε σε"
	line "εκδρομή στα ΕΡΕΙ-"
	cont "ΠΙΑ ΤΟΥ ALPH."
	done

SchoolboyNateSeenText:
	text "Ξέρεις τα"
	line "ΕΡΕΙΠΙΑ ΤΟΥ ALPH;"
	done

SchoolboyNateBeatenText:
	text "Υααργχ!"
	done

SchoolboyNateAfterBattleText:
	text "Το ράδιο έχει"
	line "παράξενα σήματα"
	cont "μέσα στα ΕΡΕΙΠΙΑ."
	done

SchoolboyRickySeenText:
	text "Υπάρχουν κάποιες"
	line "πέτρινες πλάκες στα"
	cont "ΕΡΕΙΠΙΑ ΤΟΥ ALPH."
	done

SchoolboyRickyBeatenText:
	text "με τσάκισες!"
	done

SchoolboyRickyAfterBattleText:
	text "Διάβασα πως"
	line "υπάρχουν 4 από"
	cont "τις πλάκες."
	done

FastShipB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 11, FAST_SHIP_1F, 11
	warp_event 31, 13, FAST_SHIP_1F, 12

	def_coord_events
	coord_event 30,  7, SCENE_FASTSHIPB1F_SAILOR_BLOCKS, FastShipB1FSailorBlocksLeft
	coord_event 31,  7, SCENE_FASTSHIPB1F_SAILOR_BLOCKS, FastShipB1FSailorBlocksRight

	def_bg_events
	bg_event 27,  9, BGEVENT_READ, FastShipB1FTrashcan

	def_object_events
	object_event 30,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipB1FSailorScript, EVENT_FAST_SHIP_B1F_SAILOR_LEFT
	object_event 31,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FastShipB1FSailorScript, EVENT_FAST_SHIP_B1F_SAILOR_RIGHT
	object_event  9, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorJeff, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event  6,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPicnickerDebra, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event 26,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerJugglerFritz, EVENT_FAST_SHIP_PASSENGERS_FIRST_TRIP
	object_event 17,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSailorGarrett, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event 25,  8, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherJonah, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event 15, 11, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltWai, EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	object_event 23,  4, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSailorKenneth, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event  9, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTeacherShirley, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event 14,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyNate, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	object_event 14, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSchoolboyRicky, EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
