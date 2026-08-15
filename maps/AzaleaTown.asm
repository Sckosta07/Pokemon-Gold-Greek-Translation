	object_const_def
	const AZALEATOWN_AZALEA_ROCKET1
	const AZALEATOWN_GRAMPS
	const AZALEATOWN_TEACHER
	const AZALEATOWN_YOUNGSTER
	const AZALEATOWN_SLOWPOKE1
	const AZALEATOWN_SLOWPOKE2
	const AZALEATOWN_SLOWPOKE3
	const AZALEATOWN_SLOWPOKE4
	const AZALEATOWN_FRUIT_TREE
	const AZALEATOWN_RIVAL
	const AZALEATOWN_AZALEA_ROCKET3

AzaleaTown_MapScripts:
	def_scene_scripts
	scene_script AzaleaTownNoop1Scene, SCENE_AZALEATOWN_NOOP
	scene_script AzaleaTownNoop2Scene, SCENE_AZALEATOWN_RIVAL_BATTLE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, AzaleaTownFlypointCallback

AzaleaTownNoop1Scene:
	end

AzaleaTownNoop2Scene:
	end

AzaleaTownFlypointCallback:
	setflag ENGINE_FLYPOINT_AZALEA
	endcallback

AzaleaTownRivalBattleScene1:
	moveobject AZALEATOWN_RIVAL, 11, 11
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear AZALEATOWN_RIVAL
	applymovement AZALEATOWN_RIVAL, AzaleaTownRivalBattleApproachMovement1
	turnobject PLAYER, DOWN
	sjump AzaleaTownRivalBattleScript

AzaleaTownRivalBattleScene2:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	appear AZALEATOWN_RIVAL
	applymovement AZALEATOWN_RIVAL, AzaleaTownRivalBattleApproachMovement2
	turnobject PLAYER, UP
AzaleaTownRivalBattleScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext AzaleaTownRivalBeforeText
	waitbutton
	closetext
	setevent EVENT_RIVAL_AZALEA_TOWN
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext AzaleaTownRivalWinText, AzaleaTownRivalLossText
	setlasttalked AZALEATOWN_RIVAL
	loadtrainer RIVAL1, RIVAL1_2_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Totodile:
	winlosstext AzaleaTownRivalWinText, AzaleaTownRivalLossText
	setlasttalked AZALEATOWN_RIVAL
	loadtrainer RIVAL1, RIVAL1_2_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.Chikorita:
	winlosstext AzaleaTownRivalWinText, AzaleaTownRivalLossText
	setlasttalked AZALEATOWN_RIVAL
	loadtrainer RIVAL1, RIVAL1_2_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterBattle

.AfterBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext AzaleaTownRivalAfterText
	waitbutton
	closetext
	turnobject PLAYER, LEFT
	applymovement AZALEATOWN_RIVAL, AzaleaTownRivalBattleExitMovement
	playsound SFX_EXIT_BUILDING
	disappear AZALEATOWN_RIVAL
	setscene SCENE_AZALEATOWN_NOOP
	waitsfx
	playmapmusic
	end

AzaleaTownRocket1Script:
	jumptextfaceplayer AzaleaTownRocket1Text

AzaleaTownRocket2Script:
	jumptextfaceplayer AzaleaTownRocket2Text

AzaleaTownGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .ClearedWell
	writetext AzaleaTownGrampsTextBefore
	waitbutton
	closetext
	end

.ClearedWell:
	writetext AzaleaTownGrampsTextAfter
	waitbutton
	closetext
	end

AzaleaTownTeacherScript:
	jumptextfaceplayer AzaleaTownTeacherText

AzaleaTownYoungsterScript:
	jumptextfaceplayer AzaleaTownYoungsterText

AzaleaTownSlowpokeScript:
	opentext
	writetext AzaleaTownSlowpokeText1
	pause 60
	writetext AzaleaTownSlowpokeText2
	cry SLOWPOKE
	waitbutton
	closetext
	end

UnusedWoosterScript: ; unreferenced
	faceplayer
	opentext
	writetext WoosterText
	cry QUAGSIRE
	waitbutton
	closetext
	end

AzaleaTownSign:
	jumptext AzaleaTownSignText

KurtsHouseSign:
	jumptext KurtsHouseSignText

AzaleaGymSign:
	jumptext AzaleaGymSignText

SlowpokeWellSign:
	jumptext SlowpokeWellSignText

CharcoalKilnSign:
	jumptext CharcoalKilnSignText

AzaleaTownIlextForestSign:
	jumptext AzaleaTownIlexForestSignText

AzaleaTownPokecenterSign:
	jumpstd PokecenterSignScript

AzaleaTownMartSign:
	jumpstd MartSignScript

WhiteApricornTree:
	fruittree FRUITTREE_AZALEA_TOWN

AzaleaTownHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_AZALEA_TOWN_HIDDEN_FULL_HEAL

AzaleaTownRivalBattleApproachMovement1:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

AzaleaTownRivalBattleApproachMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AzaleaTownRivalBattleExitMovement:
	step LEFT
	step LEFT
	step LEFT
	step_end

AzaleaTownRivalBeforeText:
	text "…Πες μου"
	line "κάτι."

	para "Είναι αλήθεια πως"
	line "οι ΠΥΡΑΥΛΟΙ"
	cont "επέστρεψαν;"

	para "Τι; τους νίκησες;"
	line "Χαχ! Μην"
	cont "λες ψέματα."

	para "Δεν αστειεύεσαι;"
	line "Τότε για να δω"
	cont "πόσο καλός είσαι."
	done

AzaleaTownRivalWinText:
	text "… Χαμφ! Άχρηστα"
	line "#μον!"

	para "Άκου, εσύ."
	line "Νίκησες επειδή"

	para "τα #μον μου"
	line "είναι αδύναμα."
	done

AzaleaTownRivalAfterText:
	text "Μ'αρέσει η δύναμη!"

	para "#μον, εκπ/τες."
	line "Δεν έχει σημασία."
	cont "Είναι αδύναμοι."

	para "Θα γίνω δυνατός"
	line "και θα νικάω"
	cont "τους αδύναμους."

	para "Αυτό πάει και για"
	line "τους ΠΥΡΑΥΛΟΥΣ."

	para "Κάνουν τους"
	line "σκληρούς ομαδικά."

	para "Μα μόνοι τους,"
	line "είναι όλοι"
	cont "αδύναμοι."

	para "Είμαι καλύτερος."

	para "Φύγε από την"
	line "μέση. Ένας φλώρος"

	para "σαν εσένα είναι"
	line "καθυστέρηση."
	done

AzaleaTownRivalLossText:
	text "…Χαμφ! Το"
	line "ήξερα."
	done

AzaleaTownRocket1Text:
	text "Είναι επικίνδυνα"
	line "να πας εκεί, έτσι"
	cont "είμαι φύλακας."

	para "Δεν είμαι καλός"
	line "Σαμαρείτης;"
	done

AzaleaTownRocket2Text:
	text "Ήξερες για τις"
	line "ΟΥΡΕΣSLOWPOKE;"
	cont "Είναι νόστιμες!"

	para "Δεν χαίρεσαι"
	line "που στο είπα;"
	done

AzaleaTownGrampsTextBefore:
	text "Τα SLOWPOKE"
	line "εξαφανίστηκαν"
	cont "από την πόλη…"

	para "Άκουσα πως"
	line "κάτι κακό"
	cont "τους συμβαίνει."
	done

AzaleaTownGrampsTextAfter:
	text "Τα SLOWPOKE"
	line "επέστρεψαν."

	para "Σίγουρα, κάπου"
	line "θα ήταν και θα"

	para "χαζολογούσαν"
	line "όπως συνήθως."
	done

AzaleaTownTeacherText:
	text "Ήρθες να πείσεις"
	line "τον KURT για"
	cont "μερικές BALLS;"

	para "Πολλοί τον"
	line "πείθουν."
	done

AzaleaTownYoungsterText:
	text "Κόψε από την"
	line "πόλη και θα είσαι"
	cont "στο ΔΑΣΟΣ ILEX."

	para "Όμως αυτά τα"
	line "δέντρα το κάνουν"

	para "δύσκολο να"
	line "περάσεις."

	para "Το #μον του"
	line "ΚΑΡΒΟΥΝΙΑΡΗ"
	cont "κόβει δεντρα."
	done

AzaleaTownSlowpokeText1:
	text "SLOWPOKE: …"

	para "<……> <……> <……>"
	done

AzaleaTownSlowpokeText2:
	text "<……> <……>Γιάουν;"
	done

WoosterText:
	text "WOOSTER: Γουγιού…"
	done

AzaleaTownSignText:
	text "ΠΟΛΗ AZALEA"
	line "Όπου Κόσμος &"

	para "#μον Ζουν Σε"
	line "Αρμονία"
	done

KurtsHouseSignText:
	text "ΣΠΙΤΙ του KURT"
	done

AzaleaGymSignText:
	text "ΠΟΛΗ AZALEA"
	line "ΠΟΚΕMON GYM"
	cont "ΗΓΕΤΗΣ: BUGSY"

	para "Η Κινητή"
	line "Εγκυκλοπαίδεια"
	cont "Εντόμων #μον"
	done

SlowpokeWellSignText:
	text "ΠΗΓΑΔΙ SLOWPOKE"

	para "Επίσης γνωστό ως"
	line "ΠΗΓΑΔΙ ΒΡΟΧΗΣ."

	para "Ντόπιοι πιστεύουν"
	line "πως το χασμουρητό"
	cont "τους φέρνει βροχή."

	para "Ιστορικό γράφει"
	line "πως τα SLOWPOKE"

	para "τελείωσαν ξηρασία"
	line "400 χρόνια πριν."
	done

CharcoalKilnSignText:
	text "ΚΑΜΙΝΙ ΑΝΘΡΑΚΑ"
	done

AzaleaTownIlexForestSignText:
	text "ΔΑΣΟΣ ILEX"

	para "Μπείτε Από"
	line "Την Πύλη."
	done

AzaleaTown_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  9, AZALEA_POKECENTER_1F, 1
	warp_event 21, 13, CHARCOAL_KILN, 1
	warp_event 21,  5, AZALEA_MART, 2
	warp_event  9,  5, KURTS_HOUSE, 1
	warp_event 10, 15, AZALEA_GYM, 1
	warp_event 31,  7, SLOWPOKE_WELL_B1F, 1
	warp_event  2, 10, ILEX_FOREST_AZALEA_GATE, 3
	warp_event  2, 11, ILEX_FOREST_AZALEA_GATE, 4

	def_coord_events
	coord_event  5, 10, SCENE_AZALEATOWN_RIVAL_BATTLE, AzaleaTownRivalBattleScene1
	coord_event  5, 11, SCENE_AZALEATOWN_RIVAL_BATTLE, AzaleaTownRivalBattleScene2

	def_bg_events
	bg_event 19,  9, BGEVENT_READ, AzaleaTownSign
	bg_event 10,  9, BGEVENT_READ, KurtsHouseSign
	bg_event 14, 15, BGEVENT_READ, AzaleaGymSign
	bg_event 29,  7, BGEVENT_READ, SlowpokeWellSign
	bg_event 19, 13, BGEVENT_READ, CharcoalKilnSign
	bg_event 16,  9, BGEVENT_READ, AzaleaTownPokecenterSign
	bg_event 22,  5, BGEVENT_READ, AzaleaTownMartSign
	bg_event  3,  9, BGEVENT_READ, AzaleaTownIlextForestSign
	bg_event 31,  6, BGEVENT_ITEM, AzaleaTownHiddenFullHeal

	def_object_events
	object_event 31,  9, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownRocket1Script, EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
	object_event 21,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownGrampsScript, -1
	object_event 15, 13, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzaleaTownTeacherScript, -1
	object_event  7,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaTownYoungsterScript, -1
	object_event  8, 17, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event 18,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event 29,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event 15, 15, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
	object_event  8,  2, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhiteApricornTree, -1
	object_event 11, 10, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_AZALEA_TOWN
	object_event 10, 16, SPRITE_AZALEA_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownRocket2Script, EVENT_SLOWPOKE_WELL_ROCKETS
