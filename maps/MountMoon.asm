	object_const_def
	const MOUNTMOON_RIVAL

MountMoon_MapScripts:
	def_scene_scripts
	scene_script MountMoonRivalEncounterScene, SCENE_MOUNTMOON_RIVAL_BATTLE
	scene_script MountMoonNoopScene,           SCENE_MOUNTMOON_NOOP

	def_callbacks

MountMoonRivalEncounterScene:
	sdefer MountMoonRivalBattleScript
	end

MountMoonNoopScene:
	end

MountMoonRivalBattleScript:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	pause 15
	applymovement MOUNTMOON_RIVAL, MountMoonRivalMovementBefore
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext MountMoonRivalTextBefore
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .Chikorita
	winlosstext MountMoonRivalTextWin, MountMoonRivalTextLoss
	setlasttalked MOUNTMOON_RIVAL
	loadtrainer RIVAL2, RIVAL2_1_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishBattle

.Totodile:
	winlosstext MountMoonRivalTextWin, MountMoonRivalTextLoss
	setlasttalked MOUNTMOON_RIVAL
	loadtrainer RIVAL2, RIVAL2_1_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishBattle

.Chikorita:
	winlosstext MountMoonRivalTextWin, MountMoonRivalTextLoss
	setlasttalked MOUNTMOON_RIVAL
	loadtrainer RIVAL2, RIVAL2_1_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .FinishBattle

.FinishBattle:
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext MountMoonRivalTextAfter
	waitbutton
	closetext
	turnobject PLAYER, UP
	turnobject PLAYER, RIGHT
	applymovement MOUNTMOON_RIVAL, MountMoonRivalMovementAfter
	disappear MOUNTMOON_RIVAL
	setscene SCENE_MOUNTMOON_NOOP
	setevent EVENT_BEAT_RIVAL_IN_MT_MOON
	playmapmusic
	end

MountMoonRivalMovementBefore:
	step LEFT
	step LEFT
	step LEFT
	step_end

MountMoonRivalMovementAfter:
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MountMoonRivalTextBefore:
	text "<……> <……> <……>"

	para "Πέρασε καιρός,"
	line "<PLAYER>."

	para "…Αφού έχασα από"
	line "εσένα, σκέφτηκα"

	para "τι μου έλειπε"
	line "μαζί με τα"
	cont "#μον μου…"

	para "Και μου ήρθε"
	line "μια απάντηση."

	para "<PLAYER>, τώρα θα"
	line "σου δείξω!"
	done

MountMoonRivalTextWin:
	text "<……> <……> <……>"

	para "Νόμιζα πως με-"
	line "γάλωσα τα #μον"

	para "όσο καλύτερα"
	line "μπορούσα…"

	para "…Μα πάλι"
	line "δεν τα κατάφερα…"
	done

MountMoonRivalTextAfter:
	text "<……> <……> <……>"

	para "…Νικησες, δίκαια"
	line "και καθαρά."

	para "Το παραδέχομαι."
	line "Μα δεν τα"
	cont "παρατάω."

	para "Θα γίνω ο κα-"
	line "λύτερος εκπ/της"
	cont "που υπάρχει."

	para "Επειδή όλοι αυτοί"
	line "είναι πίσω μου."

	para "…Άκου, <PLAYER>."

	para "Μια μέρα θα"
	line "αποδείξω πόσο"

	para "καλός είμαι"
	line "με την ήττα σου."
	done

MountMoonRivalTextLoss:
	text "<……> <……> <……>"

	para "Ξεπλήρωσα ότι"
	line "σου χρωστούσα."

	para "με τα #μον,"
	line "θα νικήσω τον"

	para "ΠΡΩΤΑΘΛΗΤΗ και"
	line "θα γίνω ο πιο"
	cont "καλός εκπ/της."
	done

MountMoon_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, ROUTE_3, 1
	warp_event 15, 15, ROUTE_4, 1
	warp_event 13,  3, MOUNT_MOON, 7
	warp_event 15, 11, MOUNT_MOON, 8
	warp_event 25,  5, MOUNT_MOON_SQUARE, 1
	warp_event 25, 15, MOUNT_MOON_SQUARE, 2
	warp_event 25,  3, MOUNT_MOON, 3
	warp_event 25, 13, MOUNT_MOON, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MT_MOON_RIVAL
