	object_const_def
	const ROUTE35_YOUNGSTER1
	const ROUTE35_YOUNGSTER2
	const ROUTE35_LASS1
	const ROUTE35_LASS2
	const ROUTE35_YOUNGSTER3
	const ROUTE35_FISHER
	const ROUTE35_BUG_CATCHER
	const ROUTE35_SUPER_NERD
	const ROUTE35_OFFICER
	const ROUTE35_FRUIT_TREE
	const ROUTE35_POKE_BALL

Route35_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBirdKeeperBryan:
	trainer BIRD_KEEPER, BRYAN, EVENT_BEAT_BIRD_KEEPER_BRYAN, BirdKeeperBryanSeenText, BirdKeeperBryanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperBryanAfterBattleText
	waitbutton
	closetext
	end

TrainerJugglerIrwin:
	trainer JUGGLER, IRWIN1, EVENT_BEAT_JUGGLER_IRWIN, JugglerIrwin1SeenText, JugglerIrwin1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_IRWIN_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_JUGGLER_IRWIN
	iftrue Route35NumberAcceptedM
	checkevent EVENT_IRWIN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext JugglerIrwinAfterBattleText
	promptbutton
	setevent EVENT_IRWIN_ASKED_FOR_PHONE_NUMBER
	scall Route35AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route35AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_JUGGLER_IRWIN
	ifequal PHONE_CONTACTS_FULL, Route35PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route35NumberDeclinedM
	gettrainername STRING_BUFFER_3, JUGGLER, IRWIN1
	scall Route35RegisteredNumberM
	sjump Route35NumberAcceptedM

.WantsBattle:
	scall Route35RematchM
	winlosstext JugglerIrwin1BeatenText, 0
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_CIANWOOD
	iftrue .LoadFight1
	loadtrainer JUGGLER, IRWIN1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_IRWIN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer JUGGLER, IRWIN2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_IRWIN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer JUGGLER, IRWIN3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_IRWIN_READY_FOR_REMATCH
	end

Route35AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route35AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route35RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route35NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route35NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route35PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route35RematchM:
	jumpstd RematchMScript
	end

TrainerCamperIvan:
	trainer CAMPER, IVAN, EVENT_BEAT_CAMPER_IVAN, CamperIvanSeenText, CamperIvanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperIvanAfterBattleText
	waitbutton
	closetext
	end

TrainerCamperElliot:
	trainer CAMPER, ELLIOT, EVENT_BEAT_CAMPER_ELLIOT, CamperElliotSeenText, CamperElliotBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperElliotAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerBrooke:
	trainer PICNICKER, BROOKE, EVENT_BEAT_PICNICKER_BROOKE, PicnickerBrookeSeenText, PicnickerBrookeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerBrookeAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerKim:
	trainer PICNICKER, KIM, EVENT_BEAT_PICNICKER_KIM, PicnickerKimSeenText, PicnickerKimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerKimAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherArnie:
	trainer BUG_CATCHER, ARNIE1, EVENT_BEAT_BUG_CATCHER_ARNIE, BugCatcherArnieSeenText, BugCatcherArnieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_ARNIE_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BUG_CATCHER_ARNIE
	iftrue Route35NumberAcceptedM
	checkevent EVENT_ARNIE_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BugCatcherArnieAfterBattleText
	promptbutton
	setevent EVENT_ARNIE_ASKED_FOR_PHONE_NUMBER
	scall Route35AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route35AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BUG_CATCHER_ARNIE
	ifequal PHONE_CONTACTS_FULL, Route35PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route35NumberDeclinedM
	gettrainername STRING_BUFFER_3, BUG_CATCHER, ARNIE1
	scall Route35RegisteredNumberM
	sjump Route35NumberAcceptedM

.WantsBattle:
	scall Route35RematchM
	winlosstext BugCatcherArnieBeatenText, 0
	checkflag ENGINE_FLYPOINT_BLACKTHORN
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	iftrue .LoadFight1
	loadtrainer BUG_CATCHER, ARNIE1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_ARNIE_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BUG_CATCHER, ARNIE2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_ARNIE_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BUG_CATCHER, ARNIE3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_ARNIE_READY_FOR_REMATCH
	end

TrainerFirebreatherWalt:
	trainer FIREBREATHER, WALT, EVENT_BEAT_FIREBREATHER_WALT, FirebreatherWaltSeenText, FirebreatherWaltBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext FirebreatherWaltAfterBattleText
	waitbutton
	closetext
	end

TrainerOfficerDirk:
	faceplayer
	opentext
	checktime NITE
	iffalse .NotNight
	checkevent EVENT_BEAT_OFFICER_DIRK
	iftrue .AfterBattle
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext OfficerDirkSeenText
	waitbutton
	closetext
	winlosstext OfficerDirkBeatenText, 0
	loadtrainer OFFICER, DIRK
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICER_DIRK
	closetext
	end

.AfterBattle:
	writetext OfficerDirkAfterBattleText
	waitbutton
	closetext
	end

.NotNight:
	writetext OfficerDirkPrettyToughText
	waitbutton
	closetext
	end

Route35Sign:
	jumptext Route35SignText

Route35TMRollout:
	itemball TM_ROLLOUT

Route35FruitTree:
	fruittree FRUITTREE_ROUTE_35

CamperIvanSeenText:
	text "Έπαιρνα δεδομένα"
	line "#MON από το"

	para "ραδιόφωνο. Νομίζω"
	line "πως είμαι καλός."
	done

CamperIvanBeatenText:
	text "Τα παρατάω!"
	done

CamperIvanAfterBattleText:
	text "Η μουσική στο"
	line "ράδιο ηρεμεί τα"
	cont "άγρια #μον."
	done

CamperElliotSeenText:
	text "Θα δείξω στη"
	line "φίλη μου ότι"
	cont "είμαι κουλ!"
	done

CamperElliotBeatenText:
	text "Εύχομαι να"
	line "έχανες εσύ…"
	done

CamperElliotAfterBattleText:
	text "Ντροπιάστηκα"
	line "μπροστά στη"
	cont "φίλη μου…"
	done

PicnickerBrookeSeenText:
	text "Ο φίλος μου"
	line "είναι φλώρος, έτσι"
	cont "είμαι μόνη μου."
	done

PicnickerBrookeBeatenText:
	text "Ω! Είσαι"
	line "δυνατός!"
	done

PicnickerBrookeAfterBattleText:
	text "Βασίζομαι στα"
	line "#μον μου από"
	cont "ότι στο φίλο μου."
	done

PicnickerKimSeenText:
	text "Πας στο GYM;"
	line "Και εγώ!"
	done

PicnickerKimBeatenText:
	text "Ω. Δεν"
	line "νίκησα…"
	done

PicnickerKimAfterBattleText:
	text "Τα ΕΜΒΛΗΜΑΤΑ"
	line "είναι ωραία. Τα"
	cont "συλλέγω."
	done

BirdKeeperBryanSeenText:
	text "Τι είδη #"
	line "BALL βάζεις;"
	done

BirdKeeperBryanBeatenText:
	text "Ουπς! Λίγο"
	line "αργός!"
	done

BirdKeeperBryanAfterBattleText:
	text "Κάποια #μον"
	line "φεύγουν γρήγορα."

	para "Πιάσε τα με τη"
	line "FAST BALL"
	cont "του KURT."

	para "Οπότε βρίσκω"
	line "ΛΕΥΚΟ ΚΑΡΠΟ, το"
	cont "δίνω στον KURT."

	para "Το φτιάχνει σε"
	line "ειδική # BALL."
	done

JugglerIrwin1SeenText:
	text "Ιδού την όμορφη"
	line "και χρήσιμη BALL!"
	done

JugglerIrwin1BeatenText:
	text "Φιου! Αυτό"
	line "ήταν σοκ!"
	done

JugglerIrwinAfterBattleText:
	text "Θα σε μαγέψω"
	line "με το βραβευ-"
	cont "μένο #μον μου."

	para "Μα η τέχνη σου"
	line "με ηλέκτρισε!"
	done

BugCatcherArnieSeenText:
	text "Πάω παντού αν"
	line "έντομα #μον"
	cont "υπάρχουν εκεί."
	done

BugCatcherArnieBeatenText:
	text "Κατάλαβα. Ώστε"
	line "μάχεσαι έτσι."
	done

BugCatcherArnieAfterBattleText:
	text "Το VENONAT μου"
	line "νίκησε τον"

	para "Αγώνα στο"
	line "ΕΘΝΙΚΟ ΠΑΡΚΟ."
	done

FirebreatherWaltSeenText:
	text "Κάνω πρακτική"
	line "στην πύρινη ανάσα."
	done

FirebreatherWaltBeatenText:
	text "Όου! Έκαψα την"
	line "την μύτη μου!"
	done

FirebreatherWaltAfterBattleText:
	text "Η #μον Πορεία"
	line "στο ράδιο φέρνει"
	cont "άγρια #μον."
	done

OfficerDirkSeenText:
	text "Κίνδυνο έχει"
	line "το σκοτάδι!"
	done

OfficerDirkBeatenText:
	text "Ουπς!"
	done

OfficerDirkAfterBattleText:
	text "Ξέρεις, η νύχτα"
	line "είναι καλή με"
	cont "τον τρόπο της."

	para "Μα μην το πα-"
	line "ρακάνεις, OK;"
	done

OfficerDirkPrettyToughText:
	text "Τα #μον σου"
	line "δείχνουν δυνατά."

	para "Πας παντού"
	line "με ασφάλεια."
	done

Route35SignText:
	text "ΔΡΟΜΟΣ 35"
	done

Route35_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 33, ROUTE_35_GOLDENROD_GATE, 1
	warp_event 10, 33, ROUTE_35_GOLDENROD_GATE, 2
	warp_event  3,  5, ROUTE_35_NATIONAL_PARK_GATE, 3

	def_coord_events

	def_bg_events
	bg_event  1,  7, BGEVENT_READ, Route35Sign
	bg_event 11, 31, BGEVENT_READ, Route35Sign

	def_object_events
	object_event  3, 19, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerCamperIvan, -1
	object_event  8, 20, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerCamperElliot, -1
	object_event  7, 20, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerBrooke, -1
	object_event 11, 24, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerPicnickerKim, -1
	object_event 14, 28, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerBirdKeeperBryan, -1
	object_event  2, 10, SPRITE_FISHER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerFirebreatherWalt, -1
	object_event 16,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherArnie, -1
	object_event  5, 10, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerIrwin, -1
	object_event  5,  6, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TrainerOfficerDirk, -1
	object_event  2, 25, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route35FruitTree, -1
	object_event 13, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route35TMRollout, EVENT_ROUTE_35_TM_ROLLOUT
