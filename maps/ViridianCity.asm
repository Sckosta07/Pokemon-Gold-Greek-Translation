	object_const_def
	const VIRIDIANCITY_GRAMPS1
	const VIRIDIANCITY_GRAMPS2
	const VIRIDIANCITY_FISHER
	const VIRIDIANCITY_YOUNGSTER

ViridianCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, ViridianCityFlypointCallback

ViridianCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	endcallback

ViridianCityCoffeeGramps:
	faceplayer
	opentext
	writetext ViridianCityCoffeeGrampsQuestionText
	yesorno
	iffalse .no
	writetext ViridianCityCoffeeGrampsBelievedText
	waitbutton
	closetext
	end

.no:
	writetext ViridianCityCoffeeGrampsDoubtedText
	waitbutton
	closetext
	end

ViridianCityGrampsNearGym:
	faceplayer
	opentext
	checkevent EVENT_BLUE_IN_CINNABAR
	iftrue .BlueReturned
	writetext ViridianCityGrampsNearGymText
	waitbutton
	closetext
	end

.BlueReturned:
	writetext ViridianCityGrampsNearGymBlueReturnedText
	waitbutton
	closetext
	end

ViridianCityDreamEaterFisher:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM42_DREAM_EATER
	iftrue .GotDreamEater
	writetext ViridianCityDreamEaterFisherText
	promptbutton
	verbosegiveitem TM_DREAM_EATER
	iffalse .NoRoomForDreamEater
	setevent EVENT_GOT_TM42_DREAM_EATER
.GotDreamEater:
	writetext ViridianCityDreamEaterFisherGotDreamEaterText
	waitbutton
.NoRoomForDreamEater:
	closetext
	end

ViridianCityYoungsterScript:
	jumptextfaceplayer ViridianCityYoungsterText

ViridianCitySign:
	jumptext ViridianCitySignText

ViridianGymSign:
	jumptext ViridianGymSignText

ViridianCityWelcomeSign:
	jumptext ViridianCityWelcomeSignText

TrainerHouseSign:
	jumptext TrainerHouseSignText

ViridianCityPokecenterSign:
	jumpstd PokecenterSignScript

ViridianCityMartSign:
	jumpstd MartSignScript

ViridianCityCoffeeGrampsQuestionText:
	text "Έι, μικρέ! Μόλις"
	line "ήπια διπλό"

	para "εσπρέσσο, και"
	line "είμαι στη τσίτα!"

	para "Θέλω να μιλήσω"
	line "με κάποιον, μάλλον"
	cont "εσύ κάνεις!"

	para "Ίσως δεν δείχνω"
	line "τώρα, μα είμαι"

	para "ειδικός στο να"
	line "πιάνω #μον."

	para "Δεν με πιστεύεις;"
	done

ViridianCityCoffeeGrampsBelievedText:
	text "Ωραία. Ναι, ήμουν"
	line "έξω από τα"

	para "συνηθησμένα,"
	line "σου λέω!"
	done

ViridianCityCoffeeGrampsDoubtedText:
	text "Τι; Μικρέ"
	line "μπόμπιρα!"

	para "Αν ήμουν λίγο"
	line "πιο νέος, θα"

	para "σου έδειχνα,"
	line "κάτι. Χαμφ!"
	done

ViridianCityGrampsNearGymText:
	text "Το GYM δεν"
	line "είχε ΗΓΕΤΗ"
	cont "μέχρι πρόσφατα."

	para "Ένας νεαρός από"
	line "την PALLET έγινε"

	para "ΗΓΕΤΗΣ, μα"
	line "λείπει."
	done

ViridianCityGrampsNearGymBlueReturnedText:
	text "Θα κανείς μάχη"
	line "με τον ΗΓΕΤΗ;"

	para "Καλή τύχη."
	line "Θα την χρειαστείς."
	done

ViridianCityDreamEaterFisherText:
	text "Γιάουν!"

	para "Πρέπει να με"
	line "πήρε ο ύπνος."

	para "…Είχα ένα όνειρο"
	line "για ένα DROWZEE"

	para "που έτρωγε όνειρα."
	line "Παράξενο, έτσι;"

	para "Ε;"
	line "Τι είναι αυτό;"

	para "Από που ήρθε"
	line "αυτό το ΤΜ;"

	para "Είναι τρομαχτικό!"
	line "Ορίστε, πάρε"
	cont "αυτό το TM."
	done

ViridianCityDreamEaterFisherGotDreamEaterText:
	text "TM42 έχει"
	line "ΟΝΕΙΡΟΦΑΓΟΣ…"

	para "…Ζζζζζ…"
	done

ViridianCityYoungsterText:
	text "Άκουσα πως"
	line "υπάρχουν πράγματα"

	para "στο έδαφος του"
	line "ΔΑΣΟΥΣ VIRIDIAN."
	done

ViridianCitySignText:
	text "ΠΟΛΗ VIRIDIAN"

	para "Ο Αιώνιος Πρά-"
	line "σινος Παράδεισος"
	done

ViridianGymSignText:
	text "ΠΟΛΗ VIRIDIAN"
	line "ΠΟΚΕΜΟΝ GYM"
	cont "ΗΓΕΤΗΣ: …"

	para "Το υπόλοιπο"
	line "δεν διαβάζεται…"
	done

ViridianCityWelcomeSignText:
	text "Καλώς Ήρθατε στην"
	line "ΠΟΛΗ VIRIDIAN,"

	para "την είσοδο στο"
	line "ΟΡΟΠΕΔΙΟ INDIGO"
	done

TrainerHouseSignText:
	text "ΣΠΙΤΙ ΕΚΠ/ΤΗ"

	para "Μέρος για Καλές"
	line "Μάχες Εκπ/των"
	done

ViridianCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 23, 15, TRAINER_HOUSE_1F, 1
	warp_event 29, 19, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1

	def_coord_events

	def_bg_events
	bg_event 17, 17, BGEVENT_READ, ViridianCitySign
	bg_event 27,  7, BGEVENT_READ, ViridianGymSign
	bg_event 19,  1, BGEVENT_READ, ViridianCityWelcomeSign
	bg_event 21, 15, BGEVENT_READ, TrainerHouseSign
	bg_event 24, 25, BGEVENT_READ, ViridianCityPokecenterSign
	bg_event 30, 19, BGEVENT_READ, ViridianCityMartSign

	def_object_events
	object_event 18,  5, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianCityCoffeeGramps, -1
	object_event 30,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianCityGrampsNearGym, -1
	object_event  6, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ViridianCityDreamEaterFisher, -1
	object_event 17, 21, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 3, 3, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianCityYoungsterScript, -1
