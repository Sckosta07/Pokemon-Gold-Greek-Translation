	object_const_def
	const MANIASHOUSE_ROCKER

ManiasHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ManiaScript:
	faceplayer
	opentext
	checkevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	iftrue .default_postevent
	checkevent EVENT_GOT_SHUCKIE
	iftrue .alreadyhaveshuckie
	writetext ManiaText_AskLookAfterShuckle
	yesorno
	iffalse .refusetotakeshuckie
	special GiveShuckle
	iffalse .partyfull
	writetext ManiaText_TakeCareOfShuckle
	promptbutton
	waitsfx
	writetext ManiaText_GotShuckle
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_GOT_SHUCKIE
	end

.alreadyhaveshuckie
	checkflag ENGINE_GOT_SHUCKIE_TODAY
	iffalse .returnshuckie
	writetext ManiaText_TakeCareOfShuckle
	waitbutton
	closetext
	end

.partyfull
	writetext ManiaText_PartyFull
	waitbutton
	closetext
	end

.refusetotakeshuckie
	writetext ManiaText_IfHeComesBack
	waitbutton
	closetext
	end

.returnshuckie
	writetext ManiaText_CanIHaveMyMonBack
	yesorno
	iffalse .refused
	special ReturnShuckie
	ifequal SHUCKIE_WRONG_MON, .wrong
	ifequal SHUCKIE_REFUSED, .refused
	ifequal SHUCKIE_HAPPY, .superhappy
	ifequal SHUCKIE_FAINTED, .default_postevent
	; SHUCKIE_RETURNED
	writetext ManiaText_ThankYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.wrong
	writetext ManiaText_ShuckleNotThere
	waitbutton
	closetext
	end

.superhappy
	writetext ManiaText_ShuckleLikesYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.refused
	writetext ManiaText_SameAsBeingRobbed
	waitbutton
	closetext
	end

.nothingleft ; unreferenced
	writetext ManiaText_ShuckleIsYourLastMon
	waitbutton
	closetext
	end

.default_postevent
	writetext ManiaText_HappinessSpeech
	waitbutton
	closetext
	end

ManiasHouseUnusedBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

ManiaText_AskLookAfterShuckle:
	text "Έ-έπαθα σοκ!"

	para "Ένας τύπος σαν"
	line "εσένα με έντονη"

	para "ματιά και μακριά"
	line "μαλλιά ήρθε."

	para "Με τρόμαξε"
	line "δίνοντας του το"
	cont "καλό μου #μον!"

	para "Ακόμα έχω ένα,"
	line "μα τι και αν"
	cont "επιστρέψει;"

	para "Δείχνει δυνατός."
	line "Θα προσέξεις"

	para "το #μον μου"
	line "για λίγο;"
	done

ManiaText_TakeCareOfShuckle:
	text "Ω, ευχαριστώ!"

	para "Πρόσεχε το"
	line "σε παρακαλώ!"
	done

ManiaText_GotShuckle:
	text "<PLAYER> πήρε"
	line "ένα #μον."
	done

ManiaText_PartyFull:
	text "Η ομάδα σου"
	line "είναι πλήρης."
	done

ManiaText_IfHeComesBack:
	text "Ω, όχι… Αυτό"
	line "κάνει αν"
	cont "γυρίσει;"
	done

ManiaText_CanIHaveMyMonBack:
	text "Γεια! Πως πάει"
	line "το #μον μου;"

	para "Νομίζω είμαι καλά"
	line "τωρα, άρα να το"
	cont "πάρω πίσω;"
	done

ManiaText_ThankYou:
	text "Ευχαριστώ!"
	done

ManiaText_ShuckleNotThere:
	text "Έι, δεν έχεις"
	line "το #μον μου"
	cont "μαζί σου."
	done

ManiaText_ShuckleLikesYou:
	text "Τα #μον μου"
	line "σε συμπαθεί."

	para "Εντάξει,"
	line "κρατά το εσύ."

	para "Μα πες μου ότι"
	line "θα το φροντίζεις!"
	done

ManiaText_SameAsBeingRobbed:
	text "Ωχ, όχι… Είναι"
	line "το ίδιο σαν να"
	cont "σε κλέβουν."
	done

ManiaText_HappinessSpeech:
	text "Για τα #μον,"
	line "χαρά είναι όταν"

	para "βρίσκονται με"
	line "καλούς ανθρώπους."
	done

ManiaText_ShuckleIsYourLastMon:
	text "Αν πάρω το #-"
	line "μον πίσω, τι"

	para "θα έχεις για"
	line "μάχες;"
	done

ManiasHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ManiaScript, -1
