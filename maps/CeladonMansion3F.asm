	object_const_def
	const CELADONMANSION3F_COOLTRAINER_M
	const CELADONMANSION3F_GYM_GUIDE
	const CELADONMANSION3F_SUPER_NERD
	const CELADONMANSION3F_FISHER

CeladonMansion3F_MapScripts:
	def_scene_scripts

	def_callbacks

GameFreakGameDesignerScript:
	faceplayer
	opentext
	writetext GameFreakGameDesignerText
	readvar VAR_DEXCAUGHT
	ifgreater NUM_POKEMON - 2 - 1, .CompletedPokedex ; ignore Mew and Celebi
	waitbutton
	closetext
	end

.CompletedPokedex:
	promptbutton
	writetext GameFreakGameDesignerCompletedPokedexText
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	writetext GameFreakGameDesignerPauseForDiplomaText
	promptbutton
	special Diploma
	writetext GameFreakGameDesignerAfterDiplomaText
	waitbutton
	closetext
	setevent EVENT_ENABLE_DIPLOMA_PRINTING
	end

GameFreakGraphicArtistScript:
	faceplayer
	opentext
	checkevent EVENT_ENABLE_DIPLOMA_PRINTING
	iftrue .CanPrintDiploma
	writetext GameFreakGraphicArtistText
	waitbutton
	closetext
	end

.CanPrintDiploma:
	writetext GameFreakGraphicArtistPrintDiplomaText
	yesorno
	iffalse .Refused
	special PrintDiploma
	closetext
	end

.Refused:
	writetext GameFreakGraphicArtistRefusedText
	waitbutton
	closetext
	end

.CancelPrinting: ; unreferenced
	writetext GameFreakGraphicArtistErrorText
	waitbutton
	closetext
	end

GameFreakProgrammerScript:
	jumptextfaceplayer GameFreakProgrammerText

GameFreakCharacterDesignerScript:
	jumptextfaceplayer GameFreakCharacterDesignerText

CeladonMansion3FDevRoomSign:
	jumptext CeladonMansion3FDevRoomSignText

CeladonMansion3FDrawing:
	jumptext CeladonMansion3FDrawingText

CeladonMansion3FGameProgram:
	jumptext CeladonMansion3FGameProgramText

CeladonMansion3FReferenceMaterial:
	jumptext CeladonMansion3FReferenceMaterialText

GameFreakGameDesignerText:
	text "Έτσι δεν είναι;"

	para "Είμαι ο"
	line "ΣΧΕΔΙΑΣΤΗΣ!"

	para "Το #ντεξ"
	line "ήταν δύσκολο, μα"
	cont "δεν παραιτούμαι!"
	done

GameFreakGameDesignerCompletedPokedexText:
	text "Ουάου! Τέλεια!"
	line "ολοκληρωσες το"
	cont "#ντεξ!"

	para "Συγχαρητήρια!"
	done

GameFreakGameDesignerPauseForDiplomaText:
	text "…"
	done

GameFreakGameDesignerAfterDiplomaText:
	text "Ο ΓΡΑΦΙΣΤΑΣ"
	line "θα εκτυπώσει το"
	cont "ΔΙΠΛΩΜΑ σου."

	para "Πήγαινε να"
	line "δείξεις."
	done

GameFreakGraphicArtistText:
	text "Είμαι ο"
	line "ΓΡΑΦΙΣΤΑΣ."

	para "Σε σχεδίασα!"
	done

GameFreakGraphicArtistPrintDiplomaText:
	text "Είμαι ο"
	line "ΓΡΑΦΙΣΤΑΣ."

	para "Ω, Ολοκλήρωσες"
	line "το #ντεξ;"

	para "Θες να εκτυπώσω"
	line "το ΔΙΠΛΩΜΑ;"
	done

GameFreakGraphicArtistRefusedText:
	text "Πες μου αν"
	line "θες το ΔΙΠΛΩΜΑ"
	cont "σου εκτυπωμένο."
	done

GameFreakGraphicArtistErrorText:
	text "Κατι έγινε."
	line "Θα ακυρώσω"
	cont "την εκτύπωση."
	done

GameFreakProgrammerText:
	text "Εγώ; Είμαι ο"
	line "ΠΡΟΓΡΑΜΜΑΤΙΣΤΗΣ."

	para "Κάνε πολλές"
	line "μάχες!"
	done

GameFreakCharacterDesignerText:
	text "Δεν είναι οι"
	line "ΔΥΔΙΜΕΣ ωραίες;"

	para "Η JASMINE είναι"
	line "επίσης όμορφη."

	para "Ω, τις αγαπώ!"
	done

CeladonMansion3FDevRoomSignText:
	text "GAME FREAK"
	line "ΔΩΜΑΤΙΟ ΑΝΑΠΤΥΞΗΣ"
	done

CeladonMansion3FDrawingText:
	text "Είναι σχέδιο"
	line "ενός όμορφου"
	cont "κοριτσιού."
	done

CeladonMansion3FGameProgramText:
	text "Είναι ο κώδικας."
	line "Παίζοντας με"

	para "αυτόν θα βγάλει"
	line "προβλήματα!"
	done

CeladonMansion3FReferenceMaterialText:
	text "Είναι γεμάτο με"
	line "διαφορά υλικά."
	cont "Υπάρχει ακόμα"
	cont "και ΠΟΚΕ ΚΟΥΚΛΑ."
	done

CeladonMansion3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  0, CELADON_MANSION_ROOF, 1
	warp_event  1,  0, CELADON_MANSION_2F, 2
	warp_event  6,  0, CELADON_MANSION_2F, 3
	warp_event  7,  0, CELADON_MANSION_ROOF, 2

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_UP, CeladonMansion3FDevRoomSign
	bg_event  4,  3, BGEVENT_UP, CeladonMansion3FDrawing
	bg_event  1,  6, BGEVENT_UP, CeladonMansion3FGameProgram
	bg_event  1,  3, BGEVENT_UP, CeladonMansion3FReferenceMaterial

	def_object_events
	object_event  3,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameFreakGameDesignerScript, -1
	object_event  3,  4, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameFreakGraphicArtistScript, -1
	object_event  0,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameFreakProgrammerScript, -1
	object_event  0,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameFreakCharacterDesignerScript, -1
