	object_const_def
	const ECRUTEAKPOKECENTER1F_NURSE
	const ECRUTEAKPOKECENTER1F_POKEFAN_M
	const ECRUTEAKPOKECENTER1F_COOLTRAINER_F
	const ECRUTEAKPOKECENTER1F_GYM_GUIDE
	const ECRUTEAKPOKECENTER1F_BILL

EcruteakPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script EcruteakPokecenter1FMeetBillScene, SCENE_ECRUTEAKPOKECENTER1F_MEET_BILL
	scene_script EcruteakPokecenter1FNoopScene,     SCENE_ECRUTEAKPOKECENTER1F_NOOP

	def_callbacks

EcruteakPokecenter1FMeetBillScene:
	sdefer EcruteakPokcenter1FBillActivatesTimeCapsuleScript
	end

EcruteakPokecenter1FNoopScene:
	end

EcruteakPokcenter1FBillActivatesTimeCapsuleScript:
	pause 30
	playsound SFX_EXIT_BUILDING
	appear ECRUTEAKPOKECENTER1F_BILL
	waitsfx
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokecenter1FBillMovement1
	applymovement PLAYER, EcruteakPokecenter1FPlayerMovement1
	turnobject ECRUTEAKPOKECENTER1F_NURSE, UP
	pause 10
	turnobject ECRUTEAKPOKECENTER1F_NURSE, DOWN
	pause 30
	turnobject ECRUTEAKPOKECENTER1F_NURSE, UP
	pause 10
	turnobject ECRUTEAKPOKECENTER1F_NURSE, DOWN
	pause 20
	turnobject ECRUTEAKPOKECENTER1F_BILL, DOWN
	pause 10
	opentext
	writetext EcruteakPokecenter1F_BillText1
	promptbutton
	sjump .PointlessJump

.PointlessJump:
	writetext EcruteakPokecenter1F_BillText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement ECRUTEAKPOKECENTER1F_BILL, EcruteakPokecenter1FBillMovement2
	playsound SFX_EXIT_BUILDING
	disappear ECRUTEAKPOKECENTER1F_BILL
	clearevent EVENT_MET_BILL
	setflag ENGINE_TIME_CAPSULE
	setscene SCENE_ECRUTEAKPOKECENTER1F_NOOP
	waitsfx
	end

EcruteakPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

EcruteakPokecenter1FPokefanMScript:
	jumptextfaceplayer EcruteakPokecenter1FPokefanMText

EcruteakPokecenter1FCooltrainerFScript:
	jumptextfaceplayer EcruteakPokecenter1FCooltrainerFText

EcruteakPokecenter1FGymGuideScript:
	jumptextfaceplayer EcruteakPokecenter1FGymGuideText

EcruteakPokecenter1FBillMovement1:
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

EcruteakPokecenter1FBillMovement2:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

EcruteakPokecenter1FPlayerMovement1:
	step UP
	step UP
	step UP
	step_end

EcruteakPokecenter1F_BillText1:
	text "Είμαι ο BILL."
	line "Ποιός είσαι εσύ;"

	para "Χμμ, <PLAYER>, ε;"
	line "Ήρθες στην"
	cont "σωστή στιγμή."
	done

EcruteakPokecenter1F_BillText2:
	text "Μόλις τελείωσα"
	line "τις ρυθμίσεις στη"
	cont "ΧΡΟΝΟΚΑΨΟΥΛΑ."

	para "Ήξερες πως τα"
	line "#μον ανταλλά-"
	cont "σονται, έτσι;"

	para "Η ΧΡΟΝΟΚΑΨΟΥΛΑ"
	line "μου αναπτύχθηκε"

	para "για ανταλλαγές"
	line "στο παρελθόν."

	para "Μα μην στέλνεις"
	line "τίποτα που"

	para "δεν υπήρχε στο"
	line "παρελθόν."

	para "Αν το κάνεις, το"
	line "PC στο παρελθόν"
	cont "πάθει βλάβη."

	para "Άρα πρέπει να"
	line "αφαιρείς κάτι"

	para "που δεν ήταν"
	line "στο παρελθόν."

	para "Βάζε απλά, μην"
	line "στέλνεις νεες"

	para "κινήσεις ή νέα"
	line "#μον τώρα."

	para "Μην ανησυχείς."
	line "Τελείωσα τις"
	cont "ρυθμίσεις."

	para "Αύριο, οι ΧΡΟΝΟ-"
	line "ΚΑΨΟΥΛΕΣ θα"

	para "τρέχουν σε όλα τα"
	line "ΚΕΝΤΡΑ ΠΟΚΕΜΟΝ."

	para "Τρέχω πίσω στη"
	line "GOLDENROD να"
	cont "δω φιλους μου."

	para "Αντίο!"
	done

EcruteakPokecenter1FPokefanMText:
	text "Είναι πανέμορφο"
	line "πως χορεύουν οι"

	para "ΓΚΕΪΣΕΣ. Απλώς"
	line "κοίτα πως χειρί-"
	cont "ζονται τα #μον."
	done

EcruteakPokecenter1FCooltrainerFText:
	text "Ο MORTY, ο GYM"
	line "ΗΓΕΤΗΣ, είναι"
	cont "πολύυυ κουλ."

	para "Τα #μον του"
	line "είναι δυνατά."
	done

EcruteakPokecenter1FGymGuideText:
	text "ΛΙΜΝΗ ΟΡΓΗΣ…"

	para "Η εμφάνιση του "
	line "σμήνος GYARADOS…"

	para "Μυρίζομαι συνο-"
	line "μωσία. Το ήξερα!"
	done

EcruteakPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 6
	warp_event  4,  7, ECRUTEAK_CITY, 6
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FPokefanMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FCooltrainerFScript, -1
	object_event  7,  1, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FGymGuideScript, -1
	object_event  0,  7, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ECRUTEAK_POKE_CENTER_BILL
