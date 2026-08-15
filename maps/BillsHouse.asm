	object_const_def
	const BILLSHOUSE_GRAMPS

BillsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillsGrandpa:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .JustShowedSomething
	checkevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotThunderstone
	checkevent EVENT_MET_BILLS_GRANDPA
	iftrue .MetGrandpa
	writetext BillsGrandpaIntroText
	promptbutton
	setevent EVENT_MET_BILLS_GRANDPA
.MetGrandpa:
	checkevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	iftrue .ShowedPichu
	checkevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	iftrue .ShowedGrowlitheVulpix
	checkevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	iftrue .ShowedStaryu
	checkevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	iftrue .ShowedOddish
	checkevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
	iftrue .ShowedLickitung
	writetext BillsGrandpaLickitungText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal LICKITUNG, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_LICKITUNG_TO_BILLS_GRANDPA
	sjump .ShowedLickitung

.GotEverstone:
	writetext BillsGrandpaOddishText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal ODDISH, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_ODDISH_TO_BILLS_GRANDPA
	sjump .ShowedOddish

.GotLeafStone:
	writetext BillsGrandpaStaryuText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal STARYU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_STARYU_TO_BILLS_GRANDPA
	sjump .ShowedStaryu

.GotWaterStone:
	checkver
	iftrue .AskVulpix
	writetext BillsGrandpaGrowlitheText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal GROWLITHE, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	sjump .ShowedGrowlitheVulpix

.AskVulpix:
	writetext BillsGrandpaVulpixText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal VULPIX, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_GROWLITHE_VULPIX_TO_BILLS_GRANDPA
	sjump .ShowedGrowlitheVulpix

.GotFireStone:
	writetext BillsGrandpaPichuText
	promptbutton
	writetext BillsGrandpaAskToSeeMonText
	yesorno
	iffalse .SaidNo
	scall .ExcitedToSee
	special BillsGrandfather
	iffalse .SaidNo
	ifnotequal PICHU, .WrongPokemon
	scall .CorrectPokemon
	setevent EVENT_SHOWED_PICHU_TO_BILLS_GRANDPA
	sjump .ShowedPichu

.ShowedLickitung:
	checkevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	iftrue .GotEverstone
	scall .ReceiveItem
	verbosegiveitem EVERSTONE
	iffalse .BagFull
	setevent EVENT_GOT_EVERSTONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetext
	end

.ShowedOddish:
	checkevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	iftrue .GotLeafStone
	scall .ReceiveItem
	verbosegiveitem LEAF_STONE
	iffalse .BagFull
	setevent EVENT_GOT_LEAF_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetext
	end

.ShowedStaryu:
	checkevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	iftrue .GotWaterStone
	scall .ReceiveItem
	verbosegiveitem WATER_STONE
	iffalse .BagFull
	setevent EVENT_GOT_WATER_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetext
	end

.ShowedGrowlitheVulpix:
	checkevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	iftrue .GotFireStone
	scall .ReceiveItem
	verbosegiveitem FIRE_STONE
	iffalse .BagFull
	setevent EVENT_GOT_FIRE_STONE_FROM_BILLS_GRANDPA
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	closetext
	end

.ShowedPichu:
	scall .ReceiveItem
	verbosegiveitem THUNDERSTONE
	iffalse .BagFull
	setevent EVENT_GOT_THUNDERSTONE_FROM_BILLS_GRANDPA
	closetext
	end

.ExcitedToSee:
	writetext BillsGrandpaExcitedToSeeText
	promptbutton
	end

.SaidNo:
	writetext BillsGrandpaYouDontHaveItTextText
	waitbutton
	closetext
	end

.CorrectPokemon:
	writetext BillsGrandpaShownPokemonText
	promptbutton
	end

.ReceiveItem:
	writetext BillsGrandpaTokenOfAppreciationText
	promptbutton
	end

.JustShowedSomething:
	writetext BillsGrandpaComeAgainText
	waitbutton
	closetext
	end

.GotThunderstone:
	writetext BillsGrandpaShownAllThePokemonText
	waitbutton
	closetext
	end

.WrongPokemon:
	writetext BillsGrandpaWrongPokemonText
	waitbutton
	closetext
	end

.BagFull:
	closetext
	end

BillsGrandpaIntroText:
	text "Ξέρεις τον BILL;"
	line "Είναι εγγονός μου."

	para "Είναι στο JOHTO."
	line "Κάνει κάτι στα"

	para "PC, άρα φυλάω"
	line "το μέρος."
	done

BillsGrandpaAskToSeeMonText:
	text "Αν έχεις αυτό"
	line "το #μον, μπορώ"
	cont "να το δω;"
	done

BillsGrandpaExcitedToSeeText:
	text "Θα μου δείξεις;"
	line "Τι καλοσύνη!"
	done

BillsGrandpaYouDontHaveItTextText:
	text "Δεν το έχεις;"
	line "Τι κρίμα…"
	done

BillsGrandpaShownPokemonText:
	text "Ώστε αυτό είναι"
	line "@"
	text_ram wStringBuffer3
	text "?"

	para "Είναι γλυκούλι!"
	line "Τι ευγενικό"
	cont "εκ μέρους σου."
	done

BillsGrandpaTokenOfAppreciationText:
	text "Ευχαριστώ!"

	para "Αυτό είναι δείγμα"
	line "της εκτίμησης μου."
	done

BillsGrandpaComeAgainText:
	text "Έλα να με δεις"
	line "οπότε θέλεις."
	done

BillsGrandpaShownAllThePokemonText:
	text "Ευχαριστώ που"
	line "μου έδειξες τόσο"
	cont "όμορφα #μον."

	para "Τα ευχαριστήθηκα"
	line "πολύ. Χαίρομαι που"

	para "Έζησα τόσο"
	line "όμορφη ζωή."
	done

BillsGrandpaWrongPokemonText:
	text "Χμ;"

	para "Δεν είναι το"
	line "#μον που"
	cont "σου έλεγα."
	done

BillsGrandpaLickitungText:
	text "Ο εγγονός μου"
	line "είπε για ένα"

	para "#μον που έχει"
	line "μεγάλη γλώσσα."
	done

BillsGrandpaOddishText:
	text "Α, ο εγγονός"
	line "ανέφερε ενα"

	para "πράσινο #μον"
	line "με φύλλα"
	cont "στο κεφάλι."
	done

BillsGrandpaStaryuText:
	text "Ξέρεις ένα θα-"
	line "λάσσιο #μον"

	para "με κόκκινη σφαίρα"
	line "στο σώμα του;"

	para "Ξέρεις, αυτό"
	line "με σχήμα σαν"
	cont "αστέρι;"

	para "Άκουσα ότι"
	line "φαίνεται τη νύχτα."

	para "Θα ήθελα να"
	line "το δω αυτό."
	done

BillsGrandpaGrowlitheText:
	text "Ο BILL είπε για"
	line "ένα #μον που"

	para "είναι πιστό στον"
	line "εκπαιδευτή του."

	para "Υποτίθεται πως"
	line "ΓΑΥΓΙΖΕΙ καλά."
	done

BillsGrandpaVulpixText:
	text "Άκουσα για ένα"
	line "γλυκούλι #μον"
	cont "με έξι ουρές."

	para "Θα ήθελα να"
	line "αγκαλιάσω ένα"
	cont "τέτοιο #μον."
	done

BillsGrandpaPichuText:
	text "Ξέρεις αυτό το"
	line "πολύ διάσημο"
	cont "#μον;"

	para "Αυτό με το"
	line "κίτρινο σώμα και"
	cont "κόκκινα μάγουλα."

	para "Θα ήθελα να"
	line "δω πως μοιάζει"

	para "πριν την "
	line "εξέλιξη του."
	done

BillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_25, 1
	warp_event  3,  7, ROUTE_25, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BillsGrandpa, -1
