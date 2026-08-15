	object_const_def
	const ROUTE44_FISHER1
	const ROUTE44_FISHER2
	const ROUTE44_YOUNGSTER1
	const ROUTE44_SUPER_NERD
	const ROUTE44_YOUNGSTER2
	const ROUTE44_COOLTRAINER_M
	const ROUTE44_COOLTRAINER_F
	const ROUTE44_FRUIT_TREE
	const ROUTE44_POKE_BALL1
	const ROUTE44_POKE_BALL2

Route44_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperVance1:
	trainer BIRD_KEEPER, VANCE1, EVENT_BEAT_BIRD_KEEPER_VANCE, BirdKeeperVance1SeenText, BirdKeeperVance1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_VANCE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BIRDKEEPER_VANCE
	iftrue Route44NumberAcceptedM
	checkevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BirdKeeperVanceLegendaryBirdsText
	promptbutton
	setevent EVENT_VANCE_ASKED_FOR_PHONE_NUMBER
	scall Route44AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route44AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BIRDKEEPER_VANCE
	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
	gettrainername STRING_BUFFER_3, BIRD_KEEPER, VANCE1
	scall Route44RegisteredNumberM
	sjump Route44NumberAcceptedM

.WantsBattle:
	scall Route44RematchM
	winlosstext BirdKeeperVance1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer BIRD_KEEPER, VANCE1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_VANCE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BIRD_KEEPER, VANCE2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_VANCE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BIRD_KEEPER, VANCE3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_VANCE_READY_FOR_REMATCH
	end

Route44AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route44AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route44RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route44NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route44NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route44PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route44RematchM:
	jumpstd RematchMScript
	end

TrainerPsychicPhil:
	trainer PSYCHIC_T, PHIL, EVENT_BEAT_PSYCHIC_PHIL, PsychicPhilSeenText, PsychicPhilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicPhilAfterBattleText
	waitbutton
	closetext
	end

TrainerFisherWilton1:
	trainer FISHER, WILTON1, EVENT_BEAT_FISHER_WILTON, FisherWilton1SeenText, FisherWilton1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_WILTON_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_FISHER_WILTON
	iftrue Route44NumberAcceptedM
	checkevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext FisherWiltonHugePoliwagText
	promptbutton
	setevent EVENT_WILTON_ASKED_FOR_PHONE_NUMBER
	scall Route44AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route44AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_FISHER_WILTON
	ifequal PHONE_CONTACTS_FULL, Route44PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route44NumberDeclinedM
	gettrainername STRING_BUFFER_3, FISHER, WILTON1
	scall Route44RegisteredNumberM
	sjump Route44NumberAcceptedM

.WantsBattle:
	scall Route44RematchM
	winlosstext FisherWilton1BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer FISHER, WILTON1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_WILTON_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer FISHER, WILTON2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_WILTON_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer FISHER, WILTON3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_WILTON_READY_FOR_REMATCH
	end

TrainerFisherEdgar:
	trainer FISHER, EDGAR, EVENT_BEAT_FISHER_EDGAR, FisherEdgarSeenText, FisherEdgarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FisherEdgarAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfCybil:
	trainer COOLTRAINERF, CYBIL, EVENT_BEAT_COOLTRAINERF_CYBIL, CooltrainerfCybilSeenText, CooltrainerfCybilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfCybilAfterBattleText
	waitbutton
	closetext
	end

TrainerPokemaniacZach:
	trainer POKEMANIAC, ZACH, EVENT_BEAT_POKEMANIAC_ZACH, PokemaniacZachSeenText, PokemaniacZachBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokemaniacZachAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermAllen:
	trainer COOLTRAINERM, ALLEN, EVENT_BEAT_COOLTRAINERM_ALLEN, CooltrainermAllenSeenText, CooltrainermAllenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermAllenAfterBattleText
	waitbutton
	closetext
	end

Route44Sign1:
	jumptext Route44Sign1Text

Route44Sign2:
	jumptext Route44Sign2Text

Route44FruitTree:
	fruittree FRUITTREE_ROUTE_44

Route44MaxRevive:
	itemball MAX_REVIVE

Route44UltraBall:
	itemball ULTRA_BALL

Route44HiddenElixer:
	hiddenitem ELIXER, EVENT_ROUTE_44_HIDDEN_ELIXER

FisherWilton1SeenText:
	text "Ααακ! Με έκανες"
	line "να χάσω POLIWAG!"

	para "Τι θα κάνεις"
	line "γι' αυτό;"
	done

FisherWilton1BeatenText:
	text "Ξέχνα το"
	line "καλύτερα."
	done

FisherWiltonHugePoliwagText:
	text "Το POLIWAG που"
	line "ξέφυγε…"
	cont "Ήταν τεράστιο."

	para "Ορκίζομαι θα"
	line "ήταν 16 μέτρα!"
	done

FisherEdgarSeenText:
	text "Ψαρεύω χωρίς"
	line "αύριο εγώ."

	para "Επίσης μάχομαι"
	line "μέχρι τέλους."

	para "Αυτή είναι η"
	line "σχέση μου με"
	cont "τα #μον μου."
	done

FisherEdgarBeatenText:
	text "Χμμμμ… "
	line "Δεν είναι σωστό."
	done

FisherEdgarAfterBattleText:
	text "Είναι 100 νίκες"
	line "σε 101 ήττες."

	para "Δεν κάνω μάχες"
	line "για λίγο καιρό."
	done

BirdKeeperVance1SeenText:
	text "Ξέρεις για το"
	line "θρυλικό πουλί"
	cont "#μον;"
	done

BirdKeeperVance1BeatenText:
	text "Φιου! Είσαι"
	line "καυτός."
	done

BirdKeeperVanceLegendaryBirdsText:
	text "ARTICUNO, ZAPDOS"
	line "και MOLTRES είναι"

	para "τα τρία θρυλικά"
	line "πουλιά #MON."

	para "Άκουσα για"
	line "αλλά θρυλικά"
	cont "πουλιά, όμως."
	done

PsychicPhilSeenText:
	text "Θα νικήσω,"
	line "σίγουρα!"
	done

PsychicPhilBeatenText:
	text "Αρργχ… Τι"
	line "σοκ ήττας…"
	done

PsychicPhilAfterBattleText:
	text "Είναι σημαντικό"
	line "να έχεις πίστη"
	cont "στην πλευρά."
	done

PokemaniacZachSeenText:
	text "Κάνω τα πάντα"
	line "για να πάρω ένα"
	cont "σπάνιο #μον!"
	done

PokemaniacZachBeatenText:
	text "Ουχ, το #μον"
	line "σου είναι ωραία."
	done

PokemaniacZachAfterBattleText:
	text "Αν #MON έχει"
	line "διάφορα χρώματα"

	para "απ'ότι συνήθως,"
	line "έχει πολύ αξία."

	para "Τι; Εννοείς ότι"
	line "δεν είναι αλήθεια;"
	done

CooltrainermAllenSeenText:
	text "Λέω ότι εισαι"
	line "καλός εκπ/της"
	cont "μ' ένα βλέμμα."

	para "Είμαι καλός στα"
	line "#μον, και βλέπω"
	cont "πως είσαι & εσύ."
	done

CooltrainermAllenBeatenText:
	text "Τσχ! Έχω εντελώς"
	line "χάσει τώρα."
	done

CooltrainermAllenAfterBattleText:
	text "Ουάου. Έχεις"
	line "πολλά ΕΜΒΛΗΜΑΤΑ."

	para "Δεν αναρωτιέμαι"
	line "που είσαι δυνατός."

	para "Αναρωτιέμαι αν"
	line "ο MORTY του GYM"

	para "της ECRUTEAK"
	line "προπονείται;"

	para "Με χτύπησε"
	line "πολύ αυτό."
	done

CooltrainerfCybilSeenText:
	text "Δείχνεις δυνατός."

	para "Καλοί εκπ/τες"
	line "ψάχνουν δυνατούς"
	cont "αντιπάλους."
	done

CooltrainerfCybilBeatenText:
	text "Μπα! Αυτό"
	line "δεν κάνει."
	done

CooltrainerfCybilAfterBattleText:
	text "Όλοι γινόμαστε"
	line "καλοί σε πολλές"
	cont "μάχες."

	para "Έκανα πολλές"
	line "για να γίνω ότι"
	cont "είμαι--Ελίτ."
	done

Route44Sign1Text:
	text "ΔΡΟΜΟΣ 44"
	line "ΔΡΟΜΟΣ ΠΑΓΟΥ"
	done

Route44Sign2Text:
	text "ΔΡΟΜΟΣ 44"

	para "ΠΟΛΗ MAHOGANY -"
	line "ΠΟΛΗ BLACKTHORN"
	done

Route44_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 56,  7, ICE_PATH_1F, 1

	def_coord_events

	def_bg_events
	bg_event 53,  7, BGEVENT_READ, Route44Sign1
	bg_event  6, 10, BGEVENT_READ, Route44Sign2
	bg_event 32,  9, BGEVENT_ITEM, Route44HiddenElixer

	def_object_events
	object_event 42,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherWilton1, -1
	object_event 19, 13, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherEdgar, -1
	object_event 10,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicPhil, -1
	object_event 35,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerPokemaniacZach, -1
	object_event 50,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperVance1, -1
	object_event 41, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerCooltrainermAllen, -1
	object_event 31, 14, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerCooltrainerfCybil, -1
	object_event  9,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route44FruitTree, -1
	object_event 30,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44MaxRevive, EVENT_ROUTE_44_MAX_REVIVE
	object_event 43,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44UltraBall, EVENT_ROUTE_44_ULTRA_BALL
