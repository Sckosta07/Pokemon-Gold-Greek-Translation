	object_const_def
	const RADIOTOWER5F_DIRECTOR
	const RADIOTOWER5F_ROCKET
	const RADIOTOWER5F_ROCKET_GIRL
	const RADIOTOWER5F_ROCKER

RadioTower5F_MapScripts:
	def_scene_scripts
	scene_script RadioTower5FNoop1Scene, SCENE_RADIOTOWER5F_FAKE_DIRECTOR
	scene_script RadioTower5FNoop2Scene, SCENE_RADIOTOWER5F_ROCKET_BOSS
	scene_script RadioTower5FNoop3Scene, SCENE_RADIOTOWER5F_NOOP

	def_callbacks

RadioTower5FNoop1Scene:
	end

RadioTower5FNoop2Scene:
	end

RadioTower5FNoop3Scene:
	end

FakeDirectorScript:
	turnobject RADIOTOWER5F_DIRECTOR, UP
	showemote EMOTE_SHOCK, RADIOTOWER5F_DIRECTOR, 15
	opentext
	writetext FakeDirectorTextBefore1
	waitbutton
	closetext
	applymovement RADIOTOWER5F_DIRECTOR, FakeDirectorMovement
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext FakeDirectorTextBefore2
	waitbutton
	closetext
	winlosstext FakeDirectorWinText, 0
	setlasttalked RADIOTOWER5F_DIRECTOR
	loadtrainer EXECUTIVEM, EXECUTIVEM_3
	startbattle
	reloadmapafterbattle
	opentext
	writetext FakeDirectorTextAfter
	promptbutton
	verbosegiveitem BASEMENT_KEY
	closetext
	setscene SCENE_RADIOTOWER5F_ROCKET_BOSS
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_3
	end

Director:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .TrueDirector
	writetext FakeDirectorTextAfter
	waitbutton
	closetext
	end

.TrueDirector:
	writetext RadioTower5FDirectorText
	waitbutton
	closetext
	end

TrainerExecutivef1:
	trainer EXECUTIVEF, EXECUTIVEF_1, EVENT_BEAT_ROCKET_EXECUTIVEF_1, Executivef1SeenText, Executivef1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Executivef1AfterBattleText
	waitbutton
	closetext
	end

RadioTower5FRocketBossScript:
	applymovement PLAYER, RadioTower5FPlayerTwoStepsLeftMovement
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject RADIOTOWER5F_ROCKET, RIGHT
	opentext
	writetext RadioTower5FRocketBossBeforeText
	waitbutton
	closetext
	winlosstext RadioTower5FRocketBossWinText, 0
	setlasttalked RADIOTOWER5F_ROCKET
	loadtrainer EXECUTIVEM, EXECUTIVEM_1
	startbattle
	reloadmapafterbattle
	opentext
	writetext RadioTower5FRocketBossAfterText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear RADIOTOWER5F_ROCKET
	disappear RADIOTOWER5F_ROCKET_GIRL
	pause 15
	special FadeInFromBlack
	setevent EVENT_BEAT_ROCKET_EXECUTIVEM_1
	setevent EVENT_CLEARED_RADIO_TOWER
	clearflag ENGINE_ROCKETS_IN_RADIO_TOWER
	setevent EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	setevent EVENT_GOLDENROD_CITY_ROCKET_TAKEOVER
	setevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	clearevent EVENT_MAHOGANY_MART_OWNERS
	clearflag ENGINE_ROCKETS_IN_MAHOGANY
	clearevent EVENT_GOLDENROD_CITY_CIVILIANS
	clearevent EVENT_RADIO_TOWER_CIVILIANS_AFTER
	setevent EVENT_BLACKTHORN_CITY_SUPER_NERD_BLOCKS_GYM
	clearevent EVENT_BLACKTHORN_CITY_SUPER_NERD_DOES_NOT_BLOCK_GYM
	special PlayMapMusic
	disappear RADIOTOWER5F_DIRECTOR
	moveobject RADIOTOWER5F_DIRECTOR, 12, 0
	appear RADIOTOWER5F_DIRECTOR
	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksIn
	turnobject PLAYER, RIGHT
	opentext
	writetext RadioTower5FDirectorThankYouText
	promptbutton
	checkver
	iftrue .SilverWing
	verbosegiveitem RAINBOW_WING
	writetext RadioTower5FDirectorDescribeRainbowWingText
	waitbutton
	closetext
	setscene SCENE_RADIOTOWER5F_NOOP
	setevent EVENT_GOT_RAINBOW_WING
	setevent EVENT_TEAM_ROCKET_DISBANDED
	sjump .GotWing

.SilverWing:
	verbosegiveitem SILVER_WING
	writetext RadioTower5FDirectorDescribeSilverWingText
	waitbutton
	closetext
	setscene SCENE_RADIOTOWER5F_NOOP
	setevent EVENT_GOT_SILVER_WING
.GotWing:
	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksOut
	playsound SFX_EXIT_BUILDING
	disappear RADIOTOWER5F_DIRECTOR
	end

Ben:
	jumptextfaceplayer BenText

RadioTower5FDirectorsOfficeSign:
	jumptext RadioTower5FDirectorsOfficeSignText

RadioTower5FStudio1Sign:
	jumptext RadioTower5FStudio1SignText

RadioTower5FBookshelf:
	jumpstd MagazineBookshelfScript

FakeDirectorMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

RadioTower5FDirectorWalksIn:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	step_end

RadioTower5FDirectorWalksOut:
	step RIGHT
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

RadioTower5FPlayerTwoStepsLeftMovement:
	step LEFT
	step LEFT
	step_end

FakeDirectorTextBefore1:
	text "Ε-εσύ! Ήρθες"
	line "να με σώσεις;"
	done

FakeDirectorTextBefore2:
	text "Αυτό θα"
	line "περίμενες;"

	para "Λάθος!"
	line "Είμαι απατεώνας!"

	para "Προσποιούμαι"
	line "τον αληθινό για"

	para "να ετοιμάσω την"
	line "καταληψη μας."

	para "Θέλεις να ξέρεις"
	line "που είναι κρυμμέ-"
	cont "νος ο αληθινός;"

	para "Σίγουρα, θα"
	line "σου πω. Μα μόνο"
	cont "αν με νικήσεις!"
	done

FakeDirectorWinText:
	text "OK, OK. Θα"
	line "πω που είναι."
	done

FakeDirectorTextAfter:
	text "Κρύψαμε τον"
	line "ΔΙΕΥΘΥΝΤΗ στη"

	para "ΥΠΟΓΕΙΑ"
	line "ΑΠΟΘΗΚΗ."

	para "Είναι στο βάθος"
	line "στο ΥΠΟΓΕΙΟ"
	cont "ΠΕΡΑΣΜΑ."

	para "Μα δεν θα"
	line "πας μακριά."
	done

Executivef1SeenText:
	text "Γεια, μικρέ."
	line "Με θυμάσαι από"

	para "την ΚΡΥΨΩΝΑ στην"
	line "ΠΟΛΗ MAHOGANΥ;"

	para "Έχασα τότε, μα"
	line "δεν θα χάσω τώρα."
	done

Executivef1BeatenText:
	text "Αυτό δεν"
	line "γίνεται!"

	para "Πάλεψα σκληρά,"
	line "μα έχασα πάλι…"
	done

Executivef1AfterBattleText:
	text "<PLAYER>, έτσι;"

	para "Τα αλητάκια δεν"
	line "εκτιμούν το"

	para "μεγαλείο των"
	line "ΠΥΡΑΥΛΩΝ."

	para "Πολύ κρίμα."
	line "Θαυμάζω την"
	cont "δύναμη σου."
	done

RadioTower5FRocketBossBeforeText:
	text "Ω; Τα κατάφερες"
	line "μέχρι εδώ;"

	para "Πρέπει να"
	line "είσαι καλός."

	para "Κάνουμε κατά-"
	line "ληψη στο ΣΤΑΘΜΟ"

	para "και να κάνουμε"
	line "ανακοίνωση της"
	cont "επιστροφής μας."

	para "Αυτό θα φέρει το"
	line "αφεντικό GIOVANNI"

	para "πίσω από την"
	line "σόλο προπόνηση."

	para "Θα κερδίσουμε"
	line "την παλιά μας"
	cont "δόξα."

	para "Δεν θα σε αφήσω"
	line "να χαλάσεις"
	cont "τα σχέδια μας."
	done

RadioTower5FRocketBossWinText:
	text "Όχι! Συγνώμη,"
	line "GIOVANNI!"
	done

RadioTower5FRocketBossAfterText:
	text "Πως έγινε αυτό;"

	para "Τα όνειρα μας"
	line "μηδενίστηκαν."

	para "Δεν ήμουν"
	line "άξιος τελικά."

	para "Σαν τον GIOVANNI"
	line "πριν από εμένα,"

	para "διαλύω τους"
	line "ΠΥΡΑΥΛΟΥΣ σήμερα."

	para "Αντίο."
	done

RadioTower5FDirectorThankYouText:
	text "ΔΙΕΥΘ: <PLAYER>,"
	line "ευχαριστώ!"

	para "Οι γενναίες"
	line "πράξεις έσωσαν"

	para "τα #μον"
	line "παγκοσμίως."

	para "Ξέρω πως δεν"
	line "είναι πολύ, μα"
	cont "πάρε αυτό."
	done

RadioTower5FDirectorDescribeRainbowWingText:
	text "Υπήρχε ένας"
	line "πύργος εδώ στην"
	cont "ΠΟΛΗ GOLDENROD."

	para "Μα ήταν παλιός"
	line "και με ρωγμές."

	para "Έτσι άλλαξε"
	line "με τον ΠΥΡΓΟ"
	cont "ΡΑΔΙΟ."

	para "Κατά τη κατε-"
	line "δάφιση, βρήκαμε"
	cont "αυτό στην κορυφή."

	para "Άκουσα πως γιγά-"
	line "ντιο #μον πε-"

	para "τούσε εδώ"
	line "στο παρελθόν."

	para "Μάλλον έπεσε"
	line "από αυτό."

	para "Μάλλον το #μον"
	line "εμφανίζεται στο"

	para "ΠΥΡΓΟ ΜΕΤΑΛΛΟ"
	line "στην  ECRUTEAK."

	para "OK, πάω στο"
	line "ΓΡΑΦΕΙΟ μου."
	done

RadioTower5FDirectorDescribeSilverWingText:
	text "Υπήρχε ένας"
	line "πύργος εδώ στην"
	cont "ΠΟΛΗ GOLDENROD."

	para "Μα ήταν παλιός"
	line "και με ρωγμές."

	para "Έτσι άλλαξε"
	line "με τον ΠΥΡΓΟ"
	cont "ΡΑΔΙΟ."

	para "Κατά τη κατε-"
	line "δάφιση, βρήκαμε"
	cont "αυτό στην κορυφή."

	para "Άκουσα πως γιγά-"
	line "ντιο #μον πετού-"

	para "σε στην GOLDENROD"
	line "στο παρελθόν."

	para "Μάλλον έπεσε"
	line "από το #μον."

	para "Μάλλον αυτό που"
	line "εμφανίζεται στα"

	para "ΓΥΡΙΣΤΑ ΝΗΣΙΑ κο-"
	line "ντά στη CIANWOOD."

	para "OK, παω"
	line "στο γραφείο μου."
	done

RadioTower5FDirectorText:
	text "ΔΙΕΥΘΥΝΤΗΣ: Γεια,"
	line "<PLAYER>!"

	para "Ξέρεις, αγαπώ"
	line "τα #μον."

	para "Έχτισα τον ΠΥΡΓΟ"
	line "ΡΑΔΙΟ για να"

	para "την εκφράσω"
	line "στα #μον."

	para "Θα μου άρεσε"
	line "αν ο κόσμος ήθελε"
	cont "τις εκπομπές."
	done

BenText:
	text "BEN: Ακούτε"
	line "την μουσική μας;"
	done

RadioTower5FDirectorsOfficeSignText:
	text "5ος ΓΡΑΦΕΙΟ"
	line "ΔΙΕΥΘΥΝΤΗ"
	done

RadioTower5FStudio1SignText:
	text "5ος ΣΤΟΥΝΤΙΟ 1"
	done

RadioTower5F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_4F, 1
	warp_event 12,  0, RADIO_TOWER_4F, 3

	def_coord_events
	coord_event  0,  3, SCENE_RADIOTOWER5F_FAKE_DIRECTOR, FakeDirectorScript
	coord_event 16,  5, SCENE_RADIOTOWER5F_ROCKET_BOSS, RadioTower5FRocketBossScript

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower5FDirectorsOfficeSign
	bg_event 11,  0, BGEVENT_READ, RadioTower5FStudio1Sign
	bg_event 15,  0, BGEVENT_READ, RadioTower5FStudio1Sign
	bg_event 16,  1, BGEVENT_READ, RadioTower5FBookshelf
	bg_event 17,  1, BGEVENT_READ, RadioTower5FBookshelf

	def_object_events
	object_event  3,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Director, -1
	object_event 13,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 17,  2, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerExecutivef1, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 13,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Ben, EVENT_RADIO_TOWER_CIVILIANS_AFTER
