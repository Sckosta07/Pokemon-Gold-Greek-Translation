	object_const_def
	const MRPOKEMONSHOUSE_GENTLEMAN
	const MRPOKEMONSHOUSE_OAK

MrPokemonsHouse_MapScripts:
	def_scene_scripts
	scene_script MrPokemonsHouseMeetMrPokemonScene, SCENE_MRPOKEMONSHOUSE_MEET_MR_POKEMON
	scene_script MrPokemonsHouseNoopScene,          SCENE_MRPOKEMONSHOUSE_NOOP

	def_callbacks

MrPokemonsHouseMeetMrPokemonScene:
	sdefer MrPokemonsHouseMrPokemonEventScript
	end

MrPokemonsHouseNoopScene:
	end

MrPokemonsHouseMrPokemonEventScript:
	showemote EMOTE_SHOCK, MRPOKEMONSHOUSE_GENTLEMAN, 15
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	opentext
	writetext MrPokemonIntroText1
	waitbutton
	closetext
	applymovement PLAYER, MrPokemonsHouse_PlayerWalksToMrPokemon
	opentext
	writetext MrPokemonIntroText2
	promptbutton
	waitsfx
	giveitem MYSTERY_EGG
	writetext MrPokemonsHouse_GotEggText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	blackoutmod CHERRYGROVE_CITY
	writetext MrPokemonIntroText3
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, RIGHT
	writetext MrPokemonIntroText4
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	turnobject MRPOKEMONSHOUSE_OAK, LEFT
	writetext MrPokemonIntroText5
	waitbutton
	closetext
	sjump MrPokemonsHouse_OakScript

MrPokemonsHouse_MrPokemonScript:
	faceplayer
	opentext
	checkitem RED_SCALE
	iftrue .RedScale
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .AlwaysNewDiscoveries
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	end

.AlwaysNewDiscoveries:
	writetext MrPokemonText_AlwaysNewDiscoveries
	waitbutton
	closetext
	end

.RedScale:
	writetext MrPokemonText_GimmeTheScale
	yesorno
	iffalse .refused
	verbosegiveitem EXP_SHARE
	iffalse .full
	takeitem RED_SCALE
	sjump .AlwaysNewDiscoveries

.refused
	writetext MrPokemonText_Disappointed
	waitbutton
.full
	closetext
	end

MrPokemonsHouse_OakScript:
	playmusic MUSIC_PROF_OAK
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToPlayer
	turnobject PLAYER, RIGHT
	opentext
	writetext MrPokemonsHouse_OakText1
	promptbutton
	waitsfx
	writetext MrPokemonsHouse_GetDexText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	writetext MrPokemonsHouse_OakText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakExits
	playsound SFX_EXIT_BUILDING
	disappear MRPOKEMONSHOUSE_OAK
	waitsfx
	special RestartMapMusic
	pause 15
	turnobject PLAYER, UP
	opentext
	writetext MrPokemonsHouse_MrPokemonHealText
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInFromBlack
	special RestartMapMusic
	opentext
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	setevent EVENT_RIVAL_NEW_BARK_TOWN
	setscene SCENE_MRPOKEMONSHOUSE_NOOP
	setmapscene CHERRYGROVE_CITY, SCENE_CHERRYGROVECITY_MEET_RIVAL
	setmapscene ELMS_LAB, SCENE_ELMSLAB_MEET_OFFICER
	specialphonecall SPECIALCALL_ROBBED
	clearevent EVENT_COP_IN_ELMS_LAB
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .RivalTakesChikorita
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .RivalTakesCyndaquil
	setevent EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesChikorita:
	setevent EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesCyndaquil:
	setevent EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	end

MrPokemonsHouse_ForeignMagazines:
	jumptext MrPokemonsHouse_ForeignMagazinesText

MrPokemonsHouse_BrokenComputer:
	jumptext MrPokemonsHouse_BrokenComputerText

MrPokemonsHouse_StrangeCoins:
	jumptext MrPokemonsHouse_StrangeCoinsText

MrPokemonsHouse_PlayerWalksToMrPokemon:
	step RIGHT
	step UP
	step_end

MrPokemonsHouse_OakWalksToPlayer:
	step DOWN
	step LEFT
	step LEFT
	step_end

MrPokemonsHouse_OakExits:
	step DOWN
	step LEFT
	turn_head DOWN
	step_sleep 2
	step_end

MrPokemonIntroText1:
	text "Γεια, γεια! Εσύ"
	line "είσαι ο <PLAYER>."

	para "Ο ΚΑΘ.ELM είπε"
	line "πως θα ερχόσουν."
	done

MrPokemonIntroText2:
	text "Αυτό θέλω"
	line "ο ΚΑΘ.ELM να"
	cont "εξετάσει."
	done

MrPokemonsHouse_GotEggText:
	text "<PLAYER> πήρε"
	line "ΜΥΣΤΗΡΙΟΑΥΓΟ."
	done

MrPokemonIntroText3:
	text "Ξέρω ένα"
	line "ζευγάρι που"
	cont "ΦΡΟΝΤΙΖΕΙ #μον."

	para "Αυτοί μου"
	line "έφεραν το ΑΥΓΟ."

	para "Με ενδιέφερε,"
	line "έτσι έστειλα MAIL"
	cont "στον ΚΑΘ.ELM."

	para "Για #μον εξε-"
	line "λήξεις, ο ΚΑΘ.ELM"
	cont "είναι αυθεντία."
	done

MrPokemonIntroText4:
	text "Ακόμα και ο ΚΑΘ."
	line "ΟΑΚ το λέει αυτό."
	done

MrPokemonIntroText5:
	text "Αν η υπόθεση μου"
	line "είναι σωστή, ο"
	cont "ELM θα ξέρει."
	done

MrPokemonsHouse_MrPokemonHealText:
	text "Επιστρέφεις στον"
	line "ΚΑΘ.ELM;"

	para "Ορίστε. Το #MON"
	line "σου θα ξεκουραστεί"
	cont "τώρα."
	done

MrPokemonText_ImDependingOnYou:
	text "Βασίζομαι σε"
	line "εσένα!"
	done

MrPokemonText_AlwaysNewDiscoveries:
	text "Η ζωή είναι ωραία!"
	line "Πάντα, νέες"

	para "ανακαλύψεις έχουν"
	line "να γίνουν!"
	done

MrPokemonsHouse_OakText1:
	text "OAK: Αχα! ώστε"
	line "είσαι ο <PLAYER>!"

	para "Είμαι ο OAK!"
	line "Ερευνητής #μον."

	para "Επισκέφτηκα"
	line "τον παλιό φίλο"
	cont "μου, Κ.ΠΟΚΕΜΟΝ."

	para "Άκουσα πως"
	line "έκανες αποστολή"

	para "για τον ΚΑΘ.ELM,"
	line "άρα περίμενα εδώ."

	para "Ω! Τι είναι αυτό;"
	line "Σπάνιο #μον;"

	para "Για να δω…"

	para "Χμ, κατάλαβα!"

	para "Βλέπω γιατί ο"
	line "ΚΑΘ.ELM σου έδωσε"

	para "#μον για την"
	line "αποστολή."

	para "Για ερευνητές"
	line "σαν τον  ΚΑΘ.ELM"

	para "και εμένα, #-"
	line "μον είναι φίλοι."

	para "Είδε πως φέρεσαι"
	line "στα #μον σου"

	para "με αγάπη"
	line "και φροντίδα."

	para "…Α!"

	para "Φαίνεσαι"
	line "αξιόπιστος."

	para "Θα ήθελες να"
	line "με βοηθήσεις;"

	para "Βλέπεις; Είναι η"
	line "τελευταία έκδοση"
	cont "του #ντεξ."

	para "Γράφει αυτόματα"
	line "δεδωμένα για τα"

	para "#μον που"
	line "βλέπεις ή πιάνεις."

	para "Είναι Χαϊ-Τεκ"
	line "εγκυκλοπαίδεια!"
	done

MrPokemonsHouse_GetDexText:
	text "<PLAYER> πήρε"
	line "#ντεξ!"
	done

MrPokemonsHouse_OakText2:
	text "Βρες πολλά"
	line "#μον και"

	para "ολοκλήρωσε αυτό"
	line "το #ντεξ!"

	para "Μα έμεινα"
	line "πολύ εδώ."

	para "Θέλω να πάω στη"
	line "GOLDENROD για"
	cont "την εκπομπή μου."

	para "<PLAYER>, βασίζομαι"
	line "πάνω σου!"
	done

MrPokemonText_GimmeTheScale:
	text "Χμ; Το ΛΕΠΙ!"
	line "Τι είναι αυτό;"
	cont "Κόκκινος GYARADOS;"

	para "Είναι σπάνιο! "
	line "Το, το θέλω…"

	para "<PLAYER>, θες"
	line "να το ανταλλάξεις;"

	para "Σου προσφέρω"
	line "EXP.SHARE που"
	cont "πηρα απο τον OAK."
	done

MrPokemonText_Disappointed:
	text "Τι απογοήτευση."
	line "Αυτό συμβαίνει"
	cont "με τα σπάνια."
	done

MrPokemonsHouse_ForeignMagazinesText:
	text "Γεμάτο με"
	line "ξένα περιοδικά."

	para "Δεν καταλαβαίνω"
	line "τους τίτλους…"
	done

MrPokemonsHouse_BrokenComputerText:
	text "Είναι μεγάλο"
	line "PC. Χμμ. Έχει"
	cont "χαλάσει."
	done

MrPokemonsHouse_StrangeCoinsText:
	text "Μια στοίβα απο"
	line "παράξενα κέρματα!"

	para "Μάλλον είναι από"
	line "άλλη χώρα…"
	done

MrPokemonsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_30, 2
	warp_event  3,  7, ROUTE_30, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  1,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  6,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  7,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  6,  4, BGEVENT_READ, MrPokemonsHouse_StrangeCoins

	def_object_events
	object_event  3,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, -1
	object_event  6,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MR_POKEMONS_HOUSE_OAK
