	object_const_def
	const ROUTE27SANDSTORMHOUSE_GRANNY

Route27SandstormHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SandstormHouseWoman:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM37_SANDSTORM
	iftrue .AlreadyGotItem
	special GetFirstPokemonHappiness
	writetext SandstormHouseWomanText1
	promptbutton
	ifgreater 150 - 1, .Loyal
	sjump .Disloyal

.Loyal:
	writetext SandstormHouseWomanLoyalText
	promptbutton
	verbosegiveitem TM_SANDSTORM
	iffalse .Done
	setevent EVENT_GOT_TM37_SANDSTORM
.AlreadyGotItem:
	writetext SandstormHouseSandstormDescription
	waitbutton
.Done:
	closetext
	end

.Disloyal:
	writetext SandstormHouseWomanDisloyalText
	waitbutton
	closetext
	end

SandstormHouseBookshelf:
	jumpstd MagazineBookshelfScript

SandstormHouseWomanText1:
	text "Που πας με"
	line "τα #μον;"

	para "Στο ΠΡΩΤΑΘΛΗΜΑ;"

	para "Είναι τα #μον"
	line "σου πιστά για"
	cont "να νικήσεις;"

	para "Για να δω…"
	done

SandstormHouseWomanLoyalText:
	text "Α! Τα #μον"
	line "σε εμπιστεύονται"
	cont "πολύ."

	para "Χαίρομαι να βλέπω"
	line "καλούς εκπ/τες."

	para "Ορίστε. Ένα δώρο"
	line "για το ταξίδι σου."
	done

SandstormHouseSandstormDescription:
	text "TM37 είναι"
	line "ΑΜΜΟΘΥΕΛΛΑ."

	para "Είναι κίνηση που"
	line "προκαλεί ζημιά και"
	cont "στα δυο #μον."

	para "Είναι μόνο για"
	line "έμπειρους εκπ/τες."

	para "Μάθε το αν"
	line "τολμάς. Καλή τύχη!"
	done

SandstormHouseWomanDisloyalText:
	text "Αν δεν σε"
	line "εμπιστευτεί και"

	para "άλλο, θα είναι"
	line "δύσκολο."

	para "Εμπιστοσύνη είναι"
	line "η σχέση μεταξύ"
	cont "#μον & εκπ/των."
	done

Route27SandstormHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_27, 1
	warp_event  3,  7, ROUTE_27, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, SandstormHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, SandstormHouseBookshelf

	def_object_events
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SandstormHouseWoman, -1
