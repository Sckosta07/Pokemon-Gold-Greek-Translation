	object_const_def
	const CHARCOALKILN_BLACK_BELT
	const CHARCOALKILN_YOUNGSTER
	const CHARCOALKILN_MOLTRES

CharcoalKiln_MapScripts:
	def_scene_scripts

	def_callbacks

CharcoalKilnBoss:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .GotCut
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .SavedSlowpoke
	writetext CharcoalKilnBossText1
	waitbutton
	closetext
	end

.SavedSlowpoke:
	writetext CharcoalKilnBossText2
	waitbutton
	closetext
	end

.GotCut:
	writetext CharcoalKilnBossText3
	waitbutton
	closetext
	end

CharcoalKilnApprentice:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	iftrue .YoureTheCoolest
	checkevent EVENT_GOT_HM01_CUT
	iftrue .Thanks
	writetext CharcoalKilnApprenticeText1
	waitbutton
	closetext
	end

.Thanks:
	writetext CharcoalKilnApprenticeText2
	promptbutton
	verbosegiveitem CHARCOAL
	iffalse .Done
	setevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	closetext
	end

.YoureTheCoolest:
	writetext CharcoalKilnApprenticeText3
	waitbutton
.Done:
	closetext
	end

CharcoalKilnFarfetchd:
	faceplayer
	opentext
	writetext FarfetchdText
	cry FARFETCH_D
	waitbutton
	closetext
	end

CharcoalKilnBookshelf:
	jumpstd MagazineBookshelfScript

CharcoalKilnRadio:
	jumpstd Radio2Script

CharcoalKilnBossText1:
	text "Όλα τα SLOWPOKE"
	line "εξαφανίστηκαν"
	cont "από την πόλη."

	para "Ο φύλακας του"
	line "δάσους μπορεί να"
	cont "μας θύμωσε…"

	para "Είναι κακός"
	line "οιωνός. Να"
	cont "μείνουμε μέσα."
	done

CharcoalKilnBossText2:
	text "Τα SLOWPOKE"
	line "επέστρεψαν…"

	para "Μα ο ΒΟΗΘΟΣ μου"
	line "δεν γύρισε ακόμα"
	cont "απο το ΔΑΣΟΣ ILEX."

	para "Που είναι αυτός"
	line "ο τεμπέλης;"
	done

CharcoalKilnBossText3:
	text "Κινήγησες τους"
	line "ΠΥΡΑΥΛΟΥΣ και"

	para "πήγες στο ΔΑΣΟΣ"
	line "ILEX μόνος σου;"

	para "Θέλει θάρρος!"
	line "Μ'αρέσει αυτό."
	cont "Προπονησου εδώ."
	done

CharcoalKilnApprenticeText1:
	text "Που πήγαν όλα"
	line "τα SLOWPOKE;"

	para "Παίζουν κάπου"
	line "ανέμελα;"
	done

CharcoalKilnApprenticeText2:
	text "Συγνώμη--Ξέχασα"
	line "να πω ευχαριστώ."

	para "Είναι ΚΑΡΒΟΥΝΟ"
	line "που έφτιαξα."

	para "Τυπου φωτιάς"
	line "wμθα χαρουν να"
	cont "το κρατήσουν."
	done

CharcoalKilnApprenticeText3:
	text "Τα SLOWPOKE"
	line "γύρισαν, κσι βρήκες"
	cont "το FARFETCH'D."

	para "Εισαι ο πιο"
	line "κουλ, φίλε!"
	done

FarfetchdText:
	text "FARFETCH'D: Κγαα!"
	done

CharcoalKiln_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, AZALEA_TOWN, 2
	warp_event  3,  7, AZALEA_TOWN, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  1,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  7,  1, BGEVENT_READ, CharcoalKilnRadio

	def_object_events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnBoss, EVENT_CHARCOAL_KILN_BOSS
	object_event  5,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnApprentice, EVENT_CHARCOAL_KILN_APPRENTICE
	object_event  5,  6, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CharcoalKilnFarfetchd, EVENT_CHARCOAL_KILN_FARFETCH_D
