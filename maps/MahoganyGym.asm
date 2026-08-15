	object_const_def
	const MAHOGANYGYM_PRYCE
	const MAHOGANYGYM_BEAUTY1
	const MAHOGANYGYM_ROCKER1
	const MAHOGANYGYM_BEAUTY2
	const MAHOGANYGYM_ROCKER2
	const MAHOGANYGYM_ROCKER3
	const MAHOGANYGYM_GYM_GUIDE

MahoganyGym_MapScripts:
	def_scene_scripts

	def_callbacks

MahoganyGymPryceScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .FightDone
	writetext PryceText_Intro
	waitbutton
	closetext
	winlosstext PryceText_Impressed, 0
	loadtrainer PRYCE, PRYCE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PRYCE
	opentext
	writetext Text_ReceivedGlacierBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
	readvar VAR_BADGES
	scall MahoganyGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM16_ICY_WIND
	iftrue PryceScript_Defeat
	setevent EVENT_BEAT_SKIER_ROXANNE
	setevent EVENT_BEAT_SKIER_CLARISSA
	setevent EVENT_BEAT_BOARDER_RONALD
	setevent EVENT_BEAT_BOARDER_BRAD
	setevent EVENT_BEAT_BOARDER_DOUGLAS
	writetext PryceText_GlacierBadgeSpeech
	promptbutton
	verbosegiveitem TM_ICY_WIND
	iffalse MahoganyGym_NoRoomForIcyWind
	setevent EVENT_GOT_TM16_ICY_WIND
	writetext PryceText_IcyWindSpeech
	waitbutton
	closetext
	end

PryceScript_Defeat:
	writetext PryceText_CherishYourPokemon
	waitbutton
MahoganyGym_NoRoomForIcyWind:
	closetext
	end

MahoganyGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerSkierRoxanne:
	trainer SKIER, ROXANNE, EVENT_BEAT_SKIER_ROXANNE, SkierRoxanneSeenText, SkierRoxanneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierRoxanneAfterBattleText
	waitbutton
	closetext
	end

TrainerSkierClarissa:
	trainer SKIER, CLARISSA, EVENT_BEAT_SKIER_CLARISSA, SkierClarissaSeenText, SkierClarissaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SkierClarissaAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderRonald:
	trainer BOARDER, RONALD, EVENT_BEAT_BOARDER_RONALD, BoarderRonaldSeenText, BoarderRonaldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderRonaldAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderBrad:
	trainer BOARDER, BRAD, EVENT_BEAT_BOARDER_BRAD, BoarderBradSeenText, BoarderBradBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderBradAfterBattleText
	waitbutton
	closetext
	end

TrainerBoarderDouglas:
	trainer BOARDER, DOUGLAS, EVENT_BEAT_BOARDER_DOUGLAS, BoarderDouglasSeenText, BoarderDouglasBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BoarderDouglasAfterBattleText
	waitbutton
	closetext
	end

MahoganyGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .MahoganyGymGuideWinScript
	writetext MahoganyGymGuideText
	waitbutton
	closetext
	end

.MahoganyGymGuideWinScript:
	writetext MahoganyGymGuideWinText
	waitbutton
	closetext
	end

MahoganyGymStatue:
	checkflag ENGINE_GLACIERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, PRYCE, PRYCE1
	jumpstd GymStatue2Script

PryceText_Intro:
	text "#μον έχουν"
	line "πολύ εμπειρία"

	para "στην ζωή τους,"
	line "όπως εμείς."

	para "Και εγώ, έχω"
	line "δει πολλά στη"
	cont "ζωή μου."

	para "Αφού είμαι πιο"
	line "μεγάλος, θα σου"
	cont "δείξω τι εννοώ."

	para "Έκανα παρέα"
	line "με #μον από"

	para "τότε που"
	line "γεννήθηκες."

	para "Δεν θα χάσω"
	line "έτσι εύκολα."

	para "Εγώ, ο PRYCE--ο"
	line "εκπ/της χειμώνα--"

	para "θα σου δείξω"
	line "τη δύναμη μου!"
	done

PryceText_Impressed:
	text "Α, έπαθα σοκ"
	line "από τη δύναμη σου."

	para "Με τη δυνατή σου"
	line "θέληση, ξέρω"

	para "πως θα ξεπεράσεις"
	line "δυσκολίες γενικά."

	para "Είσαι άξιος του"
	line "ΕΜΒΛΗΜΑΤΟΣ!"
	done

Text_ReceivedGlacierBadge:
	text "<PLAYER> πήρε"
	line "ΠΑΓΟΕΜΒΛΗΜΑ."
	done

PryceText_GlacierBadgeSpeech:
	text "Αυτό θα αυξήσει"
	line "τα ειδικά"
	cont "STATS των #μον."

	para "Επίσης σε αφήνει"
	line "να κάνεις ΡΟΥΦΗ-"
	cont "ΧΤΡΑ για να"
	cont "ξεφύγεις."

	para "Και αυτό… Είναι"
	line "δώρο από εμένα!"
	done

PryceText_IcyWindSpeech:
	text "το TM έχει"
	line "ΑΝΕΜΟ ΠΑΓΟΥ."

	para "Προκαλεί ζημιά &"
	line "μειώνει ταχύτητα."

	para "Δείχνει τον"
	line "ψύχος του"
	cont "χειμώνα."
	done

PryceText_CherishYourPokemon:
	text "Όταν ο πάγος"
	line "λιώσει, άνοιξη"
	cont "έρχεται."

	para "Εσύ και τα #-"
	line "μον σου θα περά-"

	para "σετε πολλά"
	line "χρόνια μαζί."

	para "Απόλαυσε τον"
	line "χρόνο μαζί τους!"
	done

BoarderRonaldSeenText:
	text "Αν παγώσει το"
	line "#μον, δεν μπο-"
	cont "ρεί να γίνει κάτι!"
	done

BoarderRonaldBeatenText:
	text "Φτου. Δεν"
	line "έκανα τίποτα."
	done

BoarderRonaldAfterBattleText:
	text "Νομίζω πως"
	line "υπάρχει κίνηση"

	para "που κάνουν όσο"
	line "είναι παγωμένα."
	done

BoarderBradSeenText:
	text "Σε αυτό το GYM"
	line "το έδαφος γλιστρά."

	para "Έχει πλάκα,"
	line "έτσι;"

	para "Μα--δεν παί-"
	line "ζουμε παιχνίδια"
	cont "εδώ!"
	done

BoarderBradBeatenText:
	text "Βλέπεις πόσο"
	line "σοβαροί είμαστε;"
	done

BoarderBradAfterBattleText:
	text "Το GYM είναι"
	line "τέλειο! Λατρεύω"
	cont "το πατινάζ!"
	done

BoarderDouglasSeenText:
	text "Ξέρω το μυστικό"
	line "του PRYCE."
	done

BoarderDouglasBeatenText:
	text "OK. Θα σου πω"
	line "το μυστικό του."
	done

BoarderDouglasAfterBattleText:
	text "Το μυστικό για τη"
	line "δύναμη του…"

	para "Διαλογίζεται σε"
	line "καταρράκτη κάθε"

	para "μέρα για ηρεμία"
	line "μυαλού & σώματος."
	done

SkierRoxanneSeenText:
	text "Για νε δεις τον"
	line "PRYCE τον ΗΓΕΤΗ,"

	para "πρέπει να δεις"
	line "πριν πατινάρεις."
	done

SkierRoxanneBeatenText:
	text "Δεν θα έχανα"
	line "στο σκι από εσένα!"
	done

SkierRoxanneAfterBattleText:
	text "Αν δεν πατινάρεις"
	line "με ακρίβεια,"

	para "Δεν θα πας"
	line "μακριά στο GYM."
	done

SkierClarissaSeenText:
	text "Κοίτα την"
	line "διπλή στροφή μου!"
	done

SkierClarissaBeatenText:
	text "Όχι! Έπεσα"
	line "κάτω!"
	done

SkierClarissaAfterBattleText:
	text "Δεν έπρεπε να"
	line "καυχηθώ για"
	cont "το σκι μου…"
	done

MahoganyGymGuideText:
	text "Ο PRYCE είναι"
	line "βετεράνος που"

	para "έχει #μον"
	line "50 χρονών."

	para "Είπε πως είναι"
	line "καλός στο πάγωμα"

	para "με κινήσεις"
	line "τύπου-πάγου."

	para "Αυτό σημαίνει"
	line "πως τον λιώνεις"

	para "με καυτή"
	line "θέληση!"
	done

MahoganyGymGuideWinText:
	text "Ο PRYCE είναι"
	line "κάτι, μα εσύ εί-"
	cont "σαι κάτι άλλο!"

	para "Ήταν καυτή"
	line "μάχη που"

	para "γεφύρωσε τις"
	line "γενιές!"
	done

MahoganyGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, MAHOGANY_TOWN, 3
	warp_event  5, 17, MAHOGANY_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, MahoganyGymStatue
	bg_event  6, 15, BGEVENT_READ, MahoganyGymStatue

	def_object_events
	object_event  5,  3, SPRITE_PRYCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MahoganyGymPryceScript, -1
	object_event  4,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierRoxanne, -1
	object_event  0, 17, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderRonald, -1
	object_event  9, 17, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSkierClarissa, -1
	object_event  5,  9, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderBrad, -1
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerBoarderDouglas, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MahoganyGymGuideScript, -1
