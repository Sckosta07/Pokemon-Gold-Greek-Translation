	object_const_def
	const CINNABARISLAND_BLUE

CinnabarIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CinnabarIslandFlypointCallback

CinnabarIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_CINNABAR
	endcallback

CinnabarIslandBlue:
	faceplayer
	opentext
	writetext CinnabarIslandBlueText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement CINNABARISLAND_BLUE, CinnabarIslandBlueTeleport
	disappear CINNABARISLAND_BLUE
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	end

CinnabarIslandGymSign:
	jumptext CinnabarIslandGymSignText

CinnabarIslandSign:
	jumptext CinnabarIslandSignText

CinnabarIslandPokecenterSign:
	jumpstd PokecenterSignScript

CinnabarIslandHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CINNABAR_ISLAND_HIDDEN_RARE_CANDY

CinnabarIslandBlueTeleport:
	teleport_from
	step_end

CinnabarIslandBlueText:
	text "Ποιός είσαι εσύ;"

	para "Λοιπόν, σίγουρα"
	line "είσαι ένας"
	cont "εκπαιδευτής…"

	para "Με λένε BLUE."

	para "Κάποτε εγώ ήμουν"
	line "ΠΡΩΤΑΘΛΗΤΗΣ, αν"

	para "και για λίγο"
	line "χρονικό διάστημα…"

	para "Αυτός ο RED"
	line "το έκανε…"

	para "Τέλος πάντων, τι"
	line "θέλεις; Θες να"

	para "με προκαλέσεις"
	line "ή κάτι τέτοιο;"

	para "…Δεν το θέλω,"
	line "μα δεν έχω"

	para "διάθεση για"
	line "μάχες τώρα."

	para "Κοίτα καλά"
	line "γύρω σου…"

	para "Το ηφαίστειο θα"
	line "εκραγεί, και με"

	para "αυτό και η πόλη"
	line "θα εξαφανιστεί."

	para "Μπορούμε να"
	line "εχουμε νίκη ή"

	para "ήττα στα #μον,"
	line "μα η φύση αλλάζει"

	para "τόσο, που θα"
	line "χάσουμε σίγουρα."

	para "…"

	para "Έτσι πάει"
	line "το πράγμα…"

	para "Μα, είμαι"
	line "ακόμα εκπ/της."

	para "Αν δω δυνατό"
	line "αντίπαλο, θέλω"
	cont "να τον νικήσω."

	para "Αν θες να κάνουμε"
	line "μάχη, έλα"
	cont "στο VIRIDIAN GYM."

	para "Θα σε νικήσω"
	line "εκεί πέρα."
	done

CinnabarIslandGymSignText:
	text "Υπάρχει ένα"
	line "σημείωμα εδώ…"

	para "Το CINNABAR GYM"
	line "πήγε στα ΑΦΡΟΔΗ"
	cont "ΝΗΣΙΑ."

	para "BLAINE"
	done

CinnabarIslandSignText:
	text "ΝΗΣΙ CINNABAR"

	para "Η Φλογερή Πόλη"
	line "Καυτής Επιθυμίας"
	done

CinnabarIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 11, CINNABAR_POKECENTER_1F, 1

	def_coord_events

	def_bg_events
	bg_event 12, 11, BGEVENT_READ, CinnabarIslandPokecenterSign
	bg_event  9, 11, BGEVENT_READ, CinnabarIslandGymSign
	bg_event  7,  7, BGEVENT_READ, CinnabarIslandSign
	bg_event  9,  1, BGEVENT_ITEM, CinnabarIslandHiddenRareCandy

	def_object_events
	object_event  9,  6, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIslandBlue, EVENT_BLUE_IN_CINNABAR
