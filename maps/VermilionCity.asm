	object_const_def
	const VERMILIONCITY_TEACHER
	const VERMILIONCITY_GRAMPS
	const VERMILIONCITY_MACHOP
	const VERMILIONCITY_SUPER_NERD
	const VERMILIONCITY_BIG_SNORLAX
	const VERMILIONCITY_POKEFAN_M

VermilionCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, VermilionCityFlypointCallback

VermilionCityFlypointCallback:
	setflag ENGINE_FLYPOINT_VERMILION
	endcallback

VermilionCityTeacherScript:
	jumptextfaceplayer VermilionCityTeacherText

VermilionMachopOwner:
	jumptextfaceplayer VermilionMachopOwnerText

VermilionMachop:
	opentext
	writetext VermilionMachopText1
	cry MACHOP
	waitbutton
	closetext
	earthquake 30
	opentext
	writetext VermilionMachopText2
	waitbutton
	closetext
	end

VermilionCitySuperNerdScript:
	jumptextfaceplayer VermilionCitySuperNerdText

VermilionSnorlax:
	opentext
	special SnorlaxAwake
	iftrue .Awake
	writetext VermilionCitySnorlaxSleepingText
	waitbutton
	closetext
	end

.Awake:
	writetext VermilionCityRadioNearSnorlaxText
	pause 15
	cry SNORLAX
	closetext
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCEITEM
	loadwildmon SNORLAX, 50
	startbattle
	disappear VERMILIONCITY_BIG_SNORLAX
	setevent EVENT_FOUGHT_SNORLAX
	reloadmapafterbattle
	end

VermilionGymBadgeGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
	iftrue .AlreadyGotItem
	readvar VAR_BADGES
	ifequal NUM_BADGES, .AllBadges
	ifgreater 13, .MostBadges
	ifgreater 9, .SomeBadges
	writetext VermilionCityBadgeGuyTrainerText
	waitbutton
	closetext
	end

.SomeBadges:
	writetext VermilionCityBadgeGuySomeBadgesText
	waitbutton
	closetext
	end

.MostBadges:
	writetext VermilionCityBadgeGuyMostBadgesText
	waitbutton
	closetext
	end

.AllBadges:
	writetext VermilionCityBadgeGuyAllBadgesText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .Done
	setevent EVENT_GOT_HP_UP_FROM_VERMILION_GUY
.AlreadyGotItem:
	writetext VermilionCityBadgeGuyBattleEdgeText
	waitbutton
.Done:
	closetext
	end

VermilionCitySign:
	jumptext VermilionCitySignText

VermilionGymSign:
	jumptext VermilionGymSignText

PokemonFanClubSign:
	jumptext PokemonFanClubSignText

VermilionCityDiglettsCaveSign:
	jumptext VermilionCityDiglettsCaveSignText

VermilionCityPortSign:
	jumptext VermilionCityPortSignText

VermilionCityPokecenterSign:
	jumpstd PokecenterSignScript

VermilionCityMartSign:
	jumpstd MartSignScript

VermilionCityHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_VERMILION_CITY_HIDDEN_FULL_HEAL

VermilionCityTeacherText:
	text "Το ΛΙΜΑΝΙ VERMI-"
	line "LION είναι η ακτή"
	cont "του KANTΟ."

	para "Χλιδάτα πλοία από"
	line "όλο τον κόσμο"
	cont "αράζουν εδώ."
	done

VermilionMachopOwnerText:
	text "Τα #μον μου"
	line "ετοιμάζουν τη γη"
	cont "για κατασκευή."

	para "Μα δεν έχω"
	line "χρήματα για να"
	cont "την αρχίσω…"
	done

VermilionMachopText1:
	text "MACHOP: Γουοχ"
	line "γογογοχ!"
	done

VermilionMachopText2:
	text "Το MACHOP γρυλί-"
	line "ζει καθώς"
	cont "ισιώνει τη γη."
	done

VermilionCitySuperNerdText:
	text "Υπάρχουν 8"
	line "GYM στο KANTO."

	para "Το μεγάλο κτήριο"
	line "είναι ΠΟΚΕΜΟΝ GYM"
	cont "της VERMILION."
	done

VermilionCitySnorlaxSleepingText:
	text "Το SNORLAX ροχα-"
	line "λίζει ήσυχα…"
	done

VermilionCityRadioNearSnorlaxText:
	text "Το #GEAR"
	line "πήγε κοντά στον"
	cont "υπναρά SNORLAX…"

	para "…"

	para "SNORLAX ξύπνησε!"
	done

VermilionCityBadgeGuyTrainerText:
	text "Έμπειροι εκπ/τες"
	line "είναι στο KANTO."

	para "ΗΓΕΤΕΣ GYM είναι"
	line "πολύ δυνατοί."

	para "Δεν θα νικηθούν"
	line "εύκολα."
	done

VermilionCityBadgeGuySomeBadgesText:
	text "Άρχισες να συλλέ-"
	line "γεις ΕΜΒΛΗΜΑΤΑ"
	cont "KANTO;"

	para "Δεν συμφωνείς"
	line "πως οι εκπ/τες"
	cont "εδώ είναι δυνατοί;"
	done

VermilionCityBadgeGuyMostBadgesText:
	text "Υποθέτω πως θα"
	line "τελειώσεις τα"

	para "GYM του"
	line "KANTO σύντομα."

	para "Πες το μου"
	line "αν πάρεις και τα"
	cont "8 ΕΜΒΛΗΜΑΤΑ."
	done

VermilionCityBadgeGuyAllBadgesText:
	text "Συγχαρητήρια!"

	para "Πήρες όλα τα"
	line "ΕΜΒΛΗΜΑΤΑ KANTO."

	para "Έχω βραβείο"
	line "για τον κόπο σου."
	done

VermilionCityBadgeGuyBattleEdgeText:
	text "Έχοντας ποικιλία"
	line "από #μον θα"

	para "σου δώσει πλεο-"
	line "νέκτημα σε μάχες."

	para "Σίγουρα τα ΕΜΒΛΗ-"
	line "ΜΑΤΑ GYM θα"
	cont "σε βοηθήσουν."
	done

VermilionCitySignText:
	text "ΠΟΛΗ VERMILION"

	para "Λιμάνι της Όμορφης"
	line "Δύσης Ηλίου"
	done

VermilionGymSignText:
	text "ΠΟΛΗ VERMILION"
	line "ΠΟΚΕMON GYM"
	cont "ΗΓΕΤΗΣ:ΛΟΧΙΑΣ.ΣΟΚ"

	para "Ο Ηλεκτρικός"
	line "Αμερικανός"
	done

PokemonFanClubSignText:
	text "ΠΟΚΕΜΟΝ ΦΑΝ ΚΛΑΜΠ"

	para "Όλοι οι #μον"
	line "φανς καλώς ήρθατε!"
	done

VermilionCityDiglettsCaveSignText:
	text "ΣΠΗΛΙΑ DIGLETT"
	done

VermilionCityPortSignText:
	text "ΛΙΜΑΝΙ VERMILION"
	line "ΕΙΣΟΔΟΣ"
	done

VermilionCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  5, VERMILION_FISHING_SPEECH_HOUSE, 1
	warp_event  9,  5, VERMILION_POKECENTER_1F, 1
	warp_event  7, 13, POKEMON_FAN_CLUB, 1
	warp_event 13, 13, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 21, 13, VERMILION_MART, 2
	warp_event 21, 17, VERMILION_DIGLETTS_CAVE_SPEECH_HOUSE, 1
	warp_event 10, 19, VERMILION_GYM, 1
	warp_event 19, 31, VERMILION_PORT_PASSAGE, 1
	warp_event 20, 31, VERMILION_PORT_PASSAGE, 2
	warp_event 34,  7, DIGLETTS_CAVE, 1

	def_coord_events

	def_bg_events
	bg_event 25,  3, BGEVENT_READ, VermilionCitySign
	bg_event  5, 19, BGEVENT_READ, VermilionGymSign
	bg_event  5, 13, BGEVENT_READ, PokemonFanClubSign
	bg_event 33,  9, BGEVENT_READ, VermilionCityDiglettsCaveSign
	bg_event 27, 15, BGEVENT_READ, VermilionCityPortSign
	bg_event 10,  5, BGEVENT_READ, VermilionCityPokecenterSign
	bg_event 22, 13, BGEVENT_READ, VermilionCityMartSign
	bg_event 12, 19, BGEVENT_ITEM, VermilionCityHiddenFullHeal

	def_object_events
	object_event 18,  9, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionCityTeacherScript, -1
	object_event 23,  6, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionMachopOwner, -1
	object_event 26,  7, SPRITE_MACHOP, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionMachop, -1
	object_event 14, 16, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionCitySuperNerdScript, -1
	object_event 34,  8, SPRITE_BIG_SNORLAX, SPRITEMOVEDATA_BIGDOLLSYM, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionSnorlax, EVENT_VERMILION_CITY_SNORLAX
	object_event 31, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionGymBadgeGuy, -1
