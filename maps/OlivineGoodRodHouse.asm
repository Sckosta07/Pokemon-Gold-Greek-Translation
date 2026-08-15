	object_const_def
	const OLIVINEGOODRODHOUSE_FISHING_GURU

OlivineGoodRodHouse_MapScripts:
	def_scene_scripts

	def_callbacks

GoodRodGuru:
	faceplayer
	opentext
	checkevent EVENT_GOT_GOOD_ROD
	iftrue .AlreadyGotItem
	writetext OfferGoodRodText
	yesorno
	iffalse .DontWantIt
	writetext GiveGoodRodText
	promptbutton
	verbosegiveitem GOOD_ROD
	writetext GaveGoodRodText
	waitbutton
	closetext
	setevent EVENT_GOT_GOOD_ROD
	end

.DontWantIt:
	writetext DontWantGoodRodText
	waitbutton
	closetext
	end

.AlreadyGotItem:
	writetext HaveGoodRodText
	waitbutton
	closetext
	end

GoodRodHouseBookshelf: ; unreferenced
	jumpstd PictureBookshelfScript

OfferGoodRodText:
	text "Η OLIVINE είναι"
	line "στη θάλασσα!"

	para "Και αν είναι έτσι,"
	line "θα υπάρχουν"
	cont "άφθονα ψάρια!"

	para "Ψαρεύω εδώ"
	line "για 30 χρόνια."

	para "Θες να δεις"
	line "τη θάλασσα και"
	cont "τα ψάρια;"
	done

GiveGoodRodText:
	text "Α, χαχαχ!"
	line "Εδώ έχουμε έναν"
	cont "νέο ψαρά!"
	done

GaveGoodRodText:
	text "Τα ψάρια δεν είναι"
	line "μόνο στη θάλασσα."

	para "Είναι παντού."
	line "Όπου έχει νερό."
	done

DontWantGoodRodText:
	text "Τιιιι; Δεν σου"
	line "αρέσουν τα ψάρια;"
	cont "Αδιανόητο!"
	done

HaveGoodRodText:
	text "Πως πάει;"
	line "Έπιασες κάτι;"
	done

OlivineGoodRodHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 6
	warp_event  3,  7, OLIVINE_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoodRodGuru, -1
