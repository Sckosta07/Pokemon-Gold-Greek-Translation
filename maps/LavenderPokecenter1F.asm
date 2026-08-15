	object_const_def
	const LAVENDERPOKECENTER1F_NURSE
	const LAVENDERPOKECENTER1F_GENTLEMAN
	const LAVENDERPOKECENTER1F_TEACHER
	const LAVENDERPOKECENTER1F_YOUNGSTER

LavenderPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

LavenderPokecenter1FGentlemanScript:
	jumptextfaceplayer LavenderPokecenter1FGentlemanText

LavenderPokecenter1FTeacherScript:
	jumptextfaceplayer LavenderPokecenter1FTeacherText

LavenderPokecenter1FYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext LavenderPokecenter1FYoungsterText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext LavenderPokecenter1FYoungsterText_ReturnedMachinePart
	waitbutton
	closetext
	end

LavenderPokecenter1FGentlemanText:
	text "Στον βορρά της"
	line "LAVENDER είναι το"

	para "ΤΟΥΝΕΛ ΒΡΑΧΟΣ."
	line "Περνα το για το"
	cont "ΕΡΓΟΣΤΑΣΙΟ."
	done

LavenderPokecenter1FTeacherText:
	text "Το πρόγραμμα του"
	line "ράδιο παίζει μου-"
	cont "σική ΠΟΚΕ ΦΛΑΟΥΤΟ."

	para "Ω; Το ράδιο σου"
	line "θέλει ΚΑΡΤΑ EXPN"
	cont "για συντονισμό."
	done

LavenderPokecenter1FYoungsterText:
	text "Ο ΣΤΑΘΜΟΣ ΡΑΔΙΟ"
	line "δεν μεταδιδει λόγω"

	para "προβλήματος του"
	line "ΕΡΓΟΣΤΑΣΙΟΥ."
	done

LavenderPokecenter1FYoungsterText_ReturnedMachinePart:
	text "Ο ΔΙΕΥΘΥΝΤΗΣ"
	line "του ΣΤΑΘΜΟΥ ΡΑΔΙΟ"
	cont "σίγουρα χαιρόταν."

	para "Είπε ότι είναι"
	line "πάλι στον αέρα"

	para "λόγω του ΕΡΓΟ-"
	line "ΣΤΑΣΙΟΥ που τρέ-"
	cont "χει ομαλά πάλι."
	done

LavenderPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 1
	warp_event  4,  7, LAVENDER_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FGentlemanScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FTeacherScript, -1
	object_event  1,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FYoungsterScript, -1
