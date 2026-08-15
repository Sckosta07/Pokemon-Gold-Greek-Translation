	object_const_def
	const LANCESROOM_LANCE
	const LANCESROOM_MARY
	const LANCESROOM_OAK

LancesRoom_MapScripts:
	def_scene_scripts
	scene_script LancesRoomLockDoorScene, SCENE_LANCESROOM_LOCK_DOOR
	scene_script LancesRoomNoopScene,     SCENE_LANCESROOM_APPROACH_LANCE

	def_callbacks
	callback MAPCALLBACK_TILES, LancesRoomDoorsCallback

LancesRoomLockDoorScene:
	sdefer LancesRoomDoorLocksBehindYouScript
	end

LancesRoomNoopScene:
	end

LancesRoomDoorsCallback:
	checkevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	iffalse .KeepEntranceOpen
	changeblock 4, 22, $34 ; wall
.KeepEntranceOpen:
	checkevent EVENT_LANCES_ROOM_EXIT_OPEN
	iffalse .KeepExitClosed
	changeblock 4, 0, $0b ; open door
.KeepExitClosed:
	endcallback

LancesRoomDoorLocksBehindYouScript:
	applymovement PLAYER, LancesRoom_EnterMovement
	reanchormap $85
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 22, $34 ; wall
	refreshmap
	closetext
	setscene SCENE_LANCESROOM_APPROACH_LANCE
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	end

Script_ApproachLanceFromLeft:
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromLeft
	sjump LancesRoomLanceScript

Script_ApproachLanceFromRight:
	special FadeOutMusic
	applymovement PLAYER, MovementData_ApproachLanceFromRight
LancesRoomLanceScript:
	turnobject LANCESROOM_LANCE, LEFT
	opentext
	writetext LanceBattleIntroText
	waitbutton
	closetext
	winlosstext LanceBattleWinText, 0
	setlasttalked LANCESROOM_LANCE
	loadtrainer CHAMPION, LANCE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	setevent EVENT_BEAT_CHAMPION_LANCE
	opentext
	writetext LanceBattleAfterText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	changeblock 4, 0, $0b ; open door
	refreshmap
	closetext
	setevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	musicfadeout MUSIC_BEAUTY_ENCOUNTER, 16
	pause 30
	showemote EMOTE_SHOCK, LANCESROOM_LANCE, 15
	turnobject LANCESROOM_LANCE, DOWN
	pause 10
	turnobject PLAYER, DOWN
	appear LANCESROOM_MARY
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRushesIn
	opentext
	writetext LancesRoomMaryOhNoOakText
	waitbutton
	closetext
	appear LANCESROOM_OAK
	applymovement LANCESROOM_OAK, LancesRoomMovementData_OakWalksIn
	follow LANCESROOM_MARY, LANCESROOM_OAK
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryYieldsToOak
	stopfollow
	turnobject LANCESROOM_OAK, UP
	turnobject LANCESROOM_LANCE, LEFT
	opentext
	writetext LancesRoomOakCongratulationsText
	waitbutton
	closetext
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryInterviewChampion
	turnobject PLAYER, LEFT
	opentext
	writetext LancesRoomMaryInterviewText
	waitbutton
	closetext
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LancePositionsSelfToGuidePlayerAway
	turnobject PLAYER, UP
	opentext
	writetext LancesRoomNoisyText
	waitbutton
	closetext
	follow LANCESROOM_LANCE, PLAYER
	turnobject LANCESROOM_MARY, UP
	turnobject LANCESROOM_OAK, UP
	applymovement LANCESROOM_LANCE, LancesRoomMovementData_LanceLeadsPlayerToHallOfFame
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear LANCESROOM_LANCE
	applymovement PLAYER, LancesRoomMovementData_PlayerExits
	playsound SFX_EXIT_BUILDING
	disappear PLAYER
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryTriesToFollow
	showemote EMOTE_SHOCK, LANCESROOM_MARY, 15
	opentext
	writetext LancesRoomMaryNoInterviewText
	pause 30
	closetext
	applymovement LANCESROOM_MARY, LancesRoomMovementData_MaryRunsBackAndForth
	special FadeOutToWhite
	pause 15
	warp HALL_OF_FAME, 4, 13
	end

LancesRoom_EnterMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

MovementData_ApproachLanceFromLeft:
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

MovementData_ApproachLanceFromRight:
	step UP
	step LEFT
	step UP
	step UP
	turn_head RIGHT
	step_end

LancesRoomMovementData_MaryRushesIn:
	big_step UP
	big_step UP
	big_step UP
	big_step UP
	turn_head DOWN
	step_end

LancesRoomMovementData_OakWalksIn:
	step UP
	step UP
	step UP
	step_end

LancesRoomMovementData_MaryYieldsToOak:
	step LEFT
	turn_head RIGHT
	step_end

LancesRoomMovementData_MaryInterviewChampion:
	big_step UP
	turn_head RIGHT
	step_end

LancesRoomMovementData_LancePositionsSelfToGuidePlayerAway:
	step UP
	step LEFT
	turn_head DOWN
	step_end

LancesRoomMovementData_LanceLeadsPlayerToHallOfFame:
	step UP
	step_end

LancesRoomMovementData_PlayerExits:
	step UP
	step_end

LancesRoomMovementData_MaryTriesToFollow:
	step UP
	step RIGHT
	turn_head UP
	step_end

LancesRoomMovementData_MaryRunsBackAndForth:
	big_step RIGHT
	big_step RIGHT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step RIGHT
	big_step RIGHT
	big_step RIGHT
	big_step LEFT
	big_step LEFT
	turn_head UP
	step_end

LanceBattleIntroText:
	text "LANCE: Σε"
	line "περίμενα."

	para "<PLAYER>!"

	para "Ξέρω πως εσύ,"
	line "με τις ικανότητες"

	para "σου, θα με"
	line "έβρισκες."

	para "Δεν χρειάζονται"
	line "λόγια τώρα."

	para "Θα κάνουμε"
	line "μάχη για το ποιός"

	para "είναι πιο δυνατός"
	line "από τους δύο μας."

	para "Ως πιο δυνατός"
	line "εκπαιδευτής και "

	para "ως ΠΡΩΤΑ-"
	line "ΘΛΗΤΗΣ…"

	para "Εγώ, ο LANCE ο"
	line "δράκο άρχοντας,"
	cont "δέχομαι τη μάχη!"
	done

LanceBattleWinText:
	text "…Τελείωσε."

	para "Μα είναι παρά-"
	line "ξενη αίσθηση."

	para "Δεν νευρίασα"
	line "που έχασα. Βασικά"
	cont "χαίρομαι."

	para "Χαίρομαι που είδα"
	line "την άνοδο ενός"

	para "νέου μεγάλου"
	line "ΠΡΩΤΑΘΛΗΤΗ!"
	done

LanceBattleAfterText:
	text "…Φιου."

	para "Είσαι πολύ"
	line "δυνατός,"
	cont "<PLAYER>."

	para "Τα #μον σου"
	line "αποκρίνονται"

	para "στη δυνατή,"
	line "σίγουρη φύση σου."

	para "Ως εκπ/της, θα"
	line "συνεχίσεις να"

	para "γίνεσαι καλύτερος"
	line "με #μον."
	done

LancesRoomMaryOhNoOakText:
	text "MARY: Ωχ, όχι!"
	line "Τελείωσε!"

	para "ΚΑΘ.OAK,"
	line "ήρθατε αργά…"
	done

LancesRoomOakCongratulationsText:
	text "ΚΑΘ.OAK: Α,"
	line "<PLAYER>!"

	para "Πέρασε καιρός,"
	line "έτσι;"

	para "Δείχνεις πολύ"
	line "πιο ώριμος τώρα."

	para "Η κατάκτηση του"
	line "ΠΡΩΤΑΘΛΗΜΑΤΟΣ"
	cont "ήταν φανταστική!"

	para "Η αφοσίωση,"
	line "η εμπιστοσύνη"

	para "στα #μον το"
	line "έκανε να συμβεί."

	para "Τα #μον σου"
	line "ήταν έξοχα."

	para "Επειδή πίστεψαν"
	line "σε εσένα ως"

	para "εκπ/τη,"
	line "επέμειναν."

	para "Συγχαρητήρια,"
	line "<PLAYER>!"
	done

LancesRoomMaryInterviewText:
	text "MARY: Ας πάρουμε"
	line "συνέντευξη από τον"
	cont "ΠΡΩΤΑΘΛΗΤΗ!"
	done

LancesRoomNoisyText:
	text "LANCE: Εδώ"
	line "υπάρχει λίγο"
	cont "θόρυβο…"

	para "<PLAYER>, θα"
	line "έρθεις μαζί μου;"
	done

LancesRoomMaryNoInterviewText:
	text "MARY: Στάσου!"
	line "Δεν τελειώσαμε"
	cont "τη συνέντευξη!"
	done

LancesRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 23, KARENS_ROOM, 3
	warp_event  5, 23, KARENS_ROOM, 4
	warp_event  4,  0, HALL_OF_FAME, 1
	warp_event  5,  0, HALL_OF_FAME, 2

	def_coord_events
	coord_event  4,  5, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromLeft
	coord_event  5,  5, SCENE_LANCESROOM_APPROACH_LANCE, Script_ApproachLanceFromRight

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LancesRoomLanceScript, -1
	object_event  4,  7, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANCES_ROOM_OAK_AND_MARY
	object_event  4,  7, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_LANCES_ROOM_OAK_AND_MARY
