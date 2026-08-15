	object_const_def
	const TRAINERHOUSE1F_RECEPTIONIST
	const TRAINERHOUSE1F_COOLTRAINER_M
	const TRAINERHOUSE1F_COOLTRAINER_F
	const TRAINERHOUSE1F_YOUNGSTER
	const TRAINERHOUSE1F_GENTLEMAN

TrainerHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHouse1FReceptionistScript:
	jumptextfaceplayer TrainerHouse1FReceptionistText

TrainerHouse1FCooltrainerMScript:
	jumptextfaceplayer TrainerHouse1FCooltrainerMText

TrainerHouse1FCooltrainerFScript:
	jumptextfaceplayer TrainerHouse1FCooltrainerFText

TrainerHouse1FYoungsterScript:
	jumptextfaceplayer TrainerHouse1FYoungsterText

TrainerHouse1FGentlemanScript:
	jumptextfaceplayer TrainerHouse1FGentlemanText

TrainerHouseSign1:
	jumptext TrainerHouseSign1Text

TrainerHouseSign2:
	jumptext TrainerHouseSign2Text

TrainerHouseIllegibleBook:
	jumptext TrainerHouseIllegibleText

TrainerHouse1FReceptionistText:
	text "Καλώς ήρθατε στο"
	line "ΣΠΙΤΙ ΕΚΠ/ΤΩΝ, το"

	para "νέο, ζωηρό μέρος"
	line "στη VIRIDIAN."

	para "Είμαστε ανοιχτά"
	line "για εκπ/τες."

	para "Κάνουμε μάχες"
	line "ενάντια στους πιο"

	para "καλούς στο"
	line "κάτω πάτωμα."
	done

TrainerHouse1FCooltrainerMText:
	text "Η VIRIDIAN είναι"
	line "πολύ κοντά στο"
	cont "ΟΡΟΠΕΔΙΟ INDIGO."

	para "Έχτισαν αυτό το"
	line "μέρος για τους"

	para "πολλούς εκπ/τες"
	line "που προπονούνται"

	para "για το ΟΡΟΠΕΔΙΟ"
	line "INDIGO."
	done

TrainerHouse1FCooltrainerFText:
	text "Κάνουν μάχες"
	line "πρακτικής στο"
	cont "κάτω πάτωμα."

	para "Θα ήθελα να"
	line "δω έναν καλό"

	para "εκπ/τη του JOHTO"
	line "να μάχεται."
	done

TrainerHouse1FYoungsterText:
	text "Υποθέτω πως δεν"
	line "θα γίνεις ΠΡΩΤΑ-"

	para "ΘΛΗΤΗΣ εκτός"
	line "αν πας παντού &"

	para "κάνεις μάχες"
	line "με πολύ κόσμο."

	para "Ο ΠΡΩΤΑΘΛΗΤΗΣ"
	line "της PALLET πήγε"

	para "σε όλες τις πόλεις"
	line "του KANTO."
	done

TrainerHouse1FGentlemanText:
	text "Φιου… Ξεκουράζομαι"
	line "από τις μάχες"
	cont "των #μον."
	done

TrainerHouseSign1Text:
	text "Μάχες πρακτικής"
	line "γίνονται στην"

	para "ΑΙΘΟΥΣΑ στο"
	line "κάτω πάτωμα."

	para "Έμπειροι εκπ/τες"
	line "προσκαλούνται"
	cont "να συμμετάσχουν."
	done

TrainerHouseSign2Text:
	text "Δεν υπάρχουν"
	line "κανόνες για τις"

	para "μάχες πρακτικής."
	line "Όπως οι μάχες"

	para "πεδίου, τα"
	line "πάντα γίνονται!"
	done

TrainerHouseIllegibleText:
	text "…Τι είναι αυτό;"
	line "Νέα στρατηγική;"

	para "Το κείμενο μοιάζει"
	line "με ίχνη ONIX…"

	para "Είναι πολύ"
	line "κακογραμμένο…"
	done

TrainerHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 13, VIRIDIAN_CITY, 3
	warp_event  3, 13, VIRIDIAN_CITY, 3
	warp_event  8,  2, TRAINER_HOUSE_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, TrainerHouseSign1
	bg_event  7,  0, BGEVENT_READ, TrainerHouseSign2
	bg_event  7, 10, BGEVENT_READ, TrainerHouseIllegibleBook

	def_object_events
	object_event  0, 11, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FReceptionistScript, -1
	object_event  7, 11, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FCooltrainerMScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FCooltrainerFScript, -1
	object_event  4,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FYoungsterScript, -1
	object_event  2,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TrainerHouse1FGentlemanScript, -1
