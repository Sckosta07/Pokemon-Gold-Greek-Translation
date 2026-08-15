	object_const_def
	const EARLSPOKEMONACADEMY_EARL
	const EARLSPOKEMONACADEMY_YOUNGSTER1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID2
	const EARLSPOKEMONACADEMY_YOUNGSTER2
	const EARLSPOKEMONACADEMY_POKEDEX

EarlsPokemonAcademy_MapScripts:
	def_scene_scripts

	def_callbacks

AcademyEarl:
	applymovement EARLSPOKEMONACADEMY_EARL, AcademyEarlSpinMovement
	faceplayer
	opentext
	writetext AcademyEarlIntroText
	yesorno
	iffalse .Part1
	writetext AcademyEarlTeachHowToWinText
	yesorno
	iffalse .Done
.Part1:
	writetext AcademyEarlTeachMoreText
	yesorno
	iffalse .Done
	writetext AcademyEarlTeachHowToRaiseWellText
	waitbutton
	closetext
	end

.Done:
	writetext AcademyEarlNoMoreToTeachText
	waitbutton
	closetext
	end

EarlsPokemonAcademyYoungster1Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster1Text

EarlsPokemonAcademyGameboyKid1Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid1Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID1, DOWN
	end

EarlsPokemonAcademyGameboyKid2Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid2Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID2, DOWN
	end

EarlsPokemonAcademyYoungster2Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster2Text

AcademyBlackboard:
	opentext
	writetext AcademyBlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext AcademyPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext AcademyParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext AcademySleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext AcademyBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext AcademyFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "ΔΛΤ@"
	db "ΠΑΡ@"
	db "ΥΠΝ@"
	db "ΚΨΜ@"
	db "ΠΓΜ@"
	db "ΦΥΓΕ@"

AcademyNotebook:
	opentext
	writetext AcademyNotebookText
	yesorno
	iffalse .Done
	writetext AcademyNotebookText1
	yesorno
	iffalse .Done
	writetext AcademyNotebookText2
	yesorno
	iffalse .Done
	writetext AcademyNotebookText3
	waitbutton
.Done:
	closetext
	end

AcademyStickerMachine: ; unreferenced
	jumptext AcademyStickerMachineText

AcademyBookshelf:
	jumpstd DifficultBookshelfScript

AcademyEarlSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

AcademyEarlIntroText:
	text "EARL, εγώ είμαι!"

	para "Όμορφα τα"
	line "#MON, ναι!"

	para "Σε μάθω πως να"
	line "γίνεις καλύτερος"
	cont "εκπαιδευτής!"

	para "Τι θέλεις να"
	line "κάνεις; Ο νικήτης"
	cont "θες να είσαι;"
	done

AcademyEarlTeachHowToWinText:
	text "Καλώς! Θα σε"
	line "μάθω!"

	para "Στη μάχη, #μον"
	line "πρώτο στη λίστα"
	cont "βάλε το καλό!"

	para "Άλλαξε σειρά"
	line "στη λίστα, εύκολες"
	cont "μάχες κάνε!"

	para "Από εμένα θες"
	line "να μάθεις κι άλλα;"
	done

AcademyEarlTeachMoreText:
	text "Ώστε, θες να"
	line "μάθεις να μεγα-"
	cont "λώσεις #μον;"
	done

AcademyEarlTeachHowToRaiseWellText:
	text "Καλά! Καλά,"
	line "θα σε μάθω!"

	para "Αν #μον βγουν"
	line "στη μάχη ακόμα"

	para "και χτυπημένα,"
	line "EXP παίρνουν."

	para "Στην κορυφή"
	line "βάζε τα αδύναμα."

	para "Άλλαξε τα στη"
	line "μάχη γρήγορα!"

	para "Έτσι, τα αδύναμα"
	line "#μον δυνατά"
	cont "γίνονται!"
	done

AcademyEarlNoMoreToTeachText:
	text "Ω! Έξυπνος μαθητής"
	line "είσαι! Τίποτα"
	cont "άλλο δεν ξέρω."

	para "Καλός στα #μον"
	line "πρέπει να είσαι!"
	done

EarlsPokemonAcademyYoungster1Text:
	text "Παίρνω σημει-"
	line "ώσεις απ' ότι"
	cont "λέει ο δάσκαλος."

	para "Καλύτερα να"
	line "γράψω ότι υπάρχει"
	cont "στον πίνακα."
	done

EarlsPokemonAcademyGameboyKid1Text:
	text "Αντάλλαξα το"
	line "#μον μου στον"
	cont "τύπο δίπλα."
	done

EarlsPokemonAcademyGameboyKid2Text:
	text "Ε; Το #μον"
	line "που πήρα"
	cont "κρατάει κάτι!"
	done

EarlsPokemonAcademyYoungster2Text:
	text "#μον που κρατά"
	line "ΜΟΥΡΟ θα για-"
	cont "τρευτεί στη μάχη."

	para "Πολλά πράγματα"
	line "μπορεί να κρατά"
	cont "ένα #μον…"

	para "Σίγουρα κρατώ"
	line "σημειώσεις…"
	done

AcademyBlackboardText:
	text "Ο μαυροπίνακας"
	line "δείχνει αλλαγές"

	para "στα STATUS"
	line "στη μάχη."
	done

AcademyBlackboardText2: ; unreferenced
	text "Διάβασε ποιό;"
	done

AcademyPoisonText:
	text "Αν δηλητ. ένα"
	line "#μον σταθερά"
	cont "χάνει HP."

	para "Το δηλητ. μένει"
	line "μετά τη μάχη,"

	para "και χάνει HP"
	line "καθώς περπατάς."

	para "Για θεραπεία,"
	line "βάλε ΑΝΤΙΔΟΤΟ."
	done

AcademyParalysisText:
	text "Η παράλυση"
	line "μειώνει ταχύτητα"
	cont "εμποδίζει κίνηση."

	para "Παραμένει μετά"
	line "τη μάχη, άρα βάλε"
	cont "ΘΕΡ. ΠΑΡΑΛ."
	done

AcademySleepText:
	text "Αν κοιμηθεί, το"
	line "#μον δεν κάνει"
	cont "κινήσεις."

	para "Ένα κοιμησμένο"
	line "#μον δεν ξυπνά"
	cont "μετά τη μάχη."

	para "Ξύπνησε το"
	line "με ΑΦΥΠΝΙΣΗ."
	done

AcademyBurnText:
	text "Το κάψιμο"
	line "μειώνει HP."

	para "Επίσης μειώνει"
	line "επιθετική δύναμη."

	para "Το κάψιμο μένει"
	line "μετά τη μάχη."

	para "Βάλε ΘΕΡ. ΚΑΨΙΜΟ"
	line "ως θεραπεία."
	done

AcademyFreezeText:
	text "Αν το #μον"
	line "παγώσει, δεν"
	cont "κάνει κινήσεις."

	para "Μένει παγωμένο"
	line "μετά τη μάχη."

	para "Ξεπάγωσε το"
	line "με ΘΕΡ. ΠΑΓΟΥ."
	done

AcademyNotebookText:
	text "Είναι το τετράδιο"
	line "αυτού του παιδιού…"

	para "Πιάσε #MON"
	line "με # BALLS."

	para "Μέχρι 6 να έχεις"
	line "στην ομάδα σου."

	para "Συνέχισε;"
	done

AcademyNotebookText1:
	text "Πριν πετάξεις"
	line "# BALL, μείωσε"
	cont "το HP του πρώτα."

	para "Με κάψιμο ή δλτ"
	line "σε #μον πιά-"
	cont "νεται πιο εύκολα."

	para "Συνέχισε;"
	done

AcademyNotebookText2:
	text "Κάποιες κινήσεις"
	line "προκαλούν σύγχυση."

	para "Η σύγχυση κάνει"
	line "#μον να βλάπτει"
	cont "τον εαυτό του."

	para "Μετά τη μάχη"
	line "φεύγει κάθε"
	cont "σύγχυση."

	para "Συνέχισε;"
	done

AcademyNotebookText3:
	text "Αυτοί που"
	line "πιάνουν #μον"

	para "και κάνουν μάχες"
	line "είναι εκπ/τες."

	para "Υποτίθεται πως"
	line "πανε σε #μον"

	para "GYM και νικάνε"
	line "άλλους εκπ/τες."

	para "Η σελίδα"
	line "είναι… λευκή!"

	para "Αγόρι: Ε-χε-χε…"

	para "Δεν έχω γράψει"
	line "κάτι άλλο…"
	done

AcademyStickerMachineText:
	text "Η σούπερ μηχανή"
	line "εκτυπώνει δεδ."

	para "ως εικόνες!"
	done

EarlsPokemonAcademy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, VIOLET_CITY, 3
	warp_event  4, 15, VIOLET_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  1,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  3,  0, BGEVENT_READ, AcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, AcademyBlackboard

	def_object_events
	object_event  4,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AcademyEarl, EVENT_EARLS_ACADEMY_EARL
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster1Script, -1
	object_event  3, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid1Script, -1
	object_event  4, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid2Script, -1
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster2Script, -1
	object_event  2,  4, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AcademyNotebook, -1
