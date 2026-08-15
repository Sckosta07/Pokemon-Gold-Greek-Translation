	object_const_def
	const ROUTE32POKECENTER1F_NURSE
	const ROUTE32POKECENTER1F_FISHING_GURU
	const ROUTE32POKECENTER1F_COOLTRAINER_F

Route32Pokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route32Pokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

Route32Pokecenter1FFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .GotOldRod
	writetext Route32Pokecenter1FFishingGuruText_Question
	yesorno
	iffalse .Refused
	writetext Route32Pokecenter1FFishingGuruText_Yes
	promptbutton
	verbosegiveitem OLD_ROD
	writetext Route32Pokecenter1FFishingGuruText_GiveOldRod
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.Refused:
	writetext Route32Pokecenter1FFishingGuruText_No
	waitbutton
	closetext
	end

.GotOldRod:
	writetext Route32Pokecenter1FFishingGuruText_After
	waitbutton
	closetext
	end

Route32Pokecenter1FCooltrainerFScript:
	jumptextfaceplayer Route32Pokecenter1FCooltrainerFText

Route32Pokecenter1FFishingGuruText_Question:
	text "Είναι ωραίο το"
	line "σημείο για ψάρεμα."

	para "Βλέπεις κόσμο"
	line "να ψαρεύει;"
	cont "Τι λες εσύ;"

	para "Θέλεις ένα από"
	line "τα ΚΑΛΑΜΙΑ μου;"
	done

Route32Pokecenter1FFishingGuruText_Yes:
	text "Χεχ, χαίρομαι"
	line "που το ακούω."

	para "Τώρα είσαι και"
	line "εσύ ψαράς!"
	done

Route32Pokecenter1FFishingGuruText_GiveOldRod:
	text "Τέλειο το ψάρεμα!"

	para "Αν δεις νερό,"
	line "είναι θάλασσα ή"

	para "ποτάμι, άρχισε"
	line "το ψάρεμα."
	done

Route32Pokecenter1FFishingGuruText_No:
	text "Ω. Είναι πολύ"
	line "απογοητευτικό…"
	done

Route32Pokecenter1FFishingGuruText_After:
	text "Έι, νεαρέ. Πως"
	line "πάει, τσιμπάει;"
	done

Route32Pokecenter1FCooltrainerFText:
	text "Τι να κάνω τα #"
	line "μον να κρατούν;"

	para "Ίσως κάτι που"
	line "αυξάνει την"
	cont "ΕΠΙΘΕΣΗ…"
	done

Route32Pokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_32, 1
	warp_event  4,  7, ROUTE_32, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FFishingGuruScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FCooltrainerFScript, -1
