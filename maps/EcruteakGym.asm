	object_const_def
	const ECRUTEAKGYM_MORTY
	const ECRUTEAKGYM_SAGE1
	const ECRUTEAKGYM_SAGE2
	const ECRUTEAKGYM_GRANNY1
	const ECRUTEAKGYM_GRANNY2
	const ECRUTEAKGYM_GYM_GUIDE

EcruteakGym_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakGymMortyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .FightDone
	writetext MortyIntroText
	waitbutton
	closetext
	winlosstext MortyWinLossText, 0
	loadtrainer MORTY, MORTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MORTY
	opentext
	writetext Text_ReceivedFogBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_FOGBADGE
	readvar VAR_BADGES
	scall EcruteakGymActivateRockets
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_NOOP
.FightDone:
	checkevent EVENT_GOT_TM30_SHADOW_BALL
	iftrue .GotShadowBall
	setevent EVENT_BEAT_SAGE_JEFFREY
	setevent EVENT_BEAT_SAGE_PING
	setevent EVENT_BEAT_MEDIUM_MARTHA
	setevent EVENT_BEAT_MEDIUM_GRACE
	writetext MortyText_FogBadgeSpeech
	promptbutton
	verbosegiveitem TM_SHADOW_BALL
	iffalse .NoRoomForShadowBall
	setevent EVENT_GOT_TM30_SHADOW_BALL
	writetext MortyText_ShadowBallSpeech
	waitbutton
	closetext
	end

.GotShadowBall:
	writetext MortyFightDoneText
	waitbutton
.NoRoomForShadowBall:
	closetext
	end

EcruteakGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerSageJeffrey:
	trainer SAGE, JEFFREY, EVENT_BEAT_SAGE_JEFFREY, SageJeffreySeenText, SageJeffreyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageJeffreyAfterBattleText
	waitbutton
	closetext
	end

TrainerSagePing:
	trainer SAGE, PING, EVENT_BEAT_SAGE_PING, SagePingSeenText, SagePingBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SagePingAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumMartha:
	trainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumMarthaAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumGrace:
	trainer MEDIUM, GRACE, EVENT_BEAT_MEDIUM_GRACE, MediumGraceSeenText, MediumGraceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumGraceAfterBattleText
	waitbutton
	closetext
	end

EcruteakGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MORTY
	iftrue .EcruteakGymGuideWinScript
	writetext EcruteakGymGuideText
	waitbutton
	closetext
	end

.EcruteakGymGuideWinScript:
	writetext EcruteakGymGuideWinText
	waitbutton
	closetext
	end

EcruteakGymStatue:
	checkflag ENGINE_FOGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, MORTY, MORTY1
	jumpstd GymStatue2Script

MortyIntroText:
	text "Καλά έκανες"
	line "που ήρθες."

	para "Στην ECRUTEAK,"
	line "τα #μον είναι"
	cont "θαυμαστά."

	para "Λένε πως ένα"
	line "θρυλικό #MON"

	para "θα εμφανιστεί"
	line "μόνο σε δυνατούς"
	cont "εκπαιδευτές."

	para "Πιστεύω στο"
	line "παραμύθι, έτσι"

	para "Προπονούμαι μυ-"
	line "στικά από παιδί."

	para "Ως αποτέλεσμα,"
	line "τώρα βλέπω ότι"
	cont "οι άλλοι όχι."

	para "Λίγο περισσότερο…"

	para "Με λίγο περισσό-"
	line "τερο, θα δω το"

	para "μέλλον που θα"
	line "βρω το θρυλικό"
	cont "#μον."

	para "Θα με βοηθήσεις"
	line "να φτάσω αυτό"
	cont "στο επίπεδο αυτό!"
	done

MortyWinLossText:
	text "Δεν είμαι"
	line "ακόμα καλός…"

	para "Εντάξει. Ορίστε το"
	line "ΕΜΒΛΗΜΑ σου."
	done

Text_ReceivedFogBadge:
	text "<PLAYER> πηρε"
	line "ΟΜΙΧΛΟΕΜΒΛΗΜΑ."
	done

MortyText_FogBadgeSpeech:
	text "Με αυτό, τα"
	line "#μον πάνω"

	para "του L50 θα"
	line "σε υπακούν."

	para "Επίσης, #μον"
	line "που ξέρουν ΣΕΡΦ"

	para "μπορούν να το"
	line "κάνουν πάντοτε"

	para "Θέλω να"
	line "πάρεις & αυτό."
	done

MortyText_ShadowBallSpeech:
	text "Έχει ΣΦΑΙΡΑ ΣΚΙΑΣ."
	line "προκαλεί ζημιά"

	para "και μειώνει"
	line "ΕΙΔ.ΑΜΝ."

	para "Βάλτο αν"
	line "σου αρέσει."
	done

MortyFightDoneText:
	text "Βλέπω…"

	para "Το ταξίδι σου"
	line "σε πήγε σε"
	cont "μακρινά μέρη."

	para "Και είδες πιο"
	line "πολλά από"
	cont "εμένα."

	para "Σε ζηλεύω"
	line "γι' αυτό…"
	done

SageJeffreySeenText:
	text "Πέρασα την άνοιξη"
	line "με #μον."

	para "Καλοκαίρι, φθινό-"
	line "πωρο και χειμώνας…"

	para "Μετά άνοιξη"
	line "ξανά. Θα ζήσουμε"

	para "μαζί για"
	line "πολύ καιρό."
	done

SageJeffreyBeatenText:
	text "Νίκες & ήττες,"
	line "έζησα & τα δύο."
	done

SageJeffreyAfterBattleText:
	text "Από που ήρθαν"
	line "τα #μον;"
	done

SagePingSeenText:
	text "Προκαλείς"
	line "καμία ζημιά στα"
	cont "#μον μας;"
	done

SagePingBeatenText:
	text "Αχ! Μπράβο!"
	done

SagePingAfterBattleText:
	text "Βάζουμε μόνο"
	line "#μον φαντάσμα."

	para "Καμία κανονική"
	line "επίθεση δεν"
	cont "μας βλάπτει!"
	done

MediumMarthaSeenText:
	text "Θα νικήσω!"
	done

MediumMarthaBeatenText:
	text "Ε, ε, έχασα!"
	done

MediumMarthaAfterBattleText:
	text "Αυτός που θέλει"
	line "πιο πολύ--νικάει!"
	done

MediumGraceSeenText:
	text "Έπεσες στον"
	line "αορατο τοίχο;"

	para "Νίκησε με αν"
	line "θελεις στοιχείο!"
	done

MediumGraceBeatenText:
	text "Τ-τι;"
	done

MediumGraceAfterBattleText:
	text "Καλά. Θα σου πω"
	line "το μυστικό του"

	para "αοράτου"
	line "τοίχου."

	para "Ο δρόμος είναι"
	line "μπροστά σου!"
	done

EcruteakGymGuideText:
	text "Οι εκπ/τες εδώ"
	line "έχουν μυστικά"
	cont "κίνητρα."

	para "Αν νικήσεις, θα"
	line "σου πουν μεγάλα"

	para "μυστικά για την"
	line "ECRUTEAK."
	done

EcruteakGymGuideWinText:
	text "Φιου, <PLAYER>."
	line "Τα πας τέλεια!"

	para "Μαζεύτηκα στη"
	line "γωνία από τον"
	cont "πολύ τρόμο!"
	done

EcruteakGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, ECRUTEAK_CITY, 10
	warp_event  5, 17, ECRUTEAK_CITY, 10
	warp_event  4, 14, ECRUTEAK_GYM, 4
	warp_event  2,  4, ECRUTEAK_GYM, 3
	warp_event  3,  4, ECRUTEAK_GYM, 3
	warp_event  4,  4, ECRUTEAK_GYM, 3
	warp_event  4,  5, ECRUTEAK_GYM, 3
	warp_event  6,  7, ECRUTEAK_GYM, 3
	warp_event  7,  4, ECRUTEAK_GYM, 3
	warp_event  2,  6, ECRUTEAK_GYM, 3
	warp_event  3,  6, ECRUTEAK_GYM, 3
	warp_event  4,  6, ECRUTEAK_GYM, 3
	warp_event  5,  6, ECRUTEAK_GYM, 3
	warp_event  7,  6, ECRUTEAK_GYM, 3
	warp_event  7,  7, ECRUTEAK_GYM, 3
	warp_event  4,  8, ECRUTEAK_GYM, 3
	warp_event  5,  8, ECRUTEAK_GYM, 3
	warp_event  6,  8, ECRUTEAK_GYM, 3
	warp_event  7,  8, ECRUTEAK_GYM, 3
	warp_event  2,  8, ECRUTEAK_GYM, 3
	warp_event  2,  9, ECRUTEAK_GYM, 3
	warp_event  2, 10, ECRUTEAK_GYM, 3
	warp_event  2, 11, ECRUTEAK_GYM, 3
	warp_event  4, 10, ECRUTEAK_GYM, 3
	warp_event  5, 10, ECRUTEAK_GYM, 3
	warp_event  2, 12, ECRUTEAK_GYM, 3
	warp_event  3, 12, ECRUTEAK_GYM, 3
	warp_event  4, 12, ECRUTEAK_GYM, 3
	warp_event  5, 12, ECRUTEAK_GYM, 3
	warp_event  7, 10, ECRUTEAK_GYM, 3
	warp_event  7, 11, ECRUTEAK_GYM, 3
	warp_event  7, 12, ECRUTEAK_GYM, 3
	warp_event  7, 13, ECRUTEAK_GYM, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, EcruteakGymStatue
	bg_event  6, 15, BGEVENT_READ, EcruteakGymStatue

	def_object_events
	object_event  5,  1, SPRITE_MORTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, EcruteakGymMortyScript, -1
	object_event  2,  7, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSageJeffrey, -1
	object_event  3, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSagePing, -1
	object_event  7,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumMartha, -1
	object_event  7,  9, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerMediumGrace, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakGymGuideScript, -1
