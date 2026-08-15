	object_const_def
	const BLACKTHORNPOKECENTER1F_NURSE
	const BLACKTHORNPOKECENTER1F_GENTLEMAN
	const BLACKTHORNPOKECENTER1F_TWIN
	const BLACKTHORNPOKECENTER1F_COOLTRAINER_M

BlackthornPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

BlackthornPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

BlackthornPokecenter1FGentlemanScript:
	jumptextfaceplayer BlackthornPokecenter1FGentlemanText

BlackthornPokecenter1FTwinScript:
	jumptextfaceplayer BlackthornPokecenter1FTwinText

BlackthornPokecenter1FCooltrainerMScript:
	jumpstd HappinessCheckScript

BlackthornPokecenter1FGentlemanText:
	text "Βαθιά μέσα στο"
	line "ΟΡΟΠΕΔΙΟ INDIGO"

	para "είναι το"
	line "ΠΡΩΤΑΘΛΗΜΑ."

	para "Άκουσα πως οι"
	line "καλύτεροι εκπ/τες"

	para "πάνε εκεί από"
	line "όλη την χώρα."
	done

BlackthornPokecenter1FTwinText:
	text "Έπρεπε να μάθω"
	line "αυτή την κίνηση"

	para "στο #μον"
	line "μου."

	para "Έτσι έκανα τον"
	line "ΔΙΑΓΡΑΦΕΑ ΚΙΝΗΣΕΩΝ"
	cont "να ξεχάσει μια ΗΜ."
	done

BlackthornPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, BLACKTHORN_CITY, 5
	warp_event  4,  7, BLACKTHORN_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FNurseScript, -1
	object_event  5,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FGentlemanScript, -1
	object_event  1,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FTwinScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BlackthornPokecenter1FCooltrainerMScript, -1
