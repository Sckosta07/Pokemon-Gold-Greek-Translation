	object_const_def
	const OLIVINECITY_SAILOR1
	const OLIVINECITY_STANDING_YOUNGSTER
	const OLIVINECITY_SAILOR2
	const OLIVINECITY_OLIVINE_RIVAL

OlivineCity_MapScripts:
	def_scene_scripts
	scene_script OlivineCityNoop1Scene, SCENE_OLIVINECITY_RIVAL_ENCOUNTER
	scene_script OlivineCityNoop2Scene, SCENE_OLIVINECITY_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, OlivineCityFlypointCallback

OlivineCityNoop1Scene:
	end

OlivineCityNoop2Scene:
	end

OlivineCityFlypointCallback:
	setflag ENGINE_FLYPOINT_OLIVINE
	endcallback

OlivineCityRivalSceneTop:
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playsound SFX_ENTER_DOOR
	appear OLIVINECITY_OLIVINE_RIVAL
	waitsfx
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCityRivalApproachesTopMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext OlivineCityRivalText
	waitbutton
	closetext
	applymovement PLAYER, OlivineCityPlayerStepsAsideTopMovement
	turnobject PLAYER, RIGHT
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCityRivalLeavesTopMovement
	setscene SCENE_OLIVINECITY_NOOP
	disappear OLIVINECITY_OLIVINE_RIVAL
	special RestartMapMusic
	variablesprite SPRITE_OLIVINE_RIVAL, SPRITE_SWIMMER_GUY
	special LoadUsedSpritesGFX
	end

OlivineCityRivalSceneBottom:
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	playsound SFX_ENTER_DOOR
	appear OLIVINECITY_OLIVINE_RIVAL
	waitsfx
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCityRivalApproachesBottomMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext OlivineCityRivalText
	waitbutton
	closetext
	applymovement PLAYER, OlivineCityPlayerStepsAsideBottomMovement
	turnobject PLAYER, RIGHT
	applymovement OLIVINECITY_OLIVINE_RIVAL, OlivineCityRivalLeavesBottomMovement
	disappear OLIVINECITY_OLIVINE_RIVAL
	setscene SCENE_OLIVINECITY_NOOP
	special RestartMapMusic
	variablesprite SPRITE_OLIVINE_RIVAL, SPRITE_SWIMMER_GUY
	special LoadUsedSpritesGFX
	end

OlivineCitySailor1Script:
	jumptextfaceplayer OlivineCitySailor1Text

OlivineCityStandingYoungsterScript:
	faceplayer
	opentext
	random 2
	ifequal 0, .FiftyFifty
	writetext OlivineCityStandingYoungsterPokegearText
	waitbutton
	closetext
	end

.FiftyFifty:
	writetext OlivineCityStandingYoungsterPokedexText
	waitbutton
	closetext
	end

OlivineCitySailor2Script:
	jumptextfaceplayer OlivineCitySailor2Text

OlivineCitySign:
	jumptext OlivineCitySignText

OlivineCityPortSign:
	jumptext OlivineCityPortSignText

OlivineGymSign:
	jumptext OlivineGymSignText

OlivineLighthouseSign:
	jumptext OlivineLighthouseSignText

OlivineCityPokecenterSign:
	jumpstd PokecenterSignScript

OlivineCityMartSign:
	jumpstd MartSignScript

OlivineCityRivalApproachesTopMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step_end

OlivineCityRivalApproachesBottomMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step_end

OlivineCityRivalLeavesTopMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OlivineCityRivalLeavesBottomMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OlivineCityPlayerStepsAsideTopMovement:
	step DOWN
	turn_head UP
	step_end

OlivineCityPlayerStepsAsideBottomMovement:
	step UP
	turn_head DOWN
	step_end

OlivineCityRivalText:
	text "…"

	para "Πάλι εσύ;?"

	para "Δεν χρειάζεται"
	line "ο πανίκος. Δεν"

	para "ενοχλούμαι από"
	line "φλώρους οπως εσύ."

	para "Μιλώντας για"
	line "φλώρους, η"

	para "ΗΓΕΤΗΣ GYM"
	line "δεν είναι εδώ."

	para "Υποτίθεται πως"
	line "Φροντίζει άρρωστα"

	para "#μον στο"
	line "ΦΑΡΟ."

	para "Χαμφ! Μπου-χου!"
	line "Απλά παράτησε"
	cont "τα άρρωστα!"

	para "#μον που"
	line "δεν πολεμάει"
	cont "είναι άχρηστο!"

	para "Γιατί δεν πας"
	line "στο ΦΑΡΟ για"
	cont "προπόνηση;"

	para "Ποιός ξέρει. Ισως"
	line "γίνεις λιγότερο"
	cont "αδύναμος!"
	done

OlivineCitySailor1Text:
	text "Σκοτεινοί δρόμοι"
	line "είναι τρομακτικοί"
	cont "τη νύχτα."

	para "Μα στο σκοτάδι"
	line "της νύχτας,"

	para "η θάλασσα είναι"
	line "πιο ύπουλη!"

	para "Χωρίς το φως"
	line "του ΦΑΡΟΥ"

	para "να τα οδηγεί,"
	line "αυτά δεν βλέπουν."
	done

OlivineCityStandingYoungsterPokegearText:
	text "Αυτό που"
	line "κρατάς--είναι"
	cont "#GEAR, έτσι;"
	cont "Πολύ κουλ."
	done

OlivineCityStandingYoungsterPokedexText:
	text "Ουάου, έχεις"
	line "#ντεξ!"

	para "Είναι τόσο"
	line "καταπληκτικό."
	done

OlivineCitySailor2Text:
	text "Γεια, μικρέ!"
	line "Ωραία η θάλασσα!"

	para "Τραγουδα & εσύ!"
	line "Γιο-χο! Η θάλα-"
	cont "σσα μ'αρέσει!…"
	done

OlivineCitySignText:
	text "ΠΟΛΗ OLIVINE"

	para "Το Κοντινό Λιμάνι"
	line "Για Ξένα Μέρη"
	done

OlivineCityPortSignText:
	text "ΛΙΜΑΝΙ OLIVINE"
	line "ΑΠΟΒ. ΤΑΧΙΠΛΟΟΥ"
	done

OlivineGymSignText:
	text "ΠΟΛΗ OLIVINE"
	line "ΠΟΚΕMON GYM"
	cont "ΗΓΕΤΗΣ: JASMINE"

	para "Κορίτσι Με"
	line "Σιδερένια Άμυνα"
	done

OlivineLighthouseSignText:
	text "ΦΑΡΟΣ OLIVINE"
	line "Επίσης Γνωστός Ως"
	cont "ΦΑΡΟΣ ΛΑΜΨΗΣ"
	done

OlivineCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13, 21, OLIVINE_POKECENTER_1F, 1
	warp_event 10, 11, OLIVINE_GYM, 1
	warp_event 25, 11, OLIVINE_TIMS_HOUSE, 1
	warp_event  0,  0, OLIVINE_HOUSE_BETA, 1 ; inaccessible
	warp_event 29, 11, OLIVINE_PUNISHMENT_SPEECH_HOUSE, 1
	warp_event 13, 15, OLIVINE_GOOD_ROD_HOUSE, 1
	warp_event  7, 21, OLIVINE_CAFE, 1
	warp_event 19, 17, OLIVINE_MART, 2
	warp_event 29, 27, OLIVINE_LIGHTHOUSE_1F, 1
	warp_event 19, 27, OLIVINE_PORT_PASSAGE, 1
	warp_event 20, 27, OLIVINE_PORT_PASSAGE, 2

	def_coord_events
	coord_event 13, 12, SCENE_OLIVINECITY_RIVAL_ENCOUNTER, OlivineCityRivalSceneTop
	coord_event 13, 13, SCENE_OLIVINECITY_RIVAL_ENCOUNTER, OlivineCityRivalSceneBottom

	def_bg_events
	bg_event 17, 11, BGEVENT_READ, OlivineCitySign
	bg_event 20, 24, BGEVENT_READ, OlivineCityPortSign
	bg_event  7, 11, BGEVENT_READ, OlivineGymSign
	bg_event 30, 28, BGEVENT_READ, OlivineLighthouseSign
	bg_event 14, 21, BGEVENT_READ, OlivineCityPokecenterSign
	bg_event 20, 17, BGEVENT_READ, OlivineCityMartSign

	def_object_events
	object_event 26, 27, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor1Script, -1
	object_event 20, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OlivineCityStandingYoungsterScript, -1
	object_event 17, 21, SPRITE_SAILOR, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCitySailor2Script, -1
	object_event 10, 11, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_OLIVINE_CITY
