	object_const_def
	const CELADONDEPTSTORE2F_CLERK1
	const CELADONDEPTSTORE2F_CLERK2
	const CELADONDEPTSTORE2F_POKEFAN_M
	const CELADONDEPTSTORE2F_YOUNGSTER

CeladonDeptStore2F_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonDeptStore2FClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_2F_1
	closetext
	end

CeladonDeptStore2FClerk2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_CELADON_2F_2
	closetext
	end

CeladonDeptStore2FPokefanMScript:
	jumptextfaceplayer CeladonDeptStore2FPokefanMText

CeladonDeptStore2FYoungsterScript:
	jumptextfaceplayer CeladonDeptStore2FYoungsterText

CeladonDeptStore2FDirectory:
	jumptext CeladonDeptStore2FDirectoryText

CeladonDeptStore2FElevatorButton:
	jumpstd ElevatorButtonScript

CeladonDeptStore2FPokefanMText:
	text "Έγινα πρόσφατα"
	line "εκπαιδευτής."

	para "Ο γιος μου"
	line "με ενθάρρυνε."

	para "Θαμπώθηκα από"
	line "τη συλλογή"
	cont "βολικών πραγμάτων."
	done

CeladonDeptStore2FYoungsterText:
	text "Ο μπαμπάς μου"
	line "τα βρίσκει σκούρα"

	para "με τα ονόματα"
	line "εδώ και στο"

	para "πως υποτίθεται να"
	line "χρησιμοποιούνται…"
	done

CeladonDeptStore2FDirectoryText:
	text "Κορυφαία πράγματα"
	line "για εκπαιδευτές!"

	para "2ος: ΑΓΟΡΑ"
	line "ΕΚΠΑΙΔΕΥΤΗ"
	done

CeladonDeptStore2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, CELADON_DEPT_STORE_3F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_1F, 3
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, CeladonDeptStore2FDirectory
	bg_event  3,  0, BGEVENT_READ, CeladonDeptStore2FElevatorButton

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FClerk1Script, -1
	object_event 14,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FClerk2Script, -1
	object_event  5,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FPokefanMScript, -1
	object_event  6,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonDeptStore2FYoungsterScript, -1
