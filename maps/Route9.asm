	object_const_def
	const ROUTE9_YOUNGSTER1
	const ROUTE9_LASS1
	const ROUTE9_YOUNGSTER2
	const ROUTE9_LASS2
	const ROUTE9_POKEFAN_M1
	const ROUTE9_POKEFAN_M2

Route9_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCamperDean:
	trainer CAMPER, DEAN, EVENT_BEAT_CAMPER_DEAN, CamperDeanSeenText, CamperDeanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperDeanAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerHeidi:
	trainer PICNICKER, HEIDI, EVENT_BEAT_PICNICKER_HEIDI, PicnickerHeidiSeenText, PicnickerHeidiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerHeidiAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperSid:
	trainer CAMPER, SID, EVENT_BEAT_CAMPER_SID, CamperSidSeenText, CamperSidBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperSidAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerEdna:
	trainer PICNICKER, EDNA, EVENT_BEAT_PICNICKER_EDNA, PicnickerEdnaSeenText, PicnickerEdnaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerEdnaAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerTim:
	trainer HIKER, TIM, EVENT_BEAT_HIKER_TIM, HikerTimSeenText, HikerTimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerTimAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerSidney:
	trainer HIKER, SIDNEY, EVENT_BEAT_HIKER_SIDNEY, HikerSidneySeenText, HikerSidneyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerSidneyAfterBattleText
	waitbutton
	closetext
	end

Route9Sign:
	jumptext Route9SignText

Route9HiddenEther:
	hiddenitem ETHER, EVENT_ROUTE_9_HIDDEN_ETHER

CamperDeanSeenText:
	text "Ήρθα για το"
	line "ΤΟΥΝΕΛ ΒΡΑΧΟ."
	done

CamperDeanBeatenText:
	text "Κίνδυνος, φίλε."
	done

CamperDeanAfterBattleText:
	text "Τα #μον ειχαν"
	line "χτυπήσει πριν"

	para "μπω στο"
	line "ΤΟΥΝΕΛ ΒΡΑΧΟ."

	para "Πρέπει να τα"
	line "πάω στο ΚΕΝΤΡΟ"
	cont "ΠΟΚΕΜΟΝ αμέσως."
	done

PicnickerHeidiSeenText:
	text "Έκανες ποτέ"
	line "πικνίκ;"

	para "Έχει πάντα"
	line "πολύ πλάκα!"
	done

PicnickerHeidiBeatenText:
	text "Ωχχχχ!"
	done

PicnickerHeidiAfterBattleText:
	text "Ψήνουμε πολλά"
	line "φαγητά και τα"

	para "δίνουμε παντού."
	line "Είναι νόστιμα!"
	done

CamperSidSeenText:
	text "Έι, εσύ!"
	line "Όχι σκουπίδια!"
	done

CamperSidBeatenText:
	text "Απλώς έκανα"
	line "παρατήρηση…"
	done

CamperSidAfterBattleText:
	text "Συγνώμη. Δεν"
	line "πέταγες σκουπίδια."
	cont "Λάθος μου."
	done

PicnickerEdnaSeenText:
	text "Δεν πρέπει να"
	line "πετάς σκουπίδια"
	cont "πίσω σου."
	done

PicnickerEdnaBeatenText:
	text "Ωωω… Έχασα…"
	done

PicnickerEdnaAfterBattleText:
	text "Έχει σημασία να"
	line "σώζεις ενέργεια,"

	para "μα το περιβάλλον"
	line "έχει περισσότερη."
	done

HikerTimSeenText:
	text "Θα έρθει εκείνη"
	line "από το ΒΝ.SILVER"
	cont "όταν έρθει…"

	para "Το ΒΝ.SILVER"
	line "είναι στο JOHTO;"
	done

HikerTimBeatenText:
	text "Είχα δουλειά"
	line "τραγουδώντας…"
	done

HikerTimAfterBattleText:
	text "Οι μάχες είναι"
	line "συγκέντρωση."
	done

HikerSidneySeenText:
	text "Θα σου πω"
	line "ένα μυστικό."

	para "Μα πρώτα,"
	line "μάχη!"
	done

HikerSidneyBeatenText:
	text "Ω, φτου!"
	line "έχασα…"
	done

HikerSidneyAfterBattleText:
	text "Το ΕΡΓΟΣΤΑΣΙΟ"
	line "είναι μετά το"
	cont "ποταμάκι."
	done

Route9SignText:
	text "ΔΡΟΜΟΣ 9"

	para "ΠΟΛΗ CERULEAN -"
	line "ΤΟΥΝΕΛ ΒΡΑΧΟΣ"
	done

Route9_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 48, 15, ROCK_TUNNEL_1F, 1

	def_coord_events

	def_bg_events
	bg_event 15,  7, BGEVENT_READ, Route9Sign
	bg_event 10,  5, BGEVENT_ITEM, Route9HiddenEther

	def_object_events
	object_event 23, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperDean, -1
	object_event 35,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerHeidi, -1
	object_event 11,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCamperSid, -1
	object_event  9, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerPicnickerEdna, -1
	object_event 32,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerTim, -1
	object_event 33, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerSidney, -1
