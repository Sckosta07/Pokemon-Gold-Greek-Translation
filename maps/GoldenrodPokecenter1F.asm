	object_const_def
	const GOLDENRODPOKECENTER1F_NURSE
	const GOLDENRODPOKECENTER1F_GAMEBOY_KID
	const GOLDENRODPOKECENTER1F_FISHER
	const GOLDENRODPOKECENTER1F_TWIN

GoldenrodPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

GoldenrodPokecenter1FGameboyKidScript:
	faceplayer
	opentext
	writetext GoldenrodPokecenter1FGameboyKidText
	waitbutton
	closetext
	turnobject GOLDENRODPOKECENTER1F_GAMEBOY_KID, DOWN
	end

GoldenrodPokecenter1FPersonScript:
	jumptextfaceplayer GoldenrodPokecenter1FPersonText

GoldenrodPokecenter1FLassScript:
	jumptextfaceplayer GoldenrodPokecenter1FLassText

GoldenrodPokecenter1FGameboyKidText:
	text "Το ΚΟΛΟΣΣΑΙΟ--"
	line "στο πάνω πάτωμα"

	para "κάθε ΚΕΝΤΡΟΥ--"
	line "είναι για μάχες."

	para "Οι καταγραφές"
	line "γίνονται αφίσες"

	para "στο τοίχο, άρα"
	line "δεν χάνονται."
	done

GoldenrodPokecenter1FPersonText:
	text "Αναρωτιέμαι πόσα"
	line "είδη από #μον"

	para "είναι στον"
	line "κόσμο."

	para "Τρία χρόνια πριν,"
	line "ο ΚΑΘ.OAK είπε"

	para "πως υπήρχαν 150"
	line "διαφορετικά είδη."
	done

GoldenrodPokecenter1FLassText:
	text "Ένα υψηλό LEVEL"
	line "#μον νικάει"
	cont "πάντοτε."

	para "Εξάλλου, μπορεί"
	line "να έχει μειωνέ-"
	cont "κτημα τύπου."

	para "Δεν νομίζω πως"
	line "υπάρχει κάποιο"

	para "#μον που να"
	line "είναι τέλειο."
	done

GoldenrodPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, GOLDENROD_CITY, 7
	warp_event  4,  7, GOLDENROD_CITY, 7
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	object_event  7,  2, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FGameboyKidScript, -1
	object_event  8,  6, SPRITE_FISHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FPersonScript, -1
	object_event  0,  5, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FLassScript, -1
