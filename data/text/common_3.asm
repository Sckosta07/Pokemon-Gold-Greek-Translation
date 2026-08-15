_SlotsStartText::
	text "Πάμε!"
	done

_SlotsNotEnoughCoinsText::
	text "Όχι αρκετά"
	line "κέρματα."
	prompt

_SlotsRanOutOfCoinsText::
	text "Φτου… Ξέμεινα"
	line "από κέρματα…"
	done

_SlotsPlayAgainText::
	text "Ξανά;"
	done

_SlotsLinedUpText::
	text "στη σειρά!"
	line "Κέρδισες @"
	text_ram wStringBuffer2
	text " κέρματα!"
	done

_SlotsDarnText::
	text "Φτου!"
	done

_GearTodayText::
	text_today
	text_end

_GearEllipseText::
	text "<……>"
	done

_GearOutOfServiceText::
	text "Είσαι εκτός"
	line "περιοχής βοήθειας."
	prompt

_PokegearAskWhoCallText::
	text "Ποιόν θέλεις"
	line "να καλέσεις;"
	done

_PokegearPressButtonText::
	text "Πάτα όποιο"
	line "κουμπί για έξοδο."
	done

_PokegearAskDeleteText::
	text "Διαγραφή του"
	line "αριθμού;"
	done

_PhoneWrongNumberText::
	text "Ε; συγνώμη,"
	line "λάθος αριθμός!"
	done

_PhoneClickText::
	text "Κλικ!"
	done

_PhoneEllipseText::
	text "<……>"
	done

_PhoneOutOfAreaText::
	text "Ο αριθμός είναι"
	line "εκτός περιοχής."
	done

_PhoneJustTalkToThemText::
	text "Απλά μιλά σε"
	line "αυτό το άτομο!"
	done

_PhoneThankYouText::
	text "Ευχαριστώ!"
	done

_SpaceSpaceColonText:: ; unreferenced
	text "  :"
	done

_PasswordAskResetText::
	text "Κωδικός OK."
	line "Επέλεξε ΣΥΝΕΧΕΙΑ &"
	cont "επαναφορά."
	prompt

_PasswordWrongText::
	text "Λαθος κωδικός!"
	prompt

_PasswordAskResetClockText::
	text "Επαναφ. ρολογιού;"
	done

_PasswordAskEnterText::
	text "Βάλε τον"
	line "κωδικό."
	done

_ClearAllSaveDataText::
	text "Σβήσε ολα τα"
	line "δεδ. περιοχής;"
	done

_LearnedMoveText::
	text_ram wMonOrItemNameBuffer
	text " έμαθε"
	line "@"
	text_ram wStringBuffer2
	text "!@"
	sound_dex_fanfare_50_79
	text_promptbutton
	text_end

_MoveAskForgetText::
	text "Ποιά κίνηση"
	next "να ξεχαστεί;"
	done

_StopLearningMoveText::
	text "Δεν μαθαίνει"
	line "@"
	text_ram wStringBuffer2
	text ";"
	done

_DidNotLearnMoveText::
	text_ram wMonOrItemNameBuffer
	text_start
	line "δεν έμαθε"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

_AskForgetMoveText::
	text_ram wMonOrItemNameBuffer
	text " "
	line "θέλει να μάθει"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "Μα το @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "δεν μαθαίνει"
	cont "πέντε κινήσεις."

	para "Διαγραφή μιας"
	line "παλιάς για χώρο"
	cont "για @"
	text_ram wStringBuffer2
	text ";"
	done

Text_MoveForgetCount::
	text "1, 2 και…@"
	text_pause
	text_end

	text_end ; unreferenced

_MoveForgotText::
	text " Πουφ!@"
	text_pause
	text_start

	para "@"
	text_ram wMonOrItemNameBuffer
	text " ξέχασε"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Και…"
	prompt

_MoveCantForgetHMText::
	text "HM δεν"
	line "ξεχνιούνται"
	prompt

_CardFlipPlayWithThreeCoinsText::
	text "Παίξε για"
	line "τρια κέρματα;"
	done

_CardFlipNotEnoughCoinsText::
	text "Όχι αρκετά…"
	prompt

_CardFlipChooseACardText::
	text "Διάλεξε κάρτα."
	done

_CardFlipPlaceYourBetText::
	text "Βάλε στοίχημα."
	done

_CardFlipPlayAgainText::
	text "Θες να παίξεις"
	line "ξανά;"
	done

_CardFlipShuffledText::
	text "Οι κάρτες"
	line "ανακατεύτηκαν."
	prompt

_CardFlipYeahText::
	text "Ναι!"
	done

_CardFlipDarnText::
	text "Φτου…"
	done

_BallDodgedText::
	text "Απέφυγε την"
	line "# BALL!"

	para "Αυτό το #MON"
	line "δεν πιάνεται!"
	prompt

_BallMissedText::
	text "Σου ξέφυγε"
	line "το #μον!"
	prompt

_BallBrokeFreeText::
	text "Ωχ όχι! Το #-"
	line "μον ξέφυγε!"
	prompt

_BallAppearedCaughtText::
	text "Ωωω! Έμοιαζε"
	line "σαν να πιάστηκε!"
	prompt

_BallAlmostHadItText::
	text "Ααργκχ!"
	line "Σχεδόν το είχα!"
	prompt

_BallSoCloseText::
	text "Φτου! Ήταν"
	line "τόσο κοντά!"
	prompt

Text_BallCaught::
	text "Έπιασε! @"
	text_ram wEnemyMonNickname
	text_start
	line "έχει πιαστεί!@"
	sound_caught_mon
	text_end

	text_end ; unreferenced

_WaitButtonText::
	text_promptbutton
	text_end

_BallSentToPCText::
	text_ram wMonOrItemNameBuffer
	text " στά-"
	line "λθηκε στο PC."
	prompt

_NewDexDataText::
	text_ram wEnemyMonNickname
	text " νέα"
	line "δεδωμένα μπήκαν"
	cont "στο #ντεξ.@"
	sound_slot_machine_start
	text_promptbutton
	text_end

_AskGiveNicknameText::
	text "Δώσε ψευδώνυμο"
	line "στο @"
	text_ram wStringBuffer1
	text ";"
	done

_ItemStatRoseText::
	text_ram wStringBuffer1
	text ""
	line "@"
	text_ram wStringBuffer2
	text " αυξήθηκε."
	prompt

_ItemCantUseOnMonText::
	text "Δεν έχει επίδραση"
	line "σε αυτό το #μον."
	prompt

_RepelUsedEarlierIsStillInEffectText::
	text "Το ΑΠΟΘΗΤΙΚΟ"
	line "από πριν"
	cont "συνεχίζει."
	prompt

_PlayedFluteText::
	text "Έπαιξε το "
	line "ΠΟΚΕ ΦΛΑΟΥΤΟ."

	para "Είναι πολυ"
	line "πιασάρικος ήχος!"
	prompt

_FluteWakeUpText::
	text "Όλα τα κοιμησμένα"
	line "#μον ξύπνησαν."
	prompt

Text_PlayedPokeFlute::
	text "<PLAYER> επαιξε το"
	line "ΠΟΚΕ ΦΛΑΟΥΤΟ.@"
	text_promptbutton
	text_end

	text_end ; unreferenced

_CoinCaseCountText::
; BUG: Using the Coin Case can cause arbitrary code execution (see docs/bugs_and_glitches.md)
	text "Κέρματα:"
	line "@"
	text_decimal wCoins, 2, 4
	done

_RaiseThePPOfWhichMoveText::
	text "Αύξησε τα ΠΠ"
	line "ποιάς κίνησης;"
	done

_RestoreThePPOfWhichMoveText::
	text "Επαναφορά ΠΠ"
	line "ποιάς κίνησης;"
	done

_PPIsMaxedOutText::
	text_ram wStringBuffer2
	text " ΠΠ"
	line "εγιναν πλήρης."
	prompt

_PPsIncreasedText::
	text_ram wStringBuffer2
	text " ΠΠ"
	line "αυξήθηκαν."
	prompt

_PPRestoredText::
	text "ΠΠ επαναφέρθηκαν."
	prompt

_SentTrophyHomeText::
	text "Υπάρχει τρόπαιο"
	line "μέσα!@"
	sound_dex_fanfare_50_79
	text_start

	para "@"
	text_ram wPlayerName
	text " έστειλε το"
	line "τρόπαιο σπίτι."
	prompt

_ItemLooksBitterText::
	text "Είναι πικρό…"
	prompt

_ItemCantUseOnEggText::
	text "Δεν έχει επίδραση"
	line "σε ΑΥΓΑ."
	prompt

_ItemOakWarningText::
	text "OAK: <PLAYER>!"
	line "δεν είναι ώρα"
	cont "γι' αυτό τώρα!"
	prompt

_ItemBelongsToSomeoneElseText::
	text "Αυτό ανοίκει"
	line "σε κάποιον αλλο!"
	prompt

_ItemWontHaveEffectText::
	text "Δεν έχει"
	line "καμία επίδραση."
	prompt

_BallBlockedText::
	text "Ο εκπ/της"
	line "έδιωξε την BALL!"
	prompt

_BallDontBeAThiefText::
	text "Μην κλέβεις!"
	prompt

_NoCyclingText::
	text "Μην κάνεις"
	line "πετάλι εδώ."
	prompt

_ItemCantGetOnText::
	text "Μην ανέβεις"
	line "στο @"
	text_ram wStringBuffer1
	text " τώρα."
	prompt

_BallBoxFullText::
	text "Το ΚΟΥΤΙ #μον"
	line "γέμισε. Αυτό"
	cont "δεν είναι για εδώ."
	prompt

_ItemUsedText::
	text "<PLAYER> έβαλε"
	line "το @"
	text_ram wStringBuffer2
	text "."
	done

_ItemGotOnText::
	text "<PLAYER> έβαλε @"
	text_low
	text_ram wStringBuffer2
	text "."
	prompt

_ItemGotOffText::
	text "<PLAYER> έβγαλε@"
	text_low
	text "από το @"
	text_ram wStringBuffer2
	text "."
	prompt

_KnowsMoveText::
	text_ram wStringBuffer1
	text " ξέρει"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_MoveKnowsOneText::
	text "Το #μον ξέρει"
	line "μόνο μια κίνηση."
	done

_AskDeleteMoveText::
	text "Ω, θα ξεχάσει"
	line "@"
	text_ram wStringBuffer1
	text ";"
	done

_DeleterForgotMoveText::
	text "Έγινε! Το #μον"
	line "ξέχασε την κίνηση."
	done

_DeleterEggText::
	text "Ενα ΑΥΓΟ δεν"
	line "ξέρει κινήσεις!"
	done

_DeleterNoComeAgainText::
	text "Όχι; Έλα να"
	line "με ξανά δεις."
	done

_DeleterAskWhichMoveText::
	text "Ποιά κίνηση να"
	line "ξεχάσει, τότε;"
	prompt

_DeleterIntroText::
	text "Ε… Ω, ναι, είμαι"
	line "ο ΔΙΑΓΡΑΦΕΑΣ."

	para "Κάνω τα #μον"
	line "να ξεχνούν κίνηση."

	para "Να κάνω #-"
	line "μον να ξεχάσει;"
	done

_DeleterAskWhichMonText::
	text "Ποιό #μον;"
	prompt

_DSTIsThatOKText::
	text " ΘΕΡΙΝΗ,"
	line "ΩΡΑ, OK;"
	done

_TimeAskOkayText::
	text ","
	line "είναι OK;"
	done

_TimesetAskDSTText::
	text "Θέλεις να"
	line "αλλάξεις την"
	cont "Θερινή Ώρα;"
	done

_TimesetDSTText::
	text "Σέταρα το ρολόι"
	line "μια ώρα"
	cont "μπροστά."
	prompt

_TimesetAskNotDSTText::
	text "Τελείωσε η"
	line "Θερινή Ώρα;"
	done

_TimesetNotDSTText::
	text "Έβαλα το ρολόι"
	line "μια ώρα πίσω."
	prompt

_TimesetAskAdjustDSTText::
	text "Θες να ρυθμίσεις"
	line "το ρολόι για"

	para "την Θερινή"
	line "Ώρα;"
	done

_MomLostGearBookletText::
	text "Έχασα το βιβλίο"
	line "χρήσης για"
	cont "το #GEAR."

	para "Έλα ξανά"
	line "σε λίγο."
	prompt
