	object_const_def
	const PALLETTOWN_TEACHER
	const PALLETTOWN_FISHER

PalletTown_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PalletTownFlypointCallback

PalletTownFlypointCallback:
	setflag ENGINE_FLYPOINT_PALLET
	endcallback

PalletTownTeacherScript:
	jumptextfaceplayer PalletTownTeacherText

PalletTownFisherScript:
	jumptextfaceplayer PalletTownFisherText

PalletTownSign:
	jumptext PalletTownSignText

RedsHouseSign:
	jumptext RedsHouseSignText

OaksLabSign:
	jumptext OaksLabSignText

BluesHouseSign:
	jumptext BluesHouseSignText

PalletTownTeacherText:
	text "Μεγαλώνω και"
	line "εγώ #μον."

	para "Με προστατεύουν"
	line "ως φύλακες."
	done

PalletTownFisherText:
	text "Η τεχνολογία"
	line "είναι υπέροχη!"

	para "Μπορείς να δώσεις"
	line "#μον στο παρε-"
	cont "λθόν με E-MAIL."
	done

PalletTownSignText:
	text "ΠΟΛΗ PALLET"

	para "Το Ήρεμο Μέρος"
	line "Γαλήνης & Αγάπης"
	done

RedsHouseSignText:
	text "ΣΠΙΤΙ ΤΟΥ RED"
	done

OaksLabSignText:
	text "ΕΡΓΑΣΤΗΡΙΟ"
	line "ΕΡΕΥΝΑΣ ΤΟΥ ΟΑΚ"
	done

BluesHouseSignText:
	text "ΣΠΙΤΙ ΤΟΥ BLUE"
	done

PalletTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE, 1
	warp_event 12, 11, OAKS_LAB, 1

	def_coord_events

	def_bg_events
	bg_event  7,  9, BGEVENT_READ, PalletTownSign
	bg_event  3,  5, BGEVENT_READ, RedsHouseSign
	bg_event 13, 13, BGEVENT_READ, OaksLabSign
	bg_event 11,  5, BGEVENT_READ, BluesHouseSign

	def_object_events
	object_event  3,  8, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PalletTownTeacherScript, -1
	object_event 12, 14, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PalletTownFisherScript, -1
