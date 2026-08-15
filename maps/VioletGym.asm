	object_const_def
	const VIOLETGYM_FALKNER
	const VIOLETGYM_YOUNGSTER1
	const VIOLETGYM_YOUNGSTER2
	const VIOLETGYM_GYM_GUIDE

VioletGym_MapScripts:
	def_scene_scripts

	def_callbacks

VioletGymFalknerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .FightDone
	writetext FalknerIntroText
	waitbutton
	closetext
	winlosstext FalknerWinLossText, 0
	loadtrainer FALKNER, FALKNER1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FALKNER
	opentext
	writetext ReceivedZephyrBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	readvar VAR_BADGES
	scall VioletGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_BIRD_KEEPER_ROD
	setevent EVENT_BEAT_BIRD_KEEPER_ABE
	setmapscene ELMS_LAB, SCENE_ELMSLAB_NOOP
	specialphonecall SPECIALCALL_ASSISTANT
	writetext FalknerZephyrBadgeText
	promptbutton
	verbosegiveitem TM_MUD_SLAP
	iffalse .NoRoomForMudSlap
	setevent EVENT_GOT_TM31_MUD_SLAP
	writetext FalknerTMMudSlapText
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext FalknerFightDoneText
	waitbutton
.NoRoomForMudSlap:
	closetext
	end

VioletGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerBirdKeeperRod:
	trainer BIRD_KEEPER, ROD, EVENT_BEAT_BIRD_KEEPER_ROD, BirdKeeperRodSeenText, BirdKeeperRodBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRodAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperAbe:
	trainer BIRD_KEEPER, ABE, EVENT_BEAT_BIRD_KEEPER_ABE, BirdKeeperAbeSeenText, BirdKeeperAbeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperAbeAfterBattleText
	waitbutton
	closetext
	end

VioletGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .VioletGymGuideWinScript
	writetext VioletGymGuideText
	waitbutton
	closetext
	end

.VioletGymGuideWinScript:
	writetext VioletGymGuideWinText
	waitbutton
	closetext
	end

VioletGymStatue:
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, FALKNER, FALKNER1
	jumpstd GymStatue2Script

FalknerIntroText:
	text "Είμαι ο FALKNER,"
	line "ο GYM ηγέτης"
	cont "της VIOLET!"

	para "Λένε πως μπορείς"
	line "να πιάσεις τα"

	para "τύ που-πτηνών"
	line "#μον με μια"
	cont "αστραπή…"

	para "Δεν θα δεχτώ"
	line "τέτοια προσβολή"
	cont "σε #μον πουλιά!"

	para "Θα σου δείξω την"
	line "αληθινή δύναμη"

	para "των πουλιών"
	line "#μον!"
	done

FalknerWinLossText:
	text "…Φτου! Τα"
	line "αγαπημένα #μον"
	cont "του μπαμπά…"

	para "Εντάξει."
	line "Πάρε αυτό."

	para "Το επίσημο"
	line "ΑΕΡΟΕΜΒΛΗΜΑ"
	cont "ΠΡΩΤΑΘΛΗΜΑΤΟΣ."
	done

ReceivedZephyrBadgeText:
	text "<PLAYER> πήρε"
	line "ΑΕΡΟΕΜΒΛΗΜΑ."
	done

FalknerZephyrBadgeText:
	text "Αυτό αυξάνει"
	line "την επιθετική"
	cont "δύναμη #μον."

	para "Επίσης αφήνει"
	line "την κίνηση ΛΑΜΨΗ,"

	para "αν την έχει"
	line "οπότε θέλει."

	para "Ορίστε--πάρε"
	line "και αυτό."
	done

FalknerTMMudSlapText:
	text "Με αυτό το TM,"
	line "τα #μον θα"

	para "μάθουν μια"
	line "νέα κίνηση."

	para "Σκέψου πριν"
	line "πράξεις--TM είναι"
	cont "μιας φοράς."

	para "TM31 έχει"
	line "ΛΑΣΠΟ-ΦΑΠΑ."

	para "Μειώνει ακρίβεια"
	line "του εχθρού"

	para "και προκαλεί"
	line "ζημιά."

	para "Με άλλα λόγια,"
	line "είναι και άμυνα"
	cont "και επίθεση."
	done

FalknerFightDoneText:
	text "Υπάρχουν #μον"
	line "GYM σε πόλεις"
	cont "μπροστά."

	para "Τέσταρε τις"
	line "ικανότητες σε"
	cont "αυτά τα GYM."

	para "Θα προπονηθώ"
	line "πιο πολύ για να"

	para "γίνω ο καλύτερος"
	line "πτήνο-εξπέρ!"
	done

BirdKeeperRodSeenText:
	text "Ο κωδικός"
	line "είναι θάρρος!"

	para "Αυτοί εδώ προ-"
	line "πονούνται μέρα-"

	para "νύχτα για"
	line "πτηνό-άρχοντες."

	para "Έλα!"
	done

BirdKeeperRodBeatenText:
	text "Γαααχ!"
	done

BirdKeeperRodAfterBattleText:
	text "Ο FALKNER"
	line "είναι σκληρός!"

	para "Μην είσαι περήφα-"
	line "νος μόνο επειδή"
	cont "με νίκησες!"
	done

BirdKeeperAbeSeenText:
	text "Θα δω πόσο"
	line "καλός είσαι για"
	cont "τον FALKNER!"
	done

BirdKeeperAbeBeatenText:
	text "Δεν γίνεται"
	line "αυτό!"
	done

BirdKeeperAbeAfterBattleText:
	text "Είναι χαζό,"
	line "να χάνω από"
	cont "έναν πρωτάρη…"
	done

VioletGymGuideText:
	text "Έι! Δεν είμαι"
	line "εκπ/της μα"
	cont "δίνω συμβουλές!"

	para "Πίστεψε με!"
	line "Αν πιστέψεις, το"

	para "πρωτάθλημα θα"
	line "είναι πιθανό."

	para "Με πιστεύεις;"
	line "Τότε άκου."

	para "Ο τύπος-γρασιδιού"
	line "είναι αδύναμος στα"

	para "τύπου-πτηνα."
	line "Κρατά αυτό."
	done

VioletGymGuideWinText:
	text "Ωραία μάχη!"
	line "Συνέχισε έτσι, και"

	para "θα γίνεις"
	line "ΠΡΩΤΑΘΛΗΤΗΣ!"
	done

VioletGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, VIOLET_CITY, 2
	warp_event  5, 15, VIOLET_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, VioletGymStatue
	bg_event  6, 13, BGEVENT_READ, VioletGymStatue

	def_object_events
	object_event  5,  1, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletGymFalknerScript, -1
	object_event  7,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRod, -1
	object_event  2, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperAbe, -1
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletGymGuideScript, -1
