	object_const_def
	const BLACKTHORNGYM1F_CLAIR
	const BLACKTHORNGYM1F_COOLTRAINER_M1
	const BLACKTHORNGYM1F_COOLTRAINER_M2
	const BLACKTHORNGYM1F_COOLTRAINER_F
	const BLACKTHORNGYM1F_GYM_GUIDE

BlackthornGym1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, BlackthornGym1FBouldersCallback

BlackthornGym1FBouldersCallback:
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_1
	iffalse .skip1
	changeblock 8, 2, $3b ; fallen boulder 2
.skip1
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_2
	iffalse .skip2
	changeblock 2, 4, $3a ; fallen boulder 1
.skip2
	checkevent EVENT_BOULDER_IN_BLACKTHORN_GYM_3
	iffalse .skip3
	changeblock 8, 6, $3b ; fallen boulder 2
.skip3
	endcallback

BlackthornGymClairScript:
	faceplayer
	opentext
	checkflag ENGINE_RISINGBADGE
	iftrue .AlreadyGotBadge
	checkevent EVENT_BEAT_CLAIR
	iftrue .FightDone
	writetext ClairIntroText
	waitbutton
	closetext
	winlosstext ClairWinText, 0
	loadtrainer CLAIR, CLAIR1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CLAIR
	opentext
	writetext ClairText_GoToDragonsDen
	waitbutton
	closetext
	setevent EVENT_BEAT_COOLTRAINERM_PAUL
	setevent EVENT_BEAT_COOLTRAINERM_CODY
	setevent EVENT_BEAT_COOLTRAINERM_MIKE
	setevent EVENT_BEAT_COOLTRAINERF_FRAN
	setevent EVENT_BEAT_COOLTRAINERF_LOLA
	clearevent EVENT_MAHOGANY_MART_OWNERS
	setevent EVENT_BLACKTHORN_CITY_GRAMPS_BLOCKS_DRAGONS_DEN
	clearevent EVENT_BLACKTHORN_CITY_GRAMPS_NOT_BLOCKING_DRAGONS_DEN
	end

.FightDone:
	checkitem DRAGON_FANG
	iftrue .HasDragonFang
	writetext ClairText_WhatsTheMatter
	waitbutton
	closetext
	end

.HasDragonFang:
	writetext BlackthornGymClairText_Cheat
	waitbutton
	closetext
	end

.AlreadyGotBadge:
	checkevent EVENT_GOT_TM24_DRAGONBREATH
	iftrue .GotTM24
	writetext BlackthornGymClairText_YouKeptMeWaiting
	promptbutton
	verbosegiveitem TM_DRAGONBREATH
	iffalse .BagFull
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext BlackthornGymClairText_DescribeTM24
	waitbutton
	closetext
	end

.GotTM24:
	writetext BlackthornGymClairText_League
	waitbutton

.BagFull:
	closetext
	end

TrainerCooltrainermPaul:
	trainer COOLTRAINERM, PAUL, EVENT_BEAT_COOLTRAINERM_PAUL, CooltrainermPaulSeenText, CooltrainermPaulBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermPaulAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermMike:
	trainer COOLTRAINERM, MIKE, EVENT_BEAT_COOLTRAINERM_MIKE, CooltrainermMikeSeenText, CooltrainermMikeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermMikeAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfLola:
	trainer COOLTRAINERF, LOLA, EVENT_BEAT_COOLTRAINERF_LOLA, CooltrainerfLolaSeenText, CooltrainerfLolaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLolaAfterBattleText
	waitbutton
	closetext
	end

BlackthornGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CLAIR
	iftrue .BlackthornGymGuideWinScript
	writetext BlackthornGymGuideText
	waitbutton
	closetext
	end

.BlackthornGymGuideWinScript:
	writetext BlackthornGymGuideWinText
	waitbutton
	closetext
	end

BlackthornGymStatue:
	checkflag ENGINE_RISINGBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, CLAIR, CLAIR1
	jumpstd GymStatue2Script

ClairIntroText:
	text "Είμαι η CLAIR."
	line "Η καλύτερη"
	cont "δράκο εξπέρ."

	para "Τα καταφέρνω"
	line "ενάντια και στους"

	para "4 ΛΙΤ του"
	line "ΠΡΩΤΑΘΛΗΜΑΤΟΣ."

	para "Θέλεις ακόμα να"
	line "με προκαλέσεις;"

	para "…Καλά."
	line "Πάμε!"

	para "Ως εκπ/της,"
	line "θα βάλω όλη τη"

	para "δύναμη μου σε"
	line "κάθε αντίπαλο!"
	done

ClairWinText:
	text "Έχασα!"

	para "Δεν το πιστεύω."
	line "Πρέπει να έγινε"
	cont "κάποιο λάθος…"
	done

ClairText_GoToDragonsDen:
	text "Δεν το"
	line "δέχομαι αυτό."

	para "Μπορεί να έχασα,"
	line "μα ακόμα δεν"

	para "είσαι έτοιμος για"
	line "το ΠΡΩΤΑΘΛΗΜΑ."

	para "Ξέρω. Τρέχα"
	line "για την δράκο"
	cont "πρόκληση χρήστη."

	para "Πίσω από το GYM"
	line "είναι το ΛΗΜΑΙΡΙ"
	cont "ΔΡΑΚΩΝ."

	para "Τρέχα και φέρε"
	line "το ΔΟΝΤΙ ΔΡΑΚΟΥ"

	para "απο το"
	line "ΛΗΜΑΙΡΙ."

	para "Έτσι θα απο-"
	line "δείξεις ότι είσαι"

	para "αληθινός δράκο"
	line "χρήστης."

	para "Αν τα καταφέρεις,"
	line "θα σε αποδεχτώ"
	cont "ως άξιο και σωστό"
	cont "εκπαιδευτή."

	para "Μέχρι τότε, δεν"
	line "θα σου δώσω"
	cont "το ΕΜΒΛΗΜΑ."
	done

ClairText_WhatsTheMatter:
	text "CLAIR: Τι"
	line "τρέχει;"

	para "Η αποστολή"
	line "είναι δύσκολη,"

	para "εκτός αν η νίκη"
	line "ήταν σύμπτωση."
	done

BlackthornGymClairText_Cheat:
	text "CLAIR: Δεν"
	line "το πήρες απο το"
	cont "ΛΗΜΑΙΡΙ ΔΡΑΚΩΝ."

	para "Μια κλεψιά"
	line "σαν αυτή…"

	para "Με απογο-"
	line "ήτευσες."
	done

BlackthornGymClairText_YouKeptMeWaiting:
	text "CLAIR: Έχεις"
	line "αποδείξει την"
	cont "αξία σου."

	para "Θέλω να πάρεις"
	line "αυτό το TM."
	done

BlackthornGymText_ReceivedTM24: ; unreferenced
	text "<PLAYER> πήρε"
	line "TM24."
	done

BlackthornGymClairText_DescribeTM24:
	text "Περιέχει"
	line "ΔΡΑΚΟΑΝΑΣΑ."

	para "Όχι, δεν έχει"
	line "να κάνει με την"
	cont "ανάσα μου."

	para "Αν δεν το θες,"
	line "τότε μην το"
	cont "πάρεις."
	done

BlackthornGymClairText_League:
	text "Ωστε σύλλεξες"
	line "ολα τα"
	cont "ΕΜΒΛΗΜΑΤΑ."

	para "Ο προορισμός"
	line "σου είναι το"

	para "ΠΡΩΤΑΘΛΗΜΑ στο"
	line "ΟΡΟΠΕΔΙΟ INDIGO."

	para "Ξέρεις πως να"
	line "πας εκεί;"

	para "Από εδώ, τρέχα"
	line "στη ΝΕΑ ΠΟΛΗ BARK."

	para "Κανε ΣΕΡΦ ανατο-"
	line "λικά. Ο δρόμος"
	cont "είναι δύσκολος."

	para "Μην τολμήσεις"
	line "να χασεις στο"
	cont "ΠΡΩΤΑΘΛΗΜΑ!"

	para "Αν το κάνεις,"
	line "θα νιώθω χειρό-"

	para "τερα που έχασα"
	line "από εσένα!"
	done

CooltrainermPaulSeenText:
	text "Πρώτη μάχη"
	line "ενάντια δράκων;"

	para "Θα σου δείξω"
	line "ότι έχουν δύναμη!"
	done

CooltrainermPaulBeatenText:
	text "Απογοητεύτηκα."
	done

CooltrainermPaulAfterBattleText:
	text "Είδες τον LANCE,"
	line "τον δράκο εξπέρ;"

	para "Δεν γίνεται"
	line "αυτό."
	done

CooltrainermMikeSeenText:
	text "Η πιθανότητα να"
	line "χάσω; Ούτε ένα"
	cont "τις εκατό!"
	done

CooltrainermMikeBeatenText:
	text "Παράξενο."
	done

CooltrainermMikeAfterBattleText:
	text "Ξέρω τα λάθη"
	line "μου τώρα."

	para "Ευχαριστώ που"
	line "τα έδειξες!"
	done

CooltrainerfLolaSeenText:
	text "Οι δράκοι είναι"
	line "ιερά #μον."

	para "Είναι γεμάτα με"
	line "ενέργεια."

	para "Αν δεν είσαι"
	line "σοβαρός, δεν θα"

	para "τους νικήσεις"
	line "ποτέ."
	done

CooltrainerfLolaBeatenText:
	text "Μπράβο!"
	done

CooltrainerfLolaAfterBattleText:
	text "Οι δράκοι έχουν"
	line "αδυναμία σε"
	cont "κινήσεις δράκων."
	done

BlackthornGymGuideText:
	text "Γιο! ΝΙΚΗΤΗ"
	line "του αύριο!"

	para "Ήταν μακρύ"
	line "ταξίδι, μα σχεδόν"

	para "τα καταφέραμε!"
	line "Βασίσου πάνω μου!"

	para "Η CLAIR βάζει"
	line "μυθικά και ιερά"
	cont "τύπου-δράκου"
	cont "#μον."

	para "Δεν τραυματίζονται"
	line "έτσι εύκολα."

	para "Μα όπως ξέρεις,"
	line "υποτίθεται πως"

	para "έχουν αδυναμία"
	line "σε κινήσεις πάγου."
	done

BlackthornGymGuideWinText:
	text "Ήσουν υπέροχος"
	line "με αυτή τη νίκη!"

	para "Τώρα έμεινε να"
	line "πας στο ΠΡΩΤΑ-"
	cont "ΘΛΗΜΑ ΠΟΚΕΜΟΝ."

	para "Είσαι στον δρόμο"
	line "για να γίνεις"
	cont "ΠΡΩΤΑΘΛΗΤΗΣ!"
	done

BlackthornGym1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, BLACKTHORN_CITY, 1
	warp_event  5, 17, BLACKTHORN_CITY, 1
	warp_event  1,  7, BLACKTHORN_GYM_2F, 1
	warp_event  7,  9, BLACKTHORN_GYM_2F, 2
	warp_event  2,  6, BLACKTHORN_GYM_2F, 3
	warp_event  7,  7, BLACKTHORN_GYM_2F, 4
	warp_event  7,  6, BLACKTHORN_GYM_2F, 5

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, BlackthornGymStatue
	bg_event  6, 15, BGEVENT_READ, BlackthornGymStatue

	def_object_events
	object_event  5,  3, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BlackthornGymClairScript, -1
	object_event  6,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermMike, -1
	object_event  1, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermPaul, -1
	object_event  9,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainerfLola, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornGymGuideScript, -1
