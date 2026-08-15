_CantSurfText::
	text "Δεν γίνεται το"
	line "ΣΕΡΦ εδώ."
	prompt

_AlreadySurfingText::
	text "Κάνεις ήδη"
	line "ΣΕΡΦ."
	prompt

_AskSurfText::
	text "Ήρεμα τα νερά."
	line "Θες να ΣΕΡΦΑΡΕΙΣ;"
	done

_UseWaterfallText::
	text_ram wStringBuffer2
	text " έκανε"
	line "ΚΑΤΑΡΡΑΚΤΗ!"
	done

_HugeWaterfallText::
	text "Ουάου, τι με-"
	line "γάλος Καταρράκτης."
	done

_AskWaterfallText::
	text "Θες να κάνεις"
	line "ΚΑΤΑΡΡΑΚΤΗ;"
	done

_UseDigText::
	text_ram wStringBuffer2
	text " έκανε"
	line "ΣΚΑΨΙΜΟ!"
	done

_UseEscapeRopeText::
	text "<PLAYER> έκανε"
	line "ΣΧΟΙΝΙ ΦΥΓΗΣ."
	done

_CantUseDigText::
	text "Δεν έχει"
	line "χρήση εδώ."
	done

_TeleportReturnText::
	text "Επέστρεψες στο"
	line "κοντινό ΚΕΝΤΡΟ."
	done

_CantUseTeleportText::
	text "Δεν έχει χρήση"
	line "αυτό εδώ."

	para ""
	done

_AlreadyUsingStrengthText::
	text "#μον βάζει"
	line "ηδη ΔΥΝΑΜΗ."
	prompt

_UseStrengthText::
	text_ram wStringBuffer2
	text " έβαλε"
	line "ΔΥΝΑΜΗ!"
	done

_MoveBoulderText::
	text_ram wStringBuffer1
	text " μπορεί"
	line "να κούνα βράχους."
	prompt

_AskStrengthText::
	text "#μον μπορεί"
	line "να το κουνήσει."

	para "Θέλεις να βάλεις"
	line "ΔΥΝΑΜΗ;"
	done

_BouldersMoveText::
	text "Βράχοι τώρα"
	line "μετακινούνται!"
	done

_BouldersMayMoveText::
	text "#μον μπορεί"
	line "να το κουνήσει."
	done

_UseWhirlpoolText::
	text_ram wStringBuffer2
	text " έκανε"
	line "ΡΟΥΦΗΧΤΡΑ!"
	prompt

_MayPassWhirlpoolText::
	text "Είναι άγρια"
	line "ρουφήχτρα!"

	para "#μον μπορεί"
	line "να τη περάσει."
	done

_AskWhirlpoolText::
	text "Η ρουφήχτρα"
	line "είναι στη μέση."

	para "Θες να κάνεις"
	line "ΡΟΥΦΗΧΤΡΑ;"
	done

_UseHeadbuttText::
	text_ram wStringBuffer2
	text " έκανε"
	line "ΚΕΦΑΛΙΑ!"
	prompt

_HeadbuttNothingText::
	text "Μπα. Τίποτα…"
	done

_AskHeadbuttText::
	text "#μον είναι μά-"
	line "λλον στο δέντρο."

	para "Θες να κάνεις"
	line "ΚΕΦΑΛΙΑ;"
	done

_UseRockSmashText::
	text_ram wStringBuffer2
	text " έκανε"
	line "ΡΙΞΗ ΠΕΤΡΑΣ!"
	prompt

_MaySmashText::
	text "#μον μπορούν"
	line "να το διαλύσουν."
	done

_AskRockSmashText::
	text "Ο βράχος έχει"
	line "ραγίσματα."

	para "Θεε να κάνεις"
	line "ΡΙΞΗ ΠΕΤΡΑΣ;"
	done

_RodBiteText::
	text "Ω!"
	line "Ένα δάγκωμα!"
	prompt

_RodNothingText::
	text "Ούτε λίγο!"
	prompt

_UnusedNothingHereText::
	text "Φαίνεται να μην"
	line "υπάρχει τίποτα."
	prompt

_CantGetOffBikeText::
	text "Δεν μπορείς να"
	line "φύγεις από εδώ!"
	done

_GotOnBikeText::
	text "<PLAYER> ανέβηκε"
	line "@"
	text_ram wStringBuffer2
	text "."
	done

_GotOffBikeText::
	text "<PLAYER> κατέβηκε"
	line "the @"
	text_ram wStringBuffer2
	text "."
	done

_AskCutText::
	text "Αυτό το δέντρο"
	line "ΚΟΒΕΤΑΙ!"

	para "Θες να ΚΟΨΕΙΣ;"
	done

_CanCutText::
	text "Αυτό το δέντρο"
	line "ΚΟΒΕΤΑΙ!"
	done

_FoundItemText::
	text "<PLAYER> βρήκε"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_CantCarryItemText::
	text "Μα <PLAYER> δεν"
	line "κουβαλά αλλά"
	cont "πράγματα!"
	done

_WhitedOutText::
	text "<PLAYER> ξέμεινε"
	line "από #MON!"

	para "<PLAYER>"
	line "λυποθύμησε!"
	done

_ItemfinderItemNearbyText::
	text "Ναι! Ο ΑΝΙΧΝΕΥΤΗΣ"
	line "δείχνει πως"
	cont "κάτι είναι κοντά."
	prompt

_ItemfinderNopeText::
	text "Μπα! Ο ΑΝΙΧΝΕΥΤΗΣ"
	line "δεν δείχνει κάτι."
	prompt

_PoisonFaintText::
	text_ram wStringBuffer3
	text_start
	line "λυποθύμησε!"
	prompt

_PoisonWhiteoutText::
	text "<PLAYER> ξέμεινε"
	line "από #MON!"

	para "<PLAYER>"
	line "λυποθύμησε!"
	prompt

_UseSweetScentText::
	text_ram wStringBuffer3
	text " έκανε"
	line "ΓΛΥΚΟ ΑΡΩΜΑ!"
	done

_SweetScentNothingText::
	text "Φαίνεται πως"
	line "δεν υπάρχει κάτι…"
	done

_SquirtbottleNothingText::
	text "<PLAYER> ψέκασε"
	line "νερό."

	para "Μα δεν"
	line "έγινε τίποτα…"
	done

_UseSacredAshText::
	text "<PLAYER> #μον"
	line "γιατρεύτηκαν όλα!"
	done

_AnEggCantHoldAnItemText::
	text "Το ΑΥΓΟ δεν"
	line "κρατά πράγματα."
	prompt

_PackNoItemText::
	text "Όχι πράγματα."
	done

_AskThrowAwayText::
	text "Πέταξε πόσα"
	line "πράγματα;"
	done

_AskQuantityThrowAwayText::
	text "Πέταξε @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text ";"
	done

_ThrewAwayText::
	text "Πέταξε"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_OakThisIsntTheTimeText::
	text "OAK: <PLAYER>!"
	line "Δεν είναι ώρα"
	cont "γι' αυτό!"
	prompt

_YouDontHaveAMonText::
	text "Δεν έχεις"
	line "#μον!"
	prompt

_RegisteredItemText::
	text "Κατέγραψε"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_CantRegisterText::
	text "Δεν γίνεται να"
	line "γράψεις το πράγμα."
	prompt

_AskItemMoveText::
	text "Που να μετα-"
	line "κινηθεί αυτό;"
	done

_PackEmptyText::
	text_start
	done

_YouCantUseItInABattleText::
	text "Μην το βάζεις"
	line "αυτό στη μάχη."
	prompt

_ActorNameText::
	text "<USER>@@"

_UsedMove1Text::
	text_start
	line "έκανε @@"

_UsedMove2Text::
	text_start
	line "έκανε @@"

_UsedInsteadText::
	text "αντ' αυτού,"
	cont "@@"

_MoveNameText::
	text_ram wStringBuffer2
	db "@@"

_EndUsedMove1Text::
	text "!"
	done

_EndUsedMove2Text::
	text "!"
	done

_EndUsedMove3Text::
	text "!"
	done

_EndUsedMove4Text::
	text "!"
	done

_EndUsedMove5Text::
	text "!"
	done

Text_BattleEffectActivate::
	text "<USER>"
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_BattleStatWentWayUpText::
	text_pause
	text "<SCROLL>αυξήθηκε!"
	prompt

_BattleStatWentUpText::
	text " αυξήθηκε!"
	prompt

Text_BattleFoeEffectActivate::
	text "<TARGET>"
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_BattleStatSharplyFellText::
	text_pause
	text "<SCROLL>έπεσε!"
	prompt

_BattleStatFellText::
	text " έπεσε!"
	prompt

Text_BattleUser::
	text "<USER>@"
	text_end

_BattleMadeWhirlwindText::
	text_start
	line "έκανε δίνη!"
	prompt

_BattleTookSunlightText::
	text_start
	line "εκανε ηλιαχτίδες!"
	prompt

_BattleLoweredHeadText::
	text_start
	line "κατέβασε κεφάλι!"
	prompt

_BattleGlowingText::
	text_start
	line "φωτίζει!"
	prompt

_BattleFlewText::
	text_start
	line "πέταξε ψηλά!"
	prompt

_BattleDugText::
	text_start
	line "έσκαψε τρύπα!"
	prompt

Text_BreedHuh::
	text "Ε;"

	para "@"
	text_end

_BreedClearboxText::
	text_start
	done

_BreedEggHatchText::
	text_ram wStringBuffer1
	text " βγήκε"
	line "από το ΑΒΓΟ!@"
	sound_caught_mon
	text_promptbutton
	text_end

_BreedAskNicknameText::
	text "Δώσε ψευδώνυμο"
	line "@"
	text_ram wStringBuffer1
	text ";"
	done

_LeftWithDayCareLadyText::
	text "Είναι @"
	text_ram wBreedMon2Nickname
	text_start
	line "που έμεινε στην"
	cont "Κ.ΦΡΟΝΤΙΔΑΣ."
	done

_LeftWithDayCareManText::
	text "Είναι @"
	text_ram wBreedMon1Nickname
	text_start
	line "που έμεινε στον"
	cont "Κ.ΦΡΟΝΤΙΔΑΣ."
	done

_BreedBrimmingWithEnergyText::
	text "Είναι γεμάτο"
	line "με ενέργεια."
	prompt

_BreedNoInterestText::
	text "Δεν ενδιαφέρεται"
	line "στο @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedAppearsToCareForText::
	text "Νοιάζεται"
	line "για @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedFriendlyText::
	text "Είναι φιλικό με"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedShowsInterestText::
	text "Δείχνει ενδιαφέρον"
	line "σε @"
	text_ram wStringBuffer1
	text "."
	prompt

_EmptyMailboxText::
	text "Δεν υπάρχει MAIL"
	line "εδώ."
	prompt

_MailClearedPutAwayText::
	text "Το άδειο MAIL"
	line "αποθηκεύτηκε."
	prompt

_MailPackFullText::
	text "Ο ΣΑΚΟΣ γέμησε."
	prompt

_MailMessageLostText::
	text "Το κείμενο MAIL"
	line "θα χαθεί. OK;"
	done

_MailAlreadyHoldingItemText::
	text "Κρατά ήδη"
	line "πράγμα."
	prompt

_MailEggText::
	text "Το ΑΥΓΟ δεν"
	line "κρατά MAIL."
	prompt

_MailMovedFromBoxText::
	text "Το MAIL μπήκε"
	line "στο ΚΟΥΤΙMAIL."
	prompt

_WasSentToBillsPCText::
	text_ram wStringBuffer1
	text " μπήκε στο"
	line "PC του BILL."
	prompt

_PCGottaHavePokemonText::
	text "Πρέπει να έχεις"
	line "#MON για κλήση!"
	prompt

_PCWhatText::
	text "Τι;"
	done

_PCMonHoldingMailText::
	text "#μον που"
	line "κρατά MAIL."

	para "Αφαίρεσε το"
	line "MAIL."
	prompt

_PCNoSingleMonText::
	text "Δεν έχεις"
	line "κάποιο #μον!"
	prompt

_PCCantDepositLastMonText::
	text "Μην βάζεις το"
	line "τελευταίο #μον!"
	prompt

_PCCantTakeText::
	text "Δεν έχεις χωρο"
	line "για #μον."
	prompt

_ContestCaughtMonText::
	text "Έπιασα @"
	text_ram wStringBuffer1
	text "!"
	prompt

_ContestAskSwitchText::
	text "Άλλαξε #μον;"
	done

_ContestAlreadyCaughtText::
	text "Έπιασες ήδη"
	line "ένα @"
	text_ram wStringBuffer1
	text "."
	prompt

_ContestJudging_FirstPlaceText::
	text "Ο Νικητής Του"
	line "Αγώνα Εντόμου: @"
	text_pause
	text "…"

	para "@"
	text_ram wBugContestWinnerName
	text ","
	line "που έπιασε"
	cont "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_FirstPlaceScoreText::
	text_start

	para "Το σκορ νίκης"
	line "ήταν @"
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text " πόντοι!"
	prompt

_ContestJudging_SecondPlaceText::
	text "Η δεύτερη θέση"
	line "ήταν @"
	text_ram wBugContestWinnerName
	text ","

	para "που έπιασε"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_SecondPlaceScoreText::
	text_start

	para "Το σκορ ήταν"
	line "@"
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text " πόντοι!"
	prompt

_ContestJudging_ThirdPlaceText::
	text "Η τρίτη θέση"
	line "ήταν @"
	text_ram wBugContestWinnerName
	text ","

	para "που έπιασε"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_ThirdPlaceScoreText::
	text_start

	para "Το σκορ ήταν"
	line "@"
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text " points!"
	prompt

_MagikarpGuruMeasureText::
	text "Let me measure"
	line "that MAGIKARP."

	para "…Χμ, ζυγίζει"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_KarpGuruRecordText::
	text "ΤΡΕΧΩΝ ΙΣΤΟΡΙΚΟ"

	para "@"
	text_ram wStringBuffer1
	text " πιάστηκε από"
	line "@"
	text_ram wMagikarpRecordHoldersName
	text_promptbutton
	text_end

_LuckyNumberMatchPartyText::
	text "Συγχαρητήρια!"

	para "Έχουμε ίδιο"
	line "με τον αριθμό ID"

	para "του @"
	text_ram wStringBuffer1
	text " στην"
	line "ομάδα σου."
	prompt

_LuckyNumberMatchPCText::
	text "Συγχαρητήρια!"

	para "Έχουμε ίδιο"
	line "με τον αριθμό ID"

	para "του @"
	text_ram wStringBuffer1
	text " στο"
	line "ΚΟΥΤΙ PC σου."
	prompt

_CaughtAskNicknameText::
	text "Δώσε όνομα"
	line "στο @"
	text_ram wStringBuffer1
	text " που"
	cont "πήρες;"
	done

_PokecenterPCCantUseText::
	text "Βζζζτ! Θέλεις"
	line "#μον για αυτή"
	cont "τη χρήση!"
	prompt

_PlayersPCTurnOnText::
	text "<PLAYER> άνοιξε"
	line "το PC."
	prompt

_PlayersPCAskWhatDoText::
	text "Τι θέλεις"
	line "να κάνεις;"
	done

_PlayersPCHowManyWithdrawText::
	text "Πόσα θέλεις"
	line "να πάρεις;"
	done

_PlayersPCWithdrewItemsText::
	text "Πήρε @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PlayersPCNoRoomWithdrawText::
	text "Δεν έχεις"
	line "άλλο χωρο."
	prompt

_PlayersPCNoItemsText::
	text "Κανένα πράγμα!"
	prompt

_PlayersPCHowManyDepositText::
	text "Πόσα θέλεις"
	line "να δώσεις;"
	done

_PlayersPCDepositItemsText::
	text "Έδωσε @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PlayersPCNoRoomDepositText::
	text "Δεν εχεις άλλο"
	line "αποθ. χώρο."
	prompt

_PokecenterPCTurnOnText::
	text "<PLAYER> άνοιξε"
	line "το PC."
	prompt

_PokecenterPCWhoseText::
	text "Πρόσβαση σε PC;"
	done

_PokecenterBillsPCText::
	text "Πρόσβαση σε"
	line "PC του BILL."

	para "Αποθ. Χωρος"
	line "#μον άνοιξε."
	prompt

_PokecenterPlayersPCText::
	text "Άνοιγμα σε PC μου."

	para "Χώρος Πραγμάτων"
	line "άνοιξε."
	prompt

_PokecenterOaksPCText::
	text "Πρόσβαση στο"
	line "PC του ΟΑΚ."

	para "άνοιξε σύστημα"
	line "βαθμολογίας."
	prompt

_PokecenterPCOaksClosedText::
	text "…"
	line "Έκλεισε η σύνδεση…"
	done

_OakPCText1::
	text "Θες να βαθμο-"
	line "λογηθεί #ντεξ;"
	done

_OakPCText2::
	text "LEVEL ολοκλήρωσης"
	line "#ντεξ:"
	prompt

_OakPCText3::
	text_ram wStringBuffer3
	text " #μον είδες"
	line "@"
	text_ram wStringBuffer4
	text " #μον έχεις"

	para "Βαθμολογία"
	line "ΚΑΘ.ΟΑΚ:"
	done

_OakRating01::
	text "Ψάξε για #μον"
	line "στα γρασίδια!"
	done

_OakRating02::
	text "Ωραία. Βλέπω"
	line "ξέρεις πως να"
	cont "πετάς # BALLS."
	done

_OakRating03::
	text "Γίνεσαι καλός"
	line "σε αυτό."

	para "Μα έχεις πολύ"
	line "δρόμο ακόμα."
	done

_OakRating04::
	text "Πρέπει να γεμή-"
	line "σεις το #ντεξ."

	para "Πιάσε διαφορά"
	line "είδη #μον!"
	done

_OakRating05::
	text "Προσπαθείς--"
	line "το βλέπω."

	para "Το #ντεξ"
	line "γίνεται καλύτερο."
	done

_OakRating06::
	text "Για εξέλιξη, κάποια"
	line "#μον μεγαλώνουν"

	para "μόνα τους, αλλά"
	line "θέλουν ΠΕΤΡΕΣ."
	done

_OakRating07::
	text "Έχεις πάρει μ"
	line "ΚΑΛΑΜΙ ψαρέματος;"

	para "Πιανεις  #μον"
	line "ψαρεύοντας."
	done

_OakRating08::
	text "Έξοχα! Φαίνεται"
	line "πως σου αρέσουν"
	cont "οι συλλογές!"
	done

_OakRating09::
	text "Κάποια #μον"
	line "φαίνονται σε"

	para "ορισμένες ώρες"
	line "της ημέρας."
	done

_OakRating10::
	text "Το #ντεξ"
	line "γεμίζει. Συνέχισε"
	cont "την καλή δουλειά!"
	done

_OakRating11::
	text "Επσθα σοκ!"
	line "Εξελίσεις τα"

	para "#μον, δεν τα"
	line "πιάνεις μόνο."
	done

_OakRating12::
	text "Είδες τον KURT;"
	line "Οι ειδικές #"
	cont "BALLS βοηθάνε."
	done

_OakRating13::
	text "Ουάου. Βρήκες"
	line "περισσότερα"

	para "από την τελευταία"
	line "έρευνα #ντεξ."
	done

_OakRating14::
	text "Ανταλλάσεις"
	line "#μον;"

	para "Είναι δύσκολο"
	line "να είσαι μόνος!"
	done

_OakRating15::
	text "Ουάου! Έφτασες"
	line "τα 200! Το #-"
	cont "ντεξ είναι άψογο!"
	done

_OakRating16::
	text "Βρήκες τόσα"
	line "πολλά #μον!"

	para "Βοηθάς πολύ"
	line "τις μελέτες μου!"
	done

_OakRating17::
	text "Σπουδαία! Θα"
	line "μπορούσες να"

	para "γίνεις ΚΑΘ.ΠΟΚΕΜΟΝ"
	line "τώρα νεαρέ!"
	done

_OakRating18::
	text "Το #ντεξ"
	line "είναι υπέροχο!"

	para "Γίνεσαι τώρα"
	line "επαγγελματίας!"
	done

_OakRating19::
	text "Ουάου! Το τέλειο"
	line "#ντεξ! Το"

	para "ονειρευόμουν αυτό!"
	line "Συγχαρητήρια!"
	done

_OakPCText4::
	text "Έκλεισε το PC"
	line "του ΚΑΘ.ΟΑΚ."
	done

_MemoryGameYeahText::
	text " , ναι!"
	done

_MemoryGameDarnText::
	text "Φτου…"
	done

_StartMenuContestEndText::
	text "Θέλεις να τε-"
	line "λειώσει ο Αγώνας;"
	done

_ItemsTossOutHowManyText::
	text "Πέταξε πόσα"
	line "@"
	text_ram wStringBuffer2
	text "(α);"
	done

_ItemsThrowAwayText::
	text "Πέταξε @"
	text_decimal wItemQuantityChange, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(α);"
	done

_ItemsDiscardedText::
	text "Απέρριψε"
	line "@"
	text_ram wStringBuffer1
	text "(α)."
	prompt

_ItemsTooImportantText::
	text "Είναι σημαντικό"
	line "για να πεταχτεί!"
	prompt

_ItemsOakWarningText::
	text "OAK: <PLAYER>!"
	line "Δεν είναι ώρα"
	cont "γι' αυτό!"
	done

_PokemonSwapItemText::
	text "Πάρε @"
	text_ram wMonOrItemNameBuffer
	text ""
	line "@"
	text_ram wStringBuffer1
	text " και"

	para "κάντο να κρατά"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonHoldItemText::
	text "Κάνε @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "να κρατά @"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonRemoveMailText::
	text "αφαίρεσε"
	line "MAIL πρώτα."
	prompt

_PokemonNotHoldingText::
	text_ram wMonOrItemNameBuffer
	text " δεν"
	line "κρατα κάτι"
	prompt

_ItemStorageFullText::
	text "Γεμάτος χώρος"
	line "πραγμάτων."
	prompt

_PokemonTookItemText::
	text "Πήρε @"
	text_ram wStringBuffer1
	text_start
	line "από @"
	text_ram wMonOrItemNameBuffer
	text "."
	prompt

_PokemonAskSwapItemText::
	text_ram wMonOrItemNameBuffer
	text " ηδη"
	line "κρατάει"

	para "@"
	text_ram wStringBuffer1
	text "."
	line "Αλλαγή;"
	done

_ItemCantHeldText::
	text "Αυτο δεν γίνεται"
	line "να το κρατάει."
	prompt

_MailLoseMessageText::
	text "Το MAIL θα"
	line "χάσει μύνημα, OK;"
	done

_MailDetachedText::
	text "MAIL έφυγε από"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MailNoSpaceText::
	text "Δεν έχεις χώρο"
	line "για αφαίρεση MAIL."
	prompt

_MailAskSendToPCText::
	text "Στείλε το σβησμένο"
	line "MAIL στο PC σου;"
	done

_MailboxFullText::
	text "Το ΚΟΥΤΙMAIL"
	line "στο PC γέμισε."
	prompt

_MailSentToPCText::
	text "Το MAIL στάλθηκε"
	line "στο PC σου."
	prompt

_PokemonNotEnoughHPText::
	text "Ανεπαρκή HP!"
	prompt

_MayRegisterItemText::
	text "Το πράγμα στο"
	line "ΣΑΚΟ σου μπορεί"

	para "μπει σε χρήση"
	line "με Κουμπί SELECT."
	done

_MainMenuTimeUnknownText::
	text "άγνωστο ρολόι"
	done

_OakText1::
	text "Γεια! Συγνώμη"
	line "που περίμενες!"

	para "Καλώς ήρθες στον"
	line "κόσμο των #μον!"

	para "Με λένε OAK."

	para "Πολλοί με φωνάζουν"
	line "ΚΑΘ. ΠΟΚΕΜΟΝ."
	prompt

_OakText2::
	text "Αυτός ο κόσμος"
	line "κατοικείται από"
	cont "τα πλασματάκια,"
	cont "τα #μον.@"
	text_end

_OakText3::
	text_promptbutton
	text_end

_OakText4::
	text "Άνθρωποι & #μον"
	line "ζουν μαζι και"

	para "στηρίζουν ο"
	line "ένας τον άλλο."

	para "Κάποιοι παίζουν"
	line "μαζί τους, άλλοι"
	cont "κάνουν μάχες."
	prompt

_OakText5::
	text "Μα δεν ξέρουμε"
	line "τα πάντα για τα"
	cont "#μον ακόμα."

	para "Υπάρχουν πολλά"
	line "μυστήρια για"
	cont "ανακάλυψη."

	para "Γι' αυτό τα μελετώ"
	line "κάθε μέρα."
	prompt

_OakText6::
	text "Τώρα, πως είπαμε"
	line "πως σε λένε;"
	prompt

_OakText7::
	text "<PLAYER>, είσαι"
	line "έτοιμος;"

	para "Ο δική σου"
	line "#μον ιστορία"
	cont "ξεκινάει τώρα."

	para "Θα βρεις αστείες"
	line "στιγμές & δυνατές"
	cont "προκλήσεις."

	para "Κόσμος ονείρων"
	line "και περιπετειών"

	para "με #μον"
	line "περιμένει! Πάμε!"

	para "Θα σε δω"
	line "αργότερα!"
	done

_ClockTimeMayBeWrongText::
	text "Το ρολόι"
	line "είναι λάθος."

	para "Ρύθμισε"
	line "την ώρα."
	prompt

_ClockSetWithControlPadText::
	text "Σέταρε το με"
	line "PAD ελέγχου."

	para "Επιλογή: Κουμπί A"
	line "Άκυρο:  Κουμπί B"
	done

_ClockIsThisOKText::
	text "Είναι OK;"
	done

_ClockHasResetText::
	text "Το ρολόι έχει"
	line "επαναφερθεί."
	done

_LinkTimeoutText::
	text "Πέρασε πολλή ώρα."
	line "Παρακαλώ"
	cont "προσπάθησε ξανά."
	prompt	

_LinkTradeCantBattleText::
	text "Αν ανταλλάξεις"
	line "#μον, δεν θα"
	cont "κάνεις μάχες."
	prompt

_LinkAbnormalMonText::
	text "του φίλου σου"
	line "@"
	text_ram wStringBuffer1
	text " φαίνεται"
	cont "αφύσικο!"
	prompt

_LinkAskTradeForText::
	text "Δώσε @"
	text_ram wBufferTrademonNickname
	text_start
	line "για @"
	text_ram wStringBuffer1
	text ";"
	done

_WouldYouLikeToSaveTheGameText::
	text "Θέλεις να σώσεις"
	line "το παιχνίδι;"
	done

_SavingDontTurnOffThePowerText::
	text "ΣΩΣΙΜΟ… ΜΗΝ"
	line "ΣΒΗΣΕΙΣ ΤΟ GAME."
	done

_SavedTheGameText::
	text "<PLAYER> έσωσε"
	line "το παιχνίδι."
	done

_AlreadyASaveFileText::
	text "Υπάρχει ήδη"
	line "αρχείο. Είναι ΟΚ"
	cont "να ξαναγραφτεί;"
	done

_AnotherSaveFileText::
	text "Υπάρχει ένα άλλο"
	line "αρχείο. Είναι ΟΚ"
	cont "να ξαναγραφτεί;"
	done

_SaveFileCorruptedText::
	text "Το αρχείο"
	line "καταστράφηκε!"
	prompt

_ChangeBoxSaveText::
	text "Όταν αλλάξεις"
	line "ΚΟΥΤΙ, τα πάντα"
	cont "θα σωθούν. OK?"
	done

_MoveMonWOMailSaveText::
	text "Με κάθε μετακίνηση"
	line "#MON, κάνεις"
	cont "αποθήκευση. OK;"
	done

_WindowAreaExceededErrorText:: ; unreferenced
	text "Το σώσιμο παραθύ-"
	line "ρου πέτυχε."
	done

_WindowPoppingErrorText::
	text "Όχι παράθυρα"
	line "για κρότο."
	done

_CorruptedEventText:: ; unreferenced
	text "Χαλασμένο συμβάν!"
	prompt

_ObjectEventText::
	text "Συμβάν αντικείμ."
	done

_BGEventText::
	text "BG συμβάν"
	done

_CoordinatesEventText::
	text "Οργανώση συμβάντος"
	done

_ReceivedItemText::
	text "<PLAYER> πήρε"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

_PutItemInPocketText::
	text "<PLAYER> έβαλε"
	line "@"
	text_ram wStringBuffer1
	text ""
	cont "στο @"
	text_ram wStringBuffer3
	text "."
	prompt

_PocketIsFullText::
	text "Το @"
	text_ram wStringBuffer3
	text_start
	line "γέμησε…"
	prompt

_CongratulationsYourPokemonText::
	text "Συγχαρητήρια!"
	line "Το @"
	text_ram wStringBuffer2
	text_end

	text_end ; unreferenced

_EvolvedIntoText::
	text_start

	para "εξελίχθηκε σε"
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

_StoppedEvolvingText::
	text "Ε; @"
	text_ram wStringBuffer2
	text_start
	line "δεν εξελίχθηκε!"
	prompt

_EvolvingText::
	text "Τι; @"
	text_ram wStringBuffer2
	text_start
	line "εξελίσεται!"
	done

_MartHowManyText::
	text "Πόσα πολλά;"
	done

_MartFinalPriceText::
	text_decimal wItemQuantityChange, 1, 2
	text " @"
	text_ram wStringBuffer2
	text "(α)"
	line "θα είναι ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

_HerbShopLadyIntroText::
	text "Γεια, καλε μου."

	para "Πουλάω φτηνά"
	line "φαρμακα βοτάνων."

	para "Είναι καλά, μα"
	line "χαζά πίκρα."

	para "Τα #μον δεν"
	line "τα θέλουν."

	para "Χεχεχεχε…"
	done

_HerbalLadyHowManyText::
	text "Πόσα θέλεις;"
	done

_HerbalLadyFinalPriceText::
	text_decimal wItemQuantityChange, 1, 2
	text " @"
	text_ram wStringBuffer2
	text "(α)"
	line "είναι ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

_HerbalLadyThanksText::
	text "Ευχαριστώ, καλέ."
	line "Χεχεχεχε…"
	done

_HerbalLadyPackFullText::
	text "Ω; Ο ΣΑΚΟΣ σου"
	line "γέμισε, καλέ μου."
	done

_HerbalLadyNoMoneyText::
	text "Χεχεχε… Δεν"
	line "έχεις τα χρήματα."
	done

_HerbalLadyComeAgainText::
	text "Έλα ξανά."
	line "Χεχεχεχε…"
	done

_BargainShopIntroText::
	text "Χάιγια! Θέλεις"
	line "να δεις παζάρια;"

	para "Πουλάω σπάνια"
	line "πράγματα που δεν"

	para "έχει άλλος--μα μόνο"
	line "ένα απο αυτά."
	done

_BargainShopFinalPriceText::
	text_ram wStringBuffer2
	text " κοστίζει"
	line "¥@"
	text_decimal hMoneyTemp, 3, 6
	text ". Το θέλεις;"
	done

_BargainShopThanksText::
	text "Ευχαριστώ."
	done

_BargainShopPackFullText::
	text "Ωχ, ο ΣΑΚΟΣ"
	line "υπερπλήρης."
	done

_BargainShopSoldOutText::
	text "Το πήρες αυτό"
	line "ήδη. Εχω"
	cont "ξεμείνει."
	done

_BargainShopNoFundsText::
	text "Ωχ, δεν έχεις"
	line "χρήματα."
	done

_BargainShopComeAgainText::
	text "Έλα ξανά"
	line "κάποια στιγμή."
	done

_PharmacyIntroText::
	text "Τι λέει; Θέλεις"
	line "λίγα φάρμακα;"
	done

_PharmacyHowManyText::
	text "Πόσα θέλεις;"
	done

_PharmacyFinalPriceText::
	text_decimal wItemQuantityChange, 1, 2
	text " @"
	text_ram wStringBuffer2
	text "(α)"
	line "κοστίζουν ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

_PharmacyThanksText::
	text "Ευχαριστώ πολύ!"
	done

_PharmacyPackFullText::
	text "Δεν έχεις άλλο"
	line "χώρο στο ΣΑΚΟ."
	done

_PharmacyNoMoneyText::
	text "Ε; Δεν έχεις"
	line "αρκετά χρήματα."
	done

_PharmacyComeAgainText::
	text "Εντάξει."
	line "Τα λέμε!"
	done

;unused
_NothingToSellText::
	text "Δεν έχεις"
	line "κάτι να πουλήσεις."
	prompt

_MartSellHowManyText::
	text "Ποσα πολλά;"
	done

_MartSellPriceText::
	text "Θα σου δώσω"
	line "¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."

	para "Είναι OK;"
	done

_MartWelcomeText::
	text "Καλώς ήρθατε! Πως"
	line "να βοηθήσω;"
	done

_MartThanksText::
	text "Ορίστε."
	line "Ευχαριστώ!"
	done

_MartNoMoneyText::
	text "Δεν έχεις"
	line "αρκετά χρήματα."
	done

_MartPackFullText::
	text "Δεν έχεις άλλο"
	line "χώρο για πράγματα."
	done

_MartCantBuyText::
	text "Συγνώμη, δεν το"
	line "αγοράζω αυτό."
	done

_MartComeAgainText::
	text "Ελάτε ξανά!"
	done

_MartAskMoreText::
	text "Μπορώ να κάνω"
	line "κάτι άλλο;"
	done

_MartBoughtText::
	text "Πηρε ¥@"
	text_decimal hMoneyTemp, 3, 6
	text " για"
	line "@"
	text_ram wStringBuffer2
	text "(α)."
	done

_SlotsBetHowManyCoinsText::
	text "Βαλε πόσα"
	line "κέρματα;"
	done
