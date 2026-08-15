	object_const_def
	const ROUTE8_BIKER1
	const ROUTE8_BIKER2
	const ROUTE8_BIKER3
	const ROUTE8_SUPER_NERD1
	const ROUTE8_SUPER_NERD2
	const ROUTE8_FRUIT_TREE

Route8_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBikerDwayne:
	trainer BIKER, DWAYNE, EVENT_BEAT_BIKER_DWAYNE, BikerDwayneSeenText, BikerDwayneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerDwayneAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerHarris:
	trainer BIKER, HARRIS, EVENT_BEAT_BIKER_HARRIS, BikerHarrisSeenText, BikerHarrisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerHarrisAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerZeke:
	trainer BIKER, ZEKE, EVENT_BEAT_BIKER_ZEKE, BikerZekeSeenText, BikerZekeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerZekeAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdSam:
	trainer SUPER_NERD, SAM, EVENT_BEAT_SUPER_NERD_SAM, SupernerdSamSeenText, SupernerdSamBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdSamAfterBattleText
	waitbutton
	closetext
	end

TrainerSupernerdTom:
	trainer SUPER_NERD, TOM, EVENT_BEAT_SUPER_NERD_TOM, SupernerdTomSeenText, SupernerdTomBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdTomAfterBattleText
	waitbutton
	closetext
	end

Route8LockedDoor:
	jumptext Route8LockedDoorText

Route8UndergroundPathSign:
	jumptext Route8UndergroundPathSignText

Route8FruitTree:
	fruittree FRUITTREE_ROUTE_8

BikerDwayneSeenText:
	text "Είμαστε η ομάδα"
	line "εκπ/των ΠΟΚΕΜΟΝ"
	cont "ΣΥΜΜΑΧΙΑΣ."

	para "Θα σε κάνουμε"
	line "να τρέχεις!"
	done

BikerDwayneBeatenText:
	text "Σ-Συγνώμη!"
	done

BikerDwayneAfterBattleText:
	text "Η ΣΥΜΜΑΧΙΑ"
	line "ΠΟΚΕΜΟΝ δεν"
	cont "θα χαθεί ποτέ!"
	done

BikerHarrisSeenText:
	text "Έκλεισαν"
	line "τον ΥΠΟΓΕΙΟ"

	para "ΔΡΟΜΟ! Αυτό"
	line "με νευριάζει!"
	done

BikerHarrisBeatenText:
	text "Σ-συγχώρεσε με!"
	done

BikerHarrisAfterBattleText:
	text "Νικήθηκα από έναν"
	line "αλήτη του JOHTO…"
	done

BikerZekeSeenText:
	text "Είμαστε η ομάδα"
	line "εκπ/των ΠΟΚΕΜΟΝ"
	cont "ΣΥΜΜΑΧΙΑΣ."
	cont "Εντάξει, φίλε!"
	done

BikerZekeBeatenText:
	text "Αμάν! Συγνώμη!"
	done

BikerZekeAfterBattleText:
	text "Δεν θα ενοχλήσουμε"
	line "κανέναν από"
	cont "εδώ και πέρα…"
	done

SupernerdSamSeenText:
	text "Πως λειτουργεί"
	line "το ΤΡΕΝΟ ΜΑΓΝΗΤΗΣ;"
	done

SupernerdSamBeatenText:
	text "Απλά θέλω να δω"
	line "το ΤΡΕΝΟ ΜΑΓΝΗΤΗ…"
	done

SupernerdSamAfterBattleText:
	text "Η δύναμη μαγνη-"
	line "τών είναι τέλεια!"
	done

SupernerdTomSeenText:
	text "Δεν γίνεται"
	line "χωρίς ηλεκτρισμό."

	para "Το ΕΡΓΟΣΤΑΣΙΟ"
	line "μας προμηθεύει"
	cont "με ηλεκτρισμό."
	done

SupernerdTomBeatenText:
	text "Μην σπαταλάς"
	line "ηλεκτρισμό!"
	done

SupernerdTomAfterBattleText:
	text "Στο ΕΡΓΟΣΤΑΣΙΟ στο"
	line "βορρά της LAVENDER"

	para "παρέχει δύναμη στο"
	line "ΤΡΕΝΟ ΜΑΓΝΗΤΗ."
	done

Route8LockedDoorText:
	text "Είναι κλειδωμένο…"
	done

Route8UndergroundPathSignText:
	text "Σκισμένη αφίσα."

	para "Αδύνατον"
	line "να διαβαστεί…"
	done

Route8_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  4, ROUTE_8_SAFFRON_GATE, 3
	warp_event  4,  5, ROUTE_8_SAFFRON_GATE, 4

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, Route8UndergroundPathSign
	bg_event 10,  5, BGEVENT_READ, Route8LockedDoor

	def_object_events
	object_event 10,  8, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 5, TrainerBikerDwayne, -1
	object_event 10,  9, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 5, TrainerBikerHarris, -1
	object_event 10, 10, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerBikerZeke, -1
	object_event 20,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSupernerdSam, -1
	object_event 27,  9, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerSupernerdTom, -1
	object_event 33,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route8FruitTree, -1
