	object_const_def
	const ECRUTEAKITEMFINDERHOUSE_COOLTRAINER_M
	const ECRUTEAKITEMFINDERHOUSE_POKEDEX

EcruteakItemfinderHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakItemfinderGuy:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .itemfinder
	writetext EcruteakItemfinderAdventureText
	yesorno
	iffalse .no
	writetext EcruteakItemfinderTrueSpiritText
	promptbutton
	verbosegiveitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
.itemfinder:
	writetext ItemfinderExplanationText
	waitbutton
	closetext
	end

.no:
	writetext EcruteakItemfinderToEachHisOwnText
	waitbutton
	closetext
	end

EcruteakHistoryBook:
	opentext
	writetext EcruteakHistoryBookText
	yesorno
	iftrue .ReadBook
	closetext
	end

.ReadBook:
	writetext EcruteakTwoTowersText
	yesorno
	iftrue .KeepReading
	closetext
	end

.KeepReading:
	writetext EcruteakThreeMonText
	waitbutton
	closetext
	end

ItemFinderHouseRadio:
	jumpstd Radio2Script

EcruteakItemfinderAdventureText:
	text "Α. Ζεις μια"
	line "περιπέτεια με"
	cont "τα #μον σου;"

	para "Άρα, τι είναι"
	line "περιπέτεια χωρίς"
	cont "κυνήγι θησαυρού;"

	para "Έχω δίκιο, ή"
	line "έχω δίκιο;"
	done

EcruteakItemfinderTrueSpiritText:
	text "Ωραία! Καταλα-"
	line "βαίνεις το αληθινό"

	para "πνεύμα της"
	line "περιπέτειας."

	para "Μ'αρέσει αυτό!"
	line "Πάρε αυτό."
	done

ItemfinderExplanationText:
	text "Υπάρχουν πολλά"
	line "πράγματα που"

	para "που είναι"
	line "προφανές."

	para "Βαλε ΑΝΙΧΝΕΥΤΗ"
	line "και Τσέκαρε αν"

	para "υπάρχει πράγμα"
	line "κοντά ή γύρω σου."

	para "Αν δεν δείξει"
	line "ακριβώς το σημείο,"

	para "θα πρέπει να"
	line "κοιτάξεις μόνος."

	para "Ω ναι--άκουσα"
	line "υπάρχουν κάποια"

	para "στον ΚΑΜΕΝΟ"
	line "ΠΥΡΓΟ."
	done

EcruteakItemfinderToEachHisOwnText:
	text "Ω… Ο καθένας στην"
	line "ειδικότητα του…"
	done

EcruteakHistoryBookText:
	text "ΙΣΤΟΡΙΑ ΤΗΣ"
	line "ECRUTEAK"

	para "Θες να διαβάσεις;"
	done

EcruteakTwoTowersText:
	text "Στην ECRUTEAK,"
	line "ήταν δύο πύργοι."

	para "Κάθε πύργος ήταν"
	line "φωλιά για δυνατά"
	cont "υπτάμενα #μον."

	para "Μα ο ενας κάηκε"
	line "ολοκληρωτικά"
	cont "κάποτε."

	para "Τα δύο #μον"
	line "έχουν να βρεθούν"
	cont "από τότε…"

	para "Συνέχισε;"
	done

EcruteakThreeMonText:
	text "Η ECRUTEAK ήταν"
	line "επίσης σπίτι 3"

	para "#μον που έκαναν"
	line "το γύρο της πόλης."

	para "Έλεγαν πως είχαν"
	line "γεννηθεί από νερό,"

	para "κεραυνό και"
	line "φωτιά."

	para "Μα δεν συγκρα-"
	line "τούσαν την αύθο-"
	cont "νη δύναμη τους."

	para "Έτσι λένε πως"
	line "και τα 3 έτρεξαν"

	para "σαν τον άνεμο"
	line "στα γρασίδια."
	done

EcruteakItemfinderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 11
	warp_event  4,  7, ECRUTEAK_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ItemFinderHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EcruteakItemfinderGuy, -1
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook, -1
