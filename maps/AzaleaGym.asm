	object_const_def
	const AZALEAGYM_BUGSY
	const AZALEAGYM_BUG_CATCHER1
	const AZALEAGYM_BUG_CATCHER2
	const AZALEAGYM_BUG_CATCHER3
	const AZALEAGYM_TWIN1
	const AZALEAGYM_TWIN2
	const AZALEAGYM_GYM_GUIDE

AzaleaGym_MapScripts:
	def_scene_scripts

	def_callbacks

AzaleaGymBugsyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BUGSY
	iftrue .FightDone
	writetext BugsyText_INeverLose
	waitbutton
	closetext
	winlosstext BugsyText_ResearchIncomplete, 0
	loadtrainer BUGSY, BUGSY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BUGSY
	opentext
	writetext Text_ReceivedHiveBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_HIVEBADGE
	readvar VAR_BADGES
	scall AzaleaGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM49_FURY_CUTTER
	iftrue .GotFuryCutter
	setevent EVENT_BEAT_TWINS_AMY_AND_MAY
	setevent EVENT_BEAT_BUG_CATCHER_BENNY
	setevent EVENT_BEAT_BUG_CATCHER_AL
	setevent EVENT_BEAT_BUG_CATCHER_JOSH
	writetext BugsyText_HiveBadgeSpeech
	promptbutton
	verbosegiveitem TM_FURY_CUTTER
	iffalse .NoRoomForFuryCutter
	setevent EVENT_GOT_TM49_FURY_CUTTER
	writetext BugsyText_FuryCutterSpeech
	waitbutton
	closetext
	end

.GotFuryCutter:
	writetext BugsyText_BugMonsAreDeep
	waitbutton
.NoRoomForFuryCutter:
	closetext
	end

AzaleaGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerTwinsAmyandmay1:
	trainer TWINS, AMYANDMAY1, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay1SeenText, TwinsAmyandmay1BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsAmyandmay1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsAmyandmay2:
	trainer TWINS, AMYANDMAY2, EVENT_BEAT_TWINS_AMY_AND_MAY, TwinsAmyandmay2SeenText, TwinsAmyandmay2BeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext TwinsAmyandmay2AfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherBenny:
	trainer BUG_CATCHER, BENNY, EVENT_BEAT_BUG_CATCHER_BENNY, BugCatcherBennySeenText, BugCatcherBennyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherBennyAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAl:
	trainer BUG_CATCHER, AL, EVENT_BEAT_BUG_CATCHER_AL, BugCatcherAlSeenText, BugCatcherAlBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherAlAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherJosh:
	trainer BUG_CATCHER, JOSH, EVENT_BEAT_BUG_CATCHER_JOSH, BugCatcherJoshSeenText, BugCatcherJoshBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BugCatcherJoshAfterBattleText
	waitbutton
	closetext
	end

AzaleaGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_BUGSY
	iftrue .AzaleaGymGuideWinScript
	opentext
	writetext AzaleaGymGuideText
	waitbutton
	closetext
	end

.AzaleaGymGuideWinScript:
	opentext
	writetext AzaleaGymGuideWinText
	waitbutton
	closetext
	end

AzaleaGymStatue:
	checkflag ENGINE_HIVEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, BUGSY, BUGSY1
	jumpstd GymStatue2Script

BugsyText_INeverLose:
	text "Είμαι ο BUGSY!"
	line "Δεν χάνω ποτέ"

	para "όταν είναι για"
	line "έντομα #μον."

	para "Η έρευνα μου θα"
	line "με κάνει αυθεντία"

	para "στα έντομα"
	line "#μον!"

	para "Θα σου δείξω"
	line "τι έμαθα από τις"
	cont "μελέτες μου."
	done

BugsyText_ResearchIncomplete:
	text "Ουάου, απίστευτο!"
	line "Είσαι ειδικός"
	cont "στα #μον!"

	para "Η έρευνα μου"
	line "δεν ολοκληρώθηκε."

	para "OK, νίκησες. Πάρε"
	line "αυτό το ΕΜΒΛΗΜΑ."
	done

Text_ReceivedHiveBadge:
	text "<PLAYER> πήρε"
	line "το ΜΕΛΟΕΜΒΛΗΜΑ."
	done

BugsyText_HiveBadgeSpeech:
	text "Ξέρεις τα"
	line "οφέλη από το"
	cont "ΜΕΛΟΕΜΒΛΗΜΑ;"

	para "Αν το έχεις, τα"
	line "#μον πάνω του"
	cont "L30 υπακούν."

	para "#μον που ξέρουν"
	line "ΚΟΠΗ μπορούν"

	para "να ΚΟΒΟΥΝ έξω"
	line "από τις μάχες."

	para "Ορίστε, θέλω να"
	line "να πάρεις αυτό."
	done

BugsyText_FuryCutterSpeech:
	text "TM49 έχει"
	line "ΚΟΦΤΗ ΟΡΓΗΣ."

	para "Αν δεν αστοχίσει,"
	line "γίνεται πιο δυνατό"
	cont "με κάθε γύρο."

	para "Όσο προχωράει"
	line "η μάχη, τόσο πιο"
	cont "δυνατό γίνεται."

	para "Υπέροχο, έτσι;"
	line "Εγώ το έφτιαξα!"
	done

BugsyText_BugMonsAreDeep:
	text "Έντομα #μον"
	line "έχουν βάθος."

	para "Υπάρχουν πολλά"
	line "μυστήρια γι' αυτά."

	para "Μελέτα τα αγα-"
	line "πημένα σου πολύ."
	done

BugCatcherBennySeenText:
	text "Έντομα #μον"
	line "εξελίσσονται νέα"

	para "πιο δυνατά πιο"
	line "γρήγορα."
	done

BugCatcherBennyBeatenText:
	text "Δεν φτάνει"
	line "η εξέλιξη!"
	done

BugCatcherBennyAfterBattleText:
	text "#μον γίνονται"
	line "δυνατά αν εξε-"
	cont "λιχθούν. Όντως!"
	done

BugCatcherAlSeenText:
	text "Τα έντομα #μον"
	line "είναι κουλ!"

	para "Θα στο"
	line "αποδείξω!"
	done

BugCatcherAlBeatenText:
	text "Μου έδειξες"
	line "πόσο κουλ είσαι…"
	done

BugCatcherAlAfterBattleText:
	text "Είναι τόσο κουλ,"
	line "μα δεν αρέσουν"

	para "στα πιο πολλά"
	line "κορίτσια."

	para "Δεν ξέρω γιατί…"
	done

BugCatcherJoshSeenText:
	text "Έσωσες όλα τα"
	line "SLOWPOKE; Φιου,"
	cont "είσαι δυνατός!"

	para "Μα τα #μον"
	line "μου είναι πολύ"
	cont "δυνατά επίσης!"
	done

BugCatcherJoshBeatenText:
	text "Αρργγγχ!"
	done

BugCatcherJoshAfterBattleText:
	text "Υποθέτω πως"
	line "θα τα μάθω κα-"
	cont "λύτερες κινήσεις…"
	done

TwinsAmyandmay1SeenText:
	text "AMY: Γεια! Θα"
	line "προκαλέσεις τον"
	cont "ΗΓΕΤΗ; Ουάου!"
	done

TwinsAmyandmay1BeatenText:
	text "AMY & MAY: Ω"
	line "Διπλό αμάν!"
	done

TwinsAmyandmay1AfterBattleText:
	text "AMY: Είσαι"
	line "πολύ δυνατός!"
	done

TwinsAmyandmay2SeenText:
	text "MAY: Θέλεις να"
	line "δεις τον ΗΓΕΤΗ;"
	cont "Πρώτα εμείς!"
	done

TwinsAmyandmay2BeatenText:
	text "AMY & MAY: Ω"
	line "Διπλό αμάν!"
	done

TwinsAmyandmay2AfterBattleText:
	text "MAY: Τα έντομα"
	line "#μον έχασαν!"
	cont "τι κρίμα."
	done

AzaleaGymGuideText:
	text "Γιο, πρωταθλητή!"

	para "Ο BUGSY είναι"
	line "νέος, μα οι γνώ-"

	para "σεις στα #μον"
	line "είναι πολύ καλές."

	para "Θα είναι δύσκολο"
	line "χωρίς την"
	cont "συμβουλή μου."

	para "Για να δω… στα"
	line "έντομα #μον δεν"
	cont "αρέσει η φωτιά."

	para "Υπτάμενες κινήσεις"
	line "έχουν σούπερ"
	cont "επίδραση."
	done

AzaleaGymGuideWinText:
	text "Μπράβο! Ήταν"
	line "υπέροχη μάχη"

	para "ταλαντούχων νέων"
	line "εκπαιδευτών."

	para "Με άτομα σαν"
	line "εσάς, το #μον"
	cont "μέλλον έχει φως!"
	done

AzaleaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, AZALEA_TOWN, 5
	warp_event  5, 15, AZALEA_TOWN, 5

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, AzaleaGymStatue
	bg_event  6, 13, BGEVENT_READ, AzaleaGymStatue

	def_object_events
	object_event  5,  7, SPRITE_BUGSY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaGymBugsyScript, -1
	object_event  5,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBugCatcherBenny, -1
	object_event  8,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAl, -1
	object_event  0,  2, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherJosh, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAmyandmay2, -1
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AzaleaGymGuideScript, -1
