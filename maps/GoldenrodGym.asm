	object_const_def
	const GOLDENRODGYM_WHITNEY
	const GOLDENRODGYM_LASS1
	const GOLDENRODGYM_LASS2
	const GOLDENRODGYM_BEAUTY1
	const GOLDENRODGYM_BEAUTY2
	const GOLDENRODGYM_GYM_GUIDE

GoldenrodGym_MapScripts:
	def_scene_scripts
	scene_script GoldenrodGymNoop1Scene, SCENE_GOLDENRODGYM_NOOP
	scene_script GoldenrodGymNoop2Scene, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING

	def_callbacks

GoldenrodGymNoop1Scene:
	end

GoldenrodGymNoop2Scene:
	end

GoldenrodGymWhitneyScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .FightDone
	opentext
	writetext WhitneyBeforeText
	waitbutton
	closetext
	winlosstext WhitneyShouldntBeSoSeriousText, 0
	loadtrainer WHITNEY, WHITNEY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_MADE_WHITNEY_CRY
	setscene SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING
	setevent EVENT_BEAT_BEAUTY_VICTORIA
	setevent EVENT_BEAT_BEAUTY_SAMANTHA
	setevent EVENT_BEAT_LASS_CARRIE
	setevent EVENT_BEAT_LASS_BRIDGET
.FightDone:
	opentext
	checkevent EVENT_MADE_WHITNEY_CRY
	iffalse .StoppedCrying
	writetext WhitneyYouMeanieText
	waitbutton
	closetext
	end

.StoppedCrying:
	checkevent EVENT_GOT_TM45_ATTRACT
	iftrue .GotAttract
	checkflag ENGINE_PLAINBADGE
	iftrue .GotPlainBadge
	writetext WhitneyWhatDoYouWantText
	promptbutton
	waitsfx
	writetext PlayerReceivedPlainBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_PLAINBADGE
	readvar VAR_BADGES
	scall GoldenrodGymActivateRockets
.GotPlainBadge:
	writetext WhitneyPlainBadgeText
	promptbutton
	verbosegiveitem TM_ATTRACT
	iffalse .NoRoomForAttract
	setevent EVENT_GOT_TM45_ATTRACT
	writetext WhitneyAttractText
	waitbutton
	closetext
	end

.GotAttract:
	writetext WhitneyGoodCryText
	waitbutton
.NoRoomForAttract:
	closetext
	end

GoldenrodGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerLassCarrie:
	trainer LASS, CARRIE, EVENT_BEAT_LASS_CARRIE, LassCarrieSeenText, LassCarrieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassCarrieAfterBattleText
	waitbutton
	closetext
	end

WhitneyCriesScript:
	showemote EMOTE_SHOCK, GOLDENRODGYM_LASS2, 15
	applymovement GOLDENRODGYM_LASS2, BridgetWalksUpMovement
	turnobject PLAYER, DOWN
	opentext
	writetext BridgetWhitneyCriesText
	waitbutton
	closetext
	applymovement GOLDENRODGYM_LASS2, BridgetWalksAwayMovement
	setscene SCENE_GOLDENRODGYM_NOOP
	clearevent EVENT_MADE_WHITNEY_CRY
	end

TrainerLassBridget:
	trainer LASS, BRIDGET, EVENT_BEAT_LASS_BRIDGET, LassBridgetSeenText, LassBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassBridgetAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyVictoria:
	trainer BEAUTY, VICTORIA, EVENT_BEAT_BEAUTY_VICTORIA, BeautyVictoriaSeenText, BeautyVictoriaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyVictoriaAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautySamantha:
	trainer BEAUTY, SAMANTHA, EVENT_BEAT_BEAUTY_SAMANTHA, BeautySamanthaSeenText, BeautySamanthaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautySamanthaAfterBattleText
	waitbutton
	closetext
	end

GoldenrodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_WHITNEY
	iftrue .GoldenrodGymGuideWinScript
	opentext
	writetext GoldenrodGymGuideText
	waitbutton
	closetext
	end

.GoldenrodGymGuideWinScript:
	opentext
	writetext GoldenrodGymGuideWinText
	waitbutton
	closetext
	end

GoldenrodGymStatue:
	checkflag ENGINE_PLAINBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, WHITNEY, WHITNEY1
	jumpstd GymStatue2Script

BridgetWalksUpMovement:
	step LEFT
	turn_head UP
	step_end

BridgetWalksAwayMovement:
	step RIGHT
	turn_head LEFT
	step_end

WhitneyBeforeText:
	text "Είμαι η WHITNEY!"

	para "Όλοι ήταν στα"
	line "#μον, άρα και"
	cont "εγώ το ίδιο!"

	para "Τα #μον είναι"
	line "υπέρ-όμορφα!"

	para "Θέλεις μια"
	line "μάχη; Στο"
	cont "λέω--Είμαι καλή!"
	done

WhitneyShouldntBeSoSeriousText:
	text "Σομπ…"

	para "…Γαααααααχ!"
	line "Είσαι κακός!"

	para "Δεν είσαι"
	line "σοβαρός! Μικρό,"
	cont "παιδί, μικρέ!"
	done

WhitneyYouMeanieText:
	text "Γαααααχ!"

	para "Γαααααχ!"

	para "…κλάμα, χικ…"
	line "…Είσαι κακούλης!"
	done

WhitneyWhatDoYouWantText:
	text "…Σνιφ…"

	para "Τι; Τι θέλεις;"
	line "Ένα ΕΜΒΛΗΜΑ;"

	para "Ω, σωστά. Ξέχασα."
	line "Ορίστε το"
	cont "ΑΠΛΟΕΜΒΛΗΜΑ."
	done

PlayerReceivedPlainBadgeText:
	text "<PLAYER> πήρε"
	line "ΑΠΛΟΕΜΒΛΗΜΑ."
	done

WhitneyPlainBadgeText:
	text "Αυτό αφήνει"
	line "τα  #μον να"

	para "κάνουν ΔΥΝΑΜΗ"
	line "εκτός μάχης."

	para "Επίσης αυξάνει"
	line "ΤΑΧΥΤΗΤΑ των"
	cont "#μον σου."

	para "Ω, πάρε"
	line "και αυτό!"
	done

WhitneyAttractText:
	text "Έχει ΕΛΞΗ!"
	line "Κάνει τα #-"

	para "μον σου"
	line "γοητευτικά."

	para "Δεν είναι τέλειο"
	line "για μια όμορφη"
	cont "σαν εμένα;"
	done

WhitneyGoodCryText:
	text "Α, αυτό ήταν"
	line "καλό κλάμα!"

	para "Έλα ξανά για"
	line "επίσκεψη! Αντίο!"
	done

LassCarrieSeenText:
	text "Μην με νομίζεις"
	line "για αδύναμη!"
	done

LassCarrieBeatenText:
	text "Φτου… Νόμιζα πως"
	line "ήσουν αδύναμος…"
	done

LassCarrieAfterBattleText:
	text "Στον κόσμο των"
	line "#μον, σκέφτομαι"

	para "ποιός έχει δύναμη:"
	line "Αγόρι ή κορίτσι;"
	done

LassBridgetSeenText:
	text "Μ'αρέσουν τα"
	line "όμορφα καλύτερα "
	cont "από τα δυνατά."

	para "Μα έχω δυνατά,"
	line "όμορφα #μον!"
	done

LassBridgetBeatenText:
	text "Ω, όχι, όχι!"
	done

LassBridgetAfterBattleText:
	text "Θα νικήσω την"
	line "WHITNEY, μα…"
	cont "Είναι πιεστικό."

	para "Είμαι εντάξει!"
	line "Αν χάσω, θα"

	para "κάνω πιο σκληρή"
	line "μάχη μετά!"
	done

BridgetWhitneyCriesText:
	text "Ωχ, όχι. Την"
	line "έκανες να κλάψει."

	para "Είναι OK. Θα"
	line "σταματήσει. Πάντα"

	para "κλαίει όταν"
	line "χάνει."
	done

BeautyVictoriaSeenText:
	text "Ω, είσαι όμορφος"
	line "μικρός εκπ/της!"

	para "Μ'αρέσεις, αλλά"
	line "δεν θα κάνω πίσω!"
	done

BeautyVictoriaBeatenText:
	text "Για να δω… Ουπς,"
	line "τελείωσε;"
	done

BeautyVictoriaAfterBattleText:
	text "Ουάου, είσαι"
	line "καλός για την"
	cont "νίκη! Συνέχισε!"
	done

BeautySamanthaSeenText:
	text "Κάνε ότι καλύ-"
	line "τερο έχεις, αλλιώς"
	cont "θα σε νικήσω!"
	done

BeautySamanthaBeatenText:
	text "Όχι! Ω, MEOWTH,"
	line "Συγνώμη!"
	done

BeautySamanthaAfterBattleText:
	text "Έμαθα στο"
	line "MEOWTH κίνηση"
	cont "να κλέβει παντού…"
	done

GoldenrodGymGuideText:
	text "Γιο! ΝΙΚΗΤΗ"
	line "του αύριο!"

	para "Το GYM είναι"
	line "σπίτι κανονικών"
	cont "κινήσεων."

	para "Προτείνω να"
	line "βάζεις μαχητικού"
	cont "τύπου."
	done

GoldenrodGymGuideWinText:
	text "Νίκησες; Ωραία!"
	line "Είχα δουλειά θαυ-"
	cont "μάζοντας κοπέλες."
	done

GoldenrodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, GOLDENROD_CITY, 1
	warp_event  3, 17, GOLDENROD_CITY, 1

	def_coord_events
	coord_event  8,  5, SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING, WhitneyCriesScript

	def_bg_events
	bg_event  1, 15, BGEVENT_READ, GoldenrodGymStatue
	bg_event  4, 15, BGEVENT_READ, GoldenrodGymStatue

	def_object_events
	object_event  8,  3, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymWhitneyScript, -1
	object_event  9, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerLassCarrie, -1
	object_event  9,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLassBridget, -1
	object_event  0,  2, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyVictoria, -1
	object_event 19,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautySamantha, -1
	object_event  5, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodGymGuideScript, -1
