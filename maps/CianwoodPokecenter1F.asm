	object_const_def
	const CIANWOODPOKECENTER1F_NURSE
	const CIANWOODPOKECENTER1F_LASS
	const CIANWOODPOKECENTER1F_GYM_GUIDE

CianwoodPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

CianwoodPokecenter1FLassScript:
	jumptextfaceplayer CianwoodPokecenter1FLassText

CianwoodGymGuideScript:
	faceplayer
	checkevent EVENT_BEAT_CHUCK
	iftrue .CianwoodGymGuideWinScript
	opentext
	writetext CianwoodGymGuideText
	waitbutton
	closetext
	end

.CianwoodGymGuideWinScript:
	opentext
	writetext CianwoodGymGuideWinText
	waitbutton
	closetext
	end

CianwoodPokecenter1FLassText:
	text "Συνάντησες τον"
	line "πορωμένο;"

	para "Πάντα καυχιέται"
	line "για τα σπάνια"
	cont "#μον του."
	done

CianwoodGymGuideText:
	text "Οι εκπ/τες του"
	line "GYM είναι ένα"
	cont "μάτσο νταΐδες."

	para "Αν μείνω εκεί,"
	line "θα με κυνη-"
	cont "γήσουν."

	para "Ορίστε μια"
	line "συμβουλή: ο"

	para "ΗΓΕΤΗΣ βάζει"
	line "μαχητικού-τύπου."

	para "Άρα μπορείς να"
	line "ζαλίσεις με"
	cont "ψυχικά #μον."

	para "Νίκησε τα #-"
	line "μον του πριν"

	para "βάλουν τη φυσική"
	line "τους δυναμη."
	done

CianwoodGymGuideWinText:
	text "<PLAYER>! Νίκησες!"
	line "Μπορώ να πω"
	cont "με ενα κοίταγμα!"
	done

CianwoodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CIANWOOD_CITY, 3
	warp_event  4,  7, CIANWOOD_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodPokecenter1FLassScript, -1
	object_event  5,  3, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodGymGuideScript, -1
