	object_const_def
	const LAVRADIOTOWER1F_RECEPTIONIST
	const LAVRADIOTOWER1F_OFFICER
	const LAVRADIOTOWER1F_SUPER_NERD1
	const LAVRADIOTOWER1F_GENTLEMAN
	const LAVRADIOTOWER1F_SUPER_NERD2

LavRadioTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

LavRadioTower1FReceptionistScript:
	jumptextfaceplayer LavRadioTower1FReceptionistText

LavRadioTower1FOfficerScript:
	jumptextfaceplayer LavRadioTower1FOfficerText

LavRadioTower1FSuperNerd1Script:
	jumptextfaceplayer LavRadioTower1FSuperNerd1Text

LavRadioTower1FGentlemanScript:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext LavRadioTower1FGentlemanText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext LavRadioTower1FGentlemanText_ReturnedMachinePart
	promptbutton
	getstring STRING_BUFFER_4, .expncardname
	scall .receiveitem
	setflag ENGINE_EXPN_CARD
.GotExpnCard:
	writetext LavRadioTower1FGentlemanText_GotExpnCard
	waitbutton
	closetext
	end

.receiveitem:
	jumpstd ReceiveItemScript
	end

.expncardname
	db "ΚΑΡΤΑ EXPN@"

LavRadioTower1FSuperNerd2Script:
	faceplayer
	opentext
	checkflag ENGINE_EXPN_CARD
	iftrue .GotExpnCard
	writetext LavRadioTower1FSuperNerd2Text
	waitbutton
	closetext
	end

.GotExpnCard:
	writetext LavRadioTower1FSuperNerd2Text_GotExpnCard
	waitbutton
	closetext
	end

LavRadioTower1FDirectory:
	jumptext LavRadioTower1FDirectoryText

LavRadioTower1FPokeFluteSign:
	jumptext LavRadioTower1FPokeFluteSignText

LavRadioTower1FReferenceLibrary: ; unreferenced
	jumptext LavRadioTower1FReferenceLibraryText

LavRadioTower1FReceptionistText:
	text "Καλώς ήρθατε!"
	line "Κοιτάξτε ελεύθερα"

	para "όπου θέλετε"
	line "στον όροφο."
	done

LavRadioTower1FOfficerText:
	text "Λυπάμαι, μα"
	line "είναι ελεύθερος"
	cont "αυτός ο όροφος."

	para "Από τότε που ο"
	line "ΠΥΡΓΟΣ ΡΑΔΙΟ"

	para "καταλήφθηκε από"
	line "βλαβερή συμμορία,"

	para "πρέπει να αυξή-"
	line "σουμε τη ασφάλεια."
	done

LavRadioTower1FSuperNerd1Text:
	text "Πολλά άτομα"
	line "δουλεύουν σκληρά"

	para "εδώ στον ΠΥΡΓΟ"
	line "ΡΑΔΙΟ."

	para "Πρέπει να κάνουν"
	line "το καλύτερο τους"
	cont "για ΟΚ εκπομπές."
	done

LavRadioTower1FGentlemanText:
	text "Ωχ, όχι, όχι!"

	para "Βγήκαμε εκτός"
	line "αέρα από τότε που"

	para "το ΕΡΓΟΣΤΑΣΙΟ"
	line "σταμάτησε."

	para "Όλοι μου οι κόποι"
	line "γι' αυτό το σταθμό"

	para "θα χάνονταν αν"
	line "δεν είχαμε σήμα"

	para "Θα ειχα καταστραφεί!"
	done

LavRadioTower1FGentlemanText_ReturnedMachinePart:
	text "Α! Είσαι ο"
	line "<PLAYER> που έλυσε"

	para "το πρόβλημα του"
	line "ΕΡΓΟΣΤΑΣΙΟΥ;"

	para "Χάρη σε εσένα, δεν"
	line "έχασα τη δουλειά."

	para "Σου λέω, είσαι"
	line "σωτήρας!"

	para "Πάρε αυτό"
	line "ως ευχαριστώ."
	done

LavRadioTower1FGentlemanText_GotExpnCard:
	text "Με αυτό, μπορείς"
	line "να συντονιστείς"

	para "στα προγράμματα"
	line "εδώ στο KANTO."

	para "Γαχαχαχαχα!"
	done

LavRadioTower1FSuperNerd2Text:
	text "Γεια σου, φίλε!"

	para "Είμαι ο σούπερ"
	line "ΔΙΕΥΘ. ΜΟΥΣΙΚΗΣ!"

	para "Ε; Το #GEAR"
	line "δεν βλέπει τα"

	para "προγράμματα."
	line "Πόσο ατυχές!"

	para "Αν πάρεις την"
	line "ΚΑΡΤΑ EXPN, θα"

	para "μπορείς. Καλύτερα"
	line "να πάρεις μια!"
	done

LavRadioTower1FSuperNerd2Text_GotExpnCard:
	text "Γεια σου, φίλε!"

	para "Είμαι ο σούπερ"
	line "ΔΙΕΥΘ. ΜΟΥΣΙΚΗΣ!"

	para "Είμαι υπεύθυνος"
	line "για τις όμορφες"

	para "μελωδίες που"
	line "είναι στον αέρα."

	para "Μην κανείς έτσι."
	line "Πάρε την μουσι-"
	cont "κή σου εκτός αέρα!"
	done

LavRadioTower1FDirectoryText:
	text "1ος ΠΑΓΚΟΣ"
	line "2ος ΠΩΛΗΣΕΙΣ"
	cont "3ος ΠΡΟΣΩΠΙΚΟ"
	cont "4ος ΠΑΡΑΓΩΓΗ"
	cont "5ος ΓΡΑΦΕΙΟ"
	cont "ΔΙΕΥΘΥΝΤΗ"
	done

LavRadioTower1FPokeFluteSignText:
	text "Ξυπνά #μον με"
	line "όμορφες μελωδίες"

	para "με ΠΟΚΕ ΦΛΑΟΥΤΟ"
	line "στο ΚΑΝΑΛΙ 20!"
	done

LavRadioTower1FReferenceLibraryText:
	text "Ουάου! Γεμάτο ράφι"
	line "με #μον CD και"
	cont "βίντεο."

	para "Πρέπει να είναι"
	line "η βιβλιοθήκη."
	done

LavRadioTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 7
	warp_event  3,  7, LAVENDER_TOWN, 7

	def_coord_events

	def_bg_events
	bg_event 11,  0, BGEVENT_READ, LavRadioTower1FDirectory
	bg_event  5,  0, BGEVENT_READ, LavRadioTower1FPokeFluteSign

	def_object_events
	object_event  6,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FReceptionistScript, -1
	object_event 15,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FOfficerScript, -1
	object_event  1,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FSuperNerd1Script, -1
	object_event  9,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FGentlemanScript, -1
	object_event 14,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavRadioTower1FSuperNerd2Script, -1
