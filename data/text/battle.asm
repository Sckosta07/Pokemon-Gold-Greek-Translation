BattleText:: ; used only for BANK(BattleText)

BattleText_PlayerPickedUpPayDayMoney:
	text "<PLAYER> σήκωσε"
	line "¥@"
	text_decimal wPayDayMoney, 3, 6
	text "!"
	prompt

WildPokemonAppearedText:
	text "Άγριο @"
	text_ram wEnemyMonNickname
	text_start
	line "εμφανίστηκε!"
	prompt

HookedPokemonAttackedText:
	text "Τσιμπημένο"
	line "@"
	text_ram wEnemyMonNickname
	text_start
	cont "επιτέθηκε!"
	prompt

PokemonFellFromTreeText:
	text_ram wEnemyMonNickname
	text " έπεσε"
	line "από το δέντρο!"
	prompt

WantsToBattleText::
	text "<ENEMY>"
	line "θέλει μια μάχη!"
	prompt

BattleText_WildFled:
	text "Άγριο @"
	text_ram wEnemyMonNickname
	text_start
	line "ξέφυγε!"
	prompt

BattleText_EnemyFled:
	text "Εχθρικό @"
	text_ram wEnemyMonNickname
	text_start
	line "ξέφυγε!"
	prompt

HurtByPoisonText:
	text "<USER>"
	line "πόνεσε από δλτ!"
	prompt

HurtByBurnText:
	text "<USER>"
	line "πόνεσε από κάψιμο!"
	prompt

LeechSeedSapsText:
	text "ΒΔΕΛΑ φυτεύτηκε"
	line "σε <USER>!"
	prompt

HasANightmareText:
	text "<USER> βλέπει"
	line "ΕΦΙΑΛΤΗ!"
	prompt

HurtByCurseText:
	text "<USER> πόνεσε"
	line "από ΚΑΤΑΡΑ!"
	prompt

SandstormHitsText:
	text "ΑΜΜΟΘΥΕΛΛΑ"
	line "χτύπησε <USER>!"
	prompt

PerishCountText:
	text "<USER>"
	line "μετρητής: @"
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt

BattleText_TargetRecoveredWithItem:
	text "<TARGET>"
	line "ανέκτησε με"
	cont "@"
	text_ram wStringBuffer1
	text "."
	prompt

BattleText_UserRecoveredPPUsing:
	text "<USER>"
	line "ανέκτησε ΠΠ με"
	cont "@"
	text_ram wStringBuffer1
	text "."
	prompt

BattleText_TargetWasHitByFutureSight:
	text "<TARGET>"
	line "χτυπήθηκε από"
	cont "ΕΝΟΡΑΣΗ!"
	prompt

BattleText_SafeguardFaded:
	text "<USER>"
	line "ΠΡΟΣΤΑΣΙΑ έφυγε!"
	prompt

BattleText_MonsLightScreenFell:
	text_ram wStringBuffer1
	text " #μον"
	line "ΦΩΤΟΑΣΠΙΔΑ έφυγε!"
	prompt

BattleText_MonsReflectFaded:
	text_ram wStringBuffer1
	text " #μον"
	line "ΚΑΘΡΕΥΤΗΣ έφυγε!"
	prompt

BattleText_RainContinuesToFall:
	text "Η βροχή"
	line "συνεχίζεται."
	prompt

BattleText_TheSunlightIsStrong:
	text "Το φως ηλίου"
	line "είναι δυνατό."
	prompt

BattleText_TheSandstormRages:
	text "Η ΑΜΜΟΘΥΕΛΛΑ"
	line "ξεσπάει."
	prompt

BattleText_TheRainStopped:
	text "Η βροχή τελείωσε."
	prompt

BattleText_TheSunlightFaded:
	text "Το φως ηλίου"
	line "χάθηκε."
	prompt

BattleText_TheSandstormSubsided:
	text "Η ΑΜΜΟΘΥΕΛΛΑ"
	line "υποχώρησε."
	prompt

BattleText_EnemyMonFainted:
	text "Εχθρικό @"
	text_ram wEnemyMonNickname
	text_start
	line "λυποθύμησε!"
	prompt

GotMoneyForWinningText:
	text "<PLAYER> πήρε ¥@"
	text_decimal wBattleReward, 3, 6
	text_start
	line "επειδή νίκησε!"
	prompt

BattleText_EnemyWasDefeated:
	text "<ENEMY>"
	line "νικήθηκε!"
	prompt

TiedAgainstText:
	text "Δέθηκε με"
	line "το <ENEMY>!"
	prompt


SentSomeToMomText:
	text "<PLAYER> πήρε ¥@"
	text_decimal wBattleReward, 3, 6
	text_start
	line "επειδή νίκησε!"
	cont "Στείλε στη ΜΑΜΑ!"
	prompt

SentHalfToMomText:
	text "Στείλε τα μισά!"
	prompt

SentAllToMomText:
	text "Στείλε τα όλα!"
	prompt

UnusedRivalLossText: ; unreferenced
	text "<RIVAL>: Ε;"
	line "Έπρεπε να δια-"
	cont "λέξεις #μον!"
	prompt

BattleText_MonFainted:
	text_ram wBattleMonNickname
	text_start
	line "λυποθύμησες!"
	prompt

BattleText_UseNextMon:
	text "Βάλε άλλο #μον;"
	done

UnusedRivalWinText: ; unreferenced
	text "<RIVAL>: Ναι!"
	line "Υποθέτω διάλεξα"
	cont "καλά #μον!"
	prompt

LostAgainstText:
	text "Εχασε από"
	line "<ENEMY>!"
	prompt

BattleText_EnemyIsAboutToUseWillPlayerChangeMon:
	text "<ENEMY>"
	line "βάζει"
	cont "@"
	text_ram wEnemyMonNickname
	text "."

	para "Ο <PLAYER> θα"
	line "αλλάξει #μον;"
	done

BattleText_EnemySentOut:
	text "<ENEMY>"
	line "έστειλε"
	cont "@"
	text_ram wEnemyMonNickname
	text "!"
	done

BattleText_TheresNoWillToBattle:
	text "Καμια θέληση"
	line "για μάχη!"
	prompt

BattleText_AnEGGCantBattle:
	text "Τα ΑΥΓΑ δεν"
	line "μάχονται!"
	prompt

BattleText_CantEscape2:
	text "Δεν ξεφεύγεις!"
	prompt

BattleText_TheresNoEscapeFromTrainerBattle:
	text "Όχι! Δεν φεύγεις"
	line "απο μάχη"
	cont "εκπαιδευτών!"
	prompt

BattleText_GotAwaySafely:
	text "Φύγατε ήσυχα!"
	prompt

BattleText_UserFledUsingAStringBuffer1:
	text "<USER>"
	line "ξέφυγε με"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_CantEscape:
	text "Δεν ξεφεύγεις!"
	prompt

BattleText_UserHurtBySpikes:
	text "<USER> χτυ-"
	line "πήθηκε από καρφιά!"
	prompt

RecoveredUsingText:
	text "<TARGET>"
	line "ανέκτησε με"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_UsersStringBuffer1Activated:
	text "<USER>"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "ενεργοποιήθηκε!"
	prompt

BattleText_ItemsCantBeUsedHere:
	text "Πράγματα δεν"
	line "έχουν χρήση εδώ"
	prompt

BattleText_MonIsAlreadyOut:
	text_ram wBattleMonNickname
	text_start
	line "είναι ήδη έξω."
	prompt

BattleText_MonCantBeRecalled:
	text_ram wBattleMonNickname
	text_start
	line "δεν αλλάζει!!"
	prompt

BattleText_TheresNoPPLeftForThisMove:
	text "Ξέμεινες από ΠΠ"
	line "για την κίνηση!"
	prompt

BattleText_TheMoveIsDisabled:
	text "Η κίνηση"
	line "ΑΚΥΡΩΘΗΚΕ!"
	prompt

BattleText_MonHasNoMovesLeft:
	text_ram wBattleMonNickname
	text_start
	line "Ξέμεινες!"
	done

BattleText_TargetsEncoreEnded:
	text "<TARGET>"
	line "ΜΠΡΑΒΟ τελείωσε!"
	prompt

BattleText_StringBuffer1GrewToLevel:
	text_ram wStringBuffer1
	text " πηγε"
	line "LEVEL @"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79
	text_end

BattleText_WildMonIsEating:
	text "Άγριο @"
	text_ram wEnemyMonNickname
	text_start
	line "τρώει!"
	prompt

BattleText_WildMonIsAngry:
	text "Άγριο @"
	text_ram wEnemyMonNickname
	text_start
	line "νευρίασε!"
	prompt

FastAsleepText:
	text "<USER>"
	line "κοιμάται βαθιά!"
	prompt

WokeUpText:
	text "<USER>"
	line "ξύπνησε!"
	prompt

FrozenSolidText:
	text "<USER>"
	line "πάγωσε!"
	prompt

FlinchedText:
	text "<USER>"
	line "τρόμαξε!"
	prompt

MustRechargeText:
	text "<USER>"
	line "φορτίζει!"
	prompt

DisabledNoMoreText:
	text "<USER>"
	line "τέλειωσε ακύρωση!"
	prompt

IsConfusedText:
	text "<USER>"
	line "συγχύστηκε!"
	prompt

HurtItselfText:
	text "Χτύπησε τον"
	line "εαυτό απο ζαλάδα!"
	prompt

ConfusedNoMoreText:
	text "<USER>"
	line "δεν συγχύζεται!"
	prompt

BecameConfusedText:
	text "<TARGET>"
	line "συγχύζεται!"
	prompt

BattleText_ItemHealedConfusion:
	text "Το @"
	text_ram wStringBuffer1
	text " έβγαλε"
	line "<TARGET>"
	cont "απο σύγχυση."
	prompt

AlreadyConfusedText:
	text "<TARGET>"
	line "ήδη συγχυσμένο!"
	prompt

BattleText_UsersHurtByStringBuffer1:
	text "<USER>"
	line "χτύπησε από"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_UserWasReleasedFromStringBuffer1:
	text "<USER>"
	line "ελευθερώθηκε από"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

UsedBindText:
	text "<USER>"
	line "έκανε ΓΡΑΠΩΜΑ"
	cont "στο <TARGET>!"
	prompt

WasTrappedText:
	text "<TARGET>"
	line "πιάστηκε!"
	prompt

WrappedByText:
	text "<TARGET>"
	line "ΓΡΑΠΩΘΗΚΕ"
	cont "από <USER>!"
	prompt

ClampedByText:
	text "<TARGET>"
	line "ΔΑΓΚΩΘΗΚΕ από"
	cont "<USER>!"
	prompt

StoringEnergyText:
	text "<USER>"
	line "μαζεύει ενέργεια!"
	prompt

UnleashedEnergyText:
	text "<USER>"
	line "έβγαλε ενέργεια!"
	prompt

HungOnText:
	text "<TARGET>"
	line "περιμένει με"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

EnduredText:
	text "<TARGET>"
	line "ΑΝΤΕΞΕ το χτύπημα!"
	prompt

InLoveWithText:
	text "<USER>"
	line "ερωτεύτηκε το"
	cont "<TARGET>!"
	prompt

InfatuationText:
	text "<USER>"
	line "δεν επιτέθηκε"
	cont "από έρωτα!"
	prompt

DisabledMoveText:
	text "<USER>"
	line "@"
	text_ram wStringBuffer1
	text ""
	cont "ΑΚΥΡΩΘΗΚΕ!"
	prompt

LoafingAroundText:
	text_ram wBattleMonNickname
	text ""
	line "τεμπελιάζει."
	prompt

BeganToNapText:
	text_ram wBattleMonNickname
	text " πηρε"
	line "έναν υπνάκο!"
	prompt

WontObeyText:
	text_ram wBattleMonNickname
	text " δεν"
	line "υπακούει!"
	prompt

TurnedAwayText:
	text_ram wBattleMonNickname
	text " γύρισε"
	line "πλευρό!"
	prompt

IgnoredOrdersText:
	text_ram wBattleMonNickname
	text " αγνόησε"
	line "εντολές!"
	prompt

IgnoredSleepingText:
	text_ram wBattleMonNickname
	text " αγνοεί"
	line "εντολές…κοιμάται!"
	prompt

NoPPLeftText:
	text "Δεν έχεις ΠΠ"
	line "για την κίνηση!"
	prompt

HasNoPPLeftText:
	text "<USER>"
	line "ξέμεινε από ΠΠ"
	cont "@"
	text_ram wStringBuffer2
	text "!"
	prompt

WentToSleepText:
	text "<USER>"
	line "κοιμήθηκε!"
	done

RestedText:
	text "<USER>"
	line "κοιμήθηκε και"
	cont "ένιωσε υγεία!"
	done

RegainedHealthText:
	text "<USER>"
	line "ανέκτησε υγεία!"
	prompt

AttackMissedText:
	text "<USER>"
	line "αστόχησε!"
	prompt

AttackMissed2Text:
	text "<USER>"
	line "αστόχησε!"
	prompt

CrashedText:
	text "<USER>"
	line "έπεσε κάτω και"
	cont "χτύπησε!"
	prompt	

UnaffectedText:
	text "<TARGET>"
	line "ανεπηρέαστο!"
	prompt

DoesntAffectText:
	text "Δεν επηρέασε"
	line "το <TARGET>!"
	prompt

CriticalHitText:
	text "Κρίσιμο χτύπημα!"
	prompt

OneHitKOText:
	text "Χτύπημα KO!"
	prompt

SuperEffectiveText:
	text "Έχει υπέρ"
	line "επίδραση!"
	prompt

NotVeryEffectiveText:
	text "Δεν έχει πολύ"
	line "επίδραση…"
	prompt

TookDownWithItText:
	text "<TARGET>"
	line "έριξε μαζί του,"
	cont "<USER>!"
	prompt

RageBuildingText:
	text "<USER>"
	line "χτίζει ΟΡΓΗ!"
	prompt

GotAnEncoreText:
	text "<TARGET>"
	line "πήρε ΜΠΡΑΒΟ!"
	prompt

SharedPainText:
	text "Οι μαχητές"
	line "μοιράστηκαν πόνο!"
	prompt

TookAimText:
	text "<USER>"
	line "στόχευσε!"
	prompt

SketchedText:
	text "<USER>"
	line "ΣΚΙΤΣΑΡΕ"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

DestinyBondEffectText:
	text "<USER>"
	line "παίρνει τον"
	cont "εχθρό μαζί του!"
	prompt

SpiteEffectText:
	text "<TARGET>"
	line "@"
	text_ram wStringBuffer1
	text " μει-"
	cont "ώθηκε κατά @"
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt

BellChimedText:
	text "Χτύπησε καμπάνα!"
	line ""
	prompt

FellAsleepText:
	text "<TARGET>"
	line "έπεσε για ύπνο!"
	prompt

AlreadyAsleepText:
	text "<TARGET>"
	line "κοιμάται ήδη!"
	prompt

WasPoisonedText:
	text "<TARGET>"
	line "δηλητηριάστηκε!"
	prompt

BadlyPoisonedText:
	text "<TARGET>"
	line "δηλητ. άσχημα!"
	prompt

AlreadyPoisonedText:
	text "<TARGET>"
	line "ηδη δηλητ.!"
	prompt

SuckedHealthText:
	text "Ρούφηξε ζωή"
	line "από <TARGET>!"
	prompt

DreamEatenText:
	text "<TARGET>"
	line "φαγώθηκε όνειρο!"
	prompt

WasBurnedText:
	text "<TARGET>"
	line "κάηκε!"
	prompt

DefrostedOpponentText:
	text "<TARGET>"
	line "ξεπάγωσε!"
	prompt

WasFrozenText:
	text "<TARGET>"
	line "πάγωσε!"
	prompt

WontRiseAnymoreText:
	text "<USER>"
	line "@"
	text_ram wStringBuffer2
	text " δεν"
	cont "αυξάνει πλέον!"
	prompt

WontDropAnymoreText:
	text "<TARGET>"
	line "@"
	text_ram wStringBuffer2
	text " δεν"
	cont "μειώνεται άλλο!"
	prompt

FledFromBattleText::
	text "<USER>"
	line "έφυγε από τη μάχη!"
	prompt

FledInFearText:
	text "<TARGET>"
	line "έφυγε φοβισμένο!"
	prompt

BlownAwayText:
	text "<TARGET>"
	line "παρασύρθηκε εκτός!"
	prompt	

PlayerHitTimesText:
	text "Χτύπησε @"
	text_decimal wPlayerDamageTaken, 1, 1
	text " φορές!"
	prompt

EnemyHitTimesText:
	text "Χτύπησε @"
	text_decimal wEnemyDamageTaken, 1, 1
	text " φορές!"
	prompt

MistText:
	text "<USER>"
	line "μπηκε σε ΟΜΙΧΛΗ!"
	prompt

ProtectedByMistText:
	text "<TARGET> φυλά-"
	line "σσεται απο ΟΜΙΧΛΗ."
	prompt

GettingPumpedText:
	text_pause
	text "<USER>"
	line "ρουφήχθηκε!"
	prompt

RecoilText:
	text "<USER>"
	line "αυτοτραυματίστηκε!"
	prompt

MadeSubstituteText:
	text "<USER>"
	line "έκανε ΔΟΛΩΜΑ!"
	prompt

HasSubstituteText:
	text "<USER>"
	line "έχει ΔΟΛΩΜΑ!"
	prompt

TooWeakSubText:
	text "Αδύναμο για να"
	line "κάνει ΔΟΛΩΜΑ!"
	prompt

SubTookDamageText:
	text "Το ΔΟΛΩΜΑ"
	line "πήρε ζημιά για"
	cont "<TARGET>!"
	prompt

SubFadedText:
	text "<TARGET>"
	line "ΔΟΛΩΜΑ χάθηκε!"
	prompt

MimicLearnedMoveText:
	text "<USER>"
	line "έμαθε"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

WasSeededText:
	text "<TARGET>"
	line "φυτεύτηκε!"
	prompt

EvadedText:
	text "<TARGET>"
	line "απέφυγε χτύπημα!"
	prompt

WasDisabledText:
	text "<TARGET>"
	line "@"
	text_ram wStringBuffer1
	text " ειχε"
	cont "ΑΚΥΡΩΘΕΙ!"
	prompt

CoinsScatteredText:
	text "Κέρματα σκόρπισαν"
	line "παντού!"
	prompt

TransformedTypeText:
	text "<USER>"
	line "αλλαξε"
	cont "σε @"
	text_ram wStringBuffer1
	text "-τύπο!"
	prompt

EliminatedStatsText:
	text "Όλες οι αλλαγές"
	line "STATS χάθηκαν!"
	prompt

TransformedText:
	text "<USER>"
	line "ΑΛΛΑΞΕ σε"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

LightScreenEffectText:
	text "<USER>"
	line "ΕΙΔ.ΑΜΝ αυξήθηκε!"
	prompt

ReflectEffectText:
	text "<USER>"
	line "ΑΜΥΝΑ αυξήθηκε!"
	prompt

NothingHappenedText:
	text "Μα δεν"
	line "έγινε τίποτα."
	prompt

ButItFailedText:
	text "Μα απέτυχε!"
	prompt

ItFailedText:
	text "Απέτυχε!"
	prompt

DidntAffect1Text:
	text "Δεν επηρέασε"
	line "το <TARGET>!"
	prompt

DidntAffect2Text:
	text "Δεν επηρέασε"
	line "το <TARGET>!"
	prompt

HPIsFullText:
	text "<USER>"
	line "HP γέμησε!"
	prompt

DraggedOutText:
	text "<USER>"
	line "βγήκε έξω!"
	prompt

ParalyzedText:
	text "<TARGET>"
	line "παρέλυσε! Δεν"
	cont "θα επιτεθεί!"
	prompt

FullyParalyzedText:
	text "<USER>"
	line "παρέλυσε πλήρως!"
	prompt

AlreadyParalyzedText:
	text "<TARGET>"
	line "ήδη παρέλυσε!"
	prompt

ProtectedByText:
	text "<TARGET>"
	line "προστατεύτηκε"
	cont "από @"
	text_ram wStringBuffer1
	text "!"
	prompt

MirrorMoveFailedText:
	text "Το ΚΑΘΡΕΥΤΙΣΜΑ"
	next "απέτυχε!"
	prompt

StoleText:
	text "<USER>"
	line "έκλεψε @"
	text_ram wStringBuffer1
	text_start
	cont "από εχθρικό!"
	prompt

CantEscapeNowText:
	text "<TARGET>"
	line "δεν ξεφεύγει τώρα!"
	prompt

StartedNightmareText:
	text "<TARGET>"
	line "άρχισε να έχει"
	cont "ΕΦΙΑΛΤΗ!"
	prompt

WasDefrostedText:
	text "<USER>"
	line "ξεπάγωσε!"
	prompt

PutACurseText:
	text "<USER>"
	line "έκοψε το HP και"

	para "έκανε ΚΑΤΑΡΑ"
	line "στο <TARGET>!"
	prompt

ProtectedItselfText:
	text "<USER>"
	line "ΠΡΟΣΤΑΤΕΥΤΗΚΕ!"
	prompt

ProtectingItselfText:
	text "<TARGET>"
	line "ΠΡΟΣΤΑΤΕΥΕΤΑΙ!"
	done

SpikesText:
	text "ΚΑΡΦΙΑ βγήκαν"
	line "γύρω από"
	cont "<TARGET>!"
	prompt

IdentifiedText:
	text "<USER>"
	line "βρήκε το"
	cont "<TARGET>!"
	prompt

StartPerishText:
	text "Και τα δύο λυποθυ-"
	line "μούν σε 3 γύρους!"
	prompt

SandstormBrewedText:
	text "Μια ΑΜΜΟΘΥΕΛΛΑ"
	line "ξέσπασε!"
	prompt

BracedItselfText:
	text "<USER>"
	line "κρατήθηκε γερά!"
	prompt

FellInLoveText:
	text "<TARGET>"
	line "ερωτεύτηκε!"
	prompt

CoveredByVeilText:
	text "<USER>"
	line "μπήκε σε πέπλο!"
	prompt

SafeguardProtectText:
	text "<TARGET>"
	line "προστατεύτηκε με"
	cont "ΠΡΟΣΤΑΣΙΑ!"
	prompt

MagnitudeText:
	text "Μέγεθος @"
	text_decimal wTextDecimalByte, 1, 1
	text "!"
	prompt

ReleasedByText:
	text "<USER>"
	line "ελευθερώθηκε"
	cont "από <TARGET>!"
	prompt

ShedLeechSeedText:
	text "<USER>"
	line "έριξε ΒΔΕΛΑ!"
	prompt

BlewSpikesText:
	text "<USER>"
	line "Έριξε ΚΑΡΦΙΑ!"
	prompt

DownpourText:
	text "Άγρια βροχή"
	line "ξέσπασε!"
	prompt

SunGotBrightText:
	text "Ακτίνες ηλίου"
	line "έγιναν πιο δυνατές!"
	prompt

BellyDrumText:
	text "<USER>"
	line "εκοψε HP και"
	cont "αύξησε ΕΠΙΘΕΣΗ!"
	prompt

CopiedStatsText:
	text "<USER>"
	line "αντέγραψε τις"

	para "αλλαγές status"
	line "<TARGET>!"
	prompt

ForesawAttackText:
	text "<USER>"
	line "προέβλεψε επίθεση!"
	prompt

BeatUpAttackText:
	text_ram wStringBuffer1
	text ""
	line "επιτίθεται!"
	done

PresentFailedText:
; BUG: Present's text overflows when it fails to heal an enemy Pokémon with a long name (see docs/bugs_and_glitches.md)
	text "<TARGET> δεν"
	line "πήρε το δώρο!"
	prompt

IgnoredOrders2Text:
	text "<USER>"
	line "αγνωεί εντολές!"
	prompt
