	object_const_def
	const OLIVINEPORT_SAILOR1
	const OLIVINEPORT_SAILOR2
	const OLIVINEPORT_SAILOR3
	const OLIVINEPORT_FISHING_GURU1
	const OLIVINEPORT_FISHING_GURU2
	const OLIVINEPORT_YOUNGSTER
	const OLIVINEPORT_COOLTRAINER_F

OlivinePort_MapScripts:
	def_scene_scripts
	scene_script OlivinePortNoopScene,      SCENE_OLIVINEPORT_ASK_ENTER_SHIP
	scene_script OlivinePortLeaveShipScene, SCENE_OLIVINEPORT_LEAVE_SHIP

	def_callbacks

OlivinePortNoopScene:
	end

OlivinePortLeaveShipScene:
	sdefer OlivinePortLeaveShipScript
	end

OlivinePortLeaveShipScript:
	applymovement PLAYER, OlivinePortLeaveFastShipMovement
	appear OLIVINEPORT_SAILOR1
	setscene SCENE_OLIVINEPORT_ASK_ENTER_SHIP
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	blackoutmod OLIVINE_CITY
	end

OlivinePortSailorAtGangwayScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue OlivinePortAlreadyRodeScript
	writetext OlivinePortSailorGetOnBoardText
	waitbutton
	closetext
	turnobject OLIVINEPORT_SAILOR1, DOWN
	pause 10
	playsound SFX_EXIT_BUILDING
	disappear OLIVINEPORT_SAILOR1
	waitsfx
	applymovement PLAYER, OlivinePortEnterFastShipMovement
	playsound SFX_EXIT_BUILDING
	special FadeOutToWhite
	waitsfx
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iffalse .FirstTime
	clearevent EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	setevent EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	clearevent EVENT_BEAT_COOLTRAINERM_SEAN
	clearevent EVENT_BEAT_COOLTRAINERF_CAROL
	clearevent EVENT_BEAT_GENTLEMAN_EDWARD
	clearevent EVENT_BEAT_BEAUTY_CASSIE
	clearevent EVENT_BEAT_PSYCHIC_RODNEY
	clearevent EVENT_BEAT_SUPER_NERD_SHAWN
	clearevent EVENT_BEAT_SAILOR_GARRETT
	clearevent EVENT_BEAT_FISHER_JONAH
	clearevent EVENT_BEAT_BLACKBELT_WAI
.FirstTime:
	clearevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	appear OLIVINEPORT_SAILOR1
	setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	warp FAST_SHIP_1F, 25, 1
	end

OlivinePortAlreadyRodeScript:
	writetext OlivinePortCantBoardText
	waitbutton
	closetext
	end

OlivinePortWalkUpToShipScript:
	turnobject OLIVINEPORT_SAILOR3, RIGHT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .skip
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .skip
	turnobject PLAYER, LEFT
	opentext
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iffalse .FirstTime
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .NextShipMonday
	ifequal SATURDAY, .NextShipMonday
	ifequal TUESDAY, .NextShipFriday
	ifequal WEDNESDAY, .NextShipFriday
	ifequal THURSDAY, .NextShipFriday
.FirstTime:
	writetext OlivinePortAskBoardText
	yesorno
	iffalse OlivinePortNotRidingMoveAwayScript
	writetext OlivinePortAskTicketText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext OlivinePortFlashTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	applymovement PLAYER, OlivinePortApproachFastShipFirstTimeMovement
	sjump OlivinePortSailorAtGangwayScript

.NoTicket:
	writetext OlivinePortNoTicketText
	waitbutton
	closetext
	applymovement PLAYER, OlivinePortCannotEnterFastShipMovement
	end

.NextShipMonday:
	writetext OlivinePortMondayShipText
	waitbutton
	closetext
	applymovement PLAYER, OlivinePortCannotEnterFastShipMovement
	end

.NextShipFriday:
	writetext OlivinePortFridayShipText
	waitbutton
	closetext
	applymovement PLAYER, OlivinePortCannotEnterFastShipMovement
	end

.skip:
	end

OlivinePortNotRidingScript:
	writetext OlivinePortComeAgainText
	waitbutton
	closetext
	end

OlivinePortNotRidingMoveAwayScript:
	writetext OlivinePortComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, OlivinePortCannotEnterFastShipMovement
	end

OlivinePortSailorAfterHOFScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue OlivinePortAlreadyRodeScript
	checkevent EVENT_FAST_SHIP_FIRST_TIME
	iffalse .FirstTime
	readvar VAR_WEEKDAY
	ifequal SUNDAY, .NextShipMonday
	ifequal SATURDAY, .NextShipMonday
	ifequal TUESDAY, .NextShipFriday
	ifequal WEDNESDAY, .NextShipFriday
	ifequal THURSDAY, .NextShipFriday
.FirstTime:
	writetext OlivinePortAskBoardText
	yesorno
	iffalse OlivinePortNotRidingScript
	writetext OlivinePortAskTicketText
	promptbutton
	checkitem S_S_TICKET
	iffalse .NoTicket
	writetext OlivinePortFlashTicketText
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	readvar VAR_FACING
	ifequal RIGHT, .Right
	applymovement PLAYER, OlivinePortApproachFastShipAfterHOFMovement
	sjump OlivinePortSailorAtGangwayScript

.Right:
	applymovement PLAYER, OlivinePortApproachFastShipAfterHOFRightMovement
	sjump OlivinePortSailorAtGangwayScript

.NoTicket:
	writetext OlivinePortNoTicketText
	waitbutton
	closetext
	end

.NextShipMonday:
	writetext OlivinePortMondayShipText
	waitbutton
	closetext
	end

.NextShipFriday:
	writetext OlivinePortFridayShipText
	waitbutton
	closetext
	end

OlivinePortSailorBeforeHOFScript:
	jumptextfaceplayer OlivinePortSailorBeforeHOFText

OlivinePortFishingGuru1Script:
	faceplayer
	opentext
	writetext OlivinePortFishingGuru1Text
	waitbutton
	closetext
	turnobject OLIVINEPORT_FISHING_GURU1, UP
	end

OlivinePortFishingGuru2Script:
	faceplayer
	opentext
	writetext OlivinePortFishingGuru2Text
	waitbutton
	closetext
	turnobject OLIVINEPORT_FISHING_GURU2, UP
	end

OlivinePortYoungsterScript:
	faceplayer
	opentext
	writetext OlivinePortYoungsterText
	waitbutton
	closetext
	turnobject OLIVINEPORT_YOUNGSTER, DOWN
	end

OlivinePortCooltrainerFScript:
	faceplayer
	opentext
	writetext OlivinePortCooltrainerFText
	waitbutton
	closetext
	turnobject OLIVINEPORT_COOLTRAINER_F, DOWN
	end

OlivinePortHiddenProtein:
	hiddenitem PROTEIN, EVENT_OLIVINE_PORT_HIDDEN_PROTEIN

OlivinePortEnterFastShipMovement:
	step DOWN
	step_end

OlivinePortLeaveFastShipMovement:
	step UP
	step_end

OlivinePortCannotEnterFastShipMovement:
	step RIGHT
	turn_head LEFT
	step_end

OlivinePortApproachFastShipFirstTimeMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

OlivinePortApproachFastShipAfterHOFMovement:
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

OlivinePortApproachFastShipAfterHOFRightMovement:
	step UP
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

OlivinePortSailorGetOnBoardText:
	text "Σαλπάρουμε"
	line "σύντομα. Παρακαλώ"
	cont "ανεβείτε."
	done

OlivinePortCantBoardText:
	text "Λυπάμαι. Δεν θα"
	line "να ανεβείτε τώρα."
	done

OlivinePortAskBoardText:
	text "Καλώς ήρθατε στο"
	line "S.S.AQUA."

	para "Θα ανεβείτε"
	line "σήμερα;"
	done

OlivinePortAskTicketText:
	text "Μπορώ να δω το"
	line "ΕΙΣΗΤΗΡΙΟ, κύριε;"
	done

OlivinePortComeAgainText:
	text "Ελπίζουμε να"
	line "σας ξανά δούμε!"
	done

OlivinePortFlashTicketText:
	text "<PLAYER> έδειξε"
	line "το  ΕΙΣΗΤΗΡΙΟ."

	para "Αυτό είναι."
	line "Ευχαριστώ, κύριε!"
	done

OlivinePortNoTicketText:
	text "<PLAYER> ήθελε"
	line "να δείξει το"
	cont "ΕΙΣΗΤΗΡΙΟ…"

	para "…Μα δεν είχε!"

	para "Συγνώμη!"
	line "Θα ανέβειτε"

	para "μόνο αν έχετε"
	line "ΕΙΣΗΤΗΡΙΟ."
	done

OlivinePortMondayShipText:
	text "Το ΤΑΧΥΠΛΟΟ"
	line "σαλπάρει Δευτέρα."
	done

OlivinePortFridayShipText:
	text "Το ΤΑΧΥΠΛΟΟ"
	line "φεύγει Παρασκευή."
	done

OlivinePortFishingGuru1Text:
	text "Τα SHELLDER εύκολα"
	line "πιάνονται εδώ."

	para "Είναι κάπως"
	line "σπάνια αλλού."
	done

OlivinePortFishingGuru2Text:
	text "Πόσα ΚΑΛΑΜΙΑ"
	line "εχεις;"

	para "Διάφορα ΚΑΛΑΜΙΑ"
	line "πιάνουν διάφορα"
	cont "#μον."
	done

OlivinePortYoungsterText:
	text "Το S.S.AQUA έχει"
	line "κινητήρα για να"
	cont "σχίζει τα κύματα!"
	done

OlivinePortCooltrainerFText:
	text "Υπάρχουν πολλά"
	line "#μον στο KANTO."

	para "Μακάρι να έφευγα…"
	done

OlivinePortSailorBeforeHOFText:
	text "Δεν θέλουμε να"
	line "πέσεις στην θάλα-"

	para "σσα, έτσι δεν αφή-"
	line "νουμε να περάσεις."
	done

OlivinePort_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11,  7, OLIVINE_PORT_PASSAGE, 5
	warp_event  7, 23, FAST_SHIP_1F, 1

	def_coord_events
	coord_event  7, 15, SCENE_OLIVINEPORT_ASK_ENTER_SHIP, OlivinePortWalkUpToShipScript

	def_bg_events
	bg_event  1, 22, BGEVENT_ITEM, OlivinePortHiddenProtein

	def_object_events
	object_event  7, 23, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortSailorAtGangwayScript, EVENT_OLIVINE_PORT_SAILOR_AT_GANGWAY
	object_event  7, 15, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortSailorBeforeHOFScript, EVENT_OLIVINE_PORT_SPRITES_BEFORE_HALL_OF_FAME
	object_event  6, 15, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortSailorAfterHOFScript, EVENT_OLIVINE_PORT_SPRITES_AFTER_HALL_OF_FAME
	object_event  4, 14, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortFishingGuru1Script, EVENT_OLIVINE_PORT_SPRITES_BEFORE_HALL_OF_FAME
	object_event 13, 14, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortFishingGuru2Script, EVENT_OLIVINE_PORT_SPRITES_BEFORE_HALL_OF_FAME
	object_event  4, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortYoungsterScript, EVENT_OLIVINE_PORT_SPRITES_AFTER_HALL_OF_FAME
	object_event 11, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePortCooltrainerFScript, EVENT_OLIVINE_PORT_SPRITES_AFTER_HALL_OF_FAME
