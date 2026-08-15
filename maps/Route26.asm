	object_const_def
	const ROUTE26_COOLTRAINER_M1
	const ROUTE26_COOLTRAINER_M2
	const ROUTE26_COOLTRAINER_F1
	const ROUTE26_COOLTRAINER_F2
	const ROUTE26_YOUNGSTER
	const ROUTE26_FISHER
	const ROUTE26_FRUIT_TREE
	const ROUTE26_POKE_BALL

Route26_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCooltrainermJake:
	trainer COOLTRAINERM, JAKE, EVENT_BEAT_COOLTRAINERM_JAKE, CooltrainermJakeSeenText, CooltrainermJakeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermJakeAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermGaven3:
	trainer COOLTRAINERM, GAVEN3, EVENT_BEAT_COOLTRAINERM_GAVEN, CooltrainermGaven3SeenText, CooltrainermGaven3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_GAVEN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_COOLTRAINERM_GAVEN
	iftrue .NumberAccepted
	checkevent EVENT_GAVEN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext CooltrainermGavenAfterText
	promptbutton
	setevent EVENT_GAVEN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_COOLTRAINERM_GAVEN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, COOLTRAINERM, GAVEN3
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext CooltrainermGaven3BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer COOLTRAINERM, GAVEN3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_GAVEN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer COOLTRAINERM, GAVEN1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_GAVEN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer COOLTRAINERM, GAVEN2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_GAVEN_READY_FOR_REMATCH
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

.Rematch:
	jumpstd RematchMScript
	end

TrainerCooltrainerfJoyce:
	trainer COOLTRAINERF, JOYCE, EVENT_BEAT_COOLTRAINERF_JOYCE, CooltrainerfJoyceSeenText, CooltrainerfJoyceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfJoyceAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfBeth1:
	trainer COOLTRAINERF, BETH1, EVENT_BEAT_COOLTRAINERF_BETH, CooltrainerfBeth1SeenText, CooltrainerfBeth1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_BETH_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_COOLTRAINERF_BETH
	iftrue .NumberAccepted
	checkevent EVENT_BETH_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext CooltrainerfBethAfterText
	promptbutton
	setevent EVENT_BETH_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_COOLTRAINERF_BETH
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, COOLTRAINERF, BETH1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext CooltrainerfBeth1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer COOLTRAINERF, BETH1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_BETH_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer COOLTRAINERF, BETH2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_BETH_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer COOLTRAINERF, BETH3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_BETH_READY_FOR_REMATCH
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

.Rematch:
	jumpstd RematchFScript
	end

TrainerPsychicRichard:
	trainer PSYCHIC_T, RICHARD, EVENT_BEAT_PSYCHIC_RICHARD, PsychicRichardSeenText, PsychicRichardBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicRichardAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherScott:
	trainer FISHER, SCOTT, EVENT_BEAT_FISHER_SCOTT, FisherScottSeenText, FisherScottBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherScottAfterBattleText
	waitbutton
	closetext
	end

Route26Sign:
	jumptext Route26SignText

Route26FruitTree:
	fruittree FRUITTREE_ROUTE_26

Route26MaxElixer:
	itemball MAX_ELIXER

CooltrainermJakeSeenText:
	text "Κάνω τις τελικές"
	line "προετοιμασίες"

	para "για το"
	line "ΠΡΩΤΑΘΛΗΜΑ."
	done

CooltrainermJakeBeatenText:
	text "Τα θαλάσσωσα!"
	done

CooltrainermJakeAfterBattleText:
	text "Είναι δύσκολο"
	line "να γίνείς"
	cont "ΠΡΩΤΑΘΛΗΤΗΣ."

	para "Πρέπει να προ-"
	line "πονηθώ & άλλο."

	para "Άκουσα πως οι"
	line "4 ΕΛΙΤ είναι"

	para "πιο δύσκολοι από"
	line "ΗΓΕΤΕΣ GYM."
	done

CooltrainermGaven3SeenText:
	text "Με τις δύσκολες"
	line "μάχες, αποκτάς"
	cont "δύναμη."
	done

CooltrainermGaven3BeatenText:
	text "Γααχ! Η ζωή"
	line "είναι πιο δύσκολη!"
	done

CooltrainermGavenAfterText:
	text "Για το ΠΡΩΤΑ-"
	line "ΘΛΗΜΑ, πρέπει"

	para "να πας στον"
	line "ΔΡΟΜΟ ΝΙΚΗΣ."

	para "Μα αυτός"
	line "είναι δύσκολος."

	para "Πρακτικά κανείς"
	line "δεν πάει εκεί!"
	done

CooltrainerfJoyceSeenText:
	text "Αφού έφτασες"
	line "μέχρι εδώ, θα"
	cont "είσαι καλός."

	para "Θα δώσω ότι"
	line "έχω σε αυτή"
	cont "τη μάχη!"
	done

CooltrainerfJoyceBeatenText:
	text "Όχι! Δεν το"
	line "πιστεύω αυτό!"
	done

CooltrainerfJoyceAfterBattleText:
	text "Νίκησα οκτώ"
	line "ΗΓΕΤΕΣ GYM,"

	para "έτσι ένιωθα"
	line "αυτοπεποίθηση."

	para "Θα προσπαθήσω πιο"
	line "πολύ άλλη φορά."
	done

CooltrainerfBeth1SeenText:
	text "Έχασα από"
	line "τον <RIVAL>."

	para "Ήταν πολύ"
	line "δυνατός, μα…"

	para "Ήταν σαν έπρε-"
	line "πε να νικήσει"
	cont "με κάθε κόστος."

	para "Λυπάμαι το"
	line "#μον του."
	done

CooltrainerfBeth1BeatenText:
	text "#μον δεν"
	line "είναι για πόλεμο."
	done

CooltrainerfBethAfterText:
	text "#μον είναι"
	line "πολυτιμοι"
	cont "συνεργάτες."
	done

PsychicRichardSeenText:
	text "Ουάου, κοίτα"
	line "τα ΕΜΒΛΗΜΑΤΑ!"
	cont "Εντυπωσιάστηκα."

	para "Μα δεν σου αρκεί"
	line "απλώς να τα"

	para "συλλέγεις,"
	line "σωστά;"
	done

PsychicRichardBeatenText:
	text "Ωραία μάχη!"
	done

PsychicRichardAfterBattleText:
	text "Άτομα & #μον"
	line "μεγαλώνουν από"
	cont "εμπειρίες."

	para "Μην τεμπελιάζεις"
	line "και ησυχάζεις."
	done

FisherScottSeenText:
	text "Νιώθω ωραία"
	line "σήμερα!"

	para "Νιώθω σαν να"
	line "μπορώ να γίνω"
	cont "ΠΡΩΤΑΘΛΗΤΗΣ!"
	done

FisherScottBeatenText:
	text "Όχι! Όχι σε"
	line "αυτή τη μάχη!"
	done

FisherScottAfterBattleText:
	text "Όπως στο"
	line "ψάρεμα, έχει"

	para "τελειώσει όταν"
	line "τα παρατάς."
	done

Route26SignText:
	text "ΔΡΟΜΟΣ 26"

	para "ΠΡΩΤΑΘΛΗΜΑ"
	line "ΠΥΛΗ ΥΠΟΔΟΧΗΣ"
	done

Route26_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  5, VICTORY_ROAD_GATE, 3
	warp_event 15, 57, ROUTE_26_HEAL_HOUSE, 1
	warp_event  5, 71, DAY_OF_WEEK_SIBLINGS_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  8,  6, BGEVENT_READ, Route26Sign

	def_object_events
	object_event 11, 16, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermJake, -1
	object_event  9, 38, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerCooltrainermGaven3, -1
	object_event 10, 56, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfJoyce, -1
	object_event  5,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerfBeth1, -1
	object_event 13, 79, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerPsychicRichard, -1
	object_event 10, 92, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerFisherScott, -1
	object_event 14, 54, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route26FruitTree, -1
	object_event  9, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route26MaxElixer, EVENT_ROUTE_26_MAX_ELIXER
