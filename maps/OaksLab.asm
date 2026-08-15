	object_const_def
	const OAKSLAB_OAK
	const OAKSLAB_SCIENTIST1
	const OAKSLAB_SCIENTIST2
	const OAKSLAB_SCIENTIST3

OaksLab_MapScripts:
	def_scene_scripts

	def_callbacks

OaksLabNoopScene: ; unreferenced
	end

Oak:
	faceplayer
	opentext
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .CheckPokedex
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iftrue .CheckBadges
	writetext OakWelcomeKantoText
	promptbutton
	setevent EVENT_TALKED_TO_OAK_IN_KANTO
.CheckBadges:
	readvar VAR_BADGES
	ifequal NUM_BADGES, .OpenMtSilver
	ifequal NUM_JOHTO_BADGES, .Complain
	sjump .AhGood

.CheckPokedex:
	writetext OakLabDexCheckText
	waitbutton
	special ProfOaksPCBoot
	writetext OakLabGoodbyeText
	waitbutton
	closetext
	end

.OpenMtSilver:
	writetext OakOpenMtSilverText
	promptbutton
	setevent EVENT_OPENED_MT_SILVER
	sjump .CheckPokedex

.Complain:
	writetext OakNoKantoBadgesText
	promptbutton
	sjump .CheckPokedex

.AhGood:
	writetext OakYesKantoBadgesText
	promptbutton
	sjump .CheckPokedex

OaksAssistant1Script:
	jumptextfaceplayer OaksAssistant1Text

OaksAssistant2Script:
	jumptextfaceplayer OaksAssistant2Text

OaksAssistant3Script:
	jumptextfaceplayer OaksAssistant3Text

OaksLabBookshelf:
	jumpstd DifficultBookshelfScript

OaksLabPoster1:
	jumptext OaksLabPoster1Text

OaksLabPoster2:
	jumptext OaksLabPoster2Text

OaksLabTrashcan:
	jumptext OaksLabTrashcanText

OaksLabPC:
	jumptext OaksLabPCText

OakWelcomeKantoText:
	text "OAK: Α, <PLAYER>!"
	line "Χαίρομαι που"

	para "ήρθες εδώ"
	line "στο KANTO."

	para "Τι σκέφτεσαι"
	line "για τους εκπ/τες"

	para "εδώ; Πολύ"
	line "δυνατοί, έτσι;"
	done

OakLabDexCheckText:
	text "Πως πάει το"
	line "#ντεξ;"

	para "Για να δω…"
	done

OakLabGoodbyeText:
	text "Αν εισαι στην"
	line "περιοχή, ελπίζω"
	cont "να ξανά έρθεις."
	done

OakOpenMtSilverText:
	text "OAK: Ουάου!"
	line "Έξοχα!"

	para "Έχεις συλλέξει τα"
	line "ΕΜΒΛΗΜΑΤΑ του"
	cont "KANTO. Μπράβο!"

	para "Είχα δίκιο στην"
	line "αξιολόγηση μου."

	para "Να σου πω,"
	line "<PLAYER>. Θα"

	para "κανονίσω να"
	line "μπορείς να πας"
	cont "στο ΒΝ.SILVER."

	para "Αυτό το βουνό"
	line "είναι σπίτι πολλών"

	para "άγριων"
	line "#μον."

	para "Είναι επικίνδυνο"
	line "για απλούς"

	para "εκπ/τες. Είναι"
	line "κλειστό. Μα"

	para "θα κάνουμε μια"
	line "εξεύρεση για"
	cont "εσένα, <PLAYER>."

	para "Τρέχα στο INDIGO."
	line "Εκεί θα φτάσεις"

	para "στο ΒΝ.SILVER"
	line "από εκεί."
	done

OakNoKantoBadgesText:
	text "OAK: Χμμ; Δεν"
	line "Συλλέγεις"
	cont "ΕΜΒΛΗΜΑΤΑ KANTO;"

	para "Οι ΗΓΕΤΕΣ στο"
	line "KANTO είναι δυνατοί"

	para "όπως και στο"
	line "JOHTO."

	para "Σου προτείνω"
	line "να τους"
	cont "προκαλέσεις."
	done

OakYesKantoBadgesText:
	text "OAK: Α, συλλέγεις"
	line "τα ΕΜΒΛΗΜΑΤΑ"
	cont "του KANTO."

	para "Φαντάζομαι πως"
	line "είναι δύσκολο, μα"

	para "η εμπειρία σου"
	line "θα βοηθήσει."

	para "Έλα να με δεις"
	line "όταν τα έχεις όλα."

	para "Θα έχω ένα"
	line "δώρο για εσένα."

	para "Συνέχισε έτσι,"
	line "<PLAYER>!"
	done

OaksAssistant1Text:
	text "Το πρόγραμμα"
	line "ΟΜΙΛΙΑ ΤΟΥ ΟΑΚ"

	para "δεν είναι για"
	line "το KANTO."

	para "Τι κρίμα--Θα"
	line "ήθελα να ακούσω."
	done

OaksAssistant2Text:
	text "Χάρη στη δουλειά"
	line "σου στο #-"
	cont "ντεξ, η έρευνα"

	para "του ΚΑΘ πάει"
	line "άψογα."
	done

OaksAssistant3Text:
	text "Μην το πεις, μα"
	line "η ΟΜΙΛΙΑ ΤΟΥ"

	para "ΟΑΚ δεν είναι"
	line "ζωντανή μετάδοση."
	done

OaksLabPoster1Text:
	text "Πάτα START για"
	line "άνοιγμα ΜΕΝΟΥ."
	done

OaksLabPoster2Text:
	text "Το ΣΩΣΙΜΟ"
	line "είναι στο ΜΕΝΟΥ."

	para "Κάνε ΣΩΣΙΜΟ"
	line "πολύ συχνά."
	done

OaksLabTrashcanText:
	text "Δεν υπάρχει"
	line "τίποτα εδώ…"
	done

OaksLabPCText:
	text "Υπάρχει E-MAIL"
	line "μύνημα στο PC."

	para "…"

	para "ΚΑΘ.OAK, πως"
	line "πάει η έρευνα"
	cont "σου τώρα;"

	para "Εγώ ακόμα δεν"
	line "σηκώνω κεφάλι."

	para "Άκουσα φήμες"
	line "ότι ο <PLAYER>"

	para "κάνει μεγάλο"
	line "όνομα εκεί."

	para "Χαίρομαι που"
	line "το ακούω αυτό."

	para "ELM της ΝΕΑΣ"
	line "ΠΟΛΗΣ BARK 8-)"
	done

OaksLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  0,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  1,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  2,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  3,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  6,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  4,  0, BGEVENT_READ, OaksLabPoster1
	bg_event  5,  0, BGEVENT_READ, OaksLabPoster2
	bg_event  9,  3, BGEVENT_READ, OaksLabTrashcan
	bg_event  0,  1, BGEVENT_READ, OaksLabPC

	def_object_events
	object_event  4,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Oak, -1
	object_event  1,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant1Script, -1
	object_event  8,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant2Script, -1
	object_event  1,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant3Script, -1
