	object_const_def
	const DRAGONSDENB1F_POKE_BALL1
	const DRAGONSDENB1F_CLAIR
	const DRAGONSDENB1F_RIVAL

DragonsDenB1F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, DragonsDenB1FCheckRivalCallback

DragonsDenB1FCheckRivalCallback:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue .CheckDay
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.CheckDay:
	readvar VAR_WEEKDAY
	ifequal TUESDAY, .AppearRival
	ifequal THURSDAY, .AppearRival
	disappear DRAGONSDENB1F_RIVAL
	endcallback

.AppearRival:
	appear DRAGONSDENB1F_RIVAL
	endcallback

DragonsDenB1FDragonFangScript:
	giveitem DRAGON_FANG
	iffalse .BagFullDragonFang
	disappear DRAGONSDENB1F_POKE_BALL1
	opentext
	getitemname STRING_BUFFER_3, DRAGON_FANG
	writetext Text_FoundDragonFang
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	readvar VAR_FACING
	ifequal RIGHT, .next
	sjump .next2
.next
	moveobject DRAGONSDENB1F_CLAIR, 34, 21
.next2
	appear DRAGONSDENB1F_CLAIR
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksToYou
	turnobject PLAYER, DOWN
	opentext
	writetext ClairText_GiveDragonbreathDragonDen
	promptbutton
	waitsfx
	writetext DragonShrinePlayerReceivedRisingBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RISINGBADGE
	specialphonecall SPECIALCALL_MASTERBALL
	writetext DragonShrineRisingBadgeExplanationText
	promptbutton
	verbosegiveitem TM_DRAGONBREATH, 1
	iffalse .ClairLastText
	setevent EVENT_GOT_TM24_DRAGONBREATH
	writetext ClairText_DescribeDragonbreathDragonDen
	promptbutton
	sjump .ClairLastText
.ClairLastText
	writetext ClairText_CollectedAllBadges
	waitbutton
	closetext
	applymovement DRAGONSDENB1F_CLAIR, MovementDragonsDen_ClairWalksAway
	disappear DRAGONSDENB1F_CLAIR
	end

.BagFullDragonFang:
	opentext
	getitemname STRING_BUFFER_3, DRAGON_FANG
	writetext Text_FoundDragonFang
	promptbutton
	writetext Text_NoRoomForDragonFang
	waitbutton
	closetext
	end

DragonsDenB1FRivalScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .RivalTalkAgain
	writetext RivalText_Training1
	waitbutton
	closetext
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	special RestartMapMusic
	end

.RivalTalkAgain:
	writetext RivalText_Training2
	waitbutton
	closetext
	special RestartMapMusic
	end

DragonShrineSignpost:
	jumptext DragonShrineSignpostText

DragonsDenB1FHiddenRevive:
	hiddenitem REVIVE, EVENT_DRAGONS_DEN_B1F_HIDDEN_REVIVE

DragonsDenB1FHiddenMaxPotion:
	hiddenitem MAX_POTION, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_POTION

DragonsDenB1FHiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_DRAGONS_DEN_B1F_HIDDEN_MAX_ELIXER

MovementDragonsDen_ClairWalksToYou:
	step UP
	step UP
	step UP
	step UP
	step_end

MovementDragonsDen_ClairWalksAway:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

ClairText_GiveDragonbreathDragonDen:
	text "CLAIR: Εντάξει."
	line "Αναγνωρίζω"

	para "την δυναμη σου."
	line "Πάρε το ΕΜΒΛΗΜΑ."
	done

DragonShrinePlayerReceivedRisingBadgeText:
	text "<PLAYER> πήρε"
	line "ΑΝΟΔΟΕΜΒΛΗΜΑ."
	done

DragonShrineRisingBadgeExplanationText:
	text "ΑΝΟΔΟΕΜΒΛΗΜΑ"
	line "αφήνει τα #-"

	para "μον σου να"
	line "ανεβαίνουν"
	cont "καταρράκτες."

	para "Επίσης, όλα τα"
	line "#μον σε αναγνω-"

	para "ρίζουν ως εκπ/τη"
	line "και υπακούν κάθε"

	para "εντολή χωρίς"
	line "ερώτηση."

	para "Θέλω επίσης"
	line "να πάρεις το TM."
	done

Text_ReceivedTM24: ; unreferenced
	text "<PLAYER> πήρε"
	line "το TM24."
	done

ClairText_DescribeDragonbreathDragonDen:
	text "Έχει"
	line "ΔΡΑΚΟΑΝΑΣΑ."

	para "Όχι, δεν έχει"
	line "να κάνει τίποτα"
	cont "με την ανάσα μου."

	para "Αν δεν το θες,"
	line "τότε μην το"
	cont "πάρεις."
	done

ClairText_CollectedAllBadges:
	text "Ώστε, σύλλεξες"
	line "όλα τα"
	cont "ΕΜΒΛΗΜΑΤΑ."

	para "Ο προορισμός"
	line "σου είναι το"

	para "ΠΡΩΤΑΘΛΗΜΑ στο"
	line "ΟΡΟΠΕΔΙΟ INDIGO."

	para "Ξέρεις πως θα"
	line "πας εκεί πέρα;"

	para "Από εδώ, τρέχα"
	line "ΝΕΑ ΠΟΛΗ BARK."

	para "ΣΕΡΦ ανατολικά."
	line "Ο δρόμος είναι"
	cont "πολύ δύσκολος."

	para "Μην τολμησεις"
	line "να χάσεις στο"
	cont "ΠΡΩΤΑΘΛΗΜΑ!"

	para "Αν το κάνεις,"
	line "θα νιώθω ακόμη"

	para "χειρότερα που"
	line "με νίκησες!"
	done

DragonShrineSignpostText:
	text "ΝΑΟΣ ΔΡΑΚΩΝ"

	para "Ναός προς τιμήν"
	line "των #μον δράκων"

	para "που ζουν στο"
	line "ΛΗΜΑΡΙ ΔΡΑΚΩΝ."
	done

RivalText_Training1:
	text "…"
	line "Τι; <PLAYER>;"

	para "…Όχι, δεν"
	line "έχει μάχη τώρα…"

	para "Τα #μον δεν"
	line "είναι έτοιμα."

	para "Δεν θα τα"
	line "πιέσω πολύ τώρα."

	para "Πρέπει να είμαι"
	line "καλός για να"

	para "γίνω ο καλύτερος"
	line "εκπαιδευτής…"
	done

RivalText_Training2:
	text "…"

	para "Φιου…"

	para "Μάθε να είσαι"
	line "μακρια μου…"
	done

Text_FoundDragonFang:
	text "<PLAYER> βρήκε"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Text_NoRoomForDragonFang:
	text "Μα ο <PLAYER>"
	line "δεν έχει"
	cont "άλλο χώρο."
	done

DragonsDenB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 20,  3, DRAGONS_DEN_1F, 3

	def_coord_events

	def_bg_events
	bg_event 18, 24, BGEVENT_READ, DragonShrineSignpost
	bg_event 31,  4, BGEVENT_ITEM, DragonsDenB1FHiddenRevive
	bg_event 21, 17, BGEVENT_ITEM, DragonsDenB1FHiddenMaxPotion
	bg_event 31, 15, BGEVENT_ITEM, DragonsDenB1FHiddenMaxElixer

	def_object_events
	object_event 35, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FDragonFangScript, EVENT_DRAGONS_DEN_B1F_DRAGON_FANG
	object_event 35, 22, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGONS_DEN_CLAIR
	object_event 20, 23, SPRITE_RIVAL, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DragonsDenB1FRivalScript, EVENT_RIVAL_DRAGONS_DEN
