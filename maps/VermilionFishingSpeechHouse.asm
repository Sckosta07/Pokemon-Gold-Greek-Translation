	object_const_def
	const VERMILIONFISHINGSPEECHHOUSE_FISHING_GURU

VermilionFishingSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FishingDude:
	jumptextfaceplayer FishingDudeText

FishingDudesHousePhoto:
	jumptext FishingDudesHousePhotoText

FishingDudesHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

FishingDudeText:
	text "Είμαι ο GURU"
	line "ΨΑΡΕΜΑΤΟΣ ο μεγά-"
	cont "λος ΑΔΕΛΦΟΣ."

	para "Τυχαίνει να"
	line "ξέρεις τον ΨΑΡΑ"

	para "WILTON; Ψαρεύει"
	line "στο ΔΡΟΜΟ 44."

	para "Ήρθε με μια"
	line "απίστευτη συμβουλή"
	cont "στο κινητό."

	para "Χάρη σε αυτόν,"
	line "έπιασα πολλά"

	para "σπάνια #μον."
	line "Τι μέρα και αυτή!"
	done

FishingDudesHousePhotoText:
	text "Μια φωτογραφία"
	line "με ψαράδες…"

	para "Περνάνε πολύ"
	line "καλά μαζί…"
	done

VermilionFishingSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 1
	warp_event  3,  7, VERMILION_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, FishingDudesHousePhoto

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FishingDude, -1
