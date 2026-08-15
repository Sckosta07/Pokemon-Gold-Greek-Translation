	object_const_def
	const CELADONCAFE_SUPER_NERD
	const CELADONCAFE_FISHER1
	const CELADONCAFE_FISHER2
	const CELADONCAFE_FISHER3
	const CELADONCAFE_TEACHER

CeladonCafe_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonCafeChef:
	faceplayer
	opentext
	writetext ChefText_Eatathon
	waitbutton
	closetext
	end

CeladonCafeFisher1:
	opentext
	writetext Fisher1Text_Snarfle
	waitbutton
	closetext
	faceplayer
	opentext
	writetext Fisher1Text_Concentration
	waitbutton
	closetext
	turnobject CELADONCAFE_FISHER1, LEFT
	end

CeladonCafeFisher2:
	opentext
	writetext Fisher2Text_GulpChew
	waitbutton
	closetext
	faceplayer
	opentext
	writetext Fisher2Text_Quantity
	waitbutton
	closetext
	turnobject CELADONCAFE_FISHER2, RIGHT
	end

CeladonCafeFisher3:
	opentext
	writetext Fisher3Text_MunchMunch
	waitbutton
	closetext
	faceplayer
	opentext
	writetext Fisher3Text_GoldenrodIsBest
	waitbutton
	closetext
	turnobject CELADONCAFE_FISHER3, RIGHT
	end

CeladonCafeTeacher:
	checkitem COIN_CASE
	iftrue .HasCoinCase
	opentext
	writetext TeacherText_CrunchCrunch
	waitbutton
	closetext
	faceplayer
	opentext
	writetext TeacherText_NoCoinCase
	waitbutton
	closetext
	turnobject CELADONCAFE_TEACHER, LEFT
	end

.HasCoinCase:
	opentext
	writetext TeacherText_KeepEating
	waitbutton
	closetext
	turnobject CELADONCAFE_TEACHER, RIGHT
	opentext
	writetext TeacherText_MoreChef
	waitbutton
	closetext
	turnobject CELADONCAFE_TEACHER, LEFT
	end

EatathonContestPoster:
	jumptext EatathonContestPosterText

CeladonCafeTrashcan:
	checkevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	iftrue .TrashEmpty
	giveitem LEFTOVERS
	iffalse .PackFull
	opentext
	getitemname STRING_BUFFER_3, LEFTOVERS
	writetext FoundLeftoversText
	playsound SFX_ITEM
	waitsfx
	itemnotify
	closetext
	setevent EVENT_FOUND_LEFTOVERS_IN_CELADON_CAFE
	end

.PackFull:
	opentext
	getitemname STRING_BUFFER_3, LEFTOVERS
	writetext FoundLeftoversText
	promptbutton
	writetext NoRoomForLeftoversText
	waitbutton
	closetext
	end

.TrashEmpty:
	jumpstd TrashCanScript

ChefText_Eatathon:
	text "Γεια!"

	para "Κάνουμε έναν"
	line "μαραθώνιο φαγητού."

	para "Δεν σερβίρουμε"
	line "τώρα. Συγνώμη."
	done

Fisher1Text_Snarfle:
	text "…Σναρφλ, τσου…"
	done

Fisher1Text_Concentration:
	text "Μην μου μιλάς!"

	para "Θα χαλάσεις τη"
	line "συγκέντρωση μου!"
	done

Fisher2Text_GulpChew:
	text "…Γαλπ… Τσου…"
	done

Fisher2Text_Quantity:
	text "Κάνω ποσότητα"
	line "αντί για ποιότητα!"

	para "Χαίρομαι που"
	line "χόρτασα!"
	done

Fisher3Text_MunchMunch:
	text "Μαντς, μαντς…"
	done

Fisher3Text_GoldenrodIsBest:
	text "Το φαΐ εδώ είναι"
	line "καλό, μα της"
	cont "GOLDENROD είναι"
	cont "άφταστο παντού."
	done

TeacherText_CrunchCrunch:
	text "Κραντς… Κραντς…"
	done

TeacherText_NoCoinCase:
	text "Κάνεις δεν θα"
	line "σου δώσει ΘΗΚΗ"

	para "ΚΕΡΜΑΤΩΝ. Ψά-"
	line "ξε στο JOHTO."
	done

TeacherText_KeepEating:
	text "Κραντς… Κραντς…"

	para "Θα φάω κι άλλο!"
	done

TeacherText_MoreChef:
	text "Δώσε, ΣΕΦ!"
	done

EatathonContestPosterText:
	text "Μαραθώνιος για"
	line "Φαΐ! Χωρίς όρια!"

	para "Μάχη χωρίς"
	line "τέλος! Ο καλύτερος"

	para "φαγάνας τρώει"
	line "ότι θέλει δωρεάν!"
	done

FoundLeftoversText:
	text "<PLAYER> βρήκε"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

NoRoomForLeftoversText:
	text "Μα ο <PLAYER>"
	line "δεν έχει χώρο…"
	done

CeladonCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, CELADON_CITY, 9
	warp_event  7,  7, CELADON_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_READ, EatathonContestPoster
	bg_event  7,  1, BGEVENT_READ, CeladonCafeTrashcan

	def_object_events
	object_event  9,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCafeChef, -1
	object_event  4,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher1, -1
	object_event  1,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher2, -1
	object_event  1,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher3, -1
	object_event  4,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeTeacher, -1
