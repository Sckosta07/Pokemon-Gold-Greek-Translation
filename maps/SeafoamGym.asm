	object_const_def
	const SEAFOAMGYM_BLAINE
	const SEAFOAMGYM_GYM_GUIDE

SeafoamGym_MapScripts:
	def_scene_scripts
	scene_script SeafoamGymNoopScene ; unusable

	def_callbacks

SeafoamGymNoopScene:
	end

SeafoamGymBlaineScript:
	faceplayer
	opentext
	checkflag ENGINE_VOLCANOBADGE
	iftrue .FightDone
	writetext BlaineIntroText
	waitbutton
	closetext
	winlosstext BlaineWinLossText, 0
	loadtrainer BLAINE, BLAINE1
	startbattle
	iftrue .ReturnAfterBattle
	appear SEAFOAMGYM_GYM_GUIDE
.ReturnAfterBattle:
	reloadmapafterbattle
	setevent EVENT_BEAT_BLAINE
	opentext
	writetext ReceivedVolcanoBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_VOLCANOBADGE
	writetext BlaineAfterBattleText
	waitbutton
	closetext
	end

.FightDone:
	writetext BlaineFightDoneText
	waitbutton
	closetext
	end

SeafoamGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	iftrue .TalkedToSeafoamGymGuideScript
	writetext SeafoamGymGuideWinText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_SEAFOAM_GYM_GUIDE_ONCE
	end

.TalkedToSeafoamGymGuideScript:
	writetext SeafoamGymGuideWinText2
	waitbutton
	closetext
	end

BlaineIntroText:
	text "BLAINE: Γαααχ!"

	para "Το GYM στο CINNA-"
	line "BAR κάηκε."

	para "Τα φλόγινα"
	line "#μον και εγώ"

	para "είμαστε άστεγοι"
	line "λόγω ηφαιστείου."

	para "Γαααχ!"

	para "Μα επέστρεψα"
	line "ως GYM"

	para "ΗΓΕΤΗΣ εδώ"
	line "στη σπηλιά."

	para "Αν με νικήσεις,"
	line "θα σου δώσω"
	cont "ένα ΕΜΒΛΗΜΑ."

	para "Χα! Καλύτερα"
	line "πάρε ΘΕΡ. ΚΑΨΙΜΟ!"
	done

BlaineWinLossText:
	text "BLAINE: Υπέροχα."
	line "Κάηκα…"

	para "Κέρδισες το"
	line "ΦΛΟΓΟΕΜΒΛΗΜΑ!"
	done

ReceivedVolcanoBadgeText:
	text "<PLAYER> πήρε"
	line "ΦΛΟΓΟΕΜΒΛΗΜΑ."
	done

BlaineAfterBattleText:
	text "BLAINE: Έχασα"
	line "τώρα, μα θα"

	para "νικήσω την"
	line "επόμενη φορά."

	para "Όταν ξανά φτιάξω"
	line "CINNABAR GYM,"

	para "θα κάνουμε"
	line "ρεβάνς."
	done

BlaineFightDoneText:
	text "BLAINE: Τα φλόγινα"
	line "#μον θα γίνουν"

	para "πιο δυνατά."
	line "Απλά κοίτα!"
	done

SeafoamGymGuideWinText:
	text "Γιο!"

	para "… Ε; Τελείωσε"
	line "κιόλας;"

	para "Λυπάμαι, φίλε!"

	para "Το CINNABAR GYM"
	line "χάθηκε, έτσι δεν"

	para "ήξερα που να"
	line "σε βρω."

	para "Μα, είσαι πολύ"
	line "δυνατός ακόμα"

	para "και χωρίς βοήθεια."
	line "Σίγουρη νίκη!"
	done

SeafoamGymGuideWinText2:
	text "Το ΠΟΚΕMON GYM"
	line "μπορεί να είναι"

	para "οπουδήποτε όπως"
	line "ο ΗΓΕΤΗΣ GYM."

	para "Δεν χρειάζεται"
	line "κτήριο."
	done

SeafoamGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, ROUTE_20, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_BLAINE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, SeafoamGymBlaineScript, -1
	object_event  6,  5, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SeafoamGymGuideScript, EVENT_SEAFOAM_GYM_GYM_GUIDE
