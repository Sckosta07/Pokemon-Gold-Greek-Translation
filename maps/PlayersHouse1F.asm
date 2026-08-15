	object_const_def
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_MOM3
	const PLAYERSHOUSE1F_MOM4

PlayersHouse1F_MapScripts:
	def_scene_scripts
	scene_script PlayersHouse1FMeetMomScene, SCENE_PLAYERSHOUSE1F_MEET_MOM
	scene_script PlayersHouse1FNoopScene,    SCENE_PLAYERSHOUSE1F_NOOP

	def_callbacks

PlayersHouse1FMeetMomScene:
	sdefer MeetMomScript
	end

PlayersHouse1FNoopScene:
	end

MeetMomScript:
	applymovement PLAYER, PlayersHouseDownstairsMovement
	playmusic MUSIC_MOM
	turnobject PLAYERSHOUSE1F_MOM1, UP
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
	opentext
	writetext ElmsLookingForYouText
	promptbutton
	getstring STRING_BUFFER_4, PokegearName
	scall PlayersHouse1FReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	setscene SCENE_PLAYERSHOUSE1F_NOOP
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	writetext MomGivesPokegearText
	promptbutton
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	writetext ComeHomeForDSTText
	yesorno
	iffalse .ExplainPhone
	sjump .KnowPhone

.KnowPhone:
	writetext KnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.ExplainPhone:
	writetext DontKnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.FinishPhone:
	writetext InstructionsNextText
	waitbutton
	closetext
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	special RestartMapMusic
	end

PokegearName:
	db "#GEAR@"

PlayersHouse1FReceiveItemStd:
	jumpstd ReceiveItemScript
	end

MomScript:
	faceplayer
	opentext
	checkevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	iftrue .FirstTimeBanking
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .BankOfMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .GaveMysteryEgg
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext HurryUpElmIsWaitingText
	waitbutton
	closetext
	end

.GotAPokemon:
	writetext SoWhatWasProfElmsErrandText
	waitbutton
	closetext
	end

.FirstTimeBanking:
	writetext ImBehindYouText
	waitbutton
	closetext
	end

.GaveMysteryEgg:
	setevent EVENT_FIRST_TIME_BANKING_WITH_MOM
.BankOfMom:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special BankOfMom
	waitbutton
	closetext
	end

PlayersHouse1FTVScript:
	jumptext PlayersHouse1FTVText

PlayersHouse1FStoveScript:
	jumptext PlayersHouse1FStoveText

PlayersHouse1FSinkScript:
	jumptext PlayersHouse1FSinkText

PlayersHouse1FFridgeScript:
	jumptext PlayersHouse1FFridgeText

PlayersHouseDownstairsMovement:
	step DOWN
	step_end

MomWalksToPlayerMovement:
	slow_step RIGHT
	slow_step RIGHT
	slow_step UP
	step_end

MomWalksBackMovement:
	slow_step DOWN
	slow_step LEFT
	slow_step LEFT
	step_end

ElmsLookingForYouText:
	text "Ω, <PLAYER>…! Ο"
	line "γείτονας, ο ΚΑΘ."

	para "ELM, σε"
	line "ψάχνει."

	para "Είπε πως ήθελε"
	line "να κάνεις κάτι"
	cont "για εκείνον."

	para "Ω! Σχεδόν το"
	line "ξέχασα! Το #μον"

	para "GEAR γύρισε"
	line "από την διόρθωση."

	para "Ορίστε!"
	done

MomGivesPokegearText:
	text "#μον GEAR, ή"
	line "απλώς #GEAR."

	para "Είναι μοναδικό"
	line "αν θες να γίνεις"
	cont "καλός εκπ/της."

	para "Ω, η μέρα δεν"
	line "έχει οριστεί."

	para "Μην το"
	line "ξεχνάς αυτό!"
	done

IsItDSTText:
	text "Είναι Θερινή"
	line "Ώρα τώρα;"
	done

ComeHomeForDSTText:
	text "Έλα πίσω για"
	line "να ρυθμίσεις"

	para "την ώρα της"
	line "Θερινής Ωρας."

	para "Εν τω μεταξύ,"
	line "ξέρεις τι κάνει"
	cont "το ΚΙΝΗΤΟ;"
	done

KnowTheInstructionsText:
	text "Δεν ανοίγεις"
	line "το #GEAR"

	para "και επιλέγεις"
	line "το ΚΙΝΗΤΟ;"
	done

DontKnowTheInstructionsText:
	text "Θα διαβάσω"
	line "τις οδηγίες."

	para "Άνοιξε το #GEAR"
	line "και επέλεξε το"
	cont "ΚΙΝΗΤΟ."
	done

InstructionsNextText:
	text "Οι αριθμοί μπαί-"
	line "νουν στη μνήμη."

	para "Απλά διάλεξε"
	line "όνομα για κλήση."

	para "Ουάου, δεν"
	line "είναι βολικό;"
	done

HurryUpElmIsWaitingText:
	text "Ο ΚΑΘ.ELM"
	line "σε περιμένει."

	para "Τρέχα, μωρό μου!"
	done

SoWhatWasProfElmsErrandText:
	text "Ώστε, τι ήθελε"
	line "ο ΚΑΘ.ELM;"

	para "…"

	para "Αυτό ακούγεται"
	line "σαν πρόκληση."

	para "Μα, σε τιμάει"
	line "που βασίζονται"
	cont "πάνω σου."
	done

ImBehindYouText:
	text "<PLAYER>, κάντο!"

	para "Σε στηρίζω"
	line "σε ότι κανείς!"
	done

PlayersHouse1FStoveText:
	text "Σπεσιαλιτέ μαμάς!"

	para "ΣΟΥΒΛΑΚΙ ΗΦΑΙΣΤΕΙΟ"
	line "του CINNABAR!"
	done

PlayersHouse1FSinkText:
	text "Ο νεροχύτης"
	line "είναι άδειος. Η"
	cont "μαμά καθαρίζει."
	done

PlayersHouse1FFridgeText:
	text "Για να δω τι"
	line "έχει το ψυγείο…"

	para "ΦΡΕΣΚΟ ΝΕΡΟ και"
	line "νόστιμη ΛΕΜΟΝΑΔΑ!"
	done

PlayersHouse1FTVText:
	text "Υπάρχει μια σειρά"
	line "στη TV: Δύο"

	para "ένοικοι μαλώνουν"
	line "για το ίδιο σπίτι…"

	para "Έχουν πολύ πλάκα!"
	line "Ώρα να φεύγω!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, NEW_BARK_TOWN, 2
	warp_event  7,  7, NEW_BARK_TOWN, 2
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PlayersHouse1FStoveScript
	bg_event  1,  1, BGEVENT_READ, PlayersHouse1FSinkScript
	bg_event  2,  1, BGEVENT_READ, PlayersHouse1FFridgeScript
	bg_event  4,  1, BGEVENT_READ, PlayersHouse1FTVScript

	def_object_events
	object_event  7,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  2,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  7,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  0,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
