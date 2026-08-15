	object_const_def
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST1
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST2
	const RUINSOFALPHRESEARCHCENTER_SCIENTIST3

RuinsOfAlphResearchCenter_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphResearchCenterNoopScene,        SCENE_RUINSOFALPHRESEARCHCENTER_NOOP
	scene_script RuinsOfAlphResearchCenterGetUnownDexScene, SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX

	def_callbacks
	callback MAPCALLBACK_OBJECTS, RuinsOfAlphResearchCenterScientistCallback

RuinsOfAlphResearchCenterNoopScene:
	end

RuinsOfAlphResearchCenterGetUnownDexScene:
	sdefer RuinsOfAlphResearchCenterGetUnownDexScript
	end

RuinsOfAlphResearchCenterScientistCallback:
	checkscene
	ifequal SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX, .ShowScientist
	endcallback

.ShowScientist:
	moveobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, 3, 7
	appear RUINSOFALPHRESEARCHCENTER_SCIENTIST3
	endcallback

RuinsOfAlphResearchCenterGetUnownDexScript:
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesComputerMovement
	playsound SFX_BOOT_PC
	pause 60
	playsound SFX_SWITCH_POKEMON
	pause 30
	playsound SFX_TALLY
	pause 30
	playsound SFX_TRANSACTION
	pause 30
	turnobject RUINSOFALPHRESEARCHCENTER_SCIENTIST3, DOWN
	opentext
	writetext RuinsOfAlphResearchCenterModifiedDexText
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterApproachesPlayerMovement
	opentext
	writetext RuinsOfAlphResearchCenterDexUpgradedText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_UNOWN_DEX
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	applymovement RUINSOFALPHRESEARCHCENTER_SCIENTIST3, RuinsOfAlphResearchCenterLeavesPlayerMovement
	setscene SCENE_RUINSOFALPHRESEARCHCENTER_NOOP
	special RestartMapMusic
	end

RuinsOfAlphResearchCenterScientist3Script:
	faceplayer
	opentext
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
	writetext RuinsOfAlphResearchCenterScientist3Text
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterScientist3_PrinterAvailable
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterScientist1Script:
	faceplayer
	opentext
	checkflag ENGINE_UNOWN_DEX
	iftrue .GotUnownDex
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist1Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist1Text_UnownAppeared
	waitbutton
	closetext
	end

.GotUnownDex:
	writetext RuinsOfAlphResearchCenterScientist1Text_GotUnownDex
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterScientist2Script:
	faceplayer
	opentext
	checkevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	iftrue .UnownAppeared
	writetext RuinsOfAlphResearchCenterScientist2Text
	waitbutton
	closetext
	end

.UnownAppeared:
	writetext RuinsOfAlphResearchCenterScientist2Text_UnownAppeared
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterComputer:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .GotAllUnown
.SkipChecking:
	writetext RuinsOfAlphResearchCenterComputerText
	waitbutton
	closetext
	end

.GotAllUnown:
	writetext RuinsOfAlphResearchCenterComputerText_GotAllUnown
	waitbutton
	closetext
	end

RuinsOfAlphResearchCenterPrinter:
	opentext
	checkevent EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
	iftrue .SkipChecking
	readvar VAR_UNOWNCOUNT
	ifequal NUM_UNOWN, .PrinterAvailable
.SkipChecking:
	writetext RuinsOfAlphResearchCenterPrinterText_DoesntWork
	waitbutton
	closetext
	end

.PrinterAvailable:
	writetext RuinsOfAlphResearchCenterUnownPrinterText
	waitbutton
	special UnownPrinter
	closetext
	end

RuinsOfAlphResearchCenterPhoto: ; unreferenced
	jumptext RuinsOfAlphResearchCenterProfSilktreePhotoText

RuinsOfAlphResearchCenterBookshelf:
	jumptext RuinsOfAlphResearchCenterAcademicBooksText

RuinsOfAlphResearchCenterApproachesComputerMovement:
	step UP
	step UP
	step LEFT
	turn_head UP
	step_end

RuinsOfAlphResearchCenterApproachesPlayerMovement:
	step DOWN
	step_end

RuinsOfAlphResearchCenterLeavesPlayerMovement:
	step UP
	step_end

RuinsOfAlphResearchCenterModifiedDexText:
	text "Έγινε!"

	para "Ενίσχυσα το"
	line "#ντεξ σου."

	para "Πρόσθεσα ένα"
	line "επιλεκτικό #-"

	para "ντεξ για UNOWN"
	line "δεδωμένα."

	para "Τα καταγράφει σε"
	line "ακολουθίες που"
	cont "πιάστηκαν."
	done

RuinsOfAlphResearchCenterDexUpgradedText:
	text "<PLAYER> #ντεξ"
	line "αναβαθμίστηκε."
	done

RuinsOfAlphResearchCenterScientist3Text:
	text "Τα UNOWN που"
	line "πιάνεις θα"
	cont "καταγράφονται."

	para "Τσέκαρε πόσα"
	line "είδη υπάρχουν."
	done

RuinsOfAlphResearchCenterScientist3_PrinterAvailable:
	text "Έπιασες όλα τα"
	line "είδη UNOWN;"

	para "Είναι σπουδαίο"
	line "επίτευγμα!"

	para "Σέταρα τον"
	line "εκτυπωτή εδώ για"
	cont "χειρισμό UNOWN."

	para "Ελεύθερα βάλε"
	line "οπότε θέλεις."
	done

RuinsOfAlphResearchCenterScientist1Text:
	text "Τα ΕΡΕΙΠΙΑ είναι"
	line "περίπου 1500"
	cont "χρόνια παλιά."

	para "Μα δεν ξέρουμε"
	line "γιατί χτίστηκαν"
	cont "--ή από ποιούς."
	done

RuinsOfAlphResearchCenterScientist1Text_GotUnownDex:
	text "Αναρωτιέμαι πόσα"
	line "είδη από #μον"
	cont "είναι στα ΕΡΕΙΠΙΑ;"
	done

RuinsOfAlphResearchCenterScientist1Text_UnownAppeared:
	text "#μον φάνηκαν"
	line "στα ΕΡΕΙΠΙΑ;"

	para "Αυτά είναι"
	line "υπέροχα νέα!"

	para "Πρέπει να το"
	line "ερευνήσουμε αυτό."
	done

RuinsOfAlphResearchCenterScientist2Text:
	text "Υπάρχουν παράξενα"
	line "μοτίβα γραμμένα"

	para "στους τοίχους"
	line "των ΕΡΕΙΠΙΩΝ."

	para "Πρέπει να είναι"
	line "κλειδιά για απο-"
	cont "κάλυψη μυστηρίων"
	cont "των ΕΡΕΙΠΙΩΝ."
	done

RuinsOfAlphResearchCenterScientist2Text_UnownAppeared:
	text "Τα παράξενα #-"
	line "μον που είδες"
	cont "στα ΕΡΕΙΠΙΑ;"

	para "Φάνηκε να ήταν"
	line "πιο πολύ σαν τα"

	para "σχέδια στους"
	line "τοίχους εδώ."

	para "Χμμ…"

	para "Αυτό σημαίνει"
	line "πως υπάρχουν"
	cont "πολλά από αυτά…"
	done

RuinsOfAlphResearchCenterComputerText:
	text "ΕΡΕΙΠΙΑ του ALPH"

	para "Χρόνια"
	line "εξερεύνησης 10"
	done

RuinsOfAlphResearchCenterComputerText_GotAllUnown:
	text "Μυστήρια #μον"
	line "Όνομα: UNOWN"

	para "Συνολικά {d:NUM_UNOWN}"
	line "είδη βρέθηκαν."
	done

RuinsOfAlphResearchCenterPrinterText_DoesntWork:
	text "Δεν λειτουργεί"
	line "ακόμα αυτό."
	done

RuinsOfAlphResearchCenterUnownPrinterText:
	text "UNOWN θα"
	line "εκτυπωθούν."
	done

RuinsOfAlphResearchCenterProfSilktreePhotoText:
	text "Είναι εικόνα του"
	line "ιδρυτή ΚΕΝΤΡΟΥ"

	para "ΕΡΕΥΝΑΣ, του"
	line "ΚΑΘ.SILKTREE."
	done

RuinsOfAlphResearchCenterAcademicBooksText:
	text "Πολλά ακαδημαϊκά"
	line "βιβλία."

	para "Αρχαία Ερείπια…"
	line "Μυστήρια των"
	cont "Αρχαίων…"
	done

RuinsOfAlphResearchCenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, RUINS_OF_ALPH_OUTSIDE, 6
	warp_event  3,  7, RUINS_OF_ALPH_OUTSIDE, 6

	def_coord_events

	def_bg_events
	bg_event  6,  5, BGEVENT_READ, RuinsOfAlphResearchCenterBookshelf
	bg_event  3,  4, BGEVENT_READ, RuinsOfAlphResearchCenterComputer
	bg_event  7,  1, BGEVENT_READ, RuinsOfAlphResearchCenterPrinter

	def_object_events
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist1Script, -1
	object_event  5,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 2, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist2Script, -1
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphResearchCenterScientist3Script, EVENT_RUINS_OF_ALPH_RESEARCH_CENTER_SCIENTIST
