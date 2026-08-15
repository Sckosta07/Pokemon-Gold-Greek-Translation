	object_const_def
	const ROUTE37_WEIRD_TREE1
	const ROUTE37_WEIRD_TREE2
	const ROUTE37_YOUNGSTER
	const ROUTE37_FRUIT_TREE1
	const ROUTE37_SUNNY
	const ROUTE37_FRUIT_TREE2
	const ROUTE37_FRUIT_TREE3

Route37_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route37SunnyCallback

Route37SunnyCallback:
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .SunnyAppears
	disappear ROUTE37_SUNNY
	endcallback

.SunnyAppears:
	appear ROUTE37_SUNNY
	endcallback

TrainerTwinsAnnandanne1:
	trainer TWINS, ANNANDANNE1, EVENT_BEAT_TWINS_ANN_AND_ANNE, TwinsAnnandanne1SeenText, TwinsAnnandanne1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsAnnandanne1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsAnnandanne2:
	trainer TWINS, ANNANDANNE2, EVENT_BEAT_TWINS_ANN_AND_ANNE, TwinsAnnandanne2SeenText, TwinsAnnandanne2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsAnnandanne2AfterBattleText
	waitbutton
	closetext
	end

TrainerPsychicGreg:
	trainer PSYCHIC_T, GREG, EVENT_BEAT_PSYCHIC_GREG, PsychicGregSeenText, PsychicGregBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicGregAfterBattleText
	waitbutton
	closetext
	end

SunnyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_MAGNET_FROM_SUNNY
	iftrue SunnySundayScript
	readvar VAR_WEEKDAY
	ifnotequal SUNDAY, SunnyNotSundayScript
	checkevent EVENT_MET_SUNNY_OF_SUNDAY
	iftrue .MetSunny
	writetext MeetSunnyText
	promptbutton
	setevent EVENT_MET_SUNNY_OF_SUNDAY
.MetSunny:
	writetext SunnyGivesGiftText1
	promptbutton
	verbosegiveitem MAGNET
	iffalse SunnyDoneScript
	setevent EVENT_GOT_MAGNET_FROM_SUNNY
	writetext SunnyGaveGiftText
	waitbutton
	closetext
	end

SunnySundayScript:
	writetext SunnySundayText
	waitbutton
SunnyDoneScript:
	closetext
	end

SunnyNotSundayScript:
	writetext SunnyNotSundayText
	waitbutton
	closetext
	end

Route37Sign:
	jumptext Route37SignText

Route37FruitTree1:
	fruittree FRUITTREE_ROUTE_37_1

Route37FruitTree2:
	fruittree FRUITTREE_ROUTE_37_2

Route37FruitTree3:
	fruittree FRUITTREE_ROUTE_37_3

Route37HiddenEther:
	hiddenitem ETHER, EVENT_ROUTE_37_HIDDEN_ETHER

TwinsAnnandanne1SeenText:
	text "ANN: Η ANNE και"
	line "εγώ είμαστε"
	cont "αδέλφια!"
	done

TwinsAnnandanne1BeatenText:
	text "ANN & ANNE: Είσαι"
	line "κακός!"
	done

TwinsAnnandanne1AfterBattleText:
	text "ANN: Λέω αυτό"
	line "που η αδελφή και"

	para "τα #μον μου"
	line "σκέφτονται."
	done

TwinsAnnandanne2SeenText:
	text "ANNE: Η ANN"
	line "και εγώ είμαστε"
	cont "αδέλφια!"
	done

TwinsAnnandanne2BeatenText:
	text "ANN & ANNE:"
	line "Είσαι κακός!"
	done

TwinsAnnandanne2AfterBattleText:
	text "ANNE: Μοιραζόμαστε"
	line "τα ίδια αισθήματα"
	cont "για #μον."
	done

PsychicGregSeenText:
	text "Τα #μον δεν"
	line "κανουν κινήσεις"
	cont "αν κοιμούνται."

	para "Θα σου δείξω"
	line "πως είναι!"
	done

PsychicGregBeatenText:
	text "Έχασα. Είναι"
	line "πολύ λυπηρό…"
	done

PsychicGregAfterBattleText:
	text "Βάζοντας #μον"
	line "για ύπνο ή με"
	cont "παράλυση είναι"
	cont "καλές τεχνικές."
	done

MeetSunnyText:
	text "SUNNY: Γεια!"

	para "Είμαι η SUNNY της"
	line "Κυριακής, αφού"
	cont "είναι Κυριακή!"
	done

SunnyGivesGiftText1:
	text "Μου είπαν να"
	line "σου δώσω αυτό"
	cont "αν σε δω!"
	done

SunnyGaveGiftText:
	text "SUNNY: Αυτό…"

	para "Ε…"

	para "… Τι ήταν αυτό…"

	para "…"

	para "Ω! Θυμήθηκα"
	line "τώρα!"

	para "Ένα #μον που"
	line "ξέρει κινήσεις"

	para "ηλεκτρικές θα"
	line "το μάθει."

	para "Η αδελφή MONICA"
	line "είπε ότι δίνει"
	cont "ηλεκτρική κινήση!"
	done

SunnySundayText:
	text "SUNNY: Οι αδελφές"
	line "και αδελφοί μου,"
	cont "η MONICA, TUSCANY,"
	cont "WESLEY, ARTHUR,"
	cont "FRIEDA και SANTOS."

	para "Είναι όλοι πιο"
	line "μεγάλοι από μένα!"
	done

SunnyNotSundayText:
	text "SUNNY: Δεν"
	line "είναι Κυριακή;"
	cont "Ε… Ξέχασα!"
	done

Route37SignText:
	text "ΔΡΟΜΟΣ 37"
	done

Route37_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  5,  3, BGEVENT_READ, Route37Sign
	bg_event  4,  2, BGEVENT_ITEM, Route37HiddenEther

	def_object_events
	object_event  6, 12, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAnnandanne1, -1
	object_event  7, 12, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsAnnandanne2, -1
	object_event  9,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicGreg, -1
	object_event 13,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route37FruitTree1, -1
	object_event 16,  8, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SunnyScript, EVENT_ROUTE_37_SUNNY_OF_SUNDAY
	object_event 16,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route37FruitTree2, -1
	object_event 15,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route37FruitTree3, -1
