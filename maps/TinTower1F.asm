	object_const_def
	const TINTOWER1F_SAGE

TinTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

TinTowerSageScript:
	jumptextfaceplayer TinTowerSageText

TinTowerSageText:
	text "Προσπαθώ να"
	line "αποκαλύψω το"

	para "μυστικό θρυλικού"
	line "#μον που λένε"
	cont "πως ζει εκεί."

	para "Λένε πως το"
	line "#μον πετάει"

	para "συνέχεια από"
	line "τότε που ο ΠΥΡΓΟΣ"
	cont "κάηκε στα Δυτικά."

	para "Σκέφτομαι πως"
	line "αν έχω ότι πρέπει"

	para "το #μον, θα"
	line "ελκύεται από"
	cont "το πράγμα."

	para "Νομίζω πως το"
	line "πράγμα είναι…"

	para "ΦΤΕΡΟΟΥΡΑΝΟΥ!"

	para "Μα, που να"
	line "βρω ένα;"
	done

TinTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, ECRUTEAK_CITY, 12
	warp_event 10, 15, ECRUTEAK_CITY, 12
	warp_event 10,  2, TIN_TOWER_2F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 10,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TinTowerSageScript, EVENT_TEAM_ROCKET_DISBANDED
