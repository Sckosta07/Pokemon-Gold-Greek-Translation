	object_const_def
	const RADIOTOWER3F_SUPER_NERD
	const RADIOTOWER3F_GYM_GUIDE
	const RADIOTOWER3F_COOLTRAINER_F
	const RADIOTOWER3F_ROCKET1
	const RADIOTOWER3F_ROCKET2
	const RADIOTOWER3F_ROCKET3
	const RADIOTOWER3F_SCIENTIST

RadioTower3F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RadioTower3FCardKeyShutterCallback

RadioTower3FCardKeyShutterCallback:
	checkevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	iftrue .Change
	endcallback

.Change:
	changeblock 14, 2, $2a ; open shutter
	changeblock 14, 4, $01 ; floor
	endcallback

RadioTower3FSuperNerdScript:
	jumptextfaceplayer RadioTower3FSuperNerdText

RadioTower3FGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .NoRockets
	writetext RadioTower3FGymGuideText_Rockets
	waitbutton
	closetext
	end

.NoRockets:
	writetext RadioTower3FGymGuideText
	waitbutton
	closetext
	end

RadioTower3FCooltrainerFScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SUNNY_DAY_FROM_RADIO_TOWER
	iftrue .GotSunnyDay
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .NoRockets
	checkevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	iftrue .UsedCardKey
	writetext RadioTower3FCooltrainerFPleaseSaveDirectorText
	waitbutton
	closetext
	end

.UsedCardKey:
	writetext RadioTower3FCooltrainerFIsDirectorSafeText
	waitbutton
	closetext
	end

.NoRockets:
	writetext RadioTower3FCooltrainerFYoureMyHeroText
	promptbutton
	verbosegiveitem TM_SUNNY_DAY
	iffalse .NoRoom
	writetext RadioTower3FCooltrainerFItsSunnyDayText
	waitbutton
	closetext
	setevent EVENT_GOT_SUNNY_DAY_FROM_RADIO_TOWER
	end

.GotSunnyDay:
	writetext RadioTower3FCooltrainerFYouWereMarvelousText
	waitbutton
.NoRoom:
	closetext
	end

TrainerGruntM7:
	trainer GRUNTM, GRUNTM_7, EVENT_BEAT_ROCKET_GRUNTM_7, GruntM7SeenText, GruntM7BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM7AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM8:
	trainer GRUNTM, GRUNTM_8, EVENT_BEAT_ROCKET_GRUNTM_8, GruntM8SeenText, GruntM8BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM8AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM9:
	trainer GRUNTM, GRUNTM_9, EVENT_BEAT_ROCKET_GRUNTM_9, GruntM9SeenText, GruntM9BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM9AfterBattleText
	waitbutton
	closetext
	end

TrainerScientistMarc:
	trainer SCIENTIST, MARC, EVENT_BEAT_SCIENTIST_MARC, ScientistMarcSeenText, ScientistMarcBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ScientistMarcAfterBattleText
	waitbutton
	closetext
	end

CardKeySlotScript::
	opentext
	writetext RadioTower3FCardKeySlotText
	waitbutton
	checkevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	iftrue .UsedCardKey
	checkitem CARD_KEY
	iftrue .HaveCardKey
.UsedCardKey:
	closetext
	end

.HaveCardKey:
	writetext InsertedTheCardKeyText
	waitbutton
	setevent EVENT_USED_THE_CARD_KEY_IN_THE_RADIO_TOWER
	playsound SFX_ENTER_DOOR
	changeblock 14, 2, $2a ; open shutter
	changeblock 14, 4, $01 ; floor
	refreshmap
	closetext
	waitsfx
	end

RadioTower3FPersonnelSign:
	jumptext RadioTower3FPersonnelSignText

RadioTower3FPokemonMusicSign:
	jumptext RadioTower3FPokemonMusicSignText

RadioTower3FSuperNerdText:
	text "Έχουμε εγγραφές"
	line "φωνών όλων"

	para "των #μον που"
	line "βρέθηκαν."

	para "Πρέπει να έχουμε"
	line "200 είδη."
	done

RadioTower3FGymGuideText_Rockets:
	text "Για εκπ/τες, #-"
	line "μον είναι καλοί"
	cont "συνεργάτες."

	para "Είναι τρομερό που"
	line "οι ΠΥΡΑΥΛΟΙ θέλουν"

	para "να ελέγξουν"
	line "όλα τα #μον."
	done

RadioTower3FGymGuideText:
	text "Τρέχουμε 24 ώρες"
	line "την μέρα ψυχα-"

	para "γωγικές"
	line "εκπομπές."

	para "Θα κάνω πολλά"
	line "για να τρέξω"
	cont "το πρόγραμμα!"
	done

RadioTower3FCooltrainerFPleaseSaveDirectorText:
	text "Ο αρχηγός των"
	line "ΠΥΡΑΥΛΩΝ"
	cont "κλείστηκε μέσα."

	para "Μα ο ΔΙΕΥΘΥΝΤΗΣ"
	line "το ανοίγει αυτό."

	para "Είναι πάνω στον"
	line "πέμπτο όροφο."

	para "Σώσε τον!"
	done

RadioTower3FCooltrainerFIsDirectorSafeText:
	text "Ο ΔΙΕΥΘΥΝΤΗΣ"
	line "είναι καλά;"
	done

RadioTower3FCooltrainerFYoureMyHeroText:
	text "Ευχαριστώ!"
	line "Είσαι ήρωας!"

	para "Πάρε αυτό ως"
	line "ευγνωμοσύνη."
	done

RadioTower3FCooltrainerFItsSunnyDayText:
	text "Έχει ΛΙΑΚΑΔΑ έξω."
	line "Δυναμώνει τα τύπου"
	cont "φωτιάς για"
	cont "λίγο."
	done

RadioTower3FCooltrainerFYouWereMarvelousText:
	text "Ήσουν απλώς"
	line "υπέροχος!"
	done

GruntM7SeenText:
	text "Μου δώσανε"
	line "ρητές εντολές!"

	para "Θα χτυπήσω αυτόν"
	line "που προκαλεί τους"
	cont "ΠΥΡΑΥΛΟΥΣ!"
	done

GruntM7BeatenText:
	text "Τι;!"
	done

GruntM7AfterBattleText:
	text "Απέτυχα στο"
	line "καθήκον μου…"

	para "Θα με διώξουν"
	line "γι' αυτό…"
	done

GruntM8SeenText:
	text "Είναι φοβερό να"
	line "διατάζεις #μον"
	cont "να ληστεύουν."
	done

GruntM8BeatenText:
	text "Μου κάνεις πλάκα!"
	done

GruntM8AfterBattleText:
	text "Νιώθω χάλια"
	line "όταν χάνω!"

	para "Να πάρει! Μισώ τα"
	line "άχρηστα #μον!"
	done

GruntM9SeenText:
	text "Πότε άνοιξαν τα"
	line "ρολά; Μήπως"

	para "έκανες εσύ"
	line "τίποτα τέτοιο;"
	done

GruntM9BeatenText:
	text "Με κατατρόπωσες!"
	done

GruntM9AfterBattleText:
	text "Τι;! Εσύ ήσουν"
	line "που τους πέρασες"
	cont "όλους ΥΠΟΓΕΙΩΣ;"

	para "Πως μπόρεσες;"
	done

ScientistMarcSeenText:
	text "Ένα άγνωστο παιδί"
	line "τριγυρνά εδώ;"

	para "Ποιός είσαι;"
	done

ScientistMarcBeatenText:
	text "Τσχ! Δεν σε"
	line "πήρα στα σοβαρά!"
	done

ScientistMarcAfterBattleText:
	text "Βγαχαχαχα…"

	para "Μεταδίδω δυνατό"
	line "σήμα όσο χρειάζο-"
	cont "μαι από εδώ."
	done

RadioTower3FCardKeySlotText:
	text "Είναι η θύρα της"
	line "ΚΑΡΤΑΣ ΚΛΕΙΔΙ."
	done

InsertedTheCardKeyText:
	text "<PLAYER> εβαλε"
	line "ΚΑΡΤΑ ΚΛΕΙΔΙ."
	done

RadioTower3FPersonnelSignText:
	text "3ος ΠΡΟΣΩΠΙΚΟ"
	done

RadioTower3FPokemonMusicSignText:
	text "ΜΟΥΣΙΚΗ ΠΟΚΕΜΟΝ"
	line "με τον DJ BEN"
	done

RadioTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_2F, 1
	warp_event  7,  0, RADIO_TOWER_4F, 2
	warp_event 17,  0, RADIO_TOWER_4F, 4

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower3FPersonnelSign
	bg_event  9,  0, BGEVENT_READ, RadioTower3FPokemonMusicSign
	bg_event 14,  2, BGEVENT_UP, CardKeySlotScript

	def_object_events
	object_event  7,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RadioTower3FSuperNerdScript, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	object_event  3,  4, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower3FGymGuideScript, -1
	object_event 11,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower3FCooltrainerFScript, -1
	object_event  5,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM7, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  6,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM8, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 16,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM9, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  9,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerScientistMarc, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
