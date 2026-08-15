	object_const_def
	const VIOLETPOKECENTER1F_NURSE
	const VIOLETPOKECENTER1F_SUPER_NERD
	const VIOLETPOKECENTER1F_GENTLEMAN
	const VIOLETPOKECENTER1F_YOUNGSTER
	const VIOLETPOKECENTER1F_ELMS_AIDE

VioletPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

VioletPokecenterNurse:
	jumpstd PokecenterNurseScript

VioletPokecenter1F_ElmsAideScript:
	faceplayer
	opentext
	checkevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	iftrue .SecondTimeAsking
	writetext VioletPokecenterElmsAideFavorText
.AskTakeEgg:
	yesorno
	iffalse .RefusedEgg
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	giveegg TOGEPI, EGG_LEVEL
	getstring STRING_BUFFER_4, .eggname
	scall .AideGivesEgg
	setevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	clearevent EVENT_ELMS_AIDE_IN_LAB
	clearevent EVENT_TOGEPI_HATCHED
	setmapscene ROUTE_32, SCENE_ROUTE32_OFFER_SLOWPOKETAIL
	writetext VioletPokecenterElmsAideGiveEggText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal UP, .AideWalksAroundPlayer
	turnobject PLAYER, DOWN
	applymovement VIOLETPOKECENTER1F_ELMS_AIDE, MovementData_AideWalksStraightOutOfPokecenter
	playsound SFX_EXIT_BUILDING
	disappear VIOLETPOKECENTER1F_ELMS_AIDE
	waitsfx
	end

.AideWalksAroundPlayer:
	applymovement VIOLETPOKECENTER1F_ELMS_AIDE, MovementData_AideWalksLeftToExitPokecenter
	turnobject PLAYER, DOWN
	applymovement VIOLETPOKECENTER1F_ELMS_AIDE, MovementData_AideFinishesLeavingPokecenter
	playsound SFX_EXIT_BUILDING
	disappear VIOLETPOKECENTER1F_ELMS_AIDE
	waitsfx
	end

.eggname
	db "ΑΥΓΟ@"

.AideGivesEgg:
	jumpstd ReceiveTogepiEggScript
	end

.PartyFull:
	writetext VioletCityElmsAideFullPartyText
	waitbutton
	closetext
	end

.RefusedEgg:
	writetext VioletPokecenterElmsAideRefuseText
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	end

.SecondTimeAsking:
	writetext VioletPokecenterElmsAideAskEggText
	sjump .AskTakeEgg

VioletPokecenter1FSuperNerdScript:
	jumptextfaceplayer VioletPokecenter1FSuperNerdText

VioletPokecenter1FGentlemanScript:
	jumptextfaceplayer VioletPokecenter1FGentlemanText

VioletPokecenter1FYoungsterScript:
	jumptextfaceplayer VioletPokecenter1FYoungsterText

MovementData_AideWalksStraightOutOfPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MovementData_AideWalksLeftToExitPokecenter:
	step LEFT
	step DOWN
	step_end

MovementData_AideFinishesLeavingPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step_end

VioletPokecenterElmsAideFavorText:
	text "<PLAYER>, καιρό"
	line "έχω να σε δω."

	para "Ο ΚΑΘ.ELM μου"
	line "ζήτησε να σε βρω."

	para "Έχει άλλη μια"
	line "χάρη να ζητήσει."

	para "Θα πάρεις το"
	line "ΑΥΓΟ ΠΟΚΕΜΟΝ;"
	done

VioletPokecenterElmsAideGiveEggText:
	text "Ανακαλύψαμε"
	line "πως #μον δεν"

	para "εκκολάπτεται"
	line "μέχρι να οριμάσει."

	para "Επίσης πρέπει να"
	line "είναι μαζί με #"
	cont "μον για εκκόλαψη."

	para "<PLAYER>, είσαι"
	line "το μόνο άτομο"
	cont "που βασιζόμαστε."

	para "Κάλεσε τον ΚΑΘ."
	line "ELM όταν βγει"
	cont "απο το ΑΥΓΟ!"
	done

VioletCityElmsAideFullPartyText:
	text "Ωχ, όχι. δεν έχεις"
	line "χώρο για άλλα"
	cont "#μον."

	para "Θα περιμένω εδώ"
	line "μέχρι να έχεις"
	cont "χώρο για το ΑΥΓΟ."
	done

VioletPokecenterElmsAideRefuseText:
	text "Μ-μα… Ο ΚΑΘ.ELM"
	line "στο ζήτησε…"
	done

VioletPokecenterElmsAideAskEggText:
	text "<PLAYER>, θα"
	line "πάρεις το ΑΥΓΟ;"
	done

VioletPokecenter1FSuperNerdText:
	text "Ο BILL έκανε"
	line "τον αποθηκευτικό"
	cont "χώρο στο PC."
	done

VioletPokecenter1FGentlemanText:
	text "Ήταν περίπου"
	line "τρια χρόνια πριν."

	para "Οι ΠΥΡΑΥΛΟΙ"
	line "κάνανε μη καλό"
	cont "με #μον."

	para "Μα η δικαιοσύνη"
	line "έλαμψε--ένα παιδί"
	cont "τους διέλυσε."
	done

VioletPokecenter1FYoungsterText:
	text "Τα #μον είναι"
	line "έξυπνα. Δεν"

	para "υπακούν εκπ/τη"
	line "που δεν σέβονται."

	para "Χωρίς τα σωστά"
	line "ΕΜΒΛΗΜΑΤΑ,"

	para "κάνουν ότι"
	line "τους αρέσει."
	done

VioletPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VIOLET_CITY, 5
	warp_event  4,  7, VIOLET_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletPokecenterNurse, -1
	object_event  7,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FSuperNerdScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FGentlemanScript, -1
	object_event  8,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FYoungsterScript, -1
	object_event  4,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1F_ElmsAideScript, EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER
