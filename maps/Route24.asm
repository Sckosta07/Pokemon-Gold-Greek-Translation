	object_const_def
	const ROUTE24_ROCKET

Route24_MapScripts:
	def_scene_scripts

	def_callbacks

Route24RocketScript:
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext Route24RocketSeenText
	waitbutton
	closetext
	winlosstext Route24RocketBeatenText, -1
	loadtrainer GRUNTM, GRUNTM_31
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext Route24RocketAfterBattleText
	promptbutton
	special FadeOutMusic
	writetext Route24RocketDisappearsText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear ROUTE24_ROCKET
	pause 25
	special FadeInFromBlack
	playmapmusic
	end

Route24RocketSeenText:
	text "Έι, μικρέ! Είμαι"
	line "φαν των"
	cont "ΠΥΡΑΥΛΩΝ!"

	para "Ήρθα από άλλη"
	line "χώρα, ο νούμερο"
	cont "ένα εκπ/της, εγω!"

	para "Έκανα σκεψη, αν"
	line "πάψει η ενέργεια,"

	para "μέγας πανικός"
	line "για τα άτομα εδώ!"

	para "Μυστική η"
	line "αποστολή μου,"
	cont "δεν θα σου πω!"

	para "Μα! Αν με νικήσεις"
	line "είμαι άντρας"

	para "και θα σου"
	line "πω το μυστικό."

	para "Έι, μικρέ! Μάχη"
	line "θα κάνουμε!"
	done

Route24RocketBeatenText:
	text "Αυιεεεχ! Όχι, όχι,"
	line "δεν το πιστεύω,"
	cont "δεν γίνεται!"

	para "Δυνατός πολύ"
	line "είσαι! Ισάξιος σου"
	cont "δεν είμαι!"
	done

Route24RocketAfterBattleText:
	text "OK. Μυστικό"
	line "θα σου πω."

	para "ΕΞΑΡΤΗΜΑ κλάπηκε"
	line "από εμένα, έκρυψα"

	para "σε GYM της"
	line "CERULEAN."

	para "Μέσα σε νερό το"
	line "το έβαλα. Κοίτα"

	para "στο κέντρο νερού"
	line "του GYM."

	para "Μικρέ, μα μη"
	line "με ξεχνας!"

	para "Θα σε νικήσουν"
	line "τώρα οι ΠΥΡΑΥΛΟΙ."

	para "Θα έρθουν από το"
	line "JOHTO, οι φίλοι"

	para "μου, ναι. Θα"
	line "πάρουν εκδίκηση."
	done

Route24RocketDisappearsText:
	text "…"

	para "Τι είπες; Οι"
	line "ΠΥΡΑΥΛΟΙ είπαν"

	para "αντίο; Διαλύθηκαν"
	line "μου λες;"

	para "Ω, όχι! Εγώ"
	line "τι θα κάνω"
	cont "τώρα, εγώ;"
	done

Route24_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8,  7, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route24RocketScript, EVENT_ROUTE_24_ROCKET
