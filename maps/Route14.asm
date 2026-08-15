	object_const_def
	const ROUTE14_POKEFAN_M1
	const ROUTE14_YOUNGSTER
	const ROUTE14_POKEFAN_M2
	const ROUTE14_KIM

Route14_MapScripts:
	def_scene_scripts

	def_callbacks

Kim:
	faceplayer
	opentext
	trade NPC_TRADE_KIM
	waitbutton
	closetext
	end

TrainerPokefanmCarter:
	trainer POKEFANM, CARTER, EVENT_BEAT_POKEFANM_CARTER, PokefanmCarterSeenText, PokefanmCarterBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmCarterAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperRoy:
	trainer BIRD_KEEPER, ROY, EVENT_BEAT_BIRD_KEEPER_ROY, BirdKeeperRoySeenText, BirdKeeperRoyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRoyAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmTrevor:
	trainer POKEFANM, TREVOR, EVENT_BEAT_POKEFANM_TREVOR, PokefanmTrevorSeenText, PokefanmTrevorBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmTrevorAfterBattleText
	waitbutton
	closetext
	end

PokefanmCarterSeenText:
	text "Άσε με να σου πω,"
	line "ήταν δύσκολο να"

	para "πιάσω το βρα-"
	line "βευμένο #μον."
	done

PokefanmCarterBeatenText:
	text "Αγαααχ!"
	done

PokefanmCarterAfterBattleText:
	text "SQUIRTLE, CHARMAN-"
	line "DER και BULBASAUR…"

	para "Πιστεύω πως"
	line "υπάρχει ισορροπία."
	done

BirdKeeperRoySeenText:
	text "Ονειρεύομαι να"
	line "πετάω με τα που-"
	cont "λιά #μον μου."
	done

BirdKeeperRoyBeatenText:
	text "Ονειρεύομαι, μα"
	line "δεν πετάω…"
	done

BirdKeeperRoyAfterBattleText:
	text "Έχεις #μον"
	line "που ξέρει HM"

	para "ΠΤΗΣΗ, ετσι;"
	line "Σε ζηλεύω."
	done

PokefanmTrevorSeenText:
	text "Έκανες μάχη με"
	line "τους επ/τες GYM;"
	done

PokefanmTrevorBeatenText:
	text "Ω, ουάου! Πολύ"
	line "δυνατός για εμένα!"
	done

PokefanmTrevorAfterBattleText:
	text "Αν έχεις ΕΜΒΛΗΜΑΤΑ"
	line "ΚΑΝΤΟ, θα σε"

	para "βοηθήσουν στις"
	line "μάχες."
	done

Route14_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12, 14, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokefanmCarter, -1
	object_event 11, 27, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRoy, -1
	object_event  5,  9, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerPokefanmTrevor, -1
	object_event  7,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 4, Kim, -1
