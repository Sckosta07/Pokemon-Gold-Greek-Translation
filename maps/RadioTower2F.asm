	object_const_def
	const RADIOTOWER2F_SUPER_NERD
	const RADIOTOWER2F_TEACHER
	const RADIOTOWER2F_ROCKET1
	const RADIOTOWER2F_ROCKET2
	const RADIOTOWER2F_ROCKET3
	const RADIOTOWER2F_ROCKET_GIRL
	const RADIOTOWER2F_BLACK_BELT1
	const RADIOTOWER2F_BLACK_BELT2
	const RADIOTOWER2F_JIGGLYPUFF

RadioTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

RadioTower2FNoopScene: ; unreferenced
	end

RadioTower2FSuperNerdScript:
	jumptextfaceplayer RadioTower2FSuperNerdText

RadioTower2FTeacherScript:
	faceplayer
	opentext
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Rockets
	writetext RadioTower2FTeacherText
	waitbutton
	closetext
	end

.Rockets:
	writetext RadioTower2FTeacherText_Rockets
	waitbutton
	closetext
	end

RadioTowerJigglypuff:
	opentext
	writetext RadioTowerJigglypuffText
	cry JIGGLYPUFF
	waitbutton
	closetext
	end

RadioTower2FBlackBelt1Script:
	jumptextfaceplayer RadioTower2FBlackBelt1Text

RadioTower2FBlackBelt2Script:
	jumptextfaceplayer RadioTower2FBlackBelt2Text

TrainerGruntM4:
	trainer GRUNTM, GRUNTM_4, EVENT_BEAT_ROCKET_GRUNTM_4, GruntM4SeenText, GruntM4BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM4AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM5:
	trainer GRUNTM, GRUNTM_5, EVENT_BEAT_ROCKET_GRUNTM_5, GruntM5SeenText, GruntM5BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM5AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM6:
	trainer GRUNTM, GRUNTM_6, EVENT_BEAT_ROCKET_GRUNTM_6, GruntM6SeenText, GruntM6BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM6AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF2:
	trainer GRUNTF, GRUNTF_2, EVENT_BEAT_ROCKET_GRUNTF_2, GruntF2SeenText, GruntF2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF2AfterBattleText
	waitbutton
	closetext
	end

RadioTower2FSalesSign:
	jumptext RadioTower2FSalesSignText

RadioTower2FOaksPKMNTalkSign:
	jumptext RadioTower2FOaksPKMNTalkSignText

RadioTower2FPokemonRadioSign:
	jumptext RadioTower2FPokemonRadioSignText

RadioTower2FBookshelf:
	jumpstd MagazineBookshelfScript

RadioTower2FSuperNerdText:
	text "Ακούστε μας"
	line "παντού στο"
	cont "ράδιο! Όντως!"
	done

RadioTower2FTeacherText:
	text "Το νανούρισμα στο"
	line "ράδιο ξυπνάει"
	cont "τους υπναράδες."
	done

RadioTower2FTeacherText_Rockets:
	text "Γιατί να θέλουν"
	line "να πάρουν τον"
	cont "ΠΥΡΓΟ ΡΑΔΙΟ;"
	done

RadioTowerJigglypuffText:
	text "JIGGLYPUFF:"
	line "Τζιγκλι…"
	done

RadioTower2FBlackBelt1Text:
	text "Λυπάμαι. Μόνο"
	line "προσωπικό"
	cont "μπαίνει εδώ."

	para "Δεν ήταν"
	line "έτσι πριν."

	para "Κάτι τρέχει"
	line "με τον"
	cont "ΔΙΕΥΘΥΝΤΗ…"
	done

RadioTower2FBlackBelt2Text:
	text "Δείτε όπου"
	line "θέλετε τριγύρω."

	para "Ο ΔΙΕΥΘΥΝΤΗΣ"
	line "είναι ξανά εδώ,"
	cont "όπως και πριν."
	done

GruntM4SeenText:
	text "3 χρόνια πριν, οι"
	line "ΠΥΡΑΥΛΟΙ"
	cont "διαλύθηκαν"

	para "Μα κάνουμε την"
	line "επιστροφή εδώ!"
	done

GruntM4BeatenText:
	text "Γαχ! Μην"
	line "λες αστεία!"
	done

GruntM4AfterBattleText:
	text "Δεν θα μας"
	line "χαλάσεις τα σχέδια"
	cont "για την επιστροφή!"
	done

GruntM5SeenText:
	text "Εμείς οι ΠΥΡΑΥΛΟΙ,"
	line "εκμεταλευόμαστε"
	cont "#μον!"

	para "Λατρεύουμε το"
	line "κακό! Φοβήθηκες;"
	done

GruntM5BeatenText:
	text "Νομίζεις πως"
	line "είσαι ήρωας;"
	done

GruntM5AfterBattleText:
	text "Δεν είμαστε πάντα"
	line "κακοί. Απλά κά-"
	cont "νουμε ότι θέλουμε."
	done

GruntM6SeenText:
	text "Έι, Έι! Φύγε"
	line "από εδώ!"
	done

GruntM6BeatenText:
	text "Αργχ. Παραιτούμαι."
	done

GruntM6AfterBattleText:
	text "Οι ΑΡΧΗΓΟΙ"
	line "θα πάρουν όλο"
	cont "το μέρος."

	para "Έχουν μεγάλο"
	line "σχέδιο. Ποιό"
	cont "είναι άραγε;"
	done

GruntF2SeenText:
	text "Χαχαχα!"

	para "Τι βαρετό."
	line "Ήταν εύκολο να"

	para "καταλάβουμε"
	line "το μέρος!"

	para "Έλα, διασκέδασε"
	line "με τώρα!"
	done

GruntF2BeatenText:
	text "Π-ποιός είσαι;"
	done

GruntF2AfterBattleText:
	text "Με νίκησες, δεν"
	line "θα το ξεχάσω!"
	done

RadioTower2FSalesSignText:
	text "2ος ΠΩΛΗΣΕΙΣ"
	done

RadioTower2FOaksPKMNTalkSignText:
	text "ΟΜΙΛΙΑ"
	line "ΤΟΥ ΚΑΘ.ΟΑΚ!"

	para "Η Καλύτερη"
	line "Εκπομπή στον Αέρα!"
	done

RadioTower2FPokemonRadioSignText:
	text "Παντού, Πάντοτε"
	line "#μον Ράδιο"
	done

RadioTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_3F, 1
	warp_event 15,  0, RADIO_TOWER_1F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower2FSalesSign
	bg_event  5,  0, BGEVENT_READ, RadioTower2FOaksPKMNTalkSign
	bg_event  9,  1, BGEVENT_READ, RadioTower2FBookshelf
	bg_event 10,  1, BGEVENT_READ, RadioTower2FBookshelf
	bg_event 11,  1, BGEVENT_READ, RadioTower2FBookshelf
	bg_event 13,  0, BGEVENT_READ, RadioTower2FPokemonRadioSign

	def_object_events
	object_event  5,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower2FSuperNerdScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 13,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower2FTeacherScript, -1
	object_event  1,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM4, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  8,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM5, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM6, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 10,  5, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerGruntF2, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  0,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTower2FBlackBelt1Script, EVENT_RADIO_TOWER_BLACKBELT_BLOCKS_STAIRS
	object_event  1,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTower2FBlackBelt2Script, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	object_event 12,  1, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTowerJigglypuff, -1
