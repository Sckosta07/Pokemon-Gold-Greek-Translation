	object_const_def
	const PEWTERGYM_BROCK
	const PEWTERGYM_YOUNGSTER
	const PEWTERGYM_GYM_GUIDE

PewterGym_MapScripts:
	def_scene_scripts

	def_callbacks

PewterGymBrockScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .FightDone
	writetext BrockIntroText
	waitbutton
	closetext
	winlosstext BrockWinLossText, 0
	loadtrainer BROCK, BROCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_JERRY
	opentext
	writetext ReceivedBoulderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	writetext BrockBoulderBadgeText
	waitbutton
	closetext
	end

.FightDone:
	writetext BrockFightDoneText
	waitbutton
	closetext
	end

TrainerCamperJerry:
	trainer CAMPER, JERRY, EVENT_BEAT_CAMPER_JERRY, CamperJerrySeenText, CamperJerryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperJerryAfterBattleText
	waitbutton
	closetext
	end

PewterGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BROCK
	iftrue .PewterGymGuideWinScript
	writetext PewterGymGuideText
	waitbutton
	closetext
	end

.PewterGymGuideWinScript:
	writetext PewterGymGuideWinText
	waitbutton
	closetext
	end

PewterGymStatue:
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, BROCK, BROCK1
	jumpstd GymStatue2Script

BrockIntroText:
	text "BROCK: Ουάου,"
	line "δεν έχουμε συχνά"

	para "προκλήσεις από"
	line "το JOHTO."

	para "Είμαι ο BROCK, ο"
	line "ΗΓΕΤΗΣ GYM εδώ."

	para "Είμαι εξπέρ στα"
	line "τύπου-πέτρας."

	para "Τα #MON είναι"
	line "ανθεκτικά στις"

	para "φυσικές επιθέσεις."
	line "Θα βρεις δυσκολία"

	para "να προκαλέσεις"
	line "καθόλου ζημιά."

	para "Έλα, πάμε!"
	done

BrockWinLossText:
	text "BROCK: Οι δυνατές"
	line "επιθέσεις #μον"
	cont "νίκησαν την"
	cont "άμυνα μου…"

	para "Είσαι πιο δυνατός"
	line "απ' ότι περίμενα…"

	para "Ορίστε--πάρε"
	line "το ΕΜΒΛΗΜΑ."
	done

ReceivedBoulderBadgeText:
	text "<PLAYER> πήρε"
	line "ΒΡΑΧΟΕΜΒΛΗΜΑ."
	done

BrockBoulderBadgeText:
	text "BROCK: <PLAYER>,"
	line "ευχαριστώ. Από-"

	para "λαυσα την μάχη"
	line "μας, αν και λίγο"
	cont "νευρίασα."

	para "Αυτό θα κάνει"
	line "τα #μον μου"

	para "ακόμη πιο"
	line "δυνατά."
	done

BrockFightDoneText:
	text "BROCK: Ο κόσμος"
	line "είναι τεράστιος."

	para "Υπάρχουν δυνατοί"
	line "εκπ/τες σαν εσένα."

	para "Θα το δεις."
	line "Θα γίνω πιο"
	cont "δυνατός από"
	cont "τώρα."
	done

CamperJerrySeenText:
	text "Οι εκπ/τες από"
	line "αυτό το GYM βάζουν"
	cont "τύπου-πέτρας."

	para "Αυτός ο τύπος"
	line "έχει πολύ ΑΜΥΝΑ."

	para "Οι μάχες κάνουν"
	line "πολύ ώρα για να"

	para "τελειώσουν. Είσαι"
	line "έτοιμος γι' αυτό;"
	done

CamperJerryBeatenText:
	text "Πρέπει να νικήσω"
	line "αυτές τις μάχες…"
	done

CamperJerryAfterBattleText:
	text "Έι, εσύ! Εκπ/τη"
	line "του JOHTO! Ο BROCK"

	para "είναι δυνατός. Θα"
	line "σε παιδέψει αν"

	para "δεν είσαι"
	line "σοβαρός."
	done

PewterGymGuideText:
	text "Γιο! ΝΙΚΗΤΗ"
	line "του αύριο! Τα"

	para "σπας φίλε."
	line "Θα κάνεις μάχη"

	para "με ΗΓΕΤΕΣ GYM"
	line "του KANTO;"

	para "Είναι δυνατοί και"
	line "αποφασισμένοι,"

	para "σαν τους ΗΓΕΤΕΣ"
	line "του JOHTO."
	done

PewterGymGuideWinText:
	text "Γιο! ΝΙΚΗΤΗ του"
	line "αύριο! Το GYM"

	para "δεν σου έκανε"
	line "πολλά θέματα."

	para "Ο τρόπος που"
	line "φορτίζεις είναι"

	para "έμπνευση. Το"
	line "εννοώ αυτό."
	done

PewterGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  2, 11, BGEVENT_READ, PewterGymStatue
	bg_event  7, 11, BGEVENT_READ, PewterGymStatue

	def_object_events
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterGymBrockScript, -1
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperJerry, -1
	object_event  6, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, PewterGymGuideScript, -1
