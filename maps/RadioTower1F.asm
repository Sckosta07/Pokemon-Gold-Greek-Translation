	object_const_def
	const RADIOTOWER1F_RECEPTIONIST
	const RADIOTOWER1F_LASS
	const RADIOTOWER1F_YOUNGSTER
	const RADIOTOWER1F_ROCKET
	const RADIOTOWER1F_LUCKYNUMBERMAN
	const RADIOTOWER1F_CARD_WOMAN

RadioTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

RadioTower1FReceptionistScript:
	faceplayer
	opentext
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue .Rockets
	writetext RadioTower1FReceptionistWelcomeText
	waitbutton
	closetext
	end

.Rockets:
	writetext RadioTower1FReceptionistNoToursText
	waitbutton
	closetext
	end

RadioTower1FLuckyNumberManScript:
	faceplayer
	opentext
	writetext RadioTower1FLuckyNumberManAskToPlayText
	promptbutton
	special CheckLuckyNumberShowFlag
	iffalse .skip
	special ResetLuckyNumberShowFlag
.skip
	special PrintTodaysLuckyNumber
	checkflag ENGINE_LUCKY_NUMBER_SHOW
	iftrue .GameOver
	writetext RadioTower1FLuckyNumberManThisWeeksIdIsText
	promptbutton
	closetext
	applymovement RADIOTOWER1F_LUCKYNUMBERMAN, RadioTower1FLuckyNumberManGoToPCMovement
	opentext
	writetext RadioTower1FLuckyNumberManCheckIfMatchText
	promptbutton
	waitsfx
	writetext RadioTower1FLuckyNumberManDotDotDotText
	playsound SFX_DEX_FANFARE_20_49
	waitsfx
	promptbutton
	special CheckForLuckyNumberWinners
	closetext
	applymovement RADIOTOWER1F_LUCKYNUMBERMAN, RadioTower1FLuckyNumberManReturnToPlayerMovement
	opentext
	ifequal 1, .FirstPlace
	ifequal 2, .SecondPlace
	ifequal 3, .ThirdPlace
	sjump .NoPrize

.GameOver:
	writetext RadioTower1FLuckyNumberManComeAgainText
	waitbutton
	closetext
	end

.FirstPlace:
	writetext RadioTower1FLuckyNumberManPerfectMatchText
	playsound SFX_1ST_PLACE
	waitsfx
	promptbutton
	giveitem MASTER_BALL
	iffalse .BagFull
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	sjump .GameOver

.SecondPlace:
	writetext RadioTower1FLuckyNumberManOkayMatchText
	playsound SFX_2ND_PLACE
	waitsfx
	promptbutton
	giveitem EXP_SHARE
	iffalse .BagFull
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	sjump .GameOver

.ThirdPlace:
	writetext RadioTower1FLuckyNumberManWeakMatchText
	playsound SFX_3RD_PLACE
	waitsfx
	promptbutton
	giveitem PP_UP
	iffalse .BagFull
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	sjump .GameOver

.NoPrize:
	writetext RadioTower1FLuckyNumberManNoneOfYourIDNumbersMatchText
	waitbutton
	closetext
	end

.BagFull:
	writetext RadioTower1FLuckyNumberManNoRoomForYourPrizeText
	waitbutton
	closetext
	end

RadioTower1FRadioCardWomanScript:
	faceplayer
	opentext
	checkflag ENGINE_RADIO_CARD
	iftrue .GotCard
	writetext RadioTower1FRadioCardWomanOfferQuizText
	yesorno
	iffalse .NoQuiz
	writetext RadioTower1FRadioCardWomanQuestion1Text
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion2Text
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion3Text
	yesorno
	iftrue .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion4Text
	yesorno
	iffalse .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion5Text
	yesorno
	iftrue .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanYouWinText
	promptbutton
	getstring STRING_BUFFER_4, .RadioCardText
	scall .ReceiveItem
	writetext RadioTower1FPokegearIsARadioText
	promptbutton
	setflag ENGINE_RADIO_CARD
.GotCard:
	writetext RadioTower1FRadioCardWomanTuneInText
	waitbutton
	closetext
	end

.RadioCardText:
	db "ΚΑΡΤΑ ΡΑΔΙΟ@"

.ReceiveItem:
	jumpstd ReceiveItemScript
	end

.WrongAnswer:
	playsound SFX_WRONG
	writetext RadioTower1FRadioCardWomanWrongAnswerText
	waitbutton
	closetext
	end

.NoQuiz:
	writetext RadioTower1FRadioCardWomanNotTakingQuizText
	waitbutton
	closetext
	end

RadioTower1FLassScript:
	jumptextfaceplayer RadioTower1FLassText

RadioTower1FYoungsterScript:
	jumptextfaceplayer RadioTower1FYoungsterText

TrainerGruntM3:
	trainer GRUNTM, GRUNTM_3, EVENT_BEAT_ROCKET_GRUNTM_3, GruntM3SeenText, GruntM3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM3AfterBattleText
	waitbutton
	closetext
	end

RadioTower1FDirectory:
	jumptext RadioTower1FDirectoryText

RadioTower1FLuckyChannelSign:
	jumptext RadioTower1FLuckyChannelSignText

RadioTower1FLuckyNumberManGoToPCMovement:
	step RIGHT
	turn_head UP
	step_end

RadioTower1FLuckyNumberManReturnToPlayerMovement:
	step LEFT
	turn_head UP
	step_end

RadioTower1FReceptionistWelcomeText:
	text "Καλως ήρθατε!"
	done

RadioTower1FReceptionistNoToursText:
	text "Γεια. Συγνώμη,"
	line "μα δεν κάνουμε"
	cont "ξεναγήσεις"
	cont "σήμερα."
	done

RadioTower1FLuckyNumberManAskToPlayText:
	text "Γεια, είστε εδώ"
	line "το ΣΟΟΥ ΤΥΧΕΡΟΥ"
	cont "ΑΡΙΘΜΟΥ;"

	para "Θέλετε να τσεκάρω"
	line "τους αριθμούς ID"
	cont "των #μον σας;"

	para "Αν είστε τυχερός,"
	line "θα πάρετε βραβείο."
	done

RadioTower1FLuckyNumberManThisWeeksIdIsText:
	text "Ο αριθμός ID"
	line "εβδομάδας: @"
	text_ram wStringBuffer3
	text "."
	done

RadioTower1FLuckyNumberManCheckIfMatchText:
	text "Για να δούμε"
	line "αν ταιριάζουν."
	done

RadioTower1FLuckyNumberManDotDotDotText:
	text "<……>"
	line "<……>"
	done

RadioTower1FLuckyNumberManComeAgainText:
	text "Ελατε την επό-"
	line "μενη εβδομάδα για"
	cont "τον ΑΡΙΘΜΟ."
	done

RadioTower1FLuckyNumberManPerfectMatchText:
	text "Ουάου! Έχετε"
	line "τέλειο ταίριασμα"
	cont "των νουμερων!"

	para "Έχουμε μεγάλο"
	line "νικητή βραβείου!"

	para "Νικήσατε μια"
	line "MASTER BALL!"
	done

RadioTower1FLuckyNumberManOkayMatchText:
	text "Έι! Έχετε βρει"
	line "τους τρεις"
	cont "αριθμούς!"

	para "Πήρατε το 2ο"
	line "βραβείο, ένα"
	cont "EXP. SHARE!"
	done

RadioTower1FLuckyNumberManWeakMatchText:
	text "Ουχ, βρήκατε"
	line "τους τελευταίους"
	cont "δυο αριθμούς."

	para "Πήρατε το 3ο"
	line "βραβείο, το PP UP."
	done

RadioTower1FLuckyNumberManNoneOfYourIDNumbersMatchText:
	text "Κάνεις απο τους"
	line "αριθμούς κάνει."
	done

RadioTower1FLuckyNumberManNoRoomForYourPrizeText:
	text "Δεν έχετε χώρο"
	line "για το δώρο."

	para "Κάντε χώρο &"
	line "ελάτε πίσω."
	done

RadioTower1FRadioCardWomanOfferQuizText:
	text "Κάνουμε ειδικό"
	line "κουίζ καμπάνια"
	cont "αυτό τον καιρό."

	para "Απαντήστε 5 ερω-"
	line "τήσεις σωστά για"
	cont "την ΚΑΡΤΑ ΡΑΔΙΟ."

	para "Περάστε τη στο"
	line "#GEAR για το"

	para "ράδιο πάντα"
	line "και παντού."

	para "Θα θέλατε να"
	line "κάνετε το κουίζ;"
	done

RadioTower1FRadioCardWomanQuestion1Text:
	text "Ερώτηση 1:"

	para "Μπορεί ο ΧΑΡΤΗΣ"
	line "να εμφανιστεί"
	cont "στο #GEAR;"
	done

RadioTower1FRadioCardWomanQuestion2Text:
	text "Σωστά!"
	line "Ερώτηση 2:"

	para "Μπορεί το NIDORINA"
	line "να είναι θηλυκό;"
	done

RadioTower1FRadioCardWomanQuestion3Text:
	text "Διάνα!"
	line "Ερώτηση 3:"

	para "Μπορεί ο KURT, ο"
	line "τεχνίτης # BALL"
	cont "να δίνει ΚΑΡΠΟΥΣ;"
	done

RadioTower1FRadioCardWomanQuestion4Text:
	text "Καλά μέχρι εδώ!"
	line "Ερώτηση 4:"

	para "MAGIKARP δεν ξέ-"
	line "ρουν TM κινήσεις;"
	done

RadioTower1FRadioCardWomanQuestion5Text:
	text "Ουάου! Σωστός!"
	line "Ορίστε η τελική"
	cont "κίνηση:"

	para "Η ΟΜΙΛΙΑ ΤΟΥ"
	line "ΚΑΘ.ΟΑΚ είναι"
	cont "δημοφιλές εκπομπή."

	para "Είναι η MARIE"
	line "Συμπαρουσιάστρια;"
	done

RadioTower1FRadioCardWomanYouWinText:
	text "Μπίνγκο! Μπράβο!"
	line "Συγχαρητήρια!"

	para "Ορίστε το βραβείο,"
	line "η ΚΑΡΤΑ ΡΑΔΙΟ!"
	done

RadioTower1FPokegearIsARadioText:
	text "<PLAYER> #GEAR"
	line "έχει τώρα και"
	cont "ράδιο!"
	done

RadioTower1FRadioCardWomanTuneInText:
	text "Συντονιστείτε στις"
	line "εκπομπές ράδιο."
	done

RadioTower1FRadioCardWomanWrongAnswerText:
	text "Ω, κύριε."
	line "Συγνώμη, μα"

	para "είναι λάθος."
	line "προσπαθήστε ξανά!"
	done

RadioTower1FRadioCardWomanNotTakingQuizText:
	text "Ω. κατάλαβα."
	line "Ελάτε αν αλλάξετε"
	cont "γνώμη."
	done

RadioTower1FLassText:
	text "Ο BEN είναι"
	line "διάσημος DJ."

	para "Έχει γλυκιά φωνή"
	line "που με λιώνει!"
	done

RadioTower1FYoungsterText:
	text "Λατρεύω την MARY,"
	line "από την ΟΜΙΛΙΑ."

	para "Αν και μόνο"
	line "ακούω την φωνή"
	cont "της, όμως."
	done

GruntM3SeenText:
	text "Επιτέλους"
	line "κάναμε κατάληψη"
	cont "στον ΠΥΡΓΟ ΡΑΔΙΟ!"

	para "Τώρα όλοι θα"
	line "έχουν εμπειρία"

	para "αληθινού τρόμου"
	line "των ΠΥΡΑΥΛΩΝ!"

	para "Θα σου δείξουμε"
	line "αληθινό τρόμο!"
	done

GruntM3BeatenText:
	text "Πολύ δυνατός!"
	line "Θα σε προσέχω…"
	done

GruntM3AfterBattleText:
	text "Είσαι δυνατός."

	para "Το σχέδιο μας"
	line "θα χαλάσει. Πάω"
	cont "να το πω…"
	done

RadioTower1FDirectoryText:
	text "1ος ΥΠΟΔΟΧΗ"
	line "2ος ΠΩΛΗΣΕΙΣ"

	para "3ος ΠΡΟΣΩΠΙΚΟ"
	line "4ος ΠΑΡΑΓΩΓΗ"

	para "5ος ΓΡΑΦΕΙΟ"
	line "ΔΙΕΥΘΥΝΤΗ"
	done

RadioTower1FLuckyChannelSignText:
	text "ΤΥΧΕΡΟ ΚΑΝΑΛΙ!"

	para "Νικήστε με #μον"
	line "ID αριθμούς!"

	para "Ανταλλάξτε"
	line "για να συλλέξετε"
	cont "ID αριθμούς!"
	done

RadioTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 12
	warp_event  3,  7, GOLDENROD_CITY, 12
	warp_event 15,  0, RADIO_TOWER_2F, 2

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, RadioTower1FDirectory
	bg_event 13,  0, BGEVENT_READ, RadioTower1FLuckyChannelSign

	def_object_events
	object_event  5,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower1FReceptionistScript, -1
	object_event 16,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower1FLassScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 15,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RadioTower1FYoungsterScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 14,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM3, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  8,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RadioTower1FLuckyNumberManScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 12,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower1FRadioCardWomanScript, EVENT_GOLDENROD_CITY_CIVILIANS
