	object_const_def
	const OLIVINEGYM_JASMINE
	const OLIVINEGYM_GYM_GUIDE

OlivineGym_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineGymJasmineScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_JASMINE
	iftrue .FightDone
	writetext Jasmine_SteelTypeIntro
	waitbutton
	closetext
	winlosstext Jasmine_BetterTrainer, 0
	loadtrainer JASMINE, JASMINE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_JASMINE
	opentext
	writetext Text_ReceivedMineralBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MINERALBADGE
	readvar VAR_BADGES
	scall OlivineGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM23_IRON_TAIL
	iftrue .GotIronTail
	writetext Jasmine_BadgeSpeech
	promptbutton
	verbosegiveitem TM_IRON_TAIL
	iffalse .NoRoomForIronTail
	setevent EVENT_GOT_TM23_IRON_TAIL
	writetext Jasmine_IronTailSpeech
	waitbutton
	closetext
	end

.GotIronTail:
	writetext Jasmine_GoodLuck
	waitbutton
.NoRoomForIronTail:
	closetext
	end

OlivineGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd GoldenrodRocketsScript

.RadioTowerRockets:
	jumpstd RadioTowerRocketsScript

OlivineGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_JASMINE
	iftrue .OlivineGymGuideWinScript
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iffalse .OlivineGymGuidePreScript
	opentext
	writetext OlivineGymGuideText
	waitbutton
	closetext
	end

.OlivineGymGuideWinScript:
	opentext
	writetext OlivineGymGuideWinText
	waitbutton
	closetext
	end

.OlivineGymGuidePreScript:
	opentext
	writetext OlivineGymGuidePreText
	waitbutton
	closetext
	end

OlivineGymStatue:
	checkflag ENGINE_MINERALBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, JASMINE, JASMINE1
	jumpstd GymStatue2Script

Jasmine_SteelTypeIntro:
	text "…Ευχαριστώ για"
	line "τη βοήθεια"
	cont "στο ΦΑΡΟ…"

	para "Μα αυτό"
	line "διαφέρει. Επί-"

	para "τρεψε μου να"
	line "συστηθώ."

	para "Είμαι η JASMINE,"
	line "ΗΓΕΤΗΣ GYM. Βάζω"
	cont "τύπου-ατσάλι."

	para "…Ξέρεις για τα"
	line "τύπου-ατσάλι;"

	para "Είναι τύπος που"
	line "έχει ανακαλυφθεί"
	cont "πρόσφατα."

	para "…Ε… Να ξεκινήσω;"
	done

Jasmine_BetterTrainer:
	text "…Είσαι καλύτερος"
	line "εκπ/της από εμένα,"

	para "σε ικανότητα"
	line "και καλοσύνη."

	para "Σύμφωνα με τους"
	line "κανόνες ΠΡΩΤ/ΤΟΣ,"

	para "σου προσφέρω"
	line "αυτό το ΕΜΒΛΗΜΑ."
	done

Text_ReceivedMineralBadge:
	text "<PLAYER> πήρε το"
	line "ΟΡΥΚΤΟΕΜΒΛΗΜΑ."
	done

Jasmine_BadgeSpeech:
	text "Αυτό αυξάνει"
	line "την ΑΜΥΝΑ των"
	cont "#μον."

	para "…Ε… Πάρε"
	line "και αυτό…"
	done

Text_ReceivedTM09: ; unreferenced
	text "<PLAYER> πήρε"
	line "το TM09."
	done

Jasmine_IronTailSpeech:
	text "…Βάλτο αυτό το"
	line "TM για να μάθει"
	cont "ΣΚΛΗΡΗ ΟΥΡΑ."
	done

Jasmine_GoodLuck:
	text "Ε… Δεν ξέρω"
	line "πως να το πω,"
	cont "μα καλή τύχη…"
	done

OlivineGymGuideText:
	text "Η JASMINE βάζει"
	line "νεο τύπο γνωστό"
	cont "ως ατσάλι."

	para "Δεν ξέρω"
	line "πολλά γι' αυτό."
	done

OlivineGymGuideWinText:
	text "Αυτό ήταν απίθανο."

	para "Τύπος-ατσαλι,"
	line "ε;"

	para "Ήταν δύσκολος"
	line "καυγάς με"
	cont "άγνωστο στοιχείο;"
	done

OlivineGymGuidePreText:
	text "Η JASMINE, η GYM"
	line "ΗΓΕΤΗΣ, είναι"
	cont "στο ΦΑΡΟ."

	para "Φροντίζει ένα"
	line "άρρωστο #μον."

	para "Ο δυνατός εκπ/της"
	line "πρέπει να είναι"
	cont "συμπονετικός."
	done

OlivineGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, OLIVINE_CITY, 2
	warp_event  5, 15, OLIVINE_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, OlivineGymStatue
	bg_event  6, 13, BGEVENT_READ, OlivineGymStatue

	def_object_events
	object_event  5,  3, SPRITE_JASMINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymJasmineScript, EVENT_OLIVINE_GYM_JASMINE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineGymGuideScript, -1
