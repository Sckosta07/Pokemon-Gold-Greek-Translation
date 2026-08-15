	object_const_def
	const ROUTE36_YOUNGSTER1
	const ROUTE36_YOUNGSTER2
	const ROUTE36_WEIRD_TREE
	const ROUTE36_LASS1
	const ROUTE36_FISHER
	const ROUTE36_FRUIT_TREE
	const ROUTE36_ARTHUR

Route36_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route36ArthurCallback

Route36ArthurCallback:
	readvar VAR_WEEKDAY
	ifequal THURSDAY, .ArthurAppears
	disappear ROUTE36_ARTHUR
	endcallback

.ArthurAppears:
	appear ROUTE36_ARTHUR
	endcallback

SudowoodoScript:
	checkitem SQUIRTBOTTLE
	iftrue .Fight

	waitsfx
	playsound SFX_SANDSTORM
	applymovement ROUTE36_WEIRD_TREE, SudowoodoShakeMovement
	end

.Fight:
	opentext
	writetext UseSquirtbottleText
	yesorno
	iffalse DidntUseSquirtbottleScript
	closetext
WateredWeirdTreeScript:: ; export (for when you use Squirtbottle from pack)
	opentext
	writetext UsedSquirtbottleText
	waitbutton
	closetext
	waitsfx
	playsound SFX_SANDSTORM
	applymovement ROUTE36_WEIRD_TREE, SudowoodoShakeMovement
	opentext
	writetext SudowoodoAttackedText
	waitbutton
	closetext
	loadwildmon SUDOWOODO, 20
	startbattle
	setevent EVENT_FOUGHT_SUDOWOODO
	ifequal DRAW, DidntCatchSudowoodo
	disappear ROUTE36_WEIRD_TREE
	variablesprite SPRITE_WEIRD_TREE, SPRITE_TWIN
	reloadmapafterbattle
	end

DidntUseSquirtbottleScript:
	closetext
	end

DidntCatchSudowoodo:
	reloadmapafterbattle
	applymovement ROUTE36_WEIRD_TREE, WeirdTreeMovement_Flee
	disappear ROUTE36_WEIRD_TREE
	variablesprite SPRITE_WEIRD_TREE, SPRITE_TWIN
	special LoadUsedSpritesGFX
	end

Route36RockSmashGuyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM08_ROCK_SMASH
	iftrue .AlreadyGotRockSmash
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .ClearedSudowoodo
	writetext RockSmashGuyText1
	waitbutton
	closetext
	end

.ClearedSudowoodo:
	writetext RockSmashGuyText2
	promptbutton
	verbosegiveitem TM_ROCK_SMASH
	iffalse .NoRoomForTM
	setevent EVENT_GOT_TM08_ROCK_SMASH
.AlreadyGotRockSmash:
	writetext RockSmashGuyText3
	waitbutton
.NoRoomForTM:
	closetext
	end

Route36LassScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .ClearedSudowoodo
	writetext Route36LassText
	waitbutton
	closetext
	end

.ClearedSudowoodo:
	writetext Route36LassText_ClearedSudowoodo
	waitbutton
	closetext
	end

TrainerSchoolboyAlan1:
	trainer SCHOOLBOY, ALAN1, EVENT_BEAT_SCHOOLBOY_ALAN, SchoolboyAlan1SeenText, SchoolboyAlan1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_ALAN_READY_FOR_REMATCH
	iftrue .ChooseRematch
	checkcellnum PHONE_SCHOOLBOY_ALAN
	iftrue .NumberAccepted
	checkevent EVENT_ALAN_ASKED_FOR_PHONE_NUMBER
	iftrue .AskAgainForPhoneNumber
	writetext SchoolboyAlanBooksText
	promptbutton
	setevent EVENT_ALAN_ASKED_FOR_PHONE_NUMBER
	scall .AskNumber1
	sjump .ContinueAskForPhoneNumber

.AskAgainForPhoneNumber:
	scall .AskNumber2
.ContinueAskForPhoneNumber:
	askforphonenumber PHONE_SCHOOLBOY_ALAN
	ifequal PHONE_CONTACTS_FULL, .PhoneFull
	ifequal PHONE_CONTACT_REFUSED, .NumberDeclined
	gettrainername STRING_BUFFER_3, SCHOOLBOY, ALAN1
	scall .RegisteredNumber
	sjump .NumberAccepted

.ChooseRematch:
	scall .Rematch
	winlosstext SchoolboyAlan1BeatenText, 0
	checkflag ENGINE_FLYPOINT_BLACKTHORN
	iftrue .LoadFight2
	checkflag ENGINE_FLYPOINT_OLIVINE
	iftrue .LoadFight1
	loadtrainer SCHOOLBOY, ALAN1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_ALAN_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer SCHOOLBOY, ALAN2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_ALAN_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer SCHOOLBOY, ALAN3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_ALAN_READY_FOR_REMATCH
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

TrainerPsychicMark:
	trainer PSYCHIC_T, MARK, EVENT_BEAT_PSYCHIC_MARK, PsychicMarkSeenText, PsychicMarkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicMarkAfterBattleText
	waitbutton
	closetext
	end

ArthurScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
	iftrue .AlreadyGotStone
	readvar VAR_WEEKDAY
	ifnotequal THURSDAY, ArthurNotThursdayScript
	checkevent EVENT_MET_ARTHUR_OF_THURSDAY
	iftrue .MetArthur
	writetext MeetArthurText
	promptbutton
	setevent EVENT_MET_ARTHUR_OF_THURSDAY
.MetArthur:
	writetext ArthurGivesGiftText
	promptbutton
	verbosegiveitem HARD_STONE
	iffalse .BagFull
	setevent EVENT_GOT_HARD_STONE_FROM_ARTHUR
	writetext ArthurGaveGiftText
	waitbutton
	closetext
	end

.AlreadyGotStone:
	writetext ArthurThursdayText
	waitbutton
.BagFull:
	closetext
	end

ArthurNotThursdayScript:
	writetext ArthurNotThursdayText
	waitbutton
	closetext
	end

Route36Sign:
	jumptext Route36SignText

RuinsOfAlphNorthSign:
	jumptext RuinsOfAlphNorthSignText

Route36TrainerTips1:
	jumptext Route36TrainerTips1Text

Route36TrainerTips2:
	jumptext Route36TrainerTips2Text

Route36FruitTree:
	fruittree FRUITTREE_ROUTE_36

SudowoodoShakeMovement:
	tree_shake
	step_end

WeirdTreeMovement_Flee:
	fast_jump_step UP
	fast_jump_step UP
	step_end

UseSquirtbottleText:
	text "Παραξενο δέντρο."
	line "Βάζεις ΠΟΤΙΣΤΗΡΙ;"
	done

UsedSquirtbottleText:
	text "<PLAYER> έβαλε το"
	line "ΠΟΤΙΣΤΗΡΙ."
	done

SudowoodoAttackedText:
	text "Δεν αρέσει στο"
	line "παράξενο δέντρο"
	cont "το ΠΟΤΙΣΤΗΡΙ!"

	para "Το παράξενο"
	line "δεντρο επιτίθεται!"
	done

RockSmashGuyText1:
	text "Γα-χεϊ!"

	para "Θα έκοβα αυτό"
	line "το δέντρο με"

	para "τα δυνατά"
	line "χέρια μου."

	para "Μα δεν μπορώ!"
	line "Απέτυχα!"
	done

RockSmashGuyText2:
	text "Έκοψες το"
	line "χαζό δέντρο;"

	para "Εντυπωσιάστηκα!"
	line "Πάρε αυτό"
	cont "τότε από εμένα."
	done

Text_ReceivedTM08: ; unreferenced
	text "<PLAYER> πήρε"
	line "TM08."
	done

RockSmashGuyText3:
	text "Αυτό είναι"
	line "ΡΙΞΗ ΠΕΤΡΑΣ."

	para "Θα σπας βράχους"
	line "απλά με ένα"

	para "μόνο εύστοχο"
	line "χτύπημα."

	para "Αν βράχοι είναι"
	line "στον δρόμο σου,"
	cont "χτυπά τον!"
	done

Route36LassText:
	text "Ένα χαζό δέντρο"
	line "μπλοκάρει το δρόμο"
	cont "για την GOLDENROD."

	para "Μ' εμποδίζει από"
	line "το να ψωνίσω."

	para "Κάτι πρέπει να"
	line "γίνει γι' αυτό."
	done

Route36LassText_ClearedSudowoodo:
	text "Το χαζό δέντρο"
	line "έφυγε χωρίς να"
	cont "αφήσει ίχνος."

	para "Ω! Το δέντρο"
	line "ήταν #μον;"
	done

PsychicMarkSeenText:
	text "Θα διαβάσω"
	line "την σκέψη σου!"
	done

PsychicMarkBeatenText:
	text "Δεν είδα καλά!"
	done

PsychicMarkAfterBattleText:
	text "Θα γίνω δυνατός"
	line "μόνο αν βλέπω τι"

	para "σκέφτεται ο"
	line "αντίπαλος μου."
	done

SchoolboyAlan1SeenText:
	text "Χάρη στις μελέτες"
	line "μου, είμαι καλός,"
	cont "με κάθε #μον!"
	done

SchoolboyAlan1BeatenText:
	text "Ουπς! Σφάλμα"
	line "υπολογισμού;"
	done

SchoolboyAlanBooksText:
	text "Φτου. Μελετώ"
	line "5 ώρες την μέρα."

	para "Υπάρχουν πολλά"
	line "που δεν σου λένε"
	cont "στα βιβλία."
	done

MeetArthurText:
	text "ARTHUR: Ποιός"
	line "είσαι εσύ;"

	para "Είμαι ARTHUR της"
	line "Πέμπτης."
	done

ArthurGivesGiftText:
	text "Ορίστε. Πάρε"
	line "αυτό."
	done

ArthurGaveGiftText:
	text "ARTHUR: #μον"
	line "που ξέρει τυπου"

	para "πέτρας κινήσεις"
	line "θα το κρατάει."

	para "Αυξάνει αυτές"
	line "τις επιθέσεις."
	done

ArthurThursdayText:
	text "ARTHUR: είμαι ο"
	line "ARTHUR της Πέμπτης."

	para "Ο δεύτερος γιός"
	line "των 7 παιδιών."
	done

ArthurNotThursdayText:
	text "ARTHUR: Σήμερα"
	line "δεν είναι Πέμπτη."
	cont "Απογοήτευση."
	done

Route36SignText:
	text "ΔΡΟΜΟΣ 36"
	done

RuinsOfAlphNorthSignText:
	text "ΕΡΕΙΠΙΑ του ALPH"
	line "ΒΟΡΕΙΑ ΕΙΣΟΔΟΣ"
	done

Route36TrainerTips1Text:
	text "ΣΥΜΒΟΥΛΕΣ"

	para "#μον STATS"
	line "αλλάζουν--ακόμα"
	cont "και στα ίδια ήδη."

	para "Τα STATS"
	line "είναι ίδια πρώτα."

	para "Οστώσο, δια-"
	line "φορές γίνονται"

	para "έντονες όσο το"
	line "#μον μεγαλώνει."
	done

Route36TrainerTips2Text:
	text "ΣΥΜΒΟΥΛΕΣ"

	para "Βάλε ΣΚΑΨΙΜΟ"
	line "για επιστροφή στην"
	cont "είσοδο τόπου."

	para "Είναι βολικό για"
	line "εξερεύνηση"

	para "σπηλαίων και"
	line "άλλων αξιοθέατων."
	done

Route36_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 18,  8, ROUTE_36_NATIONAL_PARK_GATE, 3
	warp_event 18,  9, ROUTE_36_NATIONAL_PARK_GATE, 4
	warp_event 47, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 1
	warp_event 48, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 29,  1, BGEVENT_READ, Route36TrainerTips2
	bg_event 45, 11, BGEVENT_READ, RuinsOfAlphNorthSign
	bg_event 55,  7, BGEVENT_READ, Route36Sign
	bg_event 21,  7, BGEVENT_READ, Route36TrainerTips1

	def_object_events
	object_event 20, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerPsychicMark, -1
	object_event 31, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSchoolboyAlan1, -1
	object_event 35,  9, SPRITE_WEIRD_TREE, SPRITEMOVEDATA_SUDOWOODO, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SudowoodoScript, EVENT_ROUTE_36_SUDOWOODO
	object_event 51,  8, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36LassScript, -1
	object_event 44,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36RockSmashGuyScript, -1
	object_event 21,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route36FruitTree, -1
	object_event 46,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ArthurScript, EVENT_ROUTE_36_ARTHUR_OF_THURSDAY
