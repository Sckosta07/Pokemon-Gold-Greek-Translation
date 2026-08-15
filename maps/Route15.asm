	object_const_def
	const ROUTE15_YOUNGSTER1
	const ROUTE15_YOUNGSTER2
	const ROUTE15_YOUNGSTER3
	const ROUTE15_YOUNGSTER4
	const ROUTE15_TEACHER1
	const ROUTE15_TEACHER2
	const ROUTE15_POKE_BALL

Route15_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerTeacherColette:
	trainer TEACHER, COLETTE, EVENT_BEAT_TEACHER_COLETTE, TeacherColetteSeenText, TeacherColetteBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherColetteAfterBattleText
	waitbutton
	closetext
	end

TrainerTeacherHillary:
	trainer TEACHER, HILLARY, EVENT_BEAT_TEACHER_HILLARY, TeacherHillarySeenText, TeacherHillaryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherHillaryAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyKipp:
	trainer SCHOOLBOY, KIPP, EVENT_BEAT_SCHOOLBOY_KIP, SchoolboyKippSeenText, SchoolboyKippBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyKippAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyTommy:
	trainer SCHOOLBOY, TOMMY, EVENT_BEAT_SCHOOLBOY_TOMMY, SchoolboyTommySeenText, SchoolboyTommyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyTommyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyJohnny:
	trainer SCHOOLBOY, JOHNNY, EVENT_BEAT_SCHOOLBOY_JOHNNY, SchoolboyJohnnySeenText, SchoolboyJohnnyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyJohnnyAfterBattleText
	waitbutton
	closetext
	end

TrainerSchoolboyBilly:
	trainer SCHOOLBOY, BILLY, EVENT_BEAT_SCHOOLBOY_BILLY, SchoolboyBillySeenText, SchoolboyBillyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SchoolboyBillyAfterBattleText
	waitbutton
	closetext
	end

Route15Sign:
	jumptext Route15SignText

Route15PPUp:
	itemball PP_UP

TeacherColetteSeenText:
	text "Έχεις ξεχάσει"
	line "κάτι;"
	done

TeacherColetteBeatenText:
	text "Κυαααχ!"
	done

TeacherColetteAfterBattleText:
	text "Πριν γίνω δασκάλα,"
	line "ξεχνούσα πολλά"

	para "πράγματα"
	line "καθημερινά."
	done

TeacherHillarySeenText:
	text "Στις ηλιόλουστες"
	line "μέρες, πιστεύω"

	para "πως τα παιδιά"
	line "πρέπει να παίζουν"

	para "στην αυλή από"
	line "τα μαθήματα."
	done

TeacherHillaryBeatenText:
	text "Δεν ήθελα"
	line "να χάσω…"
	done

TeacherHillaryAfterBattleText:
	text "Η μελέτη έχει"
	line "σημασία, μα η πρά-"
	cont "ξη περισσότερο."
	done

SchoolboyKippSeenText:
	text "Στάσου. Τηλεφωνώ"
	line "στη μαμά μου."
	done

SchoolboyKippBeatenText:
	text "Συγνώμη, Μαμά!"
	line "Με νίκησαν!"
	done

SchoolboyKippAfterBattleText:
	text "Η Μαμά ανυση-"
	line "χεί για εμένα,"

	para "που της τηλεφωνώ"
	line "όλη την ώρα."
	done

SchoolboyTommySeenText:
	text "Μαχη, ΟΚ."
	line "Δεν θα χάσω!"
	done

SchoolboyTommyBeatenText:
	text "Ξέχασα να κάνω"
	line "τις εργασίες μου!"
	done

SchoolboyTommyAfterBattleText:
	text "SAYONARA!"
	line "Άρχισα Ιαπωνικά"
	cont "σήμερα."
	done

SchoolboyJohnnySeenText:
	text "Κάνουμε εκδρομή"
	line "στον ΠΥΡΓΟ ΡΑΔΙΟ"

	para "της LAVENDER για"
	line "κοινωνική μελέτη."
	done

SchoolboyJohnnyBeatenText:
	text "Είσαι εκπληκτικά"
	line "δυνατός!"
	done

SchoolboyJohnnyAfterBattleText:
	text "Κουράστηκα να"
	line "περπατώ. Θα"
	cont "κάνω διάλειμμα."
	done

SchoolboyBillySeenText:
	text "Το καλύτερο εί-"
	line "ναι η γυμναστική!"
	done

SchoolboyBillyBeatenText:
	text "Ωχ, όχι!"
	line "Πως έχασα;"
	done

SchoolboyBillyAfterBattleText:
	text "Αν #μον ήταν"
	line "θέμα στο σχολείο,"
	cont "θα ήμουν άριστος!"
	done

Route15SignText:
; BUG: "Route 15" is not capitalized in a signpost (see docs/bugs_and_glitches.md)
	text "Δρόμος 15"

	para "ΠΟΛΗ FUCHSIA -"
	line "ΠΟΛΗ LAVENDER"
	done

Route15_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  4, ROUTE_15_FUCHSIA_GATE, 3
	warp_event  2,  5, ROUTE_15_FUCHSIA_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 19,  9, BGEVENT_READ, Route15Sign

	def_object_events
	object_event 11, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSchoolboyKipp, -1
	object_event 11, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSchoolboyTommy, -1
	object_event 33, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyJohnny, -1
	object_event 27, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyBilly, -1
	object_event 30, 12, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerTeacherColette, -1
	object_event 16, 10, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerTeacherHillary, -1
	object_event 12,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route15PPUp, EVENT_ROUTE_15_PP_UP
