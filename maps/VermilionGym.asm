	object_const_def
	const VERMILIONGYM_SURGE
	const VERMILIONGYM_GENTLEMAN
	const VERMILIONGYM_ROCKER
	const VERMILIONGYM_SUPER_NERD
	const VERMILIONGYM_GYM_GUIDE

VermilionGym_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionGymSurgeScript:
	faceplayer
	opentext
	checkflag ENGINE_THUNDERBADGE
	iftrue .FightDone
	writetext LtSurgeIntroText
	waitbutton
	closetext
	winlosstext LtSurgeWinLossText, 0
	loadtrainer LT_SURGE, LT_SURGE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_GENTLEMAN_GREGORY
	setevent EVENT_BEAT_GUITARIST_VINCENT
	setevent EVENT_BEAT_JUGGLER_HORTON
	opentext
	writetext ReceivedThunderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_THUNDERBADGE
	writetext LtSurgeThunderBadgeText
	waitbutton
	closetext
	end

.FightDone:
	writetext LtSurgeFightDoneText
	waitbutton
	closetext
	end

TrainerGentlemanGregory:
	trainer GENTLEMAN, GREGORY, EVENT_BEAT_GENTLEMAN_GREGORY, GentlemanGregorySeenText, GentlemanGregoryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanGregoryAfterBattleText
	waitbutton
	closetext
	end

TrainerGuitaristVincent:
	trainer GUITARIST, VINCENT, EVENT_BEAT_GUITARIST_VINCENT, GuitaristVincentSeenText, GuitaristVincentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GuitaristVincentAfterBattleText
	waitbutton
	closetext
	end

TrainerJugglerHorton:
	trainer JUGGLER, HORTON, EVENT_BEAT_JUGGLER_HORTON, JugglerHortonSeenText, JugglerHortonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerHortonAfterBattleText
	waitbutton
	closetext
	end

VermilionGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LTSURGE
	iftrue .VermilionGymGuideWinScript
	writetext VermilionGymGuideText
	waitbutton
	closetext
	end

.VermilionGymGuideWinScript:
	writetext VermilionGymGuideWinText
	waitbutton
	closetext
	end

VermilionGymTrashCan:
	jumptext VermilionGymTrashCanText

VermilionGymStatue:
	checkflag ENGINE_THUNDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, LT_SURGE, LT_SURGE1
	jumpstd GymStatue2Script

LtSurgeIntroText:
	text "ΣΟΚ: Ε,"
	line "μικρέ!"

	para "Πρέπει να στο"
	line "δώσω. Δεν είναι"

	para "πολύ έξυπνο να"
	line "με προκαλέσεις,"
	cont "μα θέλει θάρρος!"

	para "Όταν πρόκειται για"
	line "ηλεκτρικά #μον,"
	cont "είμαι ο καλύτερος!"

	para "Δεν έχασα ποτέ"
	line "στο πεδίο μάχης."

	para "Θα σε σοκάρω"
	line "όπως έκανα"
	cont "στον πόλεμο!"
	done

LtSurgeWinLossText:
	text "ΣΟΚ: Αρρργκχ!"
	line "Είσαι δυνατός!"

	para "OK, μικρέ. Πάρε το"
	line "ΗΛΕΚΤΡΟΕΜΒΛΗΜΑ!"
	done

ReceivedThunderBadgeText:
	text "<PLAYER> πήρε"
	line "ΗΛΕΚΤΡΟΕΜΒΛΗΜΑ."
	done

LtSurgeThunderBadgeText:
	text "ΣΟΚ: Αυτό"
	line "αυξάνει ταχύτητα"
	cont "των #μον σου."

	para "Θεώρησε το από-"
	line "δειξη ότι με"

	para "νίκησες. Φόρα το"
	line "περήφανα, ακούς;"
	done

LtSurgeFightDoneText:
	text "ΣΟΚ: Έι, μικρέ!"
	line "Ακόμα προχωράς"
	cont "αργά;"

	para "Τα #μον μου"
	line "& εγώ το έχουμε!"
	done

GentlemanGregorySeenText:
	text "Ήρθες για να νι-"
	line "κήσεις τον ΛΟΧΙΑ;"

	para "Όχι αν τον"
	line "βοηθήσω!"
	done

GentlemanGregoryBeatenText:
	text "Λυπάμαι απέτυχα"
	line "ΛΟΧΙΑ ΣΟΚ,"
	cont "κύριε!"
	done

GentlemanGregoryAfterBattleText:
	text "Όταν ήμουν ακόμη"
	line "στο στρατό, ο"

	para "ΛΟΧΙΑΣ ΣΟΚ"
	line "με έσωσε."
	done

GuitaristVincentSeenText:
	text "Ο ΛΟΧΙΑΣ ΣΟΚ"
	line "είδε το ταλέντο"

	para "μου στα ηλεκτρικά"
	line "#μον."

	para "Πιστεύεις ότι"
	line "με νικάς;"
	done

GuitaristVincentBeatenText:
	text "Ωωχ, το σοκ!"
	done

GuitaristVincentAfterBattleText:
	text "Αν οι παγίδες του"
	line "GYM έπιαναν, θα"

	para "την είχες"
	line "πατήσει…"
	done

JugglerHortonSeenText:
	text "Θα σε νικήσω!"
	line "Ετοιμάσου να"
	cont "σοκαριστείς!"
	done

JugglerHortonBeatenText:
	text "Γαααααχ!"
	line "Υπέρ-νικήθηκα…"
	done

JugglerHortonAfterBattleText:
	text "Μην νιώσεις"
	line "άνετα επειδή"

	para "με νίκησες… Ο ΛΟ-"
	line "ΧΙΑΣ έχει δύναμη."
	done

VermilionGymGuideText:
	text "Γιο! ΝΙΚΗΤΗ"
	line "του αύριο!"

	para "Ξέμεινες από"
	line "τύχη τώρα."

	para "Ο ΛΟΧΙΑΣ προ-"
	line "σέχει πολύ. Έβαλε"

	para "παγίδες σε όλο"
	line "το GYM."

	para "Μα--χε-χεχ--οι"
	line "παγίδες δεν"
	cont "λειτουργούν τώρα."

	para "Δεν έχεις πρό-"
	line "βλημα να πας"
	cont "στον ΛΟΧΙΑ ΣΟΚ."
	done

VermilionGymGuideWinText:
	text "Φιου! Αυτή ήταν"
	line "ηλεκτρισμένη μάχη!"

	para "Σίγουρα με"
	line "έκανε νευρικό."
	done

VermilionGymTrashCanText:
	text "Μπα! Τίποτα εδώ,"
	line "μόνο σκουπίδια."
	done

VermilionGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VERMILION_CITY, 7
	warp_event  5, 17, VERMILION_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  1,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  3,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  5,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  7,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  9,  7, BGEVENT_READ, VermilionGymTrashCan
	bg_event  1,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  3,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  5,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  7,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  9,  9, BGEVENT_READ, VermilionGymTrashCan
	bg_event  1, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  3, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  5, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  7, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  9, 11, BGEVENT_READ, VermilionGymTrashCan
	bg_event  3, 15, BGEVENT_READ, VermilionGymStatue
	bg_event  6, 15, BGEVENT_READ, VermilionGymStatue

	def_object_events
	object_event  5,  2, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionGymSurgeScript, -1
	object_event  8,  8, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerGentlemanGregory, -1
	object_event  4,  7, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGuitaristVincent, -1
	object_event  0, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerJugglerHorton, -1
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, VermilionGymGuideScript, -1
