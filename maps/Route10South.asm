	object_const_def
	const ROUTE10SOUTH_POKEFAN_M1
	const ROUTE10SOUTH_POKEFAN_M2

Route10South_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerHikerJim:
	trainer HIKER, JIM, EVENT_BEAT_HIKER_JIM, HikerJimSeenText, HikerJimBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerJimAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmRobert:
	trainer POKEFANM, ROBERT, EVENT_BEAT_POKEFANM_ROBERT, PokefanmRobertSeenText, PokefanmRobertBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRobertAfterBattleText
	waitbutton
	closetext
	end

Route10Sign:
	jumptext Route10SignText

HikerJimSeenText:
	text "Χαχαχαχ!"
	done

HikerJimBeatenText:
	text "Χαχαχα-αψού!"
	done

HikerJimAfterBattleText:
	text "Με τις αλλεργίες"
	line "φτερνίζομαι!"
	cont "ΑΧΑΧΑΧ-ΨΟΥ!"
	done

PokefanmRobertSeenText:
	text "Σ'αρέσουν τα #-"
	line "μον, έτσι;"

	para "Και εμένα!"
	done

PokefanmRobertBeatenText:
	text "Πρέπει να πω"
	line "πως έχασα!"
	done

PokefanmRobertAfterBattleText:
	text "Κοίτα τι έκανες"
	line "στα #μον…"

	para "Δεν θα το"
	line "ξεχάσω αυτό…"
	done

Route10SignText:
	text "ΔΡΟΜΟΣ 10"

	para "ΠΟΛΗ CERULEAN -"
	line "ΠΟΛΗ LAVENDER"
	done

Route10South_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  1, ROCK_TUNNEL_1F, 2

	def_coord_events

	def_bg_events
	bg_event  5,  3, BGEVENT_READ, Route10Sign

	def_object_events
	object_event 17,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerHikerJim, -1
	object_event  4, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerPokefanmRobert, -1
