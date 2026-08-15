	object_const_def
	const LAKEOFRAGE_LANCE
	const LAKEOFRAGE_GRAMPS
	const LAKEOFRAGE_SUPER_NERD1
	const LAKEOFRAGE_COOLTRAINER_F1
	const LAKEOFRAGE_FISHER1
	const LAKEOFRAGE_FISHER2
	const LAKEOFRAGE_COOLTRAINER_M
	const LAKEOFRAGE_COOLTRAINER_F2
	const LAKEOFRAGE_GYARADOS
	const LAKEOFRAGE_WESLEY
	const LAKEOFRAGE_POKE_BALL1
	const LAKEOFRAGE_POKE_BALL2

LakeOfRage_MapScripts:
	def_scene_scripts
	scene_script LakeOfRageNoop1Scene ; unusable
	scene_script LakeOfRageNoop2Scene ; unusable

	def_callbacks
	callback MAPCALLBACK_NEWMAP, LakeOfRageFlypointCallback
	callback MAPCALLBACK_OBJECTS, LakeOfRageWesleyCallback

LakeOfRageNoop1Scene:
	end

LakeOfRageNoop2Scene:
	end

LakeOfRageFlypointCallback:
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	endcallback

LakeOfRageWesleyCallback:
	readvar VAR_WEEKDAY
	ifequal WEDNESDAY, .WesleyAppears
	disappear LAKEOFRAGE_WESLEY
	endcallback

.WesleyAppears:
	appear LAKEOFRAGE_WESLEY
	endcallback

LakeOfRageLanceScript:
	checkevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
	iftrue .AskAgainForHelp
	opentext
	writetext LakeOfRageLanceForcedToEvolveText
	promptbutton
	faceplayer
	writetext LakeOfRageLanceIntroText
	yesorno
	iffalse .RefusedToHelp
.AgreedToHelp:
	writetext LakeOfRageLanceRadioSignalText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement LAKEOFRAGE_LANCE, LakeOfRageLanceTeleportIntoSkyMovement
	disappear LAKEOFRAGE_LANCE
	clearevent EVENT_MAHOGANY_MART_LANCE_AND_DRAGONITE
	setevent EVENT_DECIDED_TO_HELP_LANCE
	setmapscene MAHOGANY_MART_1F, SCENE_MAHOGANYMART1F_LANCE_UNCOVERS_STAIRS
	end

.RefusedToHelp:
	writetext LakeOfRageLanceRefusedText
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_HELP_LANCE_AT_LAKE_OF_RAGE
	end

.AskAgainForHelp:
	faceplayer
	opentext
	writetext LakeOfRageLanceAskHelpText
	yesorno
	iffalse .RefusedToHelp
	sjump .AgreedToHelp

RedGyarados:
	opentext
	writetext LakeOfRageGyaradosCryText
	pause 15
	cry GYARADOS
	closetext
	loadwildmon GYARADOS, 30
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	ifequal LOSE, .NotBeaten
	disappear LAKEOFRAGE_GYARADOS
.NotBeaten:
	reloadmapafterbattle
	opentext
	giveitem RED_SCALE
	waitsfx
	writetext LakeOfRageGotRedScaleText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setscene 0 ; Lake of Rage does not have a scene variable
	appear LAKEOFRAGE_LANCE
	end

LakeOfRageGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	writetext LakeOfRageGrampsText
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext LakeOfRageGrampsText_ClearedRocketHideout
	waitbutton
	closetext
	end

LakeOfRageSuperNerdScript:
	jumptextfaceplayer LakeOfRageSuperNerdText

LakeOfRageCooltrainerFScript:
	jumptextfaceplayer LakeOfRageCooltrainerFText

LakeOfRageSign:
	jumptext LakeOfRageSignText

MagikarpHouseSignScript:
	opentext
	writetext FishingGurusHouseSignText
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .MagikarpLengthRecord
	waitbutton
	closetext
	end

.MagikarpLengthRecord:
	promptbutton
	special MagikarpHouseSign
	closetext
	end

TrainerFisherAndre:
	trainer FISHER, ANDRE, EVENT_BEAT_FISHER_ANDRE, FisherAndreSeenText, FisherAndreBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherAndreAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherRaymond:
	trainer FISHER, RAYMOND, EVENT_BEAT_FISHER_RAYMOND, FisherRaymondSeenText, FisherRaymondBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherRaymondAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermAaron:
	trainer COOLTRAINERM, AARON, EVENT_BEAT_COOLTRAINERM_AARON, CooltrainermAaronSeenText, CooltrainermAaronBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermAaronAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfLois:
	trainer COOLTRAINERF, LOIS, EVENT_BEAT_COOLTRAINERF_LOIS, CooltrainerfLoisSeenText, CooltrainerfLoisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfLoisAfterBattleText
	waitbutton
	closetext
	end

WesleyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BLACKBELT_FROM_WESLEY
	iftrue WesleyWednesdayScript
	readvar VAR_WEEKDAY
	ifnotequal WEDNESDAY, WesleyNotWednesdayScript
	checkevent EVENT_MET_WESLEY_OF_WEDNESDAY
	iftrue .MetWesley
	writetext MeetWesleyText
	promptbutton
	setevent EVENT_MET_WESLEY_OF_WEDNESDAY
.MetWesley:
	writetext WesleyGivesGiftText
	promptbutton
	verbosegiveitem BLACKBELT_I
	iffalse WesleyDoneScript
	setevent EVENT_GOT_BLACKBELT_FROM_WESLEY
	writetext WesleyGaveGiftText
	waitbutton
	closetext
	end

WesleyWednesdayScript:
	writetext WesleyWednesdayText
	waitbutton
WesleyDoneScript:
	closetext
	end

WesleyNotWednesdayScript:
	writetext WesleyNotWednesdayText
	waitbutton
	closetext
	end

LakeOfRageMaxEther:
	itemball MAX_ETHER

LakeOfRageTMDetect:
	itemball TM_DETECT

LakeOfRageHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_LAKE_OF_RAGE_HIDDEN_FULL_RESTORE

LakeOfRageHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_LAKE_OF_RAGE_HIDDEN_RARE_CANDY

LakeOfRageHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_LAKE_OF_RAGE_HIDDEN_MAX_POTION

LakeOfRageLanceTeleportIntoSkyMovement:
	teleport_from
	step_end

LakeOfRageLanceForcedToEvolveText:
	text "Η λίμνη είναι"
	line "γεμάτη με GYARADOS"
	cont "& τίποτα άλλο…"

	para "Έτσι τα MAGIKARP"
	line "αναγκάζονται"
	cont "να εξελιχθούν…"
	done

LakeOfRageLanceIntroText:
	text "Ήρθες εδώ"
	line "επειδή άκουσες"
	cont "τις φήμες;"

	para "Είσαι ο <PLAYER>;"
	line "Είμαι ο LANCE,"
	cont "εκπ/της και εγώ."

	para "Άκουσα φήμες,"
	line "έτσι ήρθα να"
	cont "το ερευνήσω…"

	para "Είδα πως έκανες"
	line "μάχες πριν,"
	cont "<PLAYER>."

	para "Λέω πως είσαι"
	line "εκπ/της με"

	para "αρκετές"
	line "ικανότητες."

	para "Αν δεν σε πει-"
	line "ράζει, με βοηθάς"
	cont "με την έρευνα;"
	done

LakeOfRageLanceRadioSignalText:
	text "LANCE: Τέλεια!"

	para "Φαίνεται πως τα"
	line "MAGIKARP της"

	para "ΛΙΜΝΗΣ εξελί-"
	line "χάθηκαν αμέσως."

	para "Μια ράδιο μετά-"
	line "δοση που βγαίνει"

	para "από τη MAHOGANY"
	line "είναι η αιτία."

	para "Θα σε περι-"
	line "μένω, <PLAYER>."
	done

LakeOfRageLanceRefusedText:
	text "Ω… Καλά, αν"
	line "αλλάξεις γνώμη,"
	cont "βοήθησε με"
	done

LakeOfRageLanceAskHelpText:
	text "LANCE: Χμ; Θα"
	line "με βοηθήσεις;"
	done

LakeOfRageGyaradosCryText:
	text "GYARADOS: Γυασαα!"
	done

LakeOfRageGotRedScaleText:
	text "<PLAYER> πήρε"
	line "ΚΟΚΚΙΝΟ ΛΕΠΙ."
	done

LakeOfRageGrampsText:
	text "Τα GYARADOS"
	line "θύμωσαν!"

	para "Κακός ιωνός!"
	done

LakeOfRageGrampsText_ClearedRocketHideout:
	text "Χαχαχ! Τα MAGI-"
	line "KARP δαγκώνουν!"
	done

LakeOfRageSuperNerdText:
	text "Άκουσα πως η"
	line "ΛΙΜΝΗ έγινε από"
	cont "θυμωμένα GYARADOS."

	para "Αναρωτιέμαι αν"
	line "έχει σύνδεση"

	para "με το μαζικό"
	line "ξέσπασμα τους;"
	done

LakeOfRageCooltrainerFText:
	text "Με γελούν τα"
	line "μάτια μου. Είδα"

	para "κόκκινο GYARADOS"
	line "στη ΛΙΜΝΗ…"

	para "Μα νόμιζα πως"
	line "τα GYARADOS ήταν"
	cont "κανονικά μπλε;"
	done

FisherAndreSeenText:
	text "Ας κάνουμε μάχη"
	line "με τα #μον που"
	cont "μόλις έπιασα!"
	done

FisherAndreBeatenText:
	text "Είμαι δεινός"
	line "ψαράς, μα"

	para "είμαι χάλια ως"
	line "εκπ/της #μον…"
	done

FisherAndreAfterBattleText:
	text "Δεν θα χάσω"
	line "ως ψαράς! Πιάνω"
	cont "καλά #μον."
	done

FisherRaymondSeenText:
	text "Δεν έχει σημασία"
	line "τι κάνω, όλα"

	para "είναι τα ίδια"
	line "#μον…"
	done

FisherRaymondBeatenText:
	text "Τα δίχτυα μου"
	line "μπερδεύτηκαν…"
	done

FisherRaymondAfterBattleText:
	text "Γιατί δεν πιάνω"
	line "καλά #μον;"
	done

CooltrainermAaronSeenText:
	text "Αν εκπ/της δει"
	line "άλλον εκπ/τη"

	para "πρέπει να τον"
	line "προκαλέσει."

	para "Αυτό είναι το"
	line "πεπρωμένο μας."
	done

CooltrainermAaronBeatenText:
	text "Φιου…"
	line "Καλή μάχη."
	done

CooltrainermAaronAfterBattleText:
	text "#μον και"
	line "εκπ/τες γίνονται"

	para "δυνατοί μέσα"
	line "από τις μάχες."
	done

CooltrainerfLoisSeenText:
	text "Τι συνέβη στο"
	line "κόκκινο GYARADOS;"

	para "Εξαφανίστηκε;"

	para "Ω, φτου. Ήρθα"
	line "εδώ για το τίποτα;"

	para "Ξέρω--ας"
	line "κάνουμε μάχη!"
	done

CooltrainerfLoisBeatenText:
	text "Καλά τα πας!"
	done

CooltrainerfLoisAfterBattleText:
	text "Αν το σκεφτείς,"
	line "είδα ένα ροζ"
	cont "BUTTERFREE."
	done

MeetWesleyText:
	text "WESLEY: Λοιπόν,"
	line "πως τα πας;"

	para "Σήμερα είναι"
	line "Τετάρτη."

	para "Είμαι ο WESLEY"
	line "της Τετάρτης."
	done

WesleyGivesGiftText:
	text "Χάρηκα για τη"
	line "γνωριμία. Πάρε"
	cont "ένα σουβενίρ."
	done

WesleyGaveGiftText:
	text "WESLEY: ΜΑΥΡΗ ΖΩΝΗ"
	line "αυξάνει την δύναμη"
	cont "μαχητικής κινήσης."
	done

WesleyWednesdayText:
	text "WESLEY: Αφού"
	line "με βρήκες, θα"

	para "βρήκες τους αδε-"
	line "λφούς & αδελφές."

	para "Ή ήσουν απλά"
	line "τυχερός;"
	done

WesleyNotWednesdayText:
	text "WESLEY: Σήμερα"
	line "δεν είναι Τετάρτη."
	cont "Πολύ κρίμα."
	done

LakeOfRageSignText:
	text "ΛΙΜΝΗ ΟΡΓΗΣ,"
	line "γνωστή και ως"
	cont "ΛΙΜΝΗ GYARADOS."
	done

FishingGurusHouseSignText:
	text "ΣΠΙΤΙ ΓΚΟΥΡΟΥ"
	line "ΨΑΡΕΜΑΤΟΣ"
	done

LakeOfRage_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 1
	warp_event 27, 31, LAKE_OF_RAGE_MAGIKARP_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 21, 27, BGEVENT_READ, LakeOfRageSign
	bg_event 25, 31, BGEVENT_READ, MagikarpHouseSignScript
	bg_event 11, 28, BGEVENT_ITEM, LakeOfRageHiddenFullRestore
	bg_event  4,  4, BGEVENT_ITEM, LakeOfRageHiddenRareCandy
	bg_event 35,  5, BGEVENT_ITEM, LakeOfRageHiddenMaxPotion

	def_object_events
	object_event 21, 28, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageLanceScript, EVENT_LAKE_OF_RAGE_LANCE
	object_event 20, 26, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageGrampsScript, -1
	object_event 36, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageSuperNerdScript, -1
	object_event 25, 29, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LakeOfRageCooltrainerFScript, -1
	object_event 30, 23, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherAndre, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 24, 26, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerFisherRaymond, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event  4, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermAaron, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 36,  7, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerCooltrainerfLois, EVENT_LAKE_OF_RAGE_CIVILIANS
	object_event 18, 22, SPRITE_GYARADOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RedGyarados, EVENT_LAKE_OF_RAGE_RED_GYARADOS
	object_event  4,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WesleyScript, EVENT_LAKE_OF_RAGE_WESLEY_OF_WEDNESDAY
	object_event  7, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LakeOfRageMaxEther, EVENT_LAKE_OF_RAGE_MAX_ETHER
	object_event 35,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, LakeOfRageTMDetect, EVENT_LAKE_OF_RAGE_TM_DETECT
