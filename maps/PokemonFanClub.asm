	object_const_def
	const POKEMONFANCLUB_CHAIRMAN
	const POKEMONFANCLUB_RECEPTIONIST
	const POKEMONFANCLUB_CLEFAIRY_GUY
	const POKEMONFANCLUB_TEACHER
	const POKEMONFANCLUB_FAIRY
	const POKEMONFANCLUB_ODDISH

PokemonFanClub_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonFanClubChairmanScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	iftrue .HeardSpeech
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT_BUT_BAG_WAS_FULL
	iftrue .HeardSpeechButBagFull
	writetext PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText
	yesorno
	iffalse .NotListening
	writetext PokemonFanClubChairmanRapidashText
	promptbutton
.HeardSpeechButBagFull:
	writetext PokemonFanClubChairmanIWantYouToHaveThisText
	promptbutton
	verbosegiveitem RARE_CANDY
	iffalse .BagFull
	setevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	writetext PokemonFanClubChairmanItsARareCandyText
	waitbutton
	closetext
	end

.HeardSpeech:
	writetext PokemonFanClubChairmanMoreTalesToTellText
	waitbutton
	closetext
	end

.NotListening:
	writetext PokemonFanClubChairmanHowDisappointingText
	waitbutton
.BagFull:
	closetext
	end

PokemonFanClubReceptionistScript:
	jumptextfaceplayer PokemonFanClubReceptionistText

PokemonFanClubClefairyGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	iftrue .GotLostItem
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .FoundClefairyDoll
	writetext PokemonFanClubClefairyGuyClefairyIsSoAdorableText
	waitbutton
	closetext
	end

.FoundClefairyDoll:
	writetext PokemonFanClubClefairyGuyMakingDoWithADollIFoundText
	checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	iftrue .MetCopycat
	waitbutton
	closetext
	end

.MetCopycat:
	promptbutton
	writetext PokemonFanClubClefairyGuyTakeThisDollBackToGirlText
	promptbutton
	waitsfx
	giveitem LOST_ITEM
	iffalse .NoRoom
	disappear POKEMONFANCLUB_FAIRY
	writetext PokemonFanClubPlayerReceivedDollText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	closetext
	end

.GotLostItem:
	writetext PokemonFanClubClefairyGuyGoingToGetARealClefairyText
	waitbutton
	closetext
	end

.NoRoom:
	writetext PokemonFanClubClefairyGuyPackIsJammedFullText
	waitbutton
	closetext
	end

PokemonFanClubTeacherScript:
	jumptextfaceplayer PokemonFanClubTeacherText

PokemonFanClubClefairyDollScript:
	jumptext PokemonFanClubClefairyDollText

PokemonFanClubBayleefScript:
	opentext
	writetext PokemonFanClubBayleefText
	cry BAYLEEF
	waitbutton
	closetext
	end

PokemonFanClubListenSign:
	jumptext PokemonFanClubListenSignText

PokemonFanClubBraggingSign:
	jumptext PokemonFanClubBraggingSignText

PokemonFanClubChairmanDidYouVisitToHearAboutMyMonText:
	text "Είμαι ο ΠΡΟΕΔΡΟΣ"
	line "του ΠΟΚΕMON ΦΑΝ"
	cont "ΚΛΑΜΠ."

	para "Μεγάλωσα"
	line "150 #μον."

	para "Είμαι σχολαστικός"
	line "όταν είναι"
	cont "για #μον."

	para "Ήρθες για να"
	line "ακούσεις για τα"
	cont "#μον μου;"
	done

PokemonFanClubChairmanRapidashText:
	text "Ωραία!"
	line "Τότε άκου!"

	para "Λοιπόν… το καλό"
	line "μου RAPIDASH…"

	para "Είναι… Όμορφο…"
	line "Έξυπνο… Ευκίνητο…"
	cont "Συν… Απίστευτο… Ω…"
	cont "Δεν νομίζεις;…"
	cont "Πολύ… Άγριο…"
	cont "Όμορφο… Γλυκό…"
	cont "Το λατρεύω!"

	para "Δες το… Όταν…"
	line "Κοιμάται… Ζεστό &"
	cont "χνουδωτό… Και…"
	cont "Θεαματικό…"
	cont "Γλυκούλι…"
	cont "Απλώς θεϊκό…"
	cont "Ουπς! Κοίτα την"
	cont "ώρα! Σε κράτησα"
	cont "παρά πολύ!"
	done

PokemonFanClubChairmanIWantYouToHaveThisText:
	text "Ευχαριστώ που"
	line "με άκουσες."
	cont "Πάρε αυτό!"
	done

PokemonFanClubChairmanItsARareCandyText:
	text "Είναι ΣΠΑΝΙΟ ΓΛΥΚΟ"
	line "που κάνει #μον"
	cont "πιο δυνατά."

	para "Προτιμώ να"
	line "κάνω #μον δυ-"

	para "νατά με μάχες,"
	line "γι' αυτό πάρτο."
	done

PokemonFanClubChairmanMoreTalesToTellText:
	text "Γεια, <PLAYER>!"

	para "Ήρθες να με"
	line "δεις για τα #-"
	cont "μον μου πάλι;"

	para "Όχι; Ω… Είχα"
	line "ιστορίες να πω…"
	done

PokemonFanClubChairmanHowDisappointingText:
	text "Απογοήτευση…"

	para "Έλα όταν θέλεις"
	line "να ακούσεις."
	done

PokemonFanClubReceptionistText:
	text "Ο ΠΡΟΕΔΡΟΣ"
	line "μιλάει πολύ όταν"
	cont "είναι για #μον…"
	done

PokemonFanClubClefairyGuyClefairyIsSoAdorableText:
	text "Λατρεύω όταν το"
	line "CLEFAIRY κούνα"

	para "δάχτυλα για"
	line "την κίνηση"

	para "ΜΕΤΡΟΝΟΜΟ."
	line "Είναι γλυκούλι!"
	done

PokemonFanClubClefairyGuyMakingDoWithADollIFoundText:
	text "Λατρεύω CLEFAIRY,"
	line "μα δεν έπιασα"

	para "κανένα. Έτσι"
	line "πήρα μια"

	para "ΠΟΚΕ ΚΟΥΚΛΑ"
	line "που βρήκα."
	done

PokemonFanClubClefairyGuyTakeThisDollBackToGirlText:
	text "Ω, κατάλαβα. Το"
	line "κορίτσι που την"

	para "θέλει είναι χάλια…"

	para "OK. πήγαινε"
	line "την ΠΟΚΕ ΚΟΥΚΛΑ"

	para "πίσω στο"
	line "κοριτσάκι."

	para "Θα κάνω φίλο"
	line "αληθινό CLEFAIRY"

	para "μια μέρα."
	line "Μη σε νοιάζει!"
	done

PokemonFanClubPlayerReceivedDollText:
	text "<PLAYER> πήρε"
	line "ΠΟΚΕ ΚΟΥΚΛΑ."
	done

PokemonFanClubClefairyGuyGoingToGetARealClefairyText:
	text "Δες με. Θα"
	line "πάρω αληθινό"

	para "CLEFAIRY ως"
	line "φίλο μου."
	done

PokemonFanClubClefairyGuyPackIsJammedFullText:
	text "Ο ΣΑΚΟΣ σου"
	line "είναι γεμάτος."
	done

PokemonFanClubTeacherText:
	text "Δες το"
	line "BAYLEEF μου!"

	para "Τα φύλλα στο"
	line "κεφάλι, τι όμορφα!"
	done

PokemonFanClubClefairyDollText:
	text "Ένα CLEFAIRY!"
	line "Ε;"

	para "Ω, σωστά. Είναι"
	line "ΠΟΚΕ ΚΟΥΚΛΑ"
	cont "CLEFAIRY."
	done

PokemonFanClubBayleefText:
	text "BAYLEEF: Λι λιιφ!"
	done

PokemonFanClubListenSignText:
	text "Ας ακούσουμε"
	line "ευγενικά άλλους"
	cont "εκπαιδευτές."
	done

PokemonFanClubBraggingSignText:
	text "Αν καυχιέται,"
	line "κάντο και εσύ!"
	done

PokemonFanClub_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 3
	warp_event  3,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_READ, PokemonFanClubListenSign
	bg_event  9,  0, BGEVENT_READ, PokemonFanClubBraggingSign

	def_object_events
	object_event  3,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubChairmanScript, -1
	object_event  4,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonFanClubReceptionistScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubClefairyGuyScript, -1
	object_event  7,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubTeacherScript, -1
	object_event  2,  4, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubClefairyDollScript, EVENT_VERMILION_FAN_CLUB_DOLL
	object_event  7,  3, SPRITE_ODDISH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonFanClubBayleefScript, -1
