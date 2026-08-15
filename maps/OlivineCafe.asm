	object_const_def
	const OLIVINECAFE_SAILOR
	const OLIVINECAFE_FISHING_GURU

OlivineCafe_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineCafeStrengthSailorScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .GotStrength
	writetext OlivineCafeStrengthSailorText
	promptbutton
	verbosegiveitem HM_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
.GotStrength:
	writetext OlivineCafeStrengthSailorText_GotStrength
	waitbutton
	closetext
	end

OlivineCafeFishingGuruScript:
	jumptextfaceplayer OlivineCafeFishingGuruText

OlivineCafeStrengthSailorText:
	text "Χαχ! Τα #μον"
	line "σου έχουν"
	cont "λίγο βάρος!"

	para "Δεν έχουν την"
	line "δύναμη να μετα-"
	cont "κινούν βράχους."

	para "Εδώ, πάρε αυτό"
	line "και μάθε τα"
	cont "ΔΥΝΑΜΗ!"

	para "Θα χρειαστείς"
	line "το ΕΜΒΛΗΜΑ της"

	para "GOLDENROD έξω"
	line "απο τις μάχες."
	done

OlivineCafeStrengthSailorText_GotStrength:
	text "Στη θάλασσα,"
	line "το μόνο που μετρά"

	para "είναι ο καλός"
	line "σου εαυτός!"

	para "Είμαι περήφανος"
	line "για το μαυρισμα!"
	done

OlivineCafeFishingGuruText:
	text "Πέρασες το νερό;"
	line "Τότε άκου!"

	para "Υπάρχουν ρουφή-"
	line "χτρες στο δρόμο"
	cont "για το CIANWOOD."

	para "Τα #μον πρέπει"
	line "να ξέρουν ειδική"

	para "κίνηση για να"
	line "φυγουν από αυτές."
	done

OlivineCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 7
	warp_event  3,  7, OLIVINE_CITY, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeStrengthSailorScript, -1
	object_event  1,  5, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeFishingGuruScript, -1
