	object_const_def
	const CERULEANGYM_ROCKET
	const CERULEANGYM_MISTY
	const CERULEANGYM_SWIMMER_GIRL1
	const CERULEANGYM_SWIMMER_GIRL2
	const CERULEANGYM_SWIMMER_GUY
	const CERULEANGYM_GYM_GUIDE

CeruleanGym_MapScripts:
	def_scene_scripts
	scene_script CeruleanGymNoopScene,         SCENE_CERULEANGYM_NOOP
	scene_script CeruleanGymGruntRunsOutScene, SCENE_CERULEANGYM_GRUNT_RUNS_OUT

	def_callbacks

CeruleanGymNoopScene:
	end

CeruleanGymGruntRunsOutScene:
	sdefer CeruleanGymGruntRunsOutScript
	end

CeruleanGymGruntRunsOutScript:
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntRunsDownMovement
	playsound SFX_TACKLE
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntRunsIntoYouMovement
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext CeruleanGymGruntIntroText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, CERULEANGYM_ROCKET, 15
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntBacksAwayMovement
	opentext
	writetext CeruleanGymGruntBigMistakeText
	waitbutton
	closetext
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntMovesCloseMovement
	opentext
	writetext CeruleanGymGruntByeText
	waitbutton
	closetext
	applymovement CERULEANGYM_ROCKET, CeruleanGymGruntRunsOutMovement
	playsound SFX_EXIT_BUILDING
	disappear CERULEANGYM_ROCKET
	setevent EVENT_MET_ROCKET_GRUNT_AT_CERULEAN_GYM
	clearevent EVENT_ROUTE_24_ROCKET
	clearevent EVENT_ROUTE_25_MISTY_BOYFRIEND
	setscene SCENE_CERULEANGYM_NOOP
	setmapscene ROUTE_25, SCENE_ROUTE25_MISTYS_DATE
	setmapscene POWER_PLANT, SCENE_POWERPLANT_NOOP
	waitsfx
	special RestartMapMusic
	pause 15
	turnobject PLAYER, DOWN
	pause 15
	end

CeruleanGymMistyScript:
	faceplayer
	opentext
	checkflag ENGINE_CASCADEBADGE
	iftrue .FightDone
	writetext MistyIntroText
	waitbutton
	closetext
	winlosstext MistyWinLossText, 0
	loadtrainer MISTY, MISTY1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_SWIMMERF_DIANA
	setevent EVENT_BEAT_SWIMMERF_BRIANA
	setevent EVENT_BEAT_SWIMMERM_PARKER
	opentext
	writetext ReceivedCascadeBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_CASCADEBADGE
.FightDone:
	writetext MistyFightDoneText
	waitbutton
	closetext
	end

TrainerSwimmerfDiana:
	trainer SWIMMERF, DIANA, EVENT_BEAT_SWIMMERF_DIANA, SwimmerfDianaSeenText, SwimmerfDianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfDianaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfBriana:
	trainer SWIMMERF, BRIANA, EVENT_BEAT_SWIMMERF_BRIANA, SwimmerfBrianaSeenText, SwimmerfBrianaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfBrianaAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermParker:
	trainer SWIMMERM, PARKER, EVENT_BEAT_SWIMMERM_PARKER, SwimmermParkerSeenText, SwimmermParkerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermParkerAfterBattleText
	waitbutton
	closetext
	end

CeruleanGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_MISTY
	iftrue .CeruleanGymGuideWinScript
	writetext CeruleanGymGuideText
	waitbutton
	closetext
	end

.CeruleanGymGuideWinScript:
	writetext CeruleanGymGuideWinText
	waitbutton
	closetext
	end

CeruleanGymHiddenMachinePart:
	hiddenitem MACHINE_PART, EVENT_FOUND_MACHINE_PART_IN_CERULEAN_GYM

CeruleanGymStatue1:
	checkevent EVENT_TRAINERS_IN_CERULEAN_GYM
	iffalse CeruleanGymStatue
	opentext
	writetext CeruleanGymNote1Text
	waitbutton
	closetext
	end

CeruleanGymStatue2:
	checkevent EVENT_TRAINERS_IN_CERULEAN_GYM
	iffalse CeruleanGymStatue
	opentext
	writetext CeruleanGymNote2Text
	waitbutton
	closetext
	end

CeruleanGymStatue:
	checkflag ENGINE_CASCADEBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, MISTY, MISTY1
	jumpstd GymStatue2Script

CeruleanGymGruntRunsDownMovement:
	big_step DOWN
	big_step DOWN
	big_step DOWN
	big_step DOWN
	step_end

CeruleanGymGruntRunsOutMovement:
	big_step RIGHT
	big_step DOWN
	step_end

CeruleanGymGruntRunsIntoYouMovement:
	fix_facing
	set_sliding
	jump_step UP
	remove_sliding
	remove_fixed_facing
	step_sleep 8
	step_sleep 8
	step DOWN
	step DOWN
	step_end

CeruleanGymGruntMovesCloseMovement:
	big_step DOWN
	step_end

CeruleanGymGruntBacksAwayMovement:
	fix_facing
	slow_step UP
	remove_fixed_facing
	step_end

CeruleanGymGruntIntroText:
	text "Ουπς! Συγνώμη!"
	line "Δεν χτύπησες,"
	cont "εντάξει;"

	para "Έχω δουλειά."
	line "Καθόλου χρόνος για"
	cont "κουβέντες. Δεν"
	cont "θα είναι καλό για"
	cont "εμένα να με δουν."
	done

CeruleanGymGruntBigMistakeText:
	text "Ωχ όχι! Με είδες"
	line "ήδη! Έκανα μέγα"
	cont "λάθος!"
	done

CeruleanGymGruntByeText:
	text "Έι, εσύ! Ξέχνα ότι"
	line "με είδες, εντάξει;"

	para "Δεν είδες, άκουσες"
	line "και ξέρεις τίποτα"

	para "εντάξει;"
	line "Αντίο! Τίποτα!"

	para "Αντίο & τα λέμε!"
	done

CeruleanGymNote1Text:
	text "Λυπάμαι, θα είμαι"
	line "έξω για λίγο."
	cont "MISTY, ΗΓΕΤΗΣ GYM"
	done

CeruleanGymNote2Text:
	text "Αφού η MISTY λεί-"
	line "πει άρα και εμείς."
	cont "ΕΚΠ/ΤΕΣ GYM"
	done

MistyIntroText:
	text "MISTY: Σε πε-"
	line "ρίμενα, μικρό"
	cont "ζιζάνιο!"

	para "Έχεις πολλά"
	line "ΕΜΒΛΗΜΑΤΑ JOHTO,"

	para "μα καλύτερα να"
	line "μην νομίζεις ότι"
	cont "με νικάς εύκολα."

	para "Τα #μον νερού"
	line "μου έχουν δύναμη!"
	done

MistyWinLossText:
	text "MISTY: Είσαι"
	line "πολύ καλός…"

	para "Παραδέχομαι πως"
	line "είσαι έμπειρος…"

	para "Ορίστε. Είναι το"
	line "ΝΕΡΟΕΜΒΛΗΜΑ."
	done

ReceivedCascadeBadgeText:
	text "<PLAYER> πήρε"
	line "ΝΕΡΟΕΜΒΛΗΜΑ."
	done

MistyFightDoneText:
	text "MISTY: Υπάρχουν"
	line "πολλοί δυνατοί "
	cont "εκπ/τες στο JOHTO;"
	cont "Σαν εσένα εννοώ."

	para "Θα ταξιδέψω"
	line "μια μέρα, ώστε"

	para "να κάνω μάχες με"
	line "ικανούς εκπ/τες."
	done

SwimmerfDianaSeenText:
	text "Συγνώμη που"
	line "είχαμε φύγει."
	cont "Ας το κάνουμε!"
	done

SwimmerfDianaBeatenText:
	text "Τα παρατάω!"
	line "Είσαι ο νικητής!"
	done

SwimmerfDianaAfterBattleText:
	text "Θα κολυμπάω"
	line "ήσυχα τώρα."
	done

SwimmerfBrianaSeenText:
	text "Μην αφήσεις την"
	line "κολύμβηση μου"
	cont "να σε ταράξει."
	done

SwimmerfBrianaBeatenText:
	text "Ουχ, με νίκησες"
	line "με ηρεμία…"
	done

SwimmerfBrianaAfterBattleText:
	text "Μην περηφανεύεσαι"
	line "που με νίκησες."

	para "Η MISTY θα σε"
	line "νικήσει αν"
	cont "ησυχάσεις."
	done

SwimmermParkerSeenText:
	text "Γλαβ…"

	para "Είμαι πρώτος!"
	line "Έλα για μια μάχη!"
	done

SwimmermParkerBeatenText:
	text "Αυτό δεν γίνεται…"
	done

SwimmermParkerAfterBattleText:
	text "Η MISTY είναι"
	line "πιο δυνατή από"
	cont "πριν 3 χρόνια."

	para "Μην αφήνεις την"
	line "άμυνα σου, αλλιώς"
	cont "θα σε τελειώσει!"
	done

CeruleanGymGuideText:
	text "Γιο! ΝΙΚΗΤΗ"
	line "του αύριο!"

	para "Αφού η MISTY"
	line "έλειπε, πήγα για"

	para "μερικές πλάκες."
	line "Χε-χε-χε."
	done

CeruleanGymGuideWinText:
	text "Χου, μου έδειξες"
	line "αν είσαι δυνατός."

	para "Όπως πάντα,"
	line "ήταν μια"
	cont "ωραία μάχη!"
	done

CeruleanGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 15, CERULEAN_CITY, 5
	warp_event  5, 15, CERULEAN_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  3,  8, BGEVENT_ITEM, CeruleanGymHiddenMachinePart
	bg_event  2, 13, BGEVENT_READ, CeruleanGymStatue1
	bg_event  6, 13, BGEVENT_READ, CeruleanGymStatue2

	def_object_events
	object_event  4, 10, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CERULEAN_GYM_ROCKET
	object_event  5,  3, SPRITE_MISTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeruleanGymMistyScript, EVENT_TRAINERS_IN_CERULEAN_GYM
	object_event  4,  6, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfDiana, EVENT_TRAINERS_IN_CERULEAN_GYM
	object_event  1,  9, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerSwimmerfBriana, EVENT_TRAINERS_IN_CERULEAN_GYM
	object_event  8,  9, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermParker, EVENT_TRAINERS_IN_CERULEAN_GYM
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanGymGuideScript, EVENT_TRAINERS_IN_CERULEAN_GYM
