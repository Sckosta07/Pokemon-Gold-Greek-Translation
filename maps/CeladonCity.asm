	object_const_def
	const CELADONCITY_FISHER
	const CELADONCITY_POLIWAG
	const CELADONCITY_TEACHER1
	const CELADONCITY_GRAMPS1
	const CELADONCITY_GRAMPS2
	const CELADONCITY_YOUNGSTER1
	const CELADONCITY_YOUNGSTER2
	const CELADONCITY_TEACHER2
	const CELADONCITY_LASS

CeladonCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CeladonCityFlypointCallback

CeladonCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CELADON
	endcallback

CeladonCityFisherScript:
	jumptextfaceplayer CeladonCityFisherText

CeladonCityPoliwrath:
	opentext
	writetext CeladonCityPoliwrathText
	cry POLIWRATH
	waitbutton
	closetext
	end

CeladonCityTeacher1Script:
	jumptextfaceplayer CeladonCityTeacher1Text

CeladonCityGramps1Script:
	jumptextfaceplayer CeladonCityGramps1Text

CeladonCityGramps2Script:
	jumptextfaceplayer CeladonCityGramps2Text

CeladonCityYoungster1Script:
	jumptextfaceplayer CeladonCityYoungster1Text

CeladonCityYoungster2Script:
	jumptextfaceplayer CeladonCityYoungster2Text

CeladonCityTeacher2Script:
	jumptextfaceplayer CeladonCityTeacher2Text

CeladonCityLassScript:
	jumptextfaceplayer CeladonCityLassText

CeladonCitySign:
	jumptext CeladonCitySignText

CeladonGymSign:
	jumptext CeladonGymSignText

CeladonCityDeptStoreSign:
	jumptext CeladonCityDeptStoreSignText

CeladonCityMansionSign:
	jumptext CeladonCityMansionSignText

CeladonCityGameCornerSign:
	jumptext CeladonCityGameCornerSignText

CeladonCityTrainerTips:
	jumptext CeladonCityTrainerTipsText

CeladonCityPokecenterSign:
	jumpstd PokecenterSignScript

CeladonCityHiddenPpUp:
	hiddenitem PP_UP, EVENT_CELADON_CITY_HIDDEN_PP_UP

CeladonCityFisherText:
	text "Το POLIWRATH"
	line "είναι συνεργάτης."

	para "Αναρωτιέμαι αν"
	line "εξελιχθεί ποτέ"
	cont "σε βάτραχο."
	done

CeladonCityPoliwrathText:
	text "POLIWRATH: Κρόακ!"
	done

CeladonCityTeacher1Text:
	text "Έχασα στις"
	line "μηχανές πάλι…"

	para "Και τα κορίτσια"
	line "παίζουν πλέον."

	para "Να τα δεις"
	line "και εσύ."
	done

CeladonCityGramps1Text:
	text "Τα GRIMER φάνηκαν"
	line "τελευταία."

	para "Βλέπεις την λίμνη"
	line "μπροστά από το"

	para "σπίτι; Τα GRIMER"
	line "ζουν εκεί τώρα."

	para "Από που έρχονται;"
	line "Λοιπόν, αυτό είναι"
	cont "σοβαρό πρόβλημα…"
	done

CeladonCityGramps2Text:
	text "Νιχιχι! Το GYM"
	line "είναι τέλειο! Μόνο"

	para "κορίτσια"
	line "επιτρέπονται εκεί!"
	done

CeladonCityYoungster1Text:
	text "Θες να μάθεις"
	line "ένα μυστικό;"

	para "Η ΕΠΑΥΛΗ CELADON"
	line "έχει κρυμμένη"
	cont "πίσω πόρτα."
	done

CeladonCityYoungster2Text:
	text "Κάνουν αγώνα"
	line "φαγητού στο"
	cont "εστιατόριο."

	para "Απλά βλέποντας"
	line "τους νιώθω"
	cont "πρισμένος…"
	done

CeladonCityTeacher2Text:
	text "Το ΠΟΛΥΚΑΤΑΣΤΗΜΑ"
	line "έχει μεγάλη και"

	para "καλή επιλογή"
	line "από προϊόντα."

	para "Αν δεν το"
	line "πάρεις εκεί, δεν"

	para "θα το πάρεις"
	line "πουθενά αλλού."

	para "Φίλε… Ακούγομαι"
	line "σαν πωλήτρια."
	done

CeladonCityLassText:
	text "Το να κοιτάς στο"
	line "έδαφος καθώς"

	para "περπατάς σε"
	line "ζαλίζει."
	done

CeladonCitySignText:
	text "ΠΟΛΗ CELADON"

	para "Η Πόλη των"
	line "Ουράνιων Ονείρων"
	done

CeladonGymSignText:
	text "ΠΟΛΗ CELADON"
	line "ΠΟΚΕΜΟΝ GYM"
	cont "ΗΓΕΤΗΣ: ERIKA"

	para "Η πριγκίπισσα που"
	line "Αγαπά τη Φύση"
	done

CeladonCityDeptStoreSignText:
	text "Βρες οτι θέλεις"
	line "στο ΠΟΛΥΚΑΤΑ-"
	cont "ΣΤΗΜΑ CELADON!"
	done

CeladonCityMansionSignText:
	text "ΕΠΑΥΛΗ CELADON"
	done

CeladonCityGameCornerSignText:
	text "Παιδότοπος για"
	line "Όλους--ΓΩΝΙΑ"
	cont "ΠΑΙΧΝΙΔΙΟΥ"
	done

CeladonCityTrainerTipsText:
	text "ΣΥΜΒΟΥΛΕΣ"

	para "Η ΑΣΠΙΔΑ"
	line "προστατεύει #-"

	para "μον ενάντια σε"
	line "ΕΙΔΙΚΕΣ Επίθεσεις"
	cont "όπως φωτιά, νερό."

	para "Παρε ότι θέλεις"
	line "στο ΠΟΛΥΚΑΤΑΣΤΗΜΑ"
	cont "CELADON!"
	done

CeladonCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  9, CELADON_DEPT_STORE_1F, 1
	warp_event 16,  9, CELADON_MANSION_1F, 1
	warp_event 16,  3, CELADON_MANSION_1F, 3
	warp_event 17,  3, CELADON_MANSION_1F, 3
	warp_event 29,  9, CELADON_POKECENTER_1F, 1
	warp_event 18, 19, CELADON_GAME_CORNER, 1
	warp_event 23, 19, CELADON_GAME_CORNER_PRIZE_ROOM, 1
	warp_event 10, 29, CELADON_GYM, 1
	warp_event 25, 29, CELADON_CAFE, 1

	def_coord_events

	def_bg_events
	bg_event 23, 21, BGEVENT_READ, CeladonCitySign
	bg_event 11, 31, BGEVENT_READ, CeladonGymSign
	bg_event  6,  9, BGEVENT_READ, CeladonCityDeptStoreSign
	bg_event 13,  9, BGEVENT_READ, CeladonCityMansionSign
	bg_event 19, 21, BGEVENT_READ, CeladonCityGameCornerSign
	bg_event 29, 21, BGEVENT_READ, CeladonCityTrainerTips
	bg_event 30,  9, BGEVENT_READ, CeladonCityPokecenterSign
	bg_event 37, 21, BGEVENT_ITEM, CeladonCityHiddenPpUp

	def_object_events
	object_event 26, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityFisherScript, -1
	object_event 27, 11, SPRITE_POLIWAG, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityPoliwrath, -1
	object_event 20, 24, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityTeacher1Script, -1
	object_event 14, 16, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps1Script, -1
	object_event  8, 31, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityGramps2Script, -1
	object_event 18, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonCityYoungster1Script, -1
	object_event 24, 33, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityYoungster2Script, -1
	object_event  6, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCityTeacher2Script, -1
	object_event  7, 22, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonCityLassScript, -1
