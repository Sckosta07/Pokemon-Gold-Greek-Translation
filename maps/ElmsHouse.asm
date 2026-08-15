	object_const_def
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

ElmsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ElmsWife:
	jumptextfaceplayer ElmsWifeText

ElmsSon:
	jumptextfaceplayer ElmsSonText

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsHouseBookshelf:
	jumpstd DifficultBookshelfScript

ElmsWifeText:
	text "Γεια, <PLAYER>! Ο"
	line "άντρας μου έχει"

	para "πάντα δουλειά,"
	line "ελπίζω να είναι"

	para "ΟΚ. Όταν πιάνει"
	line "την έρευνα του,"

	para "ξεχναει ακόμα"
	line "και να φάει."
	done

ElmsSonText:
	text "Όταν μεγαλώσω,"
	line "θα βοηθήσω τον"
	cont "μπαμπά μου!"

	para "Θα γίνω ένας"
	line "σπουδαίος Καθη-"
	cont "γητής #μον!"
	done

ElmsHouseLabFoodText: ; unreferenced
	text "Να λιγο φαγητό"
	line "εδώ. Θα είναι για"
	cont "το ΕΡΓΑΣΤΗΡΙΟ."
	done

ElmsHousePokemonFoodText: ; unreferenced
	text "Να λίγο φαγητό"
	line "εδώ. Θα είναι"
	cont "για το #μον."
	done

ElmsHousePCText:
	text "#μον. Από που"
	line "έρχονται;"

	para "Που πηγαίνουν"
	line "άραγε;"

	para "Γιατί κανένας"
	line "δεν είδε ποτέ"
	cont "#μον γέννα;"

	para "Θελω να μάθω!"
	line "Θα αφιερώσω την"

	para "ζωή μου στη"
	line "μελέτη #μον!"

	para "…"

	para "Είναι μέρος"
	line "γραπτών έρευνας"
	cont "του ΚΑΘ.ELM."
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, ElmsHousePC
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf

	def_object_events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsSon, -1
