	object_const_def
	const GOLDENRODDEPTSTORE2F_CLERK1
	const GOLDENRODDEPTSTORE2F_CLERK2
	const GOLDENRODDEPTSTORE2F_YOUNGSTER
	const GOLDENRODDEPTSTORE2F_COOLTRAINER_F
	const GOLDENRODDEPTSTORE2F_GENTLEMAN

GoldenrodDeptStore2F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore2FClerk1Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_2F_1
	closetext
	end

GoldenrodDeptStore2FClerk2Script:
	faceplayer
	opentext
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_2F_2
	closetext
	end

GoldenrodDeptStore2FYoungsterScript:
	jumptextfaceplayer GoldenrodDeptStore2FYoungsterText

GoldenrodDeptStore2FCooltrainerFScript:
	jumptextfaceplayer GoldenrodDeptStore2FCooltrainerFText

GoldenrodDeptStore2FGentlemanScript:
	jumptextfaceplayer GoldenrodDeptStore2FGentlemanText

GoldenrodDeptStore2FDirectory:
	jumptext GoldenrodDeptStore2FDirectoryText

GoldenrodDeptStore2FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore2FUnusedText1: ; unreferenced
	text "Σκοπεύουμε να"
	line "πουλήσουμε διά-"
	cont "φορα πράγματα."

	para "Είναι δωρεάν"
	line "δώρο. Βάλτο σε"
	cont "#μον να κρατά."
	done

GoldenrodDeptStore2FUnusedText2: ; unreferenced
	text "Δώσε σε #μον"
	line "να κρατούν κατά"
	cont "τη μάχη και θα"
	cont "έχεις το"
	cont "πλεονέκτημα."
	done

GoldenrodDeptStore2FYoungsterText:
	text "Το #GEAR"
	line "έχει 10 αριθμούς"
	cont "τηλεφώνου."

	para "Είναι δύσκολο"
	line "ποιούς να"
	cont "κρατήσεις."
	done

GoldenrodDeptStore2FCooltrainerFText:
	text "Πήρα ABRA στη"
	line "ΓΩΝΙΑ ΠΑΙΧΝΙΔΙΟΥ."

	para "Τώρα είμαστε"
	line "φιλαράκια."
	done

GoldenrodDeptStore2FGentlemanText:
	text "Αυτό το μέρος με"
	line "κάνει να νιώθω"

	para "την GOLDENROD"
	line "ως μεγάλη πόλη."

	para "Η συλλογή εδώ"
	line "δεν υπάρχει"
	cont "κάπου αλλού."
	done

GoldenrodDeptStore2FDirectoryText:
	text "Η Συντροφιά"
	line "Ταξιδιού Σου"

	para "2ος ΑΓΟΡΑ"
	line "ΕΚΠΑΙΔΕΥΤΩΝ"
	done

GoldenrodDeptStore2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_3F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_1F, 3
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore2FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore2FElevatorButton

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FClerk1Script, -1
	object_event 13,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FClerk2Script, -1
	object_event  9,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FYoungsterScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FCooltrainerFScript, -1
	object_event  2,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FGentlemanScript, -1
