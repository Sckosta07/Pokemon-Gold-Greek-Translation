	object_const_def
	const NATIONALPARK_LASS1
	const NATIONALPARK_POKEFAN_F1
	const NATIONALPARK_TEACHER1
	const NATIONALPARK_YOUNGSTER1
	const NATIONALPARK_YOUNGSTER2
	const NATIONALPARK_TEACHER2
	const NATIONALPARK_PERSIAN
	const NATIONALPARK_YOUNGSTER3
	const NATIONALPARK_POKEFAN_F2
	const NATIONALPARK_POKEFAN_M
	const NATIONALPARK_LASS2
	const NATIONALPARK_POKE_BALL1
	const NATIONALPARK_GAMEBOY_KID
	const NATIONALPARK_POKE_BALL2

NationalPark_MapScripts:
	def_scene_scripts

	def_callbacks

NationalParkLassScript:
	jumptextfaceplayer NationalParkLassText

NationalParkPokefanFScript:
	jumptextfaceplayer NationalParkPokefanFText

NationalParkTeacher1Script:
	faceplayer
	opentext
	checkevent EVENT_GOT_QUICK_CLAW
	iftrue .GotQuickClaw
	writetext NationalParkTeacher1Text
	promptbutton
	verbosegiveitem QUICK_CLAW
	iffalse .NoRoom
	setevent EVENT_GOT_QUICK_CLAW
.GotQuickClaw:
	writetext NationalParkTeacher1Text_GotQuickClaw
	waitbutton
.NoRoom:
	closetext
	end

NationalParkYoungster1Script:
	jumptextfaceplayer NationalParkYoungster1Text

NationalParkYoungster2Script:
	jumptextfaceplayer NationalParkYoungster2Text

NationalParkTeacher2Script:
	jumptextfaceplayer NationalParkTeacher2Text

NationalParkPersian:
	faceplayer
	opentext
	writetext NationalParkPersianText
	cry PERSIAN
	waitbutton
	closetext
	end

NationalParkGameboyKidScript:
	faceplayer
	opentext
	writetext NationalParkGameboyKidText
	waitbutton
	closetext
	turnobject NATIONALPARK_GAMEBOY_KID, DOWN
	end

TrainerSchoolboyJack1:
	trainer SCHOOLBOY, JACK1, EVENT_BEAT_SCHOOLBOY_JACK, SchoolboyJack1SeenText, SchoolboyJack1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_JACK_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_SCHOOLBOY_JACK
	iftrue .NumberAccepted
	checkevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext SchoolboyJackTradeMonText
	promptbutton
	setevent EVENT_JACK_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .RequestNumber

.AskAgain:
	scall .AskNumber2
.RequestNumber:
	askforphonenumber PHONE_SCHOOLBOY_JACK
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, JACK1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext SchoolboyJack1BeatenText, 0
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
	loadtrainer SCHOOLBOY, JACK1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_JACK_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, JACK2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_JACK_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, JACK3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_JACK_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1MScript
	end

.AskNumber2:
	jumpstd AskNumber2MScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberMScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedMScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedMScript
	end

.PhoneFull:
	jumpstd PhoneFullMScript
	end

.RematchStd:
	jumpstd RematchMScript
	end

TrainerPokefanmWilliam:
	trainer POKEFANM, WILLIAM, EVENT_BEAT_POKEFANM_WILLIAM, PokefanmWilliamSeenText, PokefanmWilliamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmWilliamAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanfBeverly1:
	trainer POKEFANF, BEVERLY1, EVENT_BEAT_POKEFANF_BEVERLY, PokefanfBeverly1SeenText, PokefanfBeverly1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_BEVERLY_READY_FOR_REMATCH
	iftrue .Rematch
	checkcellnum PHONE_POKEFAN_BEVERLY
	iftrue .NumberAccepted
	checkevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgain
	writetext PokefanBeverlyCuteMonText
	promptbutton
	setevent EVENT_BEVERLY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .RequestNumber

.AskAgain:
	scall .AskNumber2
.RequestNumber:
	askforphonenumber PHONE_POKEFAN_BEVERLY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, POKEFANF, BEVERLY1
	scall .RegisteredNumber
	sjump .NumberAccepted

.Rematch:
	scall .RematchStd
	winlosstext PokefanfBeverly1BeatenText, 0
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_MAHOGANY
	iftrue .LoadFight1
	loadtrainer POKEFANF, BEVERLY1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_BEVERLY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer POKEFANF, BEVERLY2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_BEVERLY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer POKEFANF, BEVERLY3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_BEVERLY_READY_FOR_REMATCH
	end

.AskNumber1:
	jumpstd AskNumber1FScript
	end

.AskNumber2:
	jumpstd AskNumber2FScript
	end

.RegisteredNumber:
	jumpstd RegisteredNumberFScript
	end

.NumberAccepted:
	jumpstd NumberAcceptedFScript
	end

.NumberDeclined:
	jumpstd NumberDeclinedFScript
	end

.PhoneFull:
	jumpstd PhoneFullFScript
	end

.RematchStd:
	jumpstd RematchFScript
	end

TrainerLassKrise:
	trainer LASS, KRISE, EVENT_BEAT_LASS_KRISE, LassKriseSeenText, LassKriseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassKriseAfterBattleText
	waitbutton
	closetext
	end

NationalParkRelaxationSquareSign:
	jumptext NationalParkRelaxationSquareText

NationalParkBattleNoticeSign:
	jumptext NationalParkBattleNoticeText

NationalParkTrainerTipsSign:
	jumptext NationalParkTrainerTipsText

NationalParkParlyzHeal:
	itemball PARLYZ_HEAL

NationalParkTMDig:
	itemball TM_DIG

NationalParkHiddenFullHeal:
	hiddenitem FULL_HEAL, EVENT_NATIONAL_PARK_HIDDEN_FULL_HEAL

NationalParkLassText:
	text "Κοίτα! Κοίτα"
	line "τον σακο μου!"

	para "Εκτύπωσα τα"
	line "αγαπημένα μου"

	para "στο #ντεξ και"
	line "τα εβαλα στο σάκο."
	done

NationalParkPokefanFText:
	text "Αυτό το MAIL το"
	line "πήρα απο αδελφή."
	cont "Χαίρομαι γι' αυτό."
	done

NationalParkTeacher1Text:
	text "Δώσε προσοχή,"
	line "παρακαλώ!"

	para "…Ουπς, πρέπει"
	line "να μην σκέφτομαι"

	para "σαν δασκάλα"
	line "όλη την ώρα."

	para "Πρέπει να είσαι"
	line "εκπ/της #μον."

	para "Αφού δουλεύεις"
	line "τόσο σκληρά,"

	para "θελω να πάρεις"
	line "αυτό."
	done

NationalParkTeacher1Text_GotQuickClaw:
	text "Άσε #μον να"
	line "κρατά ΤΑΧΥ ΝΥΧΙ."

	para "Κάποιες φόρες"
	line "χτυπάει πρώτο"
	cont "στη μάχη."
	done

NationalParkYoungster1Text:
	text "Παίζω με σχέδιο"
	line "που εκτύπωσα"
	cont "από #ντεξ."
	done

NationalParkYoungster2Text:
	text "Θα πάρω σχέδιο"
	line "από #ντεξ"
	cont "άλλου αν νικήσω."
	done

NationalParkTeacher2Text:
	text "Κάνω βόλτες στο"
	line "ΠΑΡΚΟ, μα"

	para "ποτέ δεν πάω"
	line "στα γρασίδια."

	para "Εκπ/τες θέλουν"
	line "πάντα μάχες…"
	done

NationalParkPersianText:
	text "PERSIAN: Φοφοσά!"
	done

NationalParkGameboyKidText:
	text "Εκτυπώνω το"
	line "#ντεξ μου."

	para "Εκτυπώνεις"
	line "και πράγματα όπως"

	para "MAIL και τα"
	line "ΚΟΥΤΙΑ PC."
	done

SchoolboyJack1SeenText:
	text "Ο #μον κόσμος"
	line "έχει βάθος."

	para "Υπάρχουν πολλά"
	line "πράγματα που"
	cont "δεν ξέρουμε."

	para "Μα ξέρω πιο"
	line "πολλά από εσένα!"
	done

SchoolboyJack1BeatenText:
	text "Τι-τι-τι;"
	done

SchoolboyJackTradeMonText:
	text "Υπάρχουν πολλά"
	line "να κάνεις."

	para "Παράδειγμα…"

	para "Υπάρχουν {d:NUM_TMS}"
	line "είδη από TM."

	para "Αντάλλαξε #μον"
	line "για ψηλά LEVEL."
	done

PokefanfBeverly1SeenText:
	text "Τα #μον είναι"
	line "όμορφα. Θα σου"
	cont "δείξω πόσο."
	done

PokefanfBeverly1BeatenText:
	text "Ίσως δεν σε"
	line "νικάω σε μάχη…"

	para "Μα τα δικά μου"
	line "είναι πιο όμορφα."
	done

PokefanBeverlyCuteMonText:
	text "Ο φίλος μου"
	line "έχει MARILL. Είναι"

	para "όμορφο! Μακάρι"
	line "να είχα MARILL."
	done

PokefanmWilliamSeenText:
	text "Λατρεύουμε #-"
	line "μον, ακόμα και αν"
	cont "μας αντιπαθούν."

	para "Έτσι είναι"
	line "οι ΦΑΝ."
	done

PokefanmWilliamBeatenText:
	text "Τα #μον μου!"
	done

PokefanmWilliamAfterBattleText:
	text "Έχασα σε μάχη,"
	line "μα το δικό μου"

	para "κερδίζει βραβείο"
	line "στο πιο όμορφο."
	done

LassKriseSeenText:
	text "Γεια; Γιατί με"
	line "κοιτάς έτσι;"

	para "Ω, μάχη;"
	done

LassKriseBeatenText:
	text "…Χμμμ…"
	done

LassKriseAfterBattleText:
	text "Ο τρόπος που με"
	line "κοιτούσες, ένιωσα"
	cont "πως σου αρέσω."

	para "Εξάλλου, είμαι"
	line "γλυκούλα!"
	done

NationalParkRelaxationSquareText:
	text "ΜΕΡΟΣ ΧΑΛΑΡΩΣΗΣ"
	line "ΕΘΝΙΚΟ ΠΑΡΚΟ"
	done

NationalParkBattleNoticeText:
	text "Τι είναι αυτή"
	line "η σημειωση;"

	para "Κάνε μάχες μόνο"
	line "στα γρασίδια."

	para "ΓΡΑΦΕΙΟ ΦΥΛΑΚΑ"
	line "ΕΘΝΙΚΟ ΠΑΡΚΟ"
	done

NationalParkTrainerTipsText:
	text "ΣΥΜΒΟΥΛΕΣ"

	para "Εκτύπωσε MAIL"
	line "ανοίγοντας το"
	cont "πατώντας START."
	done

NationalPark_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 33, 18, ROUTE_36_NATIONAL_PARK_GATE, 1
	warp_event 33, 19, ROUTE_36_NATIONAL_PARK_GATE, 2
	warp_event 10, 47, ROUTE_35_NATIONAL_PARK_GATE, 1
	warp_event 11, 47, ROUTE_35_NATIONAL_PARK_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 14, 44, BGEVENT_READ, NationalParkRelaxationSquareSign
	bg_event 27, 31, BGEVENT_READ, NationalParkBattleNoticeSign
	bg_event  6, 47, BGEVENT_ITEM, NationalParkHiddenFullHeal
	bg_event 12,  4, BGEVENT_READ, NationalParkTrainerTipsSign

	def_object_events
	object_event 15, 24, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NationalParkLassScript, -1
	object_event 14,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkPokefanFScript, -1
	object_event 27, 40, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, NationalParkTeacher1Script, -1
	object_event 11, 41, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkYoungster1Script, -1
	object_event 10, 41, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NationalParkYoungster2Script, -1
	object_event 17, 41, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkTeacher2Script, -1
	object_event 26, 40, SPRITE_GROWLITHE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkPersian, -1
	object_event 27, 23, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSchoolboyJack1, -1
	object_event 18, 29, SPRITE_POKEFAN_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokefanfBeverly1, -1
	object_event 16,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokefanmWilliam, -1
	object_event  8, 14, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassKrise, -1
	object_event 35, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NationalParkParlyzHeal, EVENT_NATIONAL_PARK_PARLYZ_HEAL
	object_event 26,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, NationalParkGameboyKidScript, -1
	object_event  1, 43, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, NationalParkTMDig, EVENT_NATIONAL_PARK_TM_DIG
