	object_const_def
	const FUCHSIACITY_YOUNGSTER
	const FUCHSIACITY_POKEFAN_M
	const FUCHSIACITY_TEACHER
	const FUCHSIACITY_FRUIT_TREE

FuchsiaCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, FuchsiaCityFlypointCallback

FuchsiaCityFlypointCallback:
	setflag ENGINE_FLYPOINT_FUCHSIA
	endcallback

FuchsiaCityYoungster:
	jumptextfaceplayer FuchsiaCityYoungsterText

FuchsiaCityPokefanM:
	jumptextfaceplayer FuchsiaCityPokefanMText

FuchsiaCityTeacher:
	jumptextfaceplayer FuchsiaCityTeacherText

FuchsiaCitySign:
	jumptext FuchsiaCitySignText

FuchsiaGymSign:
	jumptext FuchsiaGymSignText

SafariZoneOfficeSign:
	jumptext SafariZoneOfficeSignText

WardensHomeSign:
	jumptext WardensHomeSignText

SafariZoneClosedSign:
	jumptext SafariZoneClosedSignText

NoLitteringSign:
	jumptext NoLitteringSignText

FuchsiaCityPokecenterSign:
	jumpstd PokecenterSignScript

FuchsiaCityMartSign:
	jumpstd MartSignScript

FuchsiaCityFruitTree:
	fruittree FRUITTREE_FUCHSIA_CITY

FuchsiaCityYoungsterText:
	text "Ένας από τους"
	line "4 ΕΛΙΤ ήταν"

	para "ΗΓΕΤΗΣ του"
	line "GYM της FUCHSIA."
	done

FuchsiaCityPokefanMText:
	text "Η κόρη του KOGA"
	line "πήρε την θέση του"

	para "ως ΗΓΕΤΗΣ GYM"
	line "αφού μπήκε στους"
	cont "4 ΕΛΙΤ."
	done

FuchsiaCityTeacherText:
	text "Η ΖΩΝΗ ΣΑΦΑΡΙ"
	line "έκλεισε… Λυπάμαι,"

	para "θεωρώντας το"
	line "κεντρικό θέαμα"
	cont "της FUCHSIA."
	done

FuchsiaCitySignText:
	text "ΠΟΛΗ FUCHSIΑ"

	para "Ιδού! Έχει"
	line "Πάθος Με Το Ροζ"
	done

FuchsiaGymSignText:
	text "ΠΟΛΗ FUCHSIA"
	line "ΠΟΚΕMON GYM"
	cont "ΗΓΕΤΗΣ: JANINE"

	para "Η Βλαβερή"
	line "Νίντζα Εξπέρ"
	done

SafariZoneOfficeSignText:
	text "Υπάρχει σημείωμα"
	line "εδώ πέρα…"

	para "Το ΓΡΑΦΕΙΟ ΖΩΝΗΣ"
	line "ΣΑΦΑΡΙ έκλεισε"
	cont "μέχρι νεωτέρας."
	done

WardensHomeSignText:
	text "ΖΩΝΗ ΣΑΦΑΡΙ"
	line "ΣΠΙΤΙ ΦΥΛΑΚΑ"
	done

SafariZoneClosedSignText:
	text "Ο ΦΥΛΑΚΑΣ"
	line "πήγε ταξίδι."

	para "Άρα, η ΖΩΝΗ"
	line "ΣΑΦΑΡΙ έχει"
	cont "κλείσει."
	done

NoLitteringSignText:
	text "Όχι σκουπίδια."

	para "Πάρτε τα σκου-"
	line "πίδια μαζί σας."
	done

FuchsiaCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, FUCHSIA_MART, 2
	warp_event 22, 13, SAFARI_ZONE_MAIN_OFFICE, 1
	warp_event  8, 27, FUCHSIA_GYM, 1
	warp_event 11, 27, BILLS_OLDER_SISTERS_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 27, 27, SAFARI_ZONE_WARDENS_HOME, 1
	warp_event 18,  3, SAFARI_ZONE_FUCHSIA_GATE_BETA, 3 ; inaccessible
	warp_event 37, 22, ROUTE_15_FUCHSIA_GATE, 1
	warp_event 37, 23, ROUTE_15_FUCHSIA_GATE, 2
	warp_event  7, 35, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  8, 35, ROUTE_19_FUCHSIA_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 21, 15, BGEVENT_READ, FuchsiaCitySign
	bg_event  5, 29, BGEVENT_READ, FuchsiaGymSign
	bg_event 25, 15, BGEVENT_READ, SafariZoneOfficeSign
	bg_event 27, 29, BGEVENT_READ, WardensHomeSign
	bg_event 17,  5, BGEVENT_READ, SafariZoneClosedSign
	bg_event 13, 15, BGEVENT_READ, NoLitteringSign
	bg_event 20, 27, BGEVENT_READ, FuchsiaCityPokecenterSign
	bg_event  6, 13, BGEVENT_READ, FuchsiaCityMartSign

	def_object_events
	object_event 23, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityYoungster, -1
	object_event 13,  8, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FuchsiaCityPokefanM, -1
	object_event 16, 14, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, FuchsiaCityTeacher, -1
	object_event  8,  1, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaCityFruitTree, -1
