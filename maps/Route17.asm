	object_const_def
	const ROUTE17_BIKER1
	const ROUTE17_BIKER2
	const ROUTE17_BIKER3
	const ROUTE17_BIKER4

Route17_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route17AlwaysOnBikeCallback

Route17AlwaysOnBikeCallback:
	setflag ENGINE_ALWAYS_ON_BIKE
	setflag ENGINE_DOWNHILL
	endcallback

TrainerBikerCharles:
	trainer BIKER, CHARLES, EVENT_BEAT_BIKER_CHARLES, BikerCharlesSeenText, BikerCharlesBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerCharlesAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerRiley:
	trainer BIKER, RILEY, EVENT_BEAT_BIKER_RILEY, BikerRileySeenText, BikerRileyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerRileyAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerJoel:
	trainer BIKER, JOEL, EVENT_BEAT_BIKER_JOEL, BikerJoelSeenText, BikerJoelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerJoelAfterBattleText
	waitbutton
	closetext
	end

TrainerBikerGlenn:
	trainer BIKER, GLENN, EVENT_BEAT_BIKER_GLENN, BikerGlennSeenText, BikerGlennBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BikerGlennAfterBattleText
	waitbutton
	closetext
	end

Route17HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_17_HIDDEN_MAX_ETHER

Route17HiddenMaxElixer:
	hiddenitem MAX_ELIXER, EVENT_ROUTE_17_HIDDEN_MAX_ELIXER

BikerRileySeenText:
	text "Έι, εσύ! Είσαι"
	line "από το JOHTO, ε;"
	done

BikerRileyBeatenText:
	text "Έχεις δύναμη!"
	done

BikerRileyAfterBattleText:
	text "Μην χαίρεσαι,"
	line "φρικιό του JOHTO!"
	done

BikerJoelSeenText:
	text "Ουάου. Ωραίο"
	line "ΔΙΚΥΚΛΟ!"
	done

BikerJoelBeatenText:
	text "Μα δείχνεις"
	line "πολύ κουλ…"
	done

BikerJoelAfterBattleText:
	text "Το ίδιο & εγώ, μα"
	line "είμαι αδύναμος,"
	cont "άρα όχι & τόσο."

	para "Θα προπονηθώ"
	line "πιο πολύ…"
	done

BikerGlennSeenText:
	text "Έι! Θες μια"
	line "γρήγορη μάχη;"
	done

BikerGlennBeatenText:
	text "Ωχ! Κάνεις"
	line "ωραία στροφή!"
	done

BikerGlennAfterBattleText:
	text "Πετάλι χωρίς χέρια"
	line "θεωρείται κουλ στο"
	cont "ΔΡΟΜΟ ΔΙΚΥΚΛΩΝ."
	done

BikerCharlesSeenText:
	text "Είμαστε ατρόμητα"
	line "αστέρια δρόμων!"
	done

BikerCharlesBeatenText:
	text "Αρργκ!"
	line "Τράκαρα!"
	done

BikerCharlesAfterBattleText:
	text "Απρόσεκτη οδή-"
	line "γηση προκαλεί"
	cont "πολλά ατυχήματα!"
	done

Route17_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 82, ROUTE_17_ROUTE_18_GATE, 1
	warp_event 17, 83, ROUTE_17_ROUTE_18_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 12,  5, BGEVENT_ITEM, Route17HiddenMaxEther
	bg_event  8, 77, BGEVENT_ITEM, Route17HiddenMaxElixer

	def_object_events
	object_event  4, 17, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerRiley, -1
	object_event 16, 32, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerJoel, -1
	object_event  3, 53, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBikerGlenn, -1
	object_event  6, 80, SPRITE_BIKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerBikerCharles, -1
