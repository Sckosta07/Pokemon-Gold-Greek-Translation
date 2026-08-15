	object_const_def
	const ROUTE19_SWIMMER_GIRL
	const ROUTE19_SWIMMER_GUY1
	const ROUTE19_SWIMMER_GUY2
	const ROUTE19_SWIMMER_GUY3
	const ROUTE19_FISHER1
	const ROUTE19_FISHER2

Route19_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route19ClearRocksCallback

Route19ClearRocksCallback:
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .Done
	changeblock  6,  6, $7a ; rock
	changeblock  8,  6, $7a ; rock
	changeblock 10,  6, $7a ; rock
	changeblock 12,  8, $7a ; rock
	changeblock  4,  8, $7a ; rock
	changeblock 10, 10, $7a ; rock
.Done:
	endcallback

TrainerSwimmerfDawn:
	trainer SWIMMERF, DAWN, EVENT_BEAT_SWIMMERF_DAWN, SwimmerfDawnSeenText, SwimmerfDawnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfDawnAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermHarold:
	trainer SWIMMERM, HAROLD, EVENT_BEAT_SWIMMERM_HAROLD, SwimmermHaroldSeenText, SwimmermHaroldBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermHaroldAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermJerome:
	trainer SWIMMERM, JEROME, EVENT_BEAT_SWIMMERM_JEROME, SwimmermJeromeSeenText, SwimmermJeromeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermJeromeAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermTucker:
	trainer SWIMMERM, TUCKER, EVENT_BEAT_SWIMMERM_TUCKER, SwimmermTuckerSeenText, SwimmermTuckerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermTuckerAfterBattleText
	waitbutton
	closetext
	end

Route19Fisher1Script:
	faceplayer
	opentext
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .RocksCleared
	writetext Route19Fisher1Text
	waitbutton
	closetext
	end

.RocksCleared:
	writetext Route19Fisher1Text_RocksCleared
	waitbutton
	closetext
	end

Route19Fisher2Script:
	faceplayer
	opentext
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue .RocksCleared
	writetext Route19Fisher2Text
	waitbutton
	closetext
	end

.RocksCleared:
	writetext Route19Fisher2Text_RocksCleared
	waitbutton
	closetext
	end

Route19Sign:
	jumptext Route19SignText

CarefulSwimmingSign:
	jumptext CarefulSwimmingSignText

SwimmermHaroldSeenText:
	text "Έχεις κολυμπήσει"
	line "ποτέ στη θάλα-"
	cont "σσα τη νύχτα;"
	done

SwimmermHaroldBeatenText:
	text "Γλουμπ…"
	done

SwimmermHaroldAfterBattleText:
	text "Τη νύχτα, η θά-"
	line "λασσα είναι μαύρη,"

	para "νιώθω σαν"
	line "σε τραβάει μέσα."
	done

SwimmermTuckerSeenText:
	text "Παντ, παντ…"
	line "Απλά… λίγο…"

	para "πιο… κοντά…"
	line "στη FUCHSIA…"
	done

SwimmermTuckerBeatenText:
	text "Πνίγομαι!"
	done

SwimmermTuckerAfterBattleText:
	text "Ζήτησα σε φίλη"
	line "μου να κολυμπήσει"
	cont "μέχρι FUCHSIA…"
	done

SwimmerfDawnSeenText:
	text "Αντιπαθώ τα"
	line "αδύναμα τυπάκια!"
	done

SwimmerfDawnBeatenText:
	text "Σε νικάω"
	line "στο κολύμπι…"
	done

SwimmerfDawnAfterBattleText:
	text "Γρήγορο Κολύμπι"
	line "μεταξύ FUCHSIA"

	para "και τα ΑΦΡΟΔΗ"
	line "ΝΗΣΙΑ…"

	para "Φίλε, τι μάγκας"
	line "που είναι ο φίλος"

	para "μου! Φλώρε!"
	done

SwimmermJeromeSeenText:
	text "Κολύμπι;"
	line "Τα πάω χάλια."

	para "Πλατσουρίζω"
	line "σε αυτά τα"
	cont "βαθιά νερά."
	done

SwimmermJeromeBeatenText:
	text "Νόμιζα πως"
	line "θα νικούσα."
	done

SwimmermJeromeAfterBattleText:
	text "Δεν είμαι καλός"
	line "στο κολύμπι, μα"
	cont "αγαπώ τη θάλασσα."
	done

Route19Fisher1Text:
	text "Συγνώμη. Ο δρόμος"
	line "έκλεισε για"
	cont "κατασκευή."

	para "Αν θέλετε να πάτε"
	line "στο CINNABAR,"

	para "καλύτερα νότια"
	line "στην ΠΟΛΗ PALLEΤ."
	done

Route19Fisher1Text_RocksCleared:
	text "Έχω βραχεί."
	line "Ώρα για κολύμπι!"
	done

Route19Fisher2Text:
	text "Ποιός ξέρει πόσο"
	line "θα είναι για να"
	cont "κουνηθεί ο βράχος…"
	done

Route19Fisher2Text_RocksCleared:
	text "Τα οδικά έργα"
	line "τελείωσαν πλέον."

	para "Τώρα πάω"
	line "για ψάρεμα πάλι."
	done

Route19SignText:
	text "ΔΡΟΜΟΣ 19"

	para "ΠΟΛΗ FUCHSIA -"
	line "ΑΦΡΟΔΗ ΝΗΣΙΑ"
	done

CarefulSwimmingSignText:
	text "Προσέχετε"
	line "αν κολυμπάτε"
	cont "στα ΑΦΡΟΔΗ"
	cont "ΝΗΣΙΑ."

	para "ΑΣΤΥΝΟΜΙΑ"
	done

Route19_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  3, ROUTE_19_FUCHSIA_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 11, 13, BGEVENT_READ, Route19Sign
	bg_event 11,  1, BGEVENT_READ, CarefulSwimmingSign

	def_object_events
	object_event  9, 23, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerSwimmerfDawn, -1
	object_event 13, 28, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermHarold, -1
	object_event 11, 17, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermJerome, -1
	object_event  8, 23, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerSwimmermTucker, -1
	object_event  9,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 1, Route19Fisher1Script, -1
	object_event 11,  5, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, Route19Fisher2Script, -1
