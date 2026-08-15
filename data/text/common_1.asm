_FruitBearingTreeText::
	text "Είναι ένα δέντρο"
	line "με φρούτα."
	done

_HeyItsFruitText::
	text "Έι! Είναι ένα"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ObtainedFruitText::
	text "Απέκτησες"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_FruitPackIsFullText::
	text "Μα ο ΣΑΚΟΣ"
	line "γέμισε…"
	done

_NothingHereText::
	text "Δεν έχει"
	line "τίποτα εδώ…"
	done

_RecoveredSomeHPText::
	text_ram wStringBuffer1
	text_start
	line "ανέκτησε @"
	text_decimal wCurHPAnimDeltaHP, 2, 3
	text "HP!"
	done

_CuredOfPoisonText::
	text_ram wStringBuffer1
	text ""
	line "θεραπεύτηκε."
	done

_RidOfParalysisText::
	text_ram wStringBuffer1
	text ""
	line "κινείται πάλι."
	done

_BurnWasHealedText::
	text_ram wStringBuffer1
	text ""
	line "θεραπεύτηκε."
	done

_WasDefrostedText::
	text_ram wStringBuffer1
	text_start
	line "ξεπάγωσε."
	done

_WokeUpText::
	text_ram wStringBuffer1
	text_start
	line "ξύπνησε."
	done

_HealthReturnedText::
	text_ram wStringBuffer1
	text ""
	line "υγεία ξαναήρθε."
	done

_RevitalizedText::
	text_ram wStringBuffer1
	text_start
	line "ανανεώθηκε."
	done

_GrewToLevelText::
	text_ram wStringBuffer1
	text " πήγε σε"
	line "LEVEL @"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79 ; plays SFX_DEX_FANFARE_50_79, identical to SFX_LEVEL_UP
	text_promptbutton
	text_end

_CameToItsSensesText::
	text_ram wStringBuffer1
	text " Βρήκε τις"
	line "αισθήσεις του."
	done

_OakTimeWokeUpText::
	text "<……><……><……><……><……><……>"
	line "<……><……><……><……><……><……>"

	para "Ζζζ… Χμ; Τι…;"
	line "Με ξύπνησες!"

	para "Θα τσεκάρεις το"
	line "ρολόι για μένα;"
	prompt

_OakTimeWhatTimeIsItText::
	text "Τι ώρα είναι;"
	done

_OakTimeWhatHoursText::
	text "Τι;@"
	text_end

_OakTimeHoursQuestionMarkText::
	text "?"
	done

_OakTimeHowManyMinutesText::
	text "Πόσα λεπτά;"
	done

_OakTimeWhoaMinutesText::
	text "Αμάν!@"
	text_end

_OakTimeMinutesQuestionMarkText::
	text "?"
	done

_OakTimeOversleptText::
	text "!"
	line "Αποκοιμήθηκα!"
	done

_OakTimeYikesText::
	text "!"
	line "Ωχ! Απο-"
	cont "κοιμήθηκα!"
	done

_OakTimeSoDarkText::
	text "!"
	line "Σίγουρα"
	cont "είναι σκοτεινά!"
	done

_OakTimeWhatDayIsItText::
	text "Ποιά μέρα;"
	done

_OakTimeIsItText::
	text ", είναι;"
	done

_EnemyWithdrewText::
	text "<ENEMY>"
	line "απέσυρε"
	cont "@"
	text_ram wEnemyMonNickname
	text "!"
	prompt

_EnemyUsedOnText::
	text "<ENEMY>"
	line "έβαλε @"
	text_ram wMonOrItemNameBuffer
	text_start
	cont "σε @"
	text_ram wEnemyMonNickname
	text "!"
	prompt

_ThatCantBeUsedRightNowText:: ; unreferenced
	text "Δεν είναι για"
	line "τώρα αυτό."
	prompt

_ThatItemCantBePutInThePackText:: ; unreferenced
	text "Αυτό δεν θα"
	line "μπει στον ΣΑΚΟ."
	done

_TheItemWasPutInThePackText:: ; unreferenced
	text "Το @"
	text_ram wStringBuffer1
	text_start
	line "μπήκε στον"
	cont "ΣΑΚΟ."
	done

_RemainingTimeText:: ; unreferenced
	text "Χρόνος που έμεινε"
	done

_YourMonsHPWasHealedText:: ; unreferenced
	text "Το HP #μον"
	line "γιατρεύτηκε."
	prompt

_WarpingText:: ; unreferenced
	text "Μεταφορά…"
	done

_ChangeWhichNumberText:: ; unreferenced
	text "Ποιός αριθμός"
	line "να αλλάξει;"
	done

_WillYouPlayWithMonText:: ; unreferenced
	text "Θα παίξεις με"
	line "@"
	text_ram wStringBuffer2
	text ";"
	done

_YouNeedTwoMonForBreedingText:: ; unreferenced
	text "Θέλεις δύο #-"
	line "μον για ζευγάρωμα."
	prompt

_BreedingIsNotPossibleText:: ; unreferenced
	text "Το ζευγάρωμα"
	line "δεν είναι εφικτό."
	prompt

_CompatibilityShouldTheyBreedText:: ; unreferenced
	text "Η συμβατότητα"
	line "is @"
	text_decimal wBreedingCompatibility, 1, 3
	text "."
	cont "Να ζευγαρώσουν;"
	done

_ThereIsNoEggText:: ; unreferenced
	text "Δεν είναι ΑΥΓΟ."
	line ""
	prompt

_ItsGoingToHatchText:: ; unreferenced
	text "Θα"
	line "εκκολαφτεί!"
	prompt

_TestEventText:: ; unreferenced
	text "Τεστ EVENT"
	line "@"
	text_decimal wStringBuffer2, 1, 2
	text ";"
	done

_WhatDoYouWantToPlayWithText:: ; unreferenced
	text "Με ποιό Θέλεις"
	line "να παίξεις;"
	done

_YouCanHaveThisText:: ; unreferenced
	text "Πάρε αυτό."
	prompt

_TheBoxIsFullText:: ; unreferenced
	text "Το ΚΟΥΤΙ γέμησε!"
	done

_ObtainedTheVoltorbBadgeText:: ; unreferenced
	text "Πήρε το"
	line "ΒΟΛΤΟΕΜΒΛΗΜΑ!"
	done

_ThePasswordIsText:: ; unreferenced
	text "Ο κωδικός είναι:"
	line ""
	done

_IsThisOKText:: ; unreferenced
	text "Είναι OK αυτό;"
	done

_EnterTheIDNoText:: ; unreferenced
	text "Βάλε"
	line "ID no."
	done

_EnterTheAmountText:: ; unreferenced
	text "Βάλε το"
	line "ποσό."
	done

_NothingToChooseText::
	text "Δεν υπάρχει"
	line "κάτι για επιλογή."
	prompt

_WhichSidePutOnText::
	text "Σε ποια πλευρά"
	line "θέλεις να μπει;"
	done

_WhichSidePutAwayText::
	text "Από ποια πλευρά"
	line "να το μαζέψω;"
	done

_PutAwayTheDecoText::
	text "Μάζεμα το"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_NothingToPutAwayText::
	text "Δεν υπάρχει κάτι"
	line "για μάζεμα."
	prompt

_SetUpTheDecoText::
	text "Σέταρε το"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_PutAwayAndSetUpText::
	text "Μάζεμα του"
	line "@"
	text_ram wStringBuffer3
	text_start

	para "και σετάρισμα"
	line "@"
	text_ram wStringBuffer4
	text "."
	prompt

_AlreadySetUpText::
	text "Σέταρες ήδη"
	line "αυτό το πράγμα."
	prompt

_LookTownMapText::
	text "Ένας ΧΑΡΤΗΣ ΠΟΛΗΣ."
	done

_LookPikachuPosterText::
	text "Μια αφίσα"
	line "ενός PIKACHU."
	done

_LookClefairyPosterText::
	text "Μια αφίσα"
	line "ενός CLEFAIRY."
	done

_LookJigglypuffPosterText::
	text "Μια αφίσα"
	line "ενός JIGGLYPUFF."
	done

_LookAdorableDecoText::
	text "Ένα γλυκούλι"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

_LookGiantDecoText::
	text "Γιγάντια κούκλα!"
	line "Χνουδωτή & μαλακή."
	done

_MomHiHowAreYouText::
	text "Γεια, <PLAYER>!"
	line "Τι κάνεις;"
	prompt

_MomFoundAnItemText::
	text "Βρήκα κάτι"
	line "χρήσιμο, άρα"
	prompt

_MomBoughtWithYourMoneyText::
	text "το πήρα με τα"
	line "χρήματα σου."
	prompt

_MomItsInPCText::
	text "Είναι στο PC."
	line "Θα σ'αρέσει!"
	done

_MomFoundADollText::
	text "Καθώς ψώνιζα"
	line "σήμερα, είδα μια"
	cont "όμορφη κούκλα,λ."
	prompt

_MomItsInYourRoomText::
	text "Είναι στο δωμάτιο."
	line "σου. Θα σ'αρέσει!"
	done

_MonWasSentToText::
	text_ram wPlayerTrademonSpeciesName
	text " έχει"
	line "σταλθεί στο @"
	text_ram wOTTrademonSenderName
	text "."
	done

_MonNameSentToText::
	text_start
	done

_BidsFarewellToMonText::
	text_ram wOTTrademonSenderName
	text " είπε"
	line "αντίο στο"
	done

_MonNameBidsFarewellText::
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TakeGoodCareOfMonText::
	text "Πρόσεχε το"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_ForYourMonSendsText::
	text "Για @"
	text_ram wPlayerTrademonSenderName
	text ""
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text ","
	done

_OTSendsText::
	text_ram wOTTrademonSenderName
	text " έστειλε"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_WillTradeText::
	text_ram wOTTrademonSenderName
	text " θα"
	line "δώσει @"
	text_ram wOTTrademonSpeciesName
	text_end

	text_end ; unreferenced

_ForYourMonWillTradeText::
	text "για @"
	text_ram wPlayerTrademonSenderName
	text ""
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text "."
	done

; Oak's Pokémon Talk

_OPT_IntroText1::
	text_start
	line "MARY: ΟΜΙΛΙΑ ΤΟΥ"
	done

_OPT_IntroText2::
	text_start
	line "ΚΑΘ.ΟΑΚ!"
	done

_OPT_IntroText3::
	text_start
	line "Με μένα, τη MARY!"
	done

_OPT_OakText1::
	text_start
	line "OAK: @"
	text_ram wMonOrItemNameBuffer
	text_end

	text_end ; unreferenced

_OPT_OakText2::
	text_start
	line "Μπορεί να δεις"
	done

_OPT_OakText3::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "."
	done

_OPT_MaryText1::
	text_start
	line "MARY: @"
	text_ram wStringBuffer1
	text ""
	done

_OPT_SweetAdorablyText::
	text_start
	line "γλυκά & όμορφα"
	done

_OPT_WigglySlicklyText::
	text_start
	line "απαλό & γλιστερό"
	done	

_OPT_AptlyNamedText::
	text_start
	line "με σωστό όνομα και"
	done

_OPT_UndeniablyKindOfText::
	text_start
	line "σίγουρα είδος από"
	done

_OPT_UnbearablyText::
	text_start
	line "τόσο αφόρητα"
	done

_OPT_WowImpressivelyText::
	text_start
	line "Ουάου, θαυμάσια"
	done

_OPT_AlmostPoisonouslyText::
	text_start
	line "σχεδόν βλαβερά"
	done

_OPT_SensuallyText::
	text_start
	line "ουχ, αισθησιακά"
	done

_OPT_MischievouslyText::
	text_start
	line "τόσο πονηρό"
	done

_OPT_TopicallyText::
	text_start
	line "τόσο τοπικό"
	done

_OPT_AddictivelyText::
	text_start
	line "σίγουρα εθιστικό"
	done

_OPT_LooksInWaterText::
	text_start
	line "στο νερό φαίνεται"
	done

_OPT_EvolutionMustBeText::
	text_start
	line "εξέλιξη είναι"
	done

_OPT_ProvocativelyText::
	text_start
	line "προκλητικά"
	done

_OPT_FlippedOutText::
	text_start
	line "νευριασμένο και"
	done

_OPT_HeartMeltinglyText::
	text_start
	line "που λιώνει καρδιές"
	done

_OPT_CuteText::
	text_start
	line "χαριτωμένο."
	done

_OPT_WeirdText::
	text_start
	line "παράξενο."
	done

_OPT_PleasantText::
	text_start
	line "ευχάριστο."
	done

_OPT_BoldSortOfText::
	text_start
	line "τολμηρό, κάπως."
	done

_OPT_FrighteningText::
	text_start
	line "τρομακτικό."
	done

_OPT_SuaveDebonairText::
	text_start
	line "ευγενές & γλυκό!"
	done

_OPT_PowerfulText::
	text_start
	line "δυνατό."
	done

_OPT_ExcitingText::
	text_start
	line "ενθουσιώδες."
	done

_OPT_NowText::
	text_start
	line "τώρα!"
	done

_OPT_InspiringText::
	text_start
	line "έμπνευση."
	done

_OPT_FriendlyText::
	text_start
	line "φιλικό."
	done

_OPT_HotHotHotText::
	text_start
	line "καυτό, καυτό!"
	done

_OPT_StimulatingText::
	text_start
	line "ενδιαφέρον."
	done

_OPT_GuardedText::
	text_start
	line "φυλαγμένο."
	done

_OPT_LovelyText::
	text_start
	line "λατρεμένο."
	done

_OPT_SpeedyText::
	text_start
	line "γρήγορο."
	done

_OPT_PokemonChannelText::
	text "#μον"
	done

_PokedexShowText::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

; Pokémon Music Channel / Pokémusic

_BenIntroText1::
	text_start
	line "BEN: ΜΟΥΣΙΚΗ"
	done

_BenIntroText2::
	text_start
	line "ΚΑΝΑΛΙ!"
	done

_BenIntroText3::
	text_start
	line "Εγώ είμαι, DJ BEN!"
	done

_FernIntroText1::
	text_start
	line "FERN: ΠΟΚΕΜΟΥΣΙΚΗ!"
	done

_FernIntroText2::
	text_start
	line "Με DJ FERN!"
	done

_BenFernText1::
	text_start
	line "Σήμερα @"
	text_today
	text ","
	done

_BenFernText2A::
	text_start
	line "ας τζαμάρουμε με"
	done

_BenFernText2B::
	text_start
	line "χαλαρώστε με"
	done

_BenFernText3A::
	text_start
	line "#μον εξέλιξη!"
	done

_BenFernText3B::
	text_start
	line "# νανούρισμα!"
	done

; Lucky Channel

_LC_Text1::
	text_start
	line "REED: Γιχάου! Πως"
	done

_LC_Text2::
	text_start
	line "τα πατε;"
	done

_LC_Text3::
	text_start
	line "Είτε είστε καλά"
	done

_LC_Text4::
	text_start
	line "ή στα κάτω σας,"
	done

_LC_Text5::
	text_start
	line "μην ξεχνάτε το"
	done

_LC_Text6::
	text_start
	line "ΣΟΟΥ ΑΡΙΘΜΟΥΤΥΧΗΣ!"
	done

_LC_Text7::
	text_start
	line "Τυχερός αριθμός"
	done

_LC_Text8::
	text_start
	line "είναι @"
	text_pause
	text_ram wStringBuffer1
	text "!"
	done

_LC_Text9::
	text_start
	line "Επαναλαμβάνω!"
	done

_LC_Text10::
	text_start
	line "Κοιταξτε και τρέξτε"
	done

_LC_Text11::
	text_start
	line "στον ΠΥΡΓΟ ΡΑΔΙΟ!"
	done

_LC_DragText1::
	text_start
	line "…Επαναλαμβάνω"
	done

_LC_DragText2::
	text_start
	line "γίνεται βαρετό…"
	done

; Places and People

_PnP_Text1::
	text_start
	line "ΜΕΡΗ & ΚΟΣΜΟΣ!"
	done

_PnP_Text2::
	text_start
	line "Ήρθε σε εσάς"
	done

_PnP_Text3::
	text_start
	line "με εμένα, DJ LILY!"
	done

_PnP_Text4::
	text_start
	line "@"
	text_ram wStringBuffer2
	text " @"
	text_ram wStringBuffer1
	text_end

	text_end ; unreferenced

_PnP_CuteText::
	text_start
	line "χαριτωμένο."
	done

_PnP_LazyText::
	text_start
	line "τεμπέλική."
	done

_PnP_HappyText::
	text_start
	line "είναι χαρούμενο."
	done

_PnP_NoisyText::
	text_start
	line "πολύ θορυβώδες."
	done

_PnP_PrecociousText::
	text_start
	line "ανεπτυγμένη."
	done

_PnP_BoldText::
	text_start
	line "κάπως τολμηρή."
	done

_PnP_PickyText::
	text_start
	line "πολύ ενοχλημένο!"
	done

_PnP_SortOfOKText::
	text_start
	line "είναι κάπως OK."
	done

_PnP_SoSoText::
	text_start
	line "τόσο όσο."
	done

_PnP_GreatText::
	text_start
	line "βασικά υπέροχο."
	done

_PnP_MyTypeText::
	text_start
	line "ο τύπος μου."
	done

_PnP_CoolText::
	text_start
	line "είναι κουλ, όχι;"
	done

_PnP_InspiringText::
	text_start
	line "εμπνέει!"
	done

_PnP_WeirdText::
	text_start
	line "κάπως περίεργο."
	done

_PnP_RightForMeText::
	text_start
	line "είναι για εμένα;"
	done

_PnP_OddText::
	text_start
	line "σίγουρα παράξενο!!"
	done

_PnP_Text5::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unreferenced

_RocketRadioText1::
	text_start
	line "… …Αχέμ, είμαστε"
	done

_RocketRadioText2::
	text_start
	line "οι ΠΥΡΑΥΛΟΙ!"
	done

_RocketRadioText3::
	text_start
	line "Μετά από 3 χρόνια"
	done

_RocketRadioText4::
	text_start
	line "προετοιμασίας,"
	done

_RocketRadioText5::
	text_start
	line "ανεβήκαμε ξανά"
	done

_RocketRadioText6::
	text_start
	line "από τις στάχτες!"
	done

_RocketRadioText7::
	text_start
	line "GIOVANNI! @"
	text_pause
	text "μας"
	done

_RocketRadioText8::
	text_start
	line "ακούτε;@"
	text_pause
	text " ΟΚ!"
	done

_RocketRadioText9::
	text_start
	line "@"
	text_pause
	text "Που είναι εκείνος;"
	done

_RocketRadioText10::
	text_start
	line "@"
	text_pause
	text "Μας ακούει;"
	done

_AskFloorElevatorText::
	text "Ποιόν αριθμό;"
	done

_BugCatchingContestTimeUpText::
	text "ΕΚΦΩΝΗΤΗΣ: ΜΠΙΠ!"

	para "Τέλος Χρόνου!"
	done

_BugCatchingContestIsOverText::
	text "ΕΚΦΩΝΗΤΗΣ: Ο"
	line "Αγώνας τελείωσε!"
	done

_RepelWoreOffText::
	text "Επίδραση Αποθητι-"
	line "κού έφυγε."
	done

_PlayerFoundItemText::
	text "<PLAYER> βρήκε"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

_ButNoSpaceText::
	text "Μα <PLAYER> δεν"
	line "έχεις χώρο…"
	done

_JustSawSomeRareMonText::
	text "Ειδα ένα"
	line "σπάνιο @"
	text_ram wStringBuffer1
	text " σε"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "Θα σε καλέσω"
	line "αν δω αλλο ένα"
	cont "#μον, OK;"
	prompt

_SavingRecordText::
	text "ΣΩΣΙΜΟ…"
	line "ΜΗΝ ΣΒΗΣΕΙΣ!"
	done

_ReceiveItemText::
	text_ram wPlayerName
	text " πήρε"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	sound_item
	text_promptbutton
	text_end

_NoCoinsText::
	text "Δεν έχεις κέρματα!"
	prompt

_NoCoinCaseText::
	text "Δεν έχεις"
	line "ΘΗΚΗ ΚΕΡΜΑΤΩΝ."
	prompt

_NPCTradeCableText::
	text "OK, σύνδεσε το"
	line "Καλωδιο GAME LINK."
	prompt

Text_NPCTraded::
	text "<PLAYER> έδωσε"
	line "@"
	text_ram wStringBuffer2
	text " για"
	cont "@"
	text_ram wMonOrItemNameBuffer
	text ".@"
	text_end

_NPCTradeFanfareText::
	sound_dex_fanfare_80_109
	text_pause
	text_end

_NPCTradeIntroText1::
	text "Συλλέγω #μον."
	line "Έχεις το"
	cont "@"
	text_ram wStringBuffer1
	text ";"

	para "Θες να το δώσεις"
	line "για το @"
	text_ram wStringBuffer2
	text ";"
	done

_NPCTradeCancelText1::
	text "Δεν θες να αντα-"
	line "λλάξεις; Ωωω…"
	done

_NPCTradeWrongText1::
	text "Ε; Δεν είναι"
	line "το @"
	text_ram wStringBuffer1
	text ". "
	cont "Τι απογοήτευση…"
	done

_NPCTradeCompleteText1::
	text "Ναι! Πήρα το"
	line "@"
	text_ram wStringBuffer1
	text "!"
	cont "Ευχαριστώ!"
	done

_NPCTradeAfterText1::
	text "Γεια, πως πάει"
	line "το @"
	text_ram wStringBuffer2
	text " μου;"
	done

_NPCTradeIntroText2::
	text "Γεια, ψάχνω"
	line "για #μον."

	para "Αν έχεις το"
	line "@"
	text_ram wStringBuffer1
	text ", μπορείς"

	para "να δώσεις για"
	line "το @"
	text_ram wStringBuffer2
	text ";"
	done

_NPCTradeCancelText2::
	text "Δεν έχεις"
	line "ούτε ένα;"

	para "Φίλε, πραγματικά"
	line "απογοήτευση…"
	done

_NPCTradeWrongText2::
	text "Δεν έχεις"
	line "@"
	text_ram wStringBuffer1
	text "; Είναι"
	cont "πολύ κακό, τότε."
	done

_NPCTradeCompleteText2::
	text "ΟΚ! Ευχαριστώ!"

	para "Επιτέλους πήρα"
	line "@"
	text_ram wStringBuffer1
	text "."
	done

_NPCTradeAfterText2::
	text "Γεια! Το @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "που έδωσες"
	cont "πάει τέλεια!"
	done

_NPCTradeIntroText3::
	text_ram wMonOrItemNameBuffer
	text "; γλυκούλι,"
	line "μα δεν το εχω."

	para "Έχεις το"
	line "@"
	text_ram wStringBuffer1
	text ";"

	para "Θεε να δώσεις"
	line "για το @"
	text_ram wStringBuffer2
	text ";"
	done

_NPCTradeCancelText3::
	text "Δεν θες να"
	line "δώσεις; Ω, φτου…"
	done

_NPCTradeWrongText3::
	text "Δεν είναι"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Αντάλλαξε με"
	line "εμένα κάποιο."
	done

_NPCTradeCompleteText3::
	text "Ουάου! Ευχαριστώ!"
	line "Πάντα ήθελα"
	cont "@"
	text_ram wMonOrItemNameBuffer
	text "!"
	done

_NPCTradeAfterText3::
	text "Πως πάει το"
	line "@"
	text_ram wStringBuffer2
	text " που"
	cont "σου έδωσα;"

	para "Υο @"
	text_ram wMonOrItemNameBuffer
	text ""
	line "είναι όμορφο!"
	done

_MomLeavingText1::
	text "Τι γλυκούλι"
	line "#μον."

	para "Που το βρήκες"
	line "αυτό;"

	para "…"

	para "Ώστε, φεύγεις"
	line "σε μια περιπέτεια…"

	para "OK!"
	line "Θα βοηθήσω."

	para "Μα τι να"
	line "κάνω για εσένα;"

	para "Ξέρω! Θα "
	line "μαζεύω χρήματα."

	para "Σε μεγάλα ταξίδια,"
	line "έχουν σημασία."

	para "Θέλεις να σου"
	line "μαζεύω χρήματα;"
	done

_MomLeavingText2::
	text "OK, θα φροντίσω"
	line "τα χρήματα σου."

	para "<……><……><……>"
	prompt

_MomLeavingText3::
	text "Πρόσεχε."

	para "Τα #μον είναι"
	line "φίλοι. Χρειάζεται"
	cont "συνεργασία."

	para "Τώρα, φύγε!"
	done

_MomIsThisAboutYourMoneyText::
	text "Γεια! Καλώς ήρθες!"
	line "Προσπαθείς πολύ"
	cont "σκληρά, βλέπω."

	para "Κράτησα το"
	line "δωμάτιο καθαρό."

	para "Ή τι λες για"
	line "τα χρήματα;"
	done

_MomBankWhatDoYouWantToDoText::
	text "Τι θέλεις"
	line "να κάνεις;"
	done

_MomStoreMoneyText::
	text "Πόσα θέλεις"
	line "να σώσεις;"
	done

_MomTakeMoneyText::
	text "Πόσα θέλεις"
	line "να πάρεις;"
	done

_MomSaveMoneyText::
	text "Θέλεις να"
	line "δώσεις;"
	done

_MomHaventSavedThatMuchText::
	text "Δεν έδωσες"
	line "πάρα πολλά."
	prompt

_MomNotEnoughRoomInWalletText::
	text "Δεν παίρνεις"
	line "τόσα πολλά."
	prompt

_MomInsufficientFundsInWalletText::
	text "Δεν έχεις"
	line "τόσα πολλά."
	prompt

_MomNotEnoughRoomInBankText::
	text "Μην βάζεις"
	line "τόσα πολλά"
	prompt

_MomStartSavingMoneyText::
	text "OK, θα τα μαζέψω."
	line "Εμπιστέψου με!"

	para "<PLAYER>,"
	line "το έχεις!"
	done

_MomStoredMoneyText::
	text "Τα χρήματα σου"
	line "είναι ασφαλή εδώ!"
	done

_MomTakenMoneyText::
	text "<PLAYER>, μην"
	line "τα παρατάς!"
	done

_MomJustDoWhatYouCanText::
	text "Κάνε αυτό"
	line "που μπορείς."
	done

_DaycareDummyText::
	text_start
	done

_DayCareManIntroText::
	text "Είμαι ο Κ. της"
	line "ΦΡΟΝΤΙΔΑΣ. Θες να"
	cont "φροντίσω #μον;"
	done

_DayCareManIntroEggText::
	text "Είμαι ο Κ. ΦΡΟΝΤΙ-"
	line "ΔΑΣ. Ξέρεις"
	cont "για τα ΑΥΓΑ;"

	para "Μεγάλωνα #μον"
	line "με την γυναίκα"
	cont "μου."

	para "Πάθαμε σοκ που"
	line "βρήκαμε ένα ΑΥΓΟ!"

	para "Πόσο απίστευτο"
	line "είναι αυτό;"

	para "Θέλεις να με-"
	line "γαλώσω #μον;"
	done

_DayCareLadyIntroText::
	text "Είμαι η ΚΥΡΙΑ"
	line "της ΦΡΟΝΤΙΔΑΣ."

	para "Να σου μεγαλώσω"
	line "#μον;"
	done

_DayCareLadyIntroEggText::
	text "Είμαι η Κ.ΦΡΟΝΤΙ-"
	line "ΔΑ. Ξέρεις για"
	cont "τα ΑΥΓΑ;"

	para "Ο άντρας μου και"
	line "εγώ μεγαλώναμε"
	cont "#μον."

	para "Πάθαμε σοκ που"
	line "βρήκαμε ένα ΑΥΓΟ!"

	para "Πόσο απίστευτο"
	line "είναι αυτό;"

	para "Θέλεις να με-"
	line "γαλώσω #μον;"
	done

_WhatShouldIRaiseText::
	text "Ποιό να"
	line "σου μεγαλώσω;"
	prompt

_OnlyOneMonText::
	text "Ω; Μα έχεις"
	line "μόνο ένα #μον."
	prompt

_CantAcceptEggText::
	text "Λυπάμαι, μα δεν"
	line "δεχομαι ΑΥΓΑ."
	prompt

_RemoveMailText::
	text "Αφαίρεσε το MAIL"
	line "πριν έρθεις εδώ."
	prompt

_LastHealthyMonText::
	text "Αν μου δώσεις"
	line "αυτό, τι θα έχεις"
	cont "για τις μάχες;"
	prompt

_IllRaiseYourMonText::
	text "OK. θα δυναμώσω"
	line "το @"
	text_ram wStringBuffer1
	text "."
	prompt

_ComeBackLaterText::
	text "Έλα εδώ"
	line "σε λιγάκι."
	done

_AreWeGeniusesText::
	text "Είμαστε έξυπνοι"
	line "ή όχι; Θεε να δείς;"
	cont "το @"
	text_ram wStringBuffer1
	text " σου;"
	done

_YourMonHasGrownText::
	text "Το @"
	text_ram wStringBuffer1
	text_start
	line "μεγάλωσε πολύ."

	para "Από LEVEL, έχει"
	line "φτάσει @"
	text_decimal wStringBuffer2 + 1, 1, 3
	text "."

	para "Αν θέλεις"
	line "πίσω το #μον,"
	cont "κοστίζει ¥@"
	text_decimal wStringBuffer2 + 2, 3, 4
	text "."
	done

_PerfectHeresYourMonText::
	text "Τέλεια! Ορίστε"
	line "το #μον σου."
	prompt

_GotBackMonText::
	text "<PLAYER> πήρε"
	line "πίσω@"
	text_ram wStringBuffer1
	text "."
	prompt

_BackAlreadyText::
	text "Ε; Ήρθες κιόλας;"
	line "Το @"
	text_ram wStringBuffer1
	text_start
	para "θέλει κι άλλο"
	line "χρόνο μαζί μας."

	para "Αν θελεις το"
	line "#μον πίσω,"
	cont "κοστίζει ¥100."
	done

_HaveNoRoomText::
	text "Δεν έχεις χώρο"
	line "στην ομάδα."
	prompt

_NotEnoughMoneyText::
	text "Δεν έχεις"
	line "αρκετά χρήματα."
	prompt

_OhFineThenText::
	text "Ω, καλά τότε."
	prompt

_ComeAgainText::
	text "Έλα ξανά!"
	done

_NotYetText::
	text "Όχι ακόμα…"
	done

_FoundAnEggText::
	text "Α, εσύ είσαι!"

	para "Μεγαλώναμε το"
	line "#μον σου, και"

	para "Θεέ μου, μας"
	line "εξέπληξε!"

	para "Το #μον σου"
	line "είχε ένα ΑΥΓΟ!"

	para "Δεν ξέρουμε"
	line "πως έφτασε εκεί,"

	para "μα το #μον"
	line "το είχε. Το θες;"
	done

_ReceivedEggText::
	text "<PLAYER> πήρε"
	line "το ΑΥΓΟ!"
	done

_TakeGoodCareOfEggText::
	text "Προσεχε"
	line "καλά το ΑΥΓΟ."
	done

_IllKeepItThanksText::
	text "Καλά τότε, θα"
	line "το κρατήσω!"
	done

_NoRoomForEggText::
	text "Δεν έχεις χώρο"
	line "στην ομάδα σου."
	cont "Έλα πίσω αργότερα."
	done

_WhichMonPhotoText::
	text "Ποιό #μον"
	line "να φωτογρά-"
	cont "φήσω;"
	prompt

_HoldStillText::
	text "Εντάξει. Μείνε"
	line "ακίνητος για λίγο."
	prompt

_PrestoAllDoneText::
	text "PRESTO! Έγινε."
	line "Έλα ξανά, OK;"
	done

_NoPhotoText::
	text "Ω, όχι τώρα;"
	line "Έλα ξανά, OK;"
	done

_EggPhotoText::
	text "Ένα ΑΥΓΟ;"
	line "Αξίζω περισσότερα…"
	done

_NameRaterHelloText::
	text "Γεια! Είμαι ο"
	line "ΚΡΙΤΗΣ."

	para "Κρίνω ονόματα"
	line "από #μον."

	para "Θέλεις να κρίνω"
	line "ονόματα #μον;"
	done

_NameRaterWhichMonText::
	text "Ποιό όνομα να"
	line "#μον να"
	cont "κρίνω για εσένα;"
	prompt

_NameRaterBetterNameText::
	text "Χμ… @"
	text_ram wStringBuffer1
	text "…"
	line "Πολύ τίμιο"
	cont "όνομα αυτό."

	para "Μα, τι λές"
	line "για ένα λίγο"
	cont "καλύτερο;"

	para "Θες να του"
	line "δώσω καλύτερο;"
	done

_NameRaterWhatNameText::
	text "Εντάξει. Ποιό"
	line "όνομα να του"
	cont "δώσω, τότε;"
	prompt

_NameRaterFinishedText::
	text "Είναι καλύτερο"
	line "όνομα από πριν!"

	para "Μπράβο!"
	done

_NameRaterComeAgainText::
	text "OK, τότε. Έλα"
	line "ξανά οπότε θες."
	done

_NameRaterPerfectNameText::
	text "Χμ… @"
	text_ram wStringBuffer1
	text ";"
	line "Τι ωραίο ονομα!"
	cont "Είναι τέλειο."

	para "Φέρσου στο @"
	text_ram wStringBuffer1
	text_start
	line "με αγάπη."
	done

_NameRaterEggText::
	text "Αμάν… Είναι"
	line "ένα ΑΥΓΟ."
	done

_NameRaterSameNameText::
	text "Μπορεί να μοιάζει"
	line "ίδιο με πριν, μα"

	para "το νέο όνομα"
	line "είναι καλύτερο!"

	para "Μπράβο!"
	done

_NameRaterNamedText::
	text "Εντάξει. Αυτό"
	line "το #μον"
	cont "λέγεται @"
	text_ram wStringBuffer1
	text "."
	prompt

Text_Gained::
	text_ram wStringBuffer1
	text " πήρε@@"

_BoostedExpPointsText::
	text_start
	line "ανέβηκε"
	cont "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. πόντους!"
	prompt

_ExpPointsText::
	text_start
	line "@"
	text_decimal wStringBuffer2, 2, 4
	text " EXP. πόντους!"
	prompt

_GoMonText::
	text "Πάμε! @"
	text_ram wBattleMonNickname
	text "!"
	done

_DoItMonText::
	text "Μπορείς! @"
	text_ram wBattleMonNickname
	text "!"
	done

_GoForItMonText::
	text "Φύγε,"
	line "@"
	text_ram wBattleMonNickname
	text "!"
	done

_YourFoesWeakGetmMonText::
	text "Αδύναμος εχθρός"
	line "Κάντο, @"
	text_ram wBattleMonNickname
	text "!"
	done

_BattleMonNickCommaText::
	text_ram wBattleMonNickname
	text ",@@"

_ThatsEnoughComeBackText::
	text ""
	line "Αρκετά! Έλα πίσω!"
	done

_OKComeBackText::
	text " OK!"
	line "Έλα πίσω!"
	done

_GoodComeBackText::
	text " Καλώς!"
	line "Έλα πίσω!"
	done

_ComeBackText::
	text " έλα"
	line "πίσω!"
	done

_PlayerPickedUpPayDayMoney::
	text "<PLAYER> πήρε"
	line "¥@"
	text_decimal wPayDayMoney, 3, 6
	text "!"
	prompt

_BootedTMText::
	text "Άνοιξε TM."
	prompt

_BootedHMText::
	text "Άνοιξε HM."
	prompt

_ContainedMoveText::
	text "Περιέχει"
	line "@"
	text_ram wStringBuffer2
	text "."

	para "Μάθε @"
	text_ram wStringBuffer2
	text_start
	line "σε #μον;"
	done

_TMHMNotCompatibleText::
	text_ram wStringBuffer2
	text " δεν"
	line "είναι συμβατό"
	cont "με @"
	text_ram wStringBuffer1
	text "."

	para "Δεν μαθαίνει"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_NoRoomTMHMText::
	text "Δεν έχεις"
	line "χώρο για"
	cont "@"
	text_ram wStringBuffer1
	text "."
	prompt

_ReceivedTMHMText::
	text "Πήρες"
	line "@"
	text_ram wStringBuffer1
	text "!"
	prompt

_MysteryGiftCanceledText::
	text "Η σύνδεση"
	line "ακυρώθηκε."
	prompt

_MysteryGiftCommErrorText::
	text "Σφάλμα"
	line "επικοινωνίας."
	prompt

_RetrieveMysteryGiftText::
	text "Πάρε ΔΩΡΟ στο"
	line "ΚΕΝΤΡΟ ΠΟΚΕΜΟΝ."
	prompt

_YourFriendIsNotReadyText::
	text "Ο φίλος σου"
	line "δεν είναι έτοιμος."
	prompt

_MysteryGiftFiveADayText::
	text "Λυπάμαι--μόνο 5"
	line "ΔΩΡΑ ανά ημέρα."
	prompt

_MysteryGiftOneADayText::
	text "Λυπάμαι. Ένα ΔΩΡΟ"
	line "την μέρα ανά άτομο."
	prompt

_MysteryGiftSentText::
	text_ram wMysteryGiftPartnerName
	text " έστειλε"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MysteryGiftSentHomeText::
	text_ram wMysteryGiftPartnerName
	text " έστειλε"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "στο @"
	text_ram wMysteryGiftPlayerName
	text " σπιτι."
	prompt

_BadgeRequiredText::
	text "Λυπάμαι! Απαιτεί-"
	line "ται νέο ΕΜΒΛΗΜΑ."
	prompt

_CantUseItemText::
	text "Δεν έχει"
	line "χρήση εδώ."
	prompt

_UseCutText::
	text_ram wStringBuffer2
	text " έκανε"
	line "ΚΟΠΗ!"
	prompt

_CutNothingText::
	text "Τίποτα για"
	line "ΚΟΠΗ εδώ."
	prompt

_BlindingFlashText::
	text "Μια ΛΑΜΨΗ"
	line "φώτισε το μέρος!@"
	text_promptbutton
	db "@@"

_UsedSurfText::
	text_ram wStringBuffer2
	text " έκανε"
	line "ΣΕΡΦ!"
	done
