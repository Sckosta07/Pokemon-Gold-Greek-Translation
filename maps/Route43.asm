	object_const_def
	const ROUTE43_SUPER_NERD1
	const ROUTE43_SUPER_NERD2
	const ROUTE43_SUPER_NERD3
	const ROUTE43_FISHER
	const ROUTE43_LASS
	const ROUTE43_YOUNGSTER
	const ROUTE43_FRUIT_TREE
	const ROUTE43_POKE_BALL

Route43_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route43CheckIfRocketsScene

Route43CheckIfRocketsScene:
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .NoRockets
	setmapscene ROUTE_43_GATE, SCENE_ROUTE43GATE_ROCKET_SHAKEDOWN
	endcallback

.NoRockets:
	setmapscene ROUTE_43_GATE, SCENE_ROUTE43GATE_NOOP
	endcallback

TrainerCamperSpencer:
	trainer CAMPER, SPENCER, EVENT_BEAT_CAMPER_SPENCER, CamperSpencerSeenText, CamperSpencerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperSpencerAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacBen:
	trainer POKEMANIAC, BEN, EVENT_BEAT_POKEMANIAC_BEN, PokemaniacBenSeenText, PokemaniacBenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacBenAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacBrent:
	trainer POKEMANIAC, BRENT1, EVENT_BEAT_POKEMANIAC_BRENT, PokemaniacBrentSeenText, PokemaniacBrentBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_BRENT_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_POKEMANIAC_BRENT
	iftrue .NumberAccepted
	checkevent EVENT_BRENT_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PokemaniacBrentAfterBattleText
	promptbutton
	setevent EVENT_BRENT_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_POKEMANIAC_BRENT
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, POKEMANIAC, BRENT1
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext PokemaniacBrentBeatenText, 0
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .LoadFight1
	loadtrainer POKEMANIAC, BRENT1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_BRENT_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer POKEMANIAC, BRENT2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_BRENT_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer POKEMANIAC, BRENT3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_BRENT_READY_FOR_REMATCH
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

TrainerPokemaniacRon:
	trainer POKEMANIAC, RON, EVENT_BEAT_POKEMANIAC_RON, PokemaniacRonSeenText, PokemaniacRonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacRonAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherMarvin:
	trainer FISHER, MARVIN, EVENT_BEAT_FISHER_MARVIN, FisherMarvinSeenText, FisherMarvinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherMarvinAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerTiffany:
	trainer PICNICKER, TIFFANY3, EVENT_BEAT_PICNICKER_TIFFANY, PicnickerTiffanySeenText, PicnickerTiffanyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_TIFFANY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_PICNICKER_TIFFANY
	iftrue .NumberAccepted
	checkevent EVENT_TIFFANY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext PicnickerTiffanyWantsPicnicText
	promptbutton
	setevent EVENT_TIFFANY_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .AskForNumber

.AskedAlready:
	scall .AskNumber2
.AskForNumber:
	askforphonenumber PHONE_PICNICKER_TIFFANY
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, PICNICKER, TIFFANY3
	scall .RegisteredNumber
	sjump .NumberAccepted

.WantsBattle:
	scall .Rematch
	winlosstext PicnickerTiffanyBeatenText, 0
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight2
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight1
	loadtrainer PICNICKER, TIFFANY3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_TIFFANY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer PICNICKER, TIFFANY1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_TIFFANY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer PICNICKER, TIFFANY2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_TIFFANY_READY_FOR_REMATCH
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

Route43Sign1:
	jumptext Route43Sign1Text

Route43Sign2:
	jumptext Route43Sign2Text

Route43TrainerTips:
	jumptext Route43TrainerTipsText

Route43FruitTree:
	fruittree FRUITTREE_ROUTE_43

Route43MaxEther:
	itemball MAX_ETHER

PokemaniacBenSeenText:
	text "Λατρεύω #μον!"

	para "Γι' αυτό άρχισα"
	line "τώρα--και έτσι"

	para "θα συνεχίσω να"
	line "πιάνω #μον!"
	done

PokemaniacBenBeatenText:
	text "Πως μπόρεσες να"
	line "το κάνεις αυτό;"
	done

PokemaniacBenAfterBattleText:
	text "Τι άλλο μου"
	line "αρέσει εκτός"
	cont "από #μον;"

	para "Η MARY στο ράδιο."
	line "Θα είναι γλυκούλα!"
	done

PokemaniacBrentSeenText:
	text "Έι! Έχεις"
	line "σπάνια #μον;"
	done

PokemaniacBrentBeatenText:
	text "Τα φτωχά #μον"
	line "μου! Χρύσα μου!"
	done

PokemaniacBrentAfterBattleText:
	text "Θα χαρώ να"
	line "έχω ένα"
	cont "σπάνιο #μον."
	done

PokemaniacRonSeenText:
	text "Το καταλαβαίνεις"
	line "αυτό;"

	para "Ένας <RIVAL>"
	line "κοροΐδεψε τα"
	cont "#μον μου!"

	para "Να πάρει! Τα #-"
	line "μον μου είναι ΟΚ!"
	done

PokemaniacRonBeatenText:
	text "Το NIDOKING μου"
	line "είναι πολυ ικανό!"
	done

PokemaniacRonAfterBattleText:
	text "Είναι ΟΚ για"
	line "πολλούς να"

	para "έχουν διάφορους"
	line "τύπους #μον."

	para "#μον δεν είναι"
	line "απλά να έχεις"
	cont "τα πιο δυνατά."
	done

FisherMarvinSeenText:
	text "Κάνω βουτιά."

	para "Ίσως είναι το"
	line "εργαλείο που έχω."

	para "Πάμε μια μάχη"
	line "για αλλαγή ρυθμού;"
	done

FisherMarvinBeatenText:
	text "Έχασα, μα νιώθω"
	line "καλύτερα τώρα."
	done

FisherMarvinAfterBattleText:
	text "Η LURE BALL του"
	line "KURT είναι τέλειο"

	para "για πιάσιμο γα-"
	line "τζωμένων #μον."

	para "Είναι πιο"
	line "δυνατό απο μια"
	cont "ULTRA BALL."
	done

CamperSpencerSeenText:
	text "Κάνω τόσα"
	line "πολλά με #-"
	cont "μον--έχει πλάκα!"
	done

CamperSpencerBeatenText:
	text "Η ήττα δεν"
	line "έχει πλάκα…"
	done

CamperSpencerAfterBattleText:
	text "Τι συμβαίνει στη"
	line "ΛΙΜΝΗ ΟΡΓΗΣ;"

	para "Σχεδιάζαμε να"
	line "κάνουμε κάμπινγκ."
	done

PicnickerTiffanySeenText:
	text "Πας κι εσύ στη"
	line "ΛΙΜΝΗ ΟΡΓΗΣ;"

	para "Ας παίξουμε"
	line "για λίγο!"
	done

PicnickerTiffanyBeatenText:
	text "Έπαιξα πολύ!"
	done

PicnickerTiffanyWantsPicnicText:
	text "Κάνω πικνίκ"
	line "με #μον."

	para "Θα κάτσεις;"
	done

Route43Sign1Text:
	text "ΔΡΟΜΟΣ 43"

	para "ΛΙΜΝΗ ΟΡΓΗΣ -"
	line "ΠΟΛΗ MAHOGANY"
	done

Route43Sign2Text:
	text "ΔΡΟΜΟΣ 43"

	para "ΛΙΜΝΗ ΟΡΓΗΣ -"
	line "ΠΟΛΗ MAHOGANY"
	done

Route43TrainerTipsText:
	text "ΣΥΜΒΟΥΛΕΣ"

	para "Όλα τα #μον"
	line "έχουν συν & πλυν"

	para "με βάση τους"
	line "τύπους τους."

	para "Αν οι τύποι"
	line "διαφέρουν, υψηλά"

	para "LEVEL #μον"
	line "μπορεί να χάνουν."

	para "Μάθε ποιοί τύποι"
	line "είναι δυνατοί και"

	para "ποιοί αδύναμοι"
	line "ενάντια σε άλλα."
	done

Route43_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 51, ROUTE_43_MAHOGANY_GATE, 1
	warp_event 10, 51, ROUTE_43_MAHOGANY_GATE, 2
	warp_event 17, 35, ROUTE_43_GATE, 3
	warp_event 17, 31, ROUTE_43_GATE, 1
	warp_event 18, 31, ROUTE_43_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 13,  3, BGEVENT_READ, Route43Sign1
	bg_event 11, 49, BGEVENT_READ, Route43Sign2
	bg_event 16, 38, BGEVENT_READ, Route43TrainerTips

	def_object_events
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacBen, -1
	object_event 13, 20, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacBrent, -1
	object_event 13,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPokemaniacRon, -1
	object_event  4, 16, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerFisherMarvin, -1
	object_event  9, 29, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerTiffany, -1
	object_event 15, 43, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerCamperSpencer, -1
	object_event  1, 26, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route43FruitTree, -1
	object_event 12, 32, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route43MaxEther, EVENT_ROUTE_43_MAX_ETHER
