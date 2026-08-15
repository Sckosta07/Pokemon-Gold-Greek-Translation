	object_const_def
	const VIRIDIANGYM_BLUE
	const VIRIDIANGYM_GYM_GUIDE

ViridianGym_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianGymBlueScript:
	faceplayer
	opentext
	checkflag ENGINE_EARTHBADGE
	iftrue .FightDone
	writetext LeaderBlueBeforeText
	waitbutton
	closetext
	winlosstext LeaderBlueWinText, 0
	loadtrainer BLUE, BLUE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLUE
	opentext
	writetext Text_ReceivedEarthBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	writetext LeaderBlueAfterText
	waitbutton
	closetext
	end

.FightDone:
	writetext LeaderBlueEpilogueText
	waitbutton
	closetext
	end

ViridianGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLUE
	iftrue .ViridianGymGuideWinScript
	writetext ViridianGymGuideText
	waitbutton
	closetext
	end

.ViridianGymGuideWinScript:
	writetext ViridianGymGuideWinText
	waitbutton
	closetext
	end

ViridianGymStatue:
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script

.Beaten:
	gettrainername STRING_BUFFER_4, BLUE, BLUE1
	jumpstd GymStatue2Script

LeaderBlueBeforeText:
	text "BLUE: Γιο!"
	line "Επιτέλους ήρθες;"

	para "Δεν είχα διάθεση"
	line "στο CINNABAR,"

	para "μα τώρα είμαι"
	line "έτοιμος."

	para "…"

	para "Μου λες πως"
	line "κατέκτησες όλα"
	cont "τα GYMS στο JOHTO;"

	para "Χεχ! Τα JOHTO GYM"
	line "πρέπει να ήταν"
	cont "αξιολύπητα."

	para "Έι, μην"
	line "ανυσηχείς."

	para "Θα ξέρω αν"
	line "είσαι καλός ή"

	para "όχι στη μάχη"
	line "μαζί μου τώρα."

	para "Έτοιμος;"
	done

LeaderBlueWinText:
	text "BLUE: Τι;"

	para "Πως έγινε και"
	line "έχασα από εσένα;"

	para "…"

	para "Τσχ, εντάξει…"
	line "Ορίστε, πάρε--"
	cont "το ΓΑΙΟΕΜΒΛΗΜΑ."
	done

Text_ReceivedEarthBadge:
	text "<PLAYER> πήρε"
	line "ΓΑΙΟΕΜΒΛΗΜΑ."
	done

LeaderBlueAfterText:
	text "BLUE: …"

	para "Εντάξει, έκανα"
	line "λάθος. Είσαι το"

	para "κάτι άλλο. Είσαι"
	line "καλός εκπ/της."

	para "Μα θα σε νικήσω"
	line "κάποια μέρα."

	para "Μην το ξεχνας"
	line "αυτό!"
	done

LeaderBlueEpilogueText:
	text "BLUE: Άκου, εσύ."

	para "Μην χάσεις"
	line "μέχρι να σε"
	cont "νικήσω. Το 'χεις;"
	done

ViridianGymGuideText:
	text "Γιο, ΝΙΚΗΤΗ"
	line "του αύριο!"

	para "Πως πάει;"
	line "Φαίνεσαι σαν"
	cont "να περνάς καλά."

	para "Ο ΗΓΕΤΗΣ GYM"
	line "είναι τύπος που"

	para "ήταν ΠΡΩΤΑΘΛΗΤΗΣ"
	line "3 χρόνια πριν."

	para "Δεν κάνει πίσω."

	para "Δώσε ότι"
	line "έχεις τώρα!"
	done

ViridianGymGuideWinText:
	text "Φίλε, είσαι"
	line "πολύ δυνατός…"

	para "Ήταν αρκετά"
	line "ξεσηκωτική"

	para "μάχη. Μου φέρνει"
	line "δάκρυα στα μάτια."
	done

ViridianGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VIRIDIAN_CITY, 1
	warp_event  5, 17, VIRIDIAN_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, ViridianGymStatue
	bg_event  6, 13, BGEVENT_READ, ViridianGymStatue

	def_object_events
	object_event  5,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymBlueScript, EVENT_VIRIDIAN_GYM_BLUE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianGymGuideScript, EVENT_VIRIDIAN_GYM_BLUE
