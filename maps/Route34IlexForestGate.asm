	object_const_def
	const ROUTE34ILEXFORESTGATE_TEACHER
	const ROUTE34ILEXFORESTGATE_BUTTERFREE
	const ROUTE34ILEXFORESTGATE_LASS

Route34IlexForestGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route34IlexForestGateTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM12_SWEET_SCENT
	iftrue .GotSweetScent
	writetext Route34IlexForestGateTeacherText
	promptbutton
	verbosegiveitem TM_SWEET_SCENT
	iffalse .NoRoom
	setevent EVENT_GOT_TM12_SWEET_SCENT
.GotSweetScent:
	writetext Route34IlexForestGateTeacher_GotSweetScent
	waitbutton
.NoRoom:
	closetext
	end

Route34IlexForestGateButterfreeScript:
	opentext
	writetext Route34IlexForestGateButterfreeText
	cry BUTTERFREE
	waitbutton
	closetext
	end

Route34IlexForestGateLassScript:
	jumptextfaceplayer Route34IlexForestGateLassText

Route34IlexForestGateTeacherText:
	text "Ω, γλυκιέ μου."
	line "Κάνεις #ντεξ;"

	para "Θα είναι δύσκολο"
	line "αν δεν εμφανίζο-"

	para "νται #μον. Πάρε"
	line "αυτό το TM."
	done

Route34IlexForestGateTeacher_GotSweetScent:
	text "ΓΛΥΚΟ ΑΡΩΜΑ."

	para "Βάλε όταν #-"
	line "μον εμφανίζονται."

	para "Θα προσελκύσεις"
	line "πολλά #μον."
	done

Route34IlexForestGateButterfreeText:
	text "BUTTERFREE: Φρεεχ!"
	done

Route34IlexForestGateLassText:
	text "Βλέπεις τον ναό"
	line "προς τιμήν του"
	cont "προστάτη;"

	para "Προσέχει το"
	line "ΔΑΣΟΣ μέσα"
	cont "στον χρόνο."

	para "Νομίζω πως"
	line "πρέπει να είναι"
	cont "τύπου γρασιδιού."
	done

Route34IlexForestGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_34, 1
	warp_event  5,  0, ROUTE_34, 2
	warp_event  4,  7, ILEX_FOREST, 1
	warp_event  5,  7, ILEX_FOREST, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route34IlexForestGateTeacherScript, -1
	object_event  9,  4, SPRITE_BUTTERFREE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route34IlexForestGateButterfreeScript, -1
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route34IlexForestGateLassScript, -1
