	object_const_def
	const ELMSLAB_ELM
	const ELMSLAB_ELMS_AIDE
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const ELMSLAB_OFFICER

ElmsLab_MapScripts:
	def_scene_scripts
	scene_script ElmsLabMeetElmScene, SCENE_ELMSLAB_MEET_ELM
	scene_script ElmsLabNoop1Scene,   SCENE_ELMSLAB_CANT_LEAVE
	scene_script ElmsLabNoop2Scene,   SCENE_ELMSLAB_NOOP
	scene_script ElmsLabNoop3Scene,   SCENE_ELMSLAB_MEET_OFFICER
	scene_script ElmsLabNoop4Scene,   SCENE_ELMSLAB_UNUSED
	scene_script ElmsLabNoop5Scene,   SCENE_ELMSLAB_AIDE_GIVES_POTION
	scene_const SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS

	def_callbacks

ElmsLabMeetElmScene:
	sdefer ElmsLabWalkUpToElmScript
	end

ElmsLabNoop1Scene:
	end

ElmsLabNoop2Scene:
	end

ElmsLabNoop3Scene:
	end

ElmsLabNoop4Scene:
	end

ElmsLabNoop5Scene:
	end

ElmsLabWalkUpToElmScript:
	applymovement PLAYER, ElmsLab_WalkUpToElmMovement
	turnobject ELMSLAB_ELM, LEFT
	opentext
	writetext ElmText_Intro
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_CANT_LEAVE
	end

ProfElmScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue ElmCheckMasterBall
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue ElmGiveTicketScript
ElmCheckMasterBall:
	checkevent EVENT_GOT_MASTER_BALL_FROM_ELM
	iftrue ElmCheckEverstone
	checkflag ENGINE_RISINGBADGE
	iftrue ElmGiveMasterBallScript
ElmCheckEverstone:
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue ElmScript_CallYou
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftrue ElmGiveEverstoneScript
	checkevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	iffalse ElmCheckTogepiEgg
	setval TOGEPI
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	setval TOGETIC
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	writetext ElmThoughtEggHatchedText
	waitbutton
	closetext
	end

ElmEggHatchedScript:
	setval TOGEPI
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	setval TOGETIC
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	sjump ElmCheckGotEggAgain

ElmCheckTogepiEgg:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse ElmCheckGotEggAgain
	checkevent EVENT_TOGEPI_HATCHED
	iftrue ElmEggHatchedScript
ElmCheckGotEggAgain:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE ; why are we checking it again?
	iftrue ElmWaitingEggHatchScript
	checkflag ENGINE_ZEPHYRBADGE
	iftrue ElmAideHasEggScript
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue ElmStudyingEggScript
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue ElmAfterTheftScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue ElmDescribesMrPokemonScript
	writetext ElmText_LetYourMonBattleIt
	waitbutton
	closetext
	end

LabTryToLeaveScript:
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, ElmsLab_CantLeaveMovement
	end

CyndaquilPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	reanchormap
	pokepic CYNDAQUIL
	cry CYNDAQUIL
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CYNDAQUIL
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CYNDAQUIL, 5, BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, ElmDirectionsScript
	applymovement PLAYER, AfterCyndaquilMovement
	sjump ElmDirectionsScript

TotodilePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	reanchormap
	pokepic TOTODILE
	cry TOTODILE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, TOTODILE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke TOTODILE, 5, BERRY
	closetext
	applymovement PLAYER, AfterTotodileMovement
	sjump ElmDirectionsScript

ChikoritaPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	reanchormap
	pokepic CHIKORITA
	cry CHIKORITA
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHIKORITA
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHIKORITA, 5, BERRY
	closetext
	applymovement PLAYER, AfterChikoritaMovement
	sjump ElmDirectionsScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

ElmDirectionsScript:
	turnobject PLAYER, UP
	opentext
	writetext ElmDirectionsText1
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, LEFT
	opentext
	writetext ElmDirectionsText2
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext ElmDirectionsText3
	promptbutton
	waitsfx
	addcellnum PHONE_ELM
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setevent EVENT_RIVAL_CHERRYGROVE_CITY
	setscene SCENE_ELMSLAB_AIDE_GIVES_POTION
	setmapscene NEW_BARK_TOWN, SCENE_NEWBARKTOWN_NOOP
	end

ElmDescribesMrPokemonScript:
	writetext ElmDescribesMrPokemonText
	waitbutton
	closetext
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end

ElmsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .CanHeal
	writetext ElmsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

ElmAfterTheftDoneScript:
	waitbutton
	closetext
	end

ElmAfterTheftScript:
	writetext ElmAfterTheftText1
	checkitem MYSTERY_EGG
	iffalse ElmAfterTheftDoneScript
	promptbutton
	writetext ElmAfterTheftText2
	waitbutton
	takeitem MYSTERY_EGG
	scall ElmJumpBackScript1
	writetext ElmAfterTheftText3
	waitbutton
	scall ElmJumpBackScript2
	writetext ElmAfterTheftText4
	promptbutton
	writetext ElmAfterTheftText5
	promptbutton
	setevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	setmapscene ROUTE_29, SCENE_ROUTE29_CATCH_TUTORIAL
	clearevent EVENT_ROUTE_30_YOUNGSTER_JOEY
	setevent EVENT_ROUTE_30_BATTLE
	writetext ElmAfterTheftText6
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS
	end

ElmStudyingEggScript:
	writetext ElmStudyingEggText
	waitbutton
	closetext
	end

ElmAideHasEggScript:
	writetext ElmAideHasEggText
	waitbutton
	closetext
	end

ElmWaitingEggHatchScript:
	writetext ElmWaitingEggHatchText
	waitbutton
	closetext
	end

ShowElmTogepiScript:
	writetext ShowElmTogepiText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	setevent EVENT_SHOWED_TOGEPI_TO_ELM
	opentext
	writetext ShowElmTogepiText2
	promptbutton
	writetext ShowElmTogepiText3
	promptbutton
ElmGiveEverstoneScript:
	writetext ElmGiveEverstoneText1
	promptbutton
	verbosegiveitem EVERSTONE
	iffalse ElmScript_NoRoomForEverstone
	writetext ElmGiveEverstoneText2
	waitbutton
	closetext
	setevent EVENT_GOT_EVERSTONE_FROM_ELM
	end

ElmScript_CallYou:
	writetext ElmText_CallYou
	waitbutton
ElmScript_NoRoomForEverstone:
	closetext
	end

ElmGiveMasterBallScript:
	writetext ElmGiveMasterBallText1
	promptbutton
	verbosegiveitem MASTER_BALL
	iffalse .notdone
	setevent EVENT_GOT_MASTER_BALL_FROM_ELM
	writetext ElmGiveMasterBallText2
	waitbutton
.notdone
	closetext
	end

ElmGiveTicketScript:
	writetext ElmGiveTicketText1
	promptbutton
	verbosegiveitem S_S_TICKET
	setevent EVENT_GOT_SS_TICKET_FROM_ELM
	writetext ElmGiveTicketText2
	waitbutton
	closetext
	end

ElmJumpBackScript1:
	closetext
	readvar VAR_FACING
	ifequal DOWN, ElmJumpDownScript
	ifequal UP, ElmJumpUpScript
	ifequal LEFT, ElmJumpLeftScript
	ifequal RIGHT, ElmJumpRightScript
	end

ElmJumpBackScript2:
	closetext
	readvar VAR_FACING
	ifequal DOWN, ElmJumpUpScript
	ifequal UP, ElmJumpDownScript
	ifequal LEFT, ElmJumpRightScript
	ifequal RIGHT, ElmJumpLeftScript
	end

ElmJumpUpScript:
	applymovement ELMSLAB_ELM, ElmJumpUpMovement
	opentext
	end

ElmJumpDownScript:
	applymovement ELMSLAB_ELM, ElmJumpDownMovement
	opentext
	end

ElmJumpLeftScript:
	applymovement ELMSLAB_ELM, ElmJumpLeftMovement
	opentext
	end

ElmJumpRightScript:
	applymovement ELMSLAB_ELM, ElmJumpRightMovement
	opentext
	end

AideScript_WalkPotion1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkPotion2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GivePotion:
	opentext
	writetext AideText_GiveYouPotion
	promptbutton
	verbosegiveitem POTION
	writetext AideText_AlwaysBusy
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_NOOP
	end

AideScript_WalkBalls1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkBalls2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GiveYouBalls:
	opentext
	writetext AideText_GiveYouBalls
	promptbutton
	getitemname STRING_BUFFER_4, POKE_BALL
	scall AideScript_ReceiveTheBalls
	giveitem POKE_BALL, 5
	writetext AideText_ExplainBalls
	promptbutton
	itemnotify
	closetext
	setscene SCENE_ELMSLAB_NOOP
	end

AideScript_ReceiveTheBalls:
	jumpstd ReceiveItemScript
	end

ElmsAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue AideScript_AfterTheft
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue AideScript_ExplainBalls
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue AideScript_TheftTestimony
	writetext AideText_AlwaysBusy
	waitbutton
	closetext
	end

AideScript_TheftTestimony:
	writetext AideText_TheftTestimony
	waitbutton
	closetext
	end

AideScript_ExplainBalls:
	writetext AideText_ExplainBalls
	waitbutton
	closetext
	end

AideScript_AfterTheft:
	writetext AideText_AfterTheft
	waitbutton
	closetext
	end

MeetCopScript2:
	applymovement PLAYER, MeetCopScript2_StepLeft

MeetCopScript:
	applymovement PLAYER, MeetCopScript_WalkUp
CopScript:
	turnobject ELMSLAB_OFFICER, LEFT
	opentext
	writetext ElmsLabOfficerText1
	promptbutton
	special NameRival
	writetext ElmsLabOfficerText2
	waitbutton
	closetext
	applymovement ELMSLAB_OFFICER, OfficerLeavesMovement
	disappear ELMSLAB_OFFICER
	setscene SCENE_ELMSLAB_NOOP
	end

ElmsLabWindow:
	opentext
	checkflag ENGINE_FLYPOINT_VIOLET
	iftrue .Normal
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftrue .BreakIn
	sjump .Normal

.BreakIn:
	writetext ElmsLabWindowText2
	waitbutton
	closetext
	end

.Normal:
	writetext ElmsLabWindowText1
	waitbutton
	closetext
	end

ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText

ElmsLabTrashcan2: ; unreferenced
	jumpstd TrashCanScript

ElmsLabBookshelf:
	jumpstd DifficultBookshelfScript

ElmsLab_WalkUpToElmMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head RIGHT
	step_end

ElmsLab_CantLeaveMovement:
	step UP
	step_end

MeetCopScript2_StepLeft:
	step LEFT
	step_end

MeetCopScript_WalkUp:
	step UP
	step UP
	turn_head RIGHT
	step_end

OfficerLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

AideWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AideWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

AfterCyndaquilMovement:
	step LEFT
	step UP
	step_end

AfterTotodileMovement:
	step LEFT
	step LEFT
	step UP
	step_end

AfterChikoritaMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_end

ElmText_Intro:
	text "ELM: <PLAYER>!"
	line "Εδώ είσαι!"

	para "Θέλω να σου"
	line "ζητήσω μια χάρη."

	para "Έχω μια συνάντηση"
	line "με τον Κύριο"
	cont "#μον."

	para "Βρίσκει όλο"
	line "παράξενα πράγματα"

	para "και μιλάει για τις"
	line "ανακαλύψεις του."

	para "Τέλος πάντων,"
	line "έλαβα E-MAIL από"

	para "αυτόν να λέει πως"
	line "είναι σημαντικό."

	para "Είναι ενδιαφέρον,"
	line "μα έχουμε δουλειά"

	para "με την έρευνα"
	line "#μον μας."

	para "Μπορείς να πας"
	line "εσύ για εμας;"

	para "Θα σου δώσω"
	line "#μον ως"
	cont "συνεργάτη."

	para "Είναι όλα σπάνια"
	line "#μον που"
	cont "μόλις βρήκαμε."

	para "Έλα. Διάλεξε!"
	done

ElmText_LetYourMonBattleIt:
	text "Αν άγρια #μον"
	line "εμφανιστούν, το"
	cont "δικό σου παλεύει!"
	done

LabWhereGoingText:
	text "ELM: Στασου!"
	line "Που πας;"
	done

TakeCyndaquilText:
	text "ELM: Θέλεις το"
	line "CYNDAQUIL, το"
	cont "#μον Φλόγα;"
	done

TakeTotodileText:
	text "ELM: Θέλεις το"
	line "TOTODILE, το"
	cont "#μον Νερού;"
	done

TakeChikoritaText:
	text "ELM: Θέλεις το"
	line "CHIKORITA, το"
	cont "#μον Γρασίδι;"
	done

DidntChooseStarterText:
	text "ELM: Σκέψου το"
	line "προσεκτικά."

	para "Ο συνεργάτης"
	line "είναι σημαντικός."
	done

ChoseStarterText:
	text "ELM: Νομίζω"
	line "είναι ωραίο"
	cont "#μον αυτό!"
	done

ReceivedStarterText:
	text "Ο <PLAYER> πήρε"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

ElmDirectionsText1:
	text "Ο Κ.#μον ζει"
	line "κοντά στο"
	cont "CHERRYGROVE."

	para "Είναι σχεδόν"
	line "μια ευθεία"
	cont "από εδώ."
	done

ElmDirectionsText2:
	text "Αν το #μον σου"
	line "πληγωθεί, να το"

	para "γιατρέψεις με"
	line "αυτή τη μηχανή."
	done

ElmDirectionsText3:
	text "Ω, ορίστε ο"
	line "αριθμός μου."

	para "Κάλεσε με αν"
	line "συμβεί κάτι."
	done

GotElmsNumberText:
	text "<PLAYER> πήρε"
	line "αριθμό του ELM."
	done

ElmDescribesMrPokemonText:
	text "Ο Κ.#μον πάει"
	line "παντού και"
	cont "βρίσκει σπάνια."

	para "Πολύ κρίμα που"
	line "είναι σπάνια και"
	cont "όχι πολύ χρήσιμα…"

	para "<PLAYER>, βασίζομαι"
	line "πάνω σου!"
	done

ElmPokeBallText:
	text "Περιέχει ένα"
	line "#μον που"
	cont "έπιασε ο ΚΑΘ.ELM."
	done

ElmsLabHealingMachineText1:
	text "Αναρωτιέμαι"
	line "τι κάνει;"
	done

ElmsLabHealingMachineText2:
	text "Γιατρεύει #μον;"
	done

ElmAfterTheftText1:
	text "ELM: <PLAYER>,"
	line "είναι τρομερό…"

	para "Ω, ναι, ποιά"
	line "ήταν η μεγάλη"
	cont "ανακάλυψη;"
	done

ElmAfterTheftText2:
	text "<PLAYER> έδωσε"
	line "το ΜΥΣΤΗΡΙΟΑΥΓΟ"
	cont "στον ΚΑΘ.ELM."
	done

ElmAfterTheftText3:
	text "ELM: Αυτό;"
	done

ElmAfterTheftText4:
	text "Μα… Είναι ένα"
	line "ΠΟΚΕMON ΑΥΓΟ;"

	para "Αν είναι, έχουμε"
	line "μεγάλη ανακάλυψη!"
	done

ElmAfterTheftText5:
	text "ELM: Τι;!;"

	para "Ο ΚΑΘ.OAK σου"
	line "έδωσε #ντεξ;"

	para "<PLAYER>, είναι"
	line "αλήθεια; Εί-είναι"
	cont "απίθανο!"

	para "Είναι υπέροχος"
	line "στο να βλέπει το"
	cont "ταλέντο νέων"
	cont "εκπαιδευτών."

	para "Ουάου, <PLAYER>."
	line "Έχεις ότι πρέπει"

	para "για να γίνεις"
	line "ΠΡΩΤΑΘΛΗΤΗΣ."

	para "Φαίνεται να τα"
	line "πας καλά και"
	cont "με τα #μον."

	para "Πρέπει να"
	line "κάνεις την προ-"
	cont "κλήση GYM."

	para "Το πιο κοντινό"
	line "είναι αυτό στην"
	cont "ΠΟΛΗ VIOLET."
	done

ElmAfterTheftText6:
	text "…<PLAYER>. Ο"
	line "δρόμος για το"

	para "πρωτάθλημα θα"
	line "μεγάλος."

	para "Πριν φύγεις,"
	line "Μίλησε με την"
	cont "μαμά σου πρώτα."
	done

ElmStudyingEggText:
	text "ELM: Μην τα"
	line "παρατάς! Θα σε"

	para "καλέσω αν γίνει"
	line "κάτι στο ΑΥΓΟ!"
	done

ElmAideHasEggText:
	text "ELM: <PLAYER>;"
	line "Βρήκες τον"
	cont "βοηθό μου;"

	para "Πρέπει να σε"
	line "βρήκε με το ΑΥΓΟ"

	para "στο ΚΕΝΤΡΟ ΠΟΚΕΜΟΝ"
	line "της ΠΟΛΗΣ VIOLEΤ."

	para "Μάλλον σου"
	line "ξέφυγε. Βρες"
	cont "τον εκεί πέρα."
	done

ElmWaitingEggHatchText:
	text "ELM: Έι, έχει"
	line "αλλάξει το ΑΥΓΟ;"
	done

ElmThoughtEggHatchedText:
	text "<PLAYER>; Νόμιζα"
	line "πως εκκολάφθηκε!"

	para "Που είναι"
	line "το #μον;"
	done

ShowElmTogepiText1:
	text "ELM: <PLAYER>,"
	line "δείχνεις καλά!"
	done

ShowElmTogepiText2:
	text "Τι;"
	line "Ποιό #μον!;!"
	done

ShowElmTogepiText3:
	text "Το ΑΥΓΟ εκολάφθη-"
	line "κε! Τα #μον"
	cont "βγαίνουν απο ΑΥΓΑ…"

	para "Οχι, ίσως όχι"
	line "όλα τα #μον."

	para "Ουάου, υπάρχει"
	line "πολύ έρευνα που"
	cont "πρέπει να γίνει."
	done

ElmGiveEverstoneText1:
	text "Ευχαριστώ, <PLAYER>!"
	line "Μας βοηθάς να"

	para "λύσουμε #μον"
	line "μυστήρια!"

	para "Θέλω να πάρεις"
	line "αυτό ως δείγμα"
	cont "εκτίμησης."
	done

ElmGiveEverstoneText2:
	text "Είναι μια"
	line "ΑΙΩΝΙΑΠΕΤΡΑ."

	para "Κάποια είδη"
	line "εξελίσσονται"

	para "όταν μεγαλώνουν"
	line "σε κάποια LEVEL."

	para "#μον που κρατά"
	line "ΑΙΩΝΙΑΠΕΤΡΑ"
	cont "δεν εξελίσσεται."

	para "δώστο σε #-"
	line "MON που δεν"
	cont "θες να εξελιχθεί."
	done

ElmText_CallYou:
	text "ELM: <PLAYER>, Θα"
	line "σε καλέσω αν"
	cont "συμβεί κάτι."
	done

AideText_AfterTheft:
	text "…σιγχ… Αυτό το"
	line "κλεμμένο #μον."

	para "Αναρωτιέμαι"
	line "τι να κάνει."

	para "Λένε πως #μον"
	line "που μεγαλώνουν"

	para "με κακό άτομο"
	line "γίνονται κακά."
	done

ElmGiveMasterBallText1:
	text "ELM: Γεια, <PLAYER>!"
	line "Χάρη σε εσενα"

	para "η έρευνα μου"
	line "πάει τέλεια!"

	para "Πάρε αυτό ως"
	line "δείγμα"
	cont "ευγνωμοσύνης."
	done

ElmGiveMasterBallText2:
	text "Η MASTER BALL"
	line "είναι τέλεια!"

	para "Η απόλυτη"
	line "BALL! Θα πιάσει"

	para "κάθε #μον"
	line "χωρις αποτυχία."

	para "Δίνεται μόνο σε"
	line "εκλεκτούς #μον"
	cont "ερευνητές."

	para "Νομίζω πως θα"
	line "κάνεις καλύτερη"

	para "χρήση από εμένα,"
	line "<PLAYER>!"
	done

ElmGiveTicketText1:
	text "ELM: <PLAYER>!"
	line "Εδώ είσαι!"

	para "Σε κάλεσα γιατί"
	line "έχω κάτι"
	cont "για εσένα."

	para "Βλέπεις; Είναι"
	line "ΕΙΣΗΤΗΡΙΟ."

	para "Τώρα πιάσε"
	line "#μον στο KANTO."
	done

ElmGiveTicketText2:
	text "Το πλοίο σαλπάρει"
	line "απο την OLIVINE."

	para "Μα το ήξερες"
	line "ήδη, <PLAYER>."

	para "Εξάλλου, πηγές"
	line "παντού με τα"
	cont "#μον σου."

	para "Δώσε χαιρετισμούς"
	line "στον ΚΑΘ.ΟΑΚ!"
	done

ElmsLabMonEggText: ; unreferenced
	text "Είναι το #μον"
	line "ΑΥΓΟ που μελετά"
	cont "ο ΚΑΘ.ELM."
	done

AideText_GiveYouPotion:
	text "<PLAYER>, θέλω"
	line "να κάνεις αυτή"
	cont "τη δουλειά."
	done

AideText_AlwaysBusy:
	text "Είμαστε μόνο"
	line "δύο, οπότε"
	cont "έχουμε δουλειά."
	done

AideText_TheftTestimony:
	text "Υπήρχε δυνατος"
	line "θόρυβος έξω…"

	para "Όταν πήγαμε"
	line "να δούμε, κάποιος"
	cont "έκλεψε #μον."

	para "Είναι απίστευτο"
	line "που κάποιος"
	cont "έκανε κάτι τέτοιο!"

	para "…σιγχ… το"
	line "κλεμμένο #μον."

	para "Αναρωτιέμαι"
	line "τι να κάνει."

	para "Λένε πως #μον"
	line "που μεγαλώνει"

	para "κακό άτομο"
	line "γίνονται κακά."
	done

AideText_GiveYouBalls:
	text "<PLAYER>!"

	para "Πάρε αυτά στην"
	line "#ντεξ αποστολή!"
	done

AideText_ExplainBalls:
	text "Για προσθήκη"
	line "στο #ντεξ,"
	cont "πιάσε #μον."

	para "Ρίξε # BALL"
	line "σε άγρια #μον"
	cont "για να πιαστούν."
	done

ElmsLabOfficerText1:
	text "Άκουσα πως ένα"
	line "#μον κλάπηκε…"

	para "Έπαιρνα λίγες"
	line "πληροφορίες"
	cont "από τον ΚΑΘ.ELM."

	para "Προφανώς, ένα"
	line "νεαρό αγόρι με"
	cont "κόκκινα μαλλιά…"

	para "Τι;"

	para "Έκανες μάχη"
	line "με τέτοιο τύπο;"

	para "Μήπως ξέρεις"
	line "το όνομα του;"
	done

ElmsLabOfficerText2:
	text "OK! Ώστε <RIVAL>"
	line "τον λένε!"

	para "Ευχαριστώ για"
	line "τη βοήθεια!"
	done

ElmsLabWindowText1:
	text "Ανοιχτό παράθυρο."

	para "Ευχάριστο αεράκι"
	line "μπαίνει μέσα."
	done

ElmsLabWindowText2:
	text "Μπήκε από"
	line "εδώ πέρα!"
	done

ElmsLabTravelTip1Text:
	text "<PLAYER> άνοιξε"
	line "ένα βιβλίο."

	para "Συμβουλή 1:"

	para "Πάτα START για"
	line "άνοιγμα ΜΕΝΟΥ."
	done

ElmsLabTravelTip2Text:
	text "<PLAYER> άνοιξε"
	line "ενα βιβλίο."

	para "Συμβουλή 2:"

	para "Σώσε το ταξίδι"
	line "σου με ΣΩΣΙΜΟ!"
	done

ElmsLabTravelTip3Text:
	text "<PLAYER> άνοιξε"
	line "ενα βιβλίο."

	para "Συμβουλή 3:"

	para "Άνοιξε τον ΣΑΚΟ"
	line "και πάτα SELECT"
	cont "για μετακίνηση."
	done

ElmsLabTravelTip4Text:
	text "<PLAYER> άνοιξε"
	line "ενα βιβλίο."

	para "Συμβουλή 4:"

	para "Τσέκαρε #μον"
	line "κινήσεις. Πάτα"

	para "Κουμπί A για"
	line "αλλαγή κινήσεων."
	done

ElmsLabTrashcanText:
	text "Περιτύλιγμα από"
	line "το σνακ που έφαγε"
	cont "ο ΚΑΘ.ΟΑΚ…"
	done

ElmsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, NEW_BARK_TOWN, 1
	warp_event  5, 11, NEW_BARK_TOWN, 1

	def_coord_events
	coord_event  4,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  5,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  4,  5, SCENE_ELMSLAB_MEET_OFFICER, MeetCopScript
	coord_event  5,  5, SCENE_ELMSLAB_MEET_OFFICER, MeetCopScript2
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion2
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls2

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ElmsLabHealingMachine
	bg_event  6,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  0,  7, BGEVENT_READ, ElmsLabTravelTip1
	bg_event  1,  7, BGEVENT_READ, ElmsLabTravelTip2
	bg_event  2,  7, BGEVENT_READ, ElmsLabTravelTip3
	bg_event  3,  7, BGEVENT_READ, ElmsLabTravelTip4
	bg_event  6,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  3, BGEVENT_READ, ElmsLabTrashcan
	bg_event  5,  0, BGEVENT_READ, ElmsLabWindow

	def_object_events
	object_event  5,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, -1
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	object_event  5,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CopScript, EVENT_COP_IN_ELMS_LAB
