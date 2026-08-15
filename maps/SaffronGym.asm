	object_const_def
	const SAFFRONGYM_SABRINA
	const SAFFRONGYM_GRANNY1
	const SAFFRONGYM_YOUNGSTER1
	const SAFFRONGYM_GRANNY2
	const SAFFRONGYM_YOUNGSTER2
	const SAFFRONGYM_GYM_GUIDE

SaffronGym_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronGymSabrinaScript:
	faceplayer
	opentext
	checkflag ENGINE_MARSHBADGE
	iftrue .FightDone
	writetext SabrinaIntroText
	waitbutton
	closetext
	winlosstext SabrinaWinLossText, 0
	loadtrainer SABRINA, SABRINA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_MEDIUM_REBECCA
	setevent EVENT_BEAT_MEDIUM_DORIS
	setevent EVENT_BEAT_PSYCHIC_FRANKLIN
	setevent EVENT_BEAT_PSYCHIC_JARED
	opentext
	writetext ReceivedMarshBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_MARSHBADGE
	writetext SabrinaMarshBadgeText
	waitbutton
	closetext
	end

.FightDone:
	writetext SabrinaFightDoneText
	waitbutton
	closetext
	end

TrainerMediumRebecca:
	trainer MEDIUM, REBECCA, EVENT_BEAT_MEDIUM_REBECCA, MediumRebeccaSeenText, MediumRebeccaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumRebeccaAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicFranklin:
	trainer PSYCHIC_T, FRANKLIN, EVENT_BEAT_PSYCHIC_FRANKLIN, PsychicFranklinSeenText, PsychicFranklinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicFranklinAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumDoris:
	trainer MEDIUM, DORIS, EVENT_BEAT_MEDIUM_DORIS, MediumDorisSeenText, MediumDorisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumDorisAfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicJared:
	trainer PSYCHIC_T, JARED, EVENT_BEAT_PSYCHIC_JARED, PsychicJaredSeenText, PsychicJaredBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicJaredAfterBattleText
	waitbutton
	closetext
	end

SaffronGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_SABRINA
	iftrue .SaffronGymGuideWinScript
	writetext SaffronGymGuideText
	waitbutton
	closetext
	end

.SaffronGymGuideWinScript:
	writetext SaffronGymGuideWinText
	waitbutton
	closetext
	end

SaffronGymStatue:
	checkflag ENGINE_MARSHBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, SABRINA, SABRINA1
	jumpstd GymStatue2Script

SabrinaIntroText:
	text "SABRINA: Ήξερα"
	line "πως ερχόσουν…"

	para "Τρια χρόνια πριν,"
	line "είχα όραμα του"
	cont "ερχομού σου."

	para "Κυνηγάς το"
	line "ΕΜΒΛΗΜΑ μου."

	para "Δεν μ'αρέσουν οι"
	line "μάχες, μα έχω"

	para "καθήκον ως ΗΓΕΤΗΣ"
	line "δίνω ΕΜΒΛΗΜΑΤΑ"

	para "σε όποιον απο-"
	line "δείξει αυτός ή"
	cont "αυτή την αξία."

	para "Αφού το θέλεις,"
	line "θα σου δείξω"
	cont "ψυχικές δυνάμεις!"
	done

SabrinaWinLossText:
	text "SABRINA: Η"
	line "δύναμη σου…"

	para "Ξεπερνά τις"
	line "προβλέψεις μου…"

	para "Μάλλον δεν γίνεται"
	line "να προβλέψω τι"

	para "θα γίνει στο"
	line "μέλλον…"

	para "OK, νίκησες."
	line "Κέρδισες το"
	cont "ΒΑΛΤΟΕΜΒΛΗΜΑ."
	done

ReceivedMarshBadgeText:
	text "<PLAYER> πήρε"
	line "ΒΑΛΤΟΕΜΒΛΗΜΑ."
	done

SabrinaMarshBadgeText:
	text "SABRINA: ΒΑΛΤΟ-"
	line "ΕΜΒΛΗΜΑ δείχνει"

	para "υποσυνείδητες"
	line "δυνάμεις…"

	para "Αν και απέτυχα να"
	line "προβλέψω με ακρί-"
	cont "βεια την δύναμη"
	cont "σου, αυτό που ξέ-"
	cont "ρω είναι αλήθεια."

	para "Θα γίνεις"
	line "διάσημος και"
	cont "αγαπημένος!"
	done

SabrinaFightDoneText:
	text "SABRINA: Η αγάπη"
	line "σου για τα #μον"

	para "νίκησε την"
	line "ψυχική μου δύναμη…"

	para "Η δύναμη της αγάπης,"
	line "νομίζω, είναι"

	para "ειδος ψυχικής"
	line "δύναμης…"
	done

MediumRebeccaSeenText:
	text "Η δύναμη όλων"
	line "των νικημένων"
	cont "μου έρχεται!"
	done

MediumRebeccaBeatenText:
	text "Δυνατός…"
	line "Πολύ δυνατός…"
	done

MediumRebeccaAfterBattleText:
	text "Ποιά είναι η"
	line "πηγή δύναμης σου;"
	done

PsychicFranklinSeenText:
	text "Ψυχική δύναμη"
	line "είναι δύναμη της"
	cont "ψυχής σου."
	done

PsychicFranklinBeatenText:
	text "Η ψυχή σου είναι"
	line "είναι πιο δυνατή!"
	done

PsychicFranklinAfterBattleText:
	text "Έκανες την ψυχή"
	line "πιο δυνατή, όχι"
	cont "μόνο τα #μον!"
	done

MediumDorisSeenText:
	text "Φοφοφοφο…"
	line "Βλέπω καθαρά."

	para "Βλέπω στη"
	line "ψυχή σου!"
	done

MediumDorisBeatenText:
	text "Αν και σε είδα,"
	line "και πάλι έχασα…"
	done

MediumDorisAfterBattleText:
	text "Φτου! Ξέχασα"
	line "πως προέβλεψα"
	cont "ότι θα έχανα."
	done

PsychicJaredSeenText:
	text "Το ΜΑΧΗΤΙΚΟ DOJO"
	line "δίπλα ήταν κάποτε"
	cont "το GYM της πόλης."
	done

PsychicJaredBeatenText:
	text "Δεν είμαι ισάξιος…"
	done

PsychicJaredAfterBattleText:
	text "Ο ΒΑΣΙΛΙΑΣ ΚΑΡΑΤΕ,"
	line "ο άρχοντας του"

	para "ΜΑΧΗΤΙΚΟΥ DOJO,"
	line "νικήθηκε από"
	cont "την SABRINA."
	done

SaffronGymGuideText:
	text "Γιο, ΝΙΚΗΤΗ"
	line "του αύριο!"

	para "Ένας έμπειρος"
	line "εκπ/της σαν εσένα"

	para "δεν χρειάζεται να"
	line "του πουν τι θα"

	para "κάνει με ψυχικά"
	line "#μον, σωστά;"

	para "Περιμένω πολλά"
	line "από εσένα!"

	para "Καλή τύχη!"
	done

SaffronGymGuideWinText:
	text "Ήταν φανταστική"
	line "η μάχη σας!"
	done

SaffronGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, SAFFRON_CITY, 2
	warp_event  9, 17, SAFFRON_CITY, 2
	warp_event 11, 15, SAFFRON_GYM, 18
	warp_event 19, 15, SAFFRON_GYM, 19
	warp_event 19, 11, SAFFRON_GYM, 20
	warp_event  1, 11, SAFFRON_GYM, 21
	warp_event  5,  3, SAFFRON_GYM, 22
	warp_event 11,  5, SAFFRON_GYM, 23
	warp_event  1, 15, SAFFRON_GYM, 24
	warp_event 19,  3, SAFFRON_GYM, 25
	warp_event 15, 17, SAFFRON_GYM, 26
	warp_event  5, 17, SAFFRON_GYM, 27
	warp_event  5,  9, SAFFRON_GYM, 28
	warp_event  9,  3, SAFFRON_GYM, 29
	warp_event 15,  9, SAFFRON_GYM, 30
	warp_event 15,  5, SAFFRON_GYM, 31
	warp_event  1,  5, SAFFRON_GYM, 32
	warp_event 19, 17, SAFFRON_GYM, 3
	warp_event 19,  9, SAFFRON_GYM, 4
	warp_event  1,  9, SAFFRON_GYM, 5
	warp_event  5,  5, SAFFRON_GYM, 6
	warp_event 11,  3, SAFFRON_GYM, 7
	warp_event  1, 17, SAFFRON_GYM, 8
	warp_event 19,  5, SAFFRON_GYM, 9
	warp_event 15, 15, SAFFRON_GYM, 10
	warp_event  5, 15, SAFFRON_GYM, 11
	warp_event  5, 11, SAFFRON_GYM, 12
	warp_event  9,  5, SAFFRON_GYM, 13
	warp_event 15, 11, SAFFRON_GYM, 14
	warp_event 15,  3, SAFFRON_GYM, 15
	warp_event  1,  3, SAFFRON_GYM, 16
	warp_event 11,  9, SAFFRON_GYM, 17

	def_coord_events

	def_bg_events
	bg_event  8, 15, BGEVENT_READ, SaffronGymStatue

	def_object_events
	object_event  9,  8, SPRITE_SABRINA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronGymSabrinaScript, -1
	object_event 17, 16, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerMediumRebecca, -1
	object_event  3, 16, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicFranklin, -1
	object_event  3,  4, SPRITE_GRANNY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerMediumDoris, -1
	object_event 17,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicJared, -1
	object_event  9, 14, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronGymGuideScript, -1
