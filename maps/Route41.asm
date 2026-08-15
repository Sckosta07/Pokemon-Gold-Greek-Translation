	object_const_def
	const ROUTE41_OLIVINE_RIVAL1
	const ROUTE41_OLIVINE_RIVAL2
	const ROUTE41_OLIVINE_RIVAL3
	const ROUTE41_OLIVINE_RIVAL4
	const ROUTE41_OLIVINE_RIVAL5
	const ROUTE41_SWIMMER_GIRL1
	const ROUTE41_SWIMMER_GIRL2
	const ROUTE41_SWIMMER_GIRL3
	const ROUTE41_SWIMMER_GIRL4
	const ROUTE41_SWIMMER_GIRL5

Route41_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmerfKaylee:
	trainer SWIMMERF, KAYLEE, EVENT_BEAT_SWIMMERF_KAYLEE, SwimmerfKayleeSeenText, SwimmerfKayleeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfKayleeAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfSusie:
	trainer SWIMMERF, SUSIE, EVENT_BEAT_SWIMMERF_SUSIE, SwimmerfSusieSeenText, SwimmerfSusieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfSusieAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfDenise:
	trainer SWIMMERF, DENISE, EVENT_BEAT_SWIMMERF_DENISE, SwimmerfDeniseSeenText, SwimmerfDeniseBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfDeniseAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfKara:
	trainer SWIMMERF, KARA, EVENT_BEAT_SWIMMERF_KARA, SwimmerfKaraSeenText, SwimmerfKaraBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfKaraAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmerfWendy:
	trainer SWIMMERF, WENDY, EVENT_BEAT_SWIMMERF_WENDY, SwimmerfWendySeenText, SwimmerfWendyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerfWendyAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermCharlie:
	trainer SWIMMERM, CHARLIE, EVENT_BEAT_SWIMMERM_CHARLIE, SwimmermCharlieSeenText, SwimmermCharlieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermCharlieAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermGeorge:
	trainer SWIMMERM, GEORGE, EVENT_BEAT_SWIMMERM_GEORGE, SwimmermGeorgeSeenText, SwimmermGeorgeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermGeorgeAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermBerke:
	trainer SWIMMERM, BERKE, EVENT_BEAT_SWIMMERM_BERKE, SwimmermBerkeSeenText, SwimmermBerkeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermBerkeAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermKirk:
	trainer SWIMMERM, KIRK, EVENT_BEAT_SWIMMERM_KIRK, SwimmermKirkSeenText, SwimmermKirkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermKirkAfterBattleText
	waitbutton
	closetext
	end

TrainerSwimmermMathew:
	trainer SWIMMERM, MATHEW, EVENT_BEAT_SWIMMERM_MATHEW, SwimmermMathewSeenText, SwimmermMathewBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermMathewAfterBattleText
	waitbutton
	closetext
	end

Route41Rock: ; unreferenced
	jumpstd SmashRockScript

Route41HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_41_HIDDEN_MAX_ETHER

SwimmermCharlieSeenText:
	text "Είναι ζεστά"
	line "εδώ. Χαλαρώνω"
	cont "και ξεπιάνομαι."

	para "Σίγουρα, θα"
	line "κάνουμε μάχη!"
	done

SwimmermCharlieBeatenText:
	text "Αμάν! Έχω"
	line "ξηρό δέρμα!"
	done

SwimmermCharlieAfterBattleText:
	text "Δεν χαλαρώνεις"
	line "με το να επιπλέεις"
	cont "έτσι;"
	done

SwimmermGeorgeSeenText:
	text "Κουράστηκα."
	line "Αν νικήσω, θα πάω"
	cont "με το δικό σου."
	done

SwimmermGeorgeBeatenText:
	text "Παντ, παντ…"
	done

SwimmermGeorgeAfterBattleText:
	text "Είναι μακριά για"
	line "τη CIANWOOD."

	para "Μα δεν είναι"
	line "απλό ταξίδι στην"
	cont "OLIVINE."

	para "Τι να κάνω;"
	done

SwimmermBerkeSeenText:
	text "Βλέπεις τα νησιά"
	line "που μπλοκάρονται"
	cont "από ρουφήχτρες;"

	para "Πρέπει να"
	line "είναι μυστικά!"
	done

SwimmermBerkeBeatenText:
	text "Τι είναι μυστικό"
	line "στη δύναμη σου;"
	done

SwimmermBerkeAfterBattleText:
	text "Ηταν σκοτεινή"
	line "& μουντή νύχτα…"

	para "Είδα το γιγάντιο"
	line "#μον να πετάει"
	cont "από τα νησιά."

	para "Σκορπισαν φτερά"
	line "από τα ασημένια"
	cont "φτερά του."
	done

SwimmermKirkSeenText:
	text "Τα κύματα είναι"
	line "άγρια εδώ."

	para "Θα σε κουράσουν"
	line "όσο κολυμπάς."
	done

SwimmermKirkBeatenText:
	text "Νικήθηκα!"
	done

SwimmermKirkAfterBattleText:
	text "Τα ρεύματα με"
	line "κρατάνε από το"
	cont "να φτάσω στο νησί."
	done

SwimmermMathewSeenText:
	text "Ψάχνεις τα"
	line "μυστικά για τα"
	cont "ΓΥΡΙΣΤΑ ΝΗΣΙΑ;"
	done

SwimmermMathewBeatenText:
	text "Ουχ, έχεις"
	line "μεγάλη αντοχή!"
	done

SwimmermMathewAfterBattleText:
	text "Μυστικό για τα"
	line "ΓΥΡΙΣΤΑ ΝΗΣΙΑ…"

	para "Έχει πολύ σκοτάδι"
	line "εκεί μέσα!"
	done

SwimmerfKayleeSeenText:
	text "Παω στα"
	line "ΓΥΡΙΣΤΑ ΝΗΣΙΑ."

	para "Πάω για εξερευνηση"
	line "με φίλους μου."
	done

SwimmerfKayleeBeatenText:
	text "Έτσι το κάνεις"
	line "εσύ;"
	done

SwimmerfKayleeAfterBattleText:
	text "Υποτίθεται πως"
	line "υπάρχει μεγάλο"
	cont "#μον βαθιά στα"
	cont "ΓΥΡΙΣΤΑ ΝΗΣΙΑ."

	para "Αναρωτιέμαι"
	line "ποιό να είναι;"
	done

SwimmerfSusieSeenText:
	text "Δείχνεις κομψός,"
	line "όταν είσαι πάνω"
	cont "σε #μον."
	done

SwimmerfSusieBeatenText:
	text "Χάθηκα…"
	done

SwimmerfSusieAfterBattleText:
	text "Δεν υπήρχε ένα"
	line "τραγούδι για έναν"
	cont "πάνω σε LAPRAS?"
	done

SwimmerfDeniseSeenText:
	text "Ο καιρός είναι"
	line "υπέροχος,"
	cont "ζαλίστηκα!"
	done

SwimmerfDeniseBeatenText:
	text "Ωχχχ!"
	done

SwimmerfDeniseAfterBattleText:
	text "Κάψιμο από ήλιο"
	line "είναι χειρότερο."

	para "Μα δεν βάζω"
	line "αντηλιακό."

	para "Δεν βρομίζω"
	line "το νερό."
	done

SwimmerfKaraSeenText:
	text "Αν θέλεις να"
	line "ξεκουραστείς,"
	cont "κάτσε στο νερό."

	para "Θα έχεις τον"
	line "αέρα πίσω, έτσι"

	para "ώστε να μπορείς"
	line "να συνεχίσεις."
	done

SwimmerfKaraBeatenText:
	text "Ωχ! Έχεις πιο"
	line "πολυ ενέργεια."
	done

SwimmerfKaraAfterBattleText:
	text "Ακουσα φωνές"
	line "βαθιά μέσα στα"
	cont "ΝΗΣΙΑ."
	done

SwimmerfWendySeenText:
	text "Τη νύχτα, STARYU"
	line "μαζεύονται στην"
	cont "άκρη του νερού."
	done

SwimmerfWendyBeatenText:
	text "Ω, φίλε…"
	done

SwimmerfWendyAfterBattleText:
	text "Η ομάδα των"
	line "STARYU λάμπει"
	cont "την ίδια στιγμή."

	para "Είναι όμορφη,"
	line "μα με τρομάζει."
	done

Route41_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 17, WHIRL_ISLAND_NW, 1
	warp_event 36, 19, WHIRL_ISLAND_NE, 1
	warp_event 12, 37, WHIRL_ISLAND_SW, 1
	warp_event 36, 45, WHIRL_ISLAND_SE, 1

	def_coord_events

	def_bg_events
	bg_event  9, 35, BGEVENT_ITEM, Route41HiddenMaxEther

	def_object_events
	object_event 32,  6, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermCharlie, -1
	object_event 46,  8, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermGeorge, -1
	object_event 20, 26, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermBerke, -1
	object_event 32, 30, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermKirk, -1
	object_event 19, 46, SPRITE_OLIVINE_RIVAL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermMathew, -1
	object_event 17,  4, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfKaylee, -1
	object_event 23, 19, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfSusie, -1
	object_event 27, 34, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfDenise, -1
	object_event 44, 28, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerfKara, -1
	object_event  9, 50, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSwimmerfWendy, -1
