	object_const_def
	const ROUTE12SUPERRODHOUSE_FISHING_GURU

Route12SuperRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route12SuperRodHouseFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SUPER_ROD
	iftrue .GotSuperRod
	writetext OfferSuperRodText
	yesorno
	iffalse .Refused
	writetext GiveSuperRodText
	promptbutton
	verbosegiveitem SUPER_ROD
	iffalse .NoRoom
	setevent EVENT_GOT_SUPER_ROD
.GotSuperRod:
	writetext GaveSuperRodText
	waitbutton
	closetext
	end

.Refused:
	writetext DontWantSuperRodText
	waitbutton
.NoRoom:
	closetext
	end

SuperRodHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

OfferSuperRodText:
	text "Ειμαι ο μικρός"
	line "αδελφός του GURU"
	cont "ψαρέματος."

	para "Βλεπω σου"
	line "αρέσει το ψάρεμα."

	para "Δεν χωρά αμφιβολία"
	line "στο κεφάλι μου!"

	para "Άρα; Ξέρω"
	line "πως έχω δίκιο."
	done

GiveSuperRodText:
	text "Ναι, ναι. Όπως"
	line "το σκεφτόμουν!"

	para "Ορίστε, ψάρο-φαν!"
	line "Πάρε αυτό--είναι"
	cont "ΥΠΕΡΚΑΛΑΜΙ."
	done

GaveSuperRodText:
	text "Βάλτο για ψάρεμα"
	line "όπου υπάρχει"
	cont "νερό ή λίμνη."

	para "Θυμίσου--πιάνε"
	line "διάφορα είδη"

	para "#μον βάζοντας"
	line "διάφορα ΚΑΛΑΜΙΑ."
	done

DontWantSuperRodText:
	text "Ε; δεν"
	line "βλέπω καλά;"
	done

Route12SuperRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_12, 1
	warp_event  3,  7, ROUTE_12, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route12SuperRodHouseFishingGuruScript, -1
