	object_const_def
	const CIANWOODGYM_CHUCK
	const CIANWOODGYM_BLACK_BELT1
	const CIANWOODGYM_BLACK_BELT2
	const CIANWOODGYM_BLACK_BELT3
	const CIANWOODGYM_BLACK_BELT4
	const CIANWOODGYM_BOULDER1
	const CIANWOODGYM_BOULDER2
	const CIANWOODGYM_BOULDER3
	const CIANWOODGYM_BOULDER4

CianwoodGym_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodGymChuckScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_CHUCK
	iftrue .FightDone
	writetext ChuckIntroText1
	waitbutton
	closetext
	turnobject CIANWOODGYM_CHUCK, RIGHT
	opentext
	writetext ChuckIntroText2
	waitbutton
	closetext
	applymovement CIANWOODGYM_BOULDER1, CianwoodGymMovement_ChuckChucksBoulder
	playsound SFX_STRENGTH
	earthquake 80
	disappear CIANWOODGYM_BOULDER1
	pause 30
	faceplayer
	opentext
	writetext ChuckIntroText3
	waitbutton
	closetext
	winlosstext ChuckLossText, 0
	loadtrainer CHUCK, CHUCK1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CHUCK
	opentext
	writetext GetStormBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_STORMBADGE
	readvar VAR_BADGES
	scall CianwoodGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM01_DYNAMICPUNCH
	iftrue .AlreadyGotTM
	setevent EVENT_BEAT_BLACKBELT_YOSHI
	setevent EVENT_BEAT_BLACKBELT_LAO
	setevent EVENT_BEAT_BLACKBELT_NOB
	setevent EVENT_BEAT_BLACKBELT_LUNG
	writetext ChuckExplainBadgeText
	promptbutton
	verbosegiveitem TM_DYNAMICPUNCH
	iffalse .BagFull
	setevent EVENT_GOT_TM01_DYNAMICPUNCH
	writetext ChuckExplainTMText
	waitbutton
	closetext
	end

.AlreadyGotTM:
	writetext ChuckAfterText
	waitbutton
.BagFull:
	closetext
	end

CianwoodGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

TrainerBlackbeltYoshi:
	trainer BLACKBELT_T, YOSHI, EVENT_BEAT_BLACKBELT_YOSHI, BlackbeltYoshiSeenText, BlackbeltYoshiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltYoshiAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltLao:
	trainer BLACKBELT_T, LAO, EVENT_BEAT_BLACKBELT_LAO, BlackbeltLaoSeenText, BlackbeltLaoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltLaoAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltNob:
	trainer BLACKBELT_T, NOB, EVENT_BEAT_BLACKBELT_NOB, BlackbeltNobSeenText, BlackbeltNobBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltNobAfterText
	waitbutton
	closetext
	end

TrainerBlackbeltLung:
	trainer BLACKBELT_T, LUNG, EVENT_BEAT_BLACKBELT_LUNG, BlackbeltLungSeenText, BlackbeltLungBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BlackbeltLungAfterText
	waitbutton
	closetext
	end

CianwoodGymBoulder:
	jumpstd StrengthBoulderScript

CianwoodGymStatue:
	checkflag ENGINE_STORMBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, CHUCK, CHUCK1
	jumpstd GymStatue2Script

CianwoodGymMovement_ChuckChucksBoulder:
	set_sliding
	big_step LEFT
	big_step UP
	fast_jump_step RIGHT
	remove_sliding
	step_end

ChuckIntroText1:
	text "ΓΑΧΑΧΑΧ!"

	para "Ώστε ήρθες"
	line "μέχρι εδώ!"

	para "Σου λέω,"
	line "είμαι δυνατός!"

	para "Τα #μον μου"
	line "σπάνε πέτρες"
	cont "και σπάνε πλάκες!"

	para "Δες αυτό!"
	done

ChuckIntroText2:
	text "CHUCK: Αργγχ!"
	line "…"

	para "Οοοαρργχ!"
	done

ChuckIntroText3:
	text "Ορίστε! Φοβήθηκες,"
	line "έτσι;"

	para "Τι;"
	line "Δεν είναι σχετικό"

	para "με τα #μον;"
	line "Είναι αλήθεια!"

	para "Έλα. Ας"
	line "κάνουμε μάχη!"
	done

ChuckLossText:
	text "Τι; Ε;"
	line "Έχασα;"

	para "Τι λες γι' αυτό!"
	line "Αξίζεις το"
	cont "ΘΥΕΛΛΟΕΜΒΛΗΜΑ!"
	done

GetStormBadgeText:
	text "<PLAYER> πήρε"
	line "ΘΥΕΛΛΟΕΜΒΛΗΜΑ."
	done

ChuckExplainBadgeText:
	text "Αυτό κάνει όλα"
	line "τα #μον πάνω"

	para "L70 να υπακούν,"
	line "και ανταλλαγμένα."

	para "Και αφήνει τα"
	line "#μον να ΠΕΤΑΝΕ"

	para "όταν δεν είσαι"
	line "σε μάχη."

	para "Ορίστε, πάρε"
	line "και αυτό!"
	done

ChuckExplainTMText:
	text "Είναι"
	line "ΔΥΝΑΜΟΓΡΟΘΙΑ."

	para "Δεν χτυπά"
	line "πάντα, μα όταν"

	para "το κάνει, προκαλεί"
	line "σύγχυση!"
	done

ChuckAfterText:
	text "ΓΑΧΑΧΑΧ! Απόλαυσα"
	line "την μάχη!"

	para "Μα η ήττα"
	line "είναι ήττα!"

	para "Από τώρα, θα"
	line "προπονούμαι 24"
	cont "ώρες την μέρα!"
	done

BlackbeltYoshiSeenText:
	text "Τα #μον & εγώ"
	line "είμαστε μαζί"
	cont "με καλή φιλία."

	para "Η φιλία μας δεν"
	line "θα σπάσει ποτέ!"
	done

BlackbeltYoshiBeatenText:
	text "Δεν είναι αλήθεια!"
	done

BlackbeltYoshiAfterText:
	text "Φαίνεται πως"
	line "έχεις δυνατή φιλία"
	cont "με τα #μον σου!"
	done

BlackbeltLaoSeenText:
	text "Εμείς δεν"
	line "φοβόμαστε τίποτα!"
	done

BlackbeltLaoBeatenText:
	text "Σοκαρίστηκα!"
	done

BlackbeltLaoAfterText:
	text "Μαχητικά #μον"
	line "φοβούνται τα"
	cont "ψυχικά…"
	done

BlackbeltNobSeenText:
	text "Άχρηστα τα λόγια."
	line "Άσε τις γροθιές"
	cont "να μιλήσουν!"
	done

BlackbeltNobBeatenText:
	text "…"
	done

BlackbeltNobAfterText:
	text "Έχασα! "
	line "Ξέμεινα από λόγια!"
	done

BlackbeltLungSeenText:
	text "Οι οργισμένες"
	line "γροθιές μου θα"
	cont "σε νικήσουν!"
	done

BlackbeltLungBeatenText:
	text "Με νίκησες!"
	done

BlackbeltLungAfterText:
	text "#μον έχασαν…"
	line "Η περιφάνια"
	cont "μου χάθηκε…"
	done

CianwoodGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CIANWOOD_CITY, 2
	warp_event  5, 17, CIANWOOD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CianwoodGymStatue
	bg_event  6, 15, BGEVENT_READ, CianwoodGymStatue

	def_object_events
	object_event  4,  1, SPRITE_CHUCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CianwoodGymChuckScript, -1
	object_event  2, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltYoshi, -1
	object_event  7, 12, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBlackbeltLao, -1
	object_event  3,  9, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltNob, -1
	object_event  5,  5, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerBlackbeltLung, -1
	object_event  5,  1, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  3,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  4,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
	object_event  5,  7, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodGymBoulder, -1
