	object_const_def
	const BILLSFAMILYSHOUSE_BILL
	const BILLSFAMILYSHOUSE_POKEFAN_F
	const BILLSFAMILYSHOUSE_TWIN

BillsFamilysHouse_MapScripts:
	def_scene_scripts

	def_callbacks

BillScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EEVEE
	iftrue .GotEevee
	writetext BillTakeThisEeveeText
	yesorno
	iffalse .Refused
	writetext BillImCountingOnYouText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	writetext ReceivedEeveeText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke EEVEE, 20
	setevent EVENT_GOT_EEVEE
	writetext BillEeveeMayEvolveText
	waitbutton
	closetext
	end

.NoRoom:
	writetext BillPartyFullText
	waitbutton
	closetext
	end

.Refused:
	writetext BillNoEeveeText
	waitbutton
	closetext
	end

.GotEevee:
	writetext BillPopWontWorkText
	waitbutton
	closetext
	end

BillsMomScript:
	faceplayer
	opentext
	checkevent EVENT_MET_BILL
	iffalse .HaventMetBill
	writetext BillsMomText_BeforeEcruteak
	waitbutton
	closetext
	end

.HaventMetBill:
	writetext BillsMomText_AfterEcruteak
	waitbutton
	closetext
	end

BillsYoungerSisterScript:
	faceplayer
	opentext
	checkcellnum PHONE_BILL
	iftrue .GotBillsNumber
	writetext BillsYoungerSisterUsefulNumberText
	askforphonenumber PHONE_BILL
	ifequal PHONE_CONTACTS_FULL, .NoRoom
	ifequal PHONE_CONTACT_REFUSED, .Refused
	waitsfx
	addcellnum PHONE_BILL
	writetext RecordedBillsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
.GotBillsNumber:
	writetext BillsYoungerSisterStorageSystemText
	waitbutton
	closetext
	end

.Refused:
	writetext BillsYoungerSisterRefusedNumberText
	waitbutton
	closetext
	end

.NoRoom:
	writetext BillsYoungerSisterPhoneFullText
	promptbutton
	sjump .Refused

BillsHouseBookshelf1:
	jumpstd PictureBookshelfScript

BillsHouseBookshelf2:
	jumpstd MagazineBookshelfScript

BillsHouseRadio:
	jumpstd Radio2Script

BillTakeThisEeveeText:
	text "BILL: Γεια, <PLAYER>!"
	line "Κάνε μας την χάρη"
	cont "και πάρε το EEVEE."

	para "Ήρθε οταν έκανα"
	line "ρυθμίσεις στην"
	cont "ΧΡΟΝΟΚΑΨΟΥΛΑ."

	para "Κάποιος πρέπει να"
	line "το φροντίζει,"

	para "μα δεν μ'αρέσει"
	line "να είμαι έξω."

	para "Να βασιστώ σε"
	line "εσένα να παίζεις"
	cont "μαζι του <PLAYER>;"
	done

BillImCountingOnYouText:
	text "BILL: Το ήξερα!"
	line "Έτσι μπράβο, ήρωα"

	para "Είσαι το κάτι"
	line "άλλο, φίλε!"

	para "OK, βασίζομαι"
	line "πάνω σου."
	cont "Πρόσεχε το."
	done

ReceivedEeveeText:
	text "<PLAYER> πήρε"
	line "EEVEE!"
	done

BillEeveeMayEvolveText:
	text "BILL: Ο ΚΑΘ.ELM"
	line "λέει πως τα EEVEE"

	para "εξελίσσονται με"
	line "άγνωστους λόγους."
	done

BillPartyFullText:
	text "Όπα, στάσου."
	line "Δεν έχεις χώρο"
	cont "για #μον."
	done

BillNoEeveeText:
	text "Ω… Τώρα τι"
	line "να κάνω;"
	done

BillPopWontWorkText:
	text "BILL: Πειραμα-"
	line "τιζόμουν με τον"
	cont "ΤΗΛΕΜΕΤΑΦΟΡΕΑ."

	para "Πρέπει να"
	line "ακολουθήσω."
	done

BillsMomText_BeforeEcruteak:
	text "Ω, συλλέγεις"
	line "#μον; Ο γιός"
	cont "μου είναι ειδικός."

	para "Έπρεπε να φύγει"
	line "για το ΚΕΝΤΡΟ"

	para "ΠΟΚΕΜΟΝ στην"
	line "ΠΟΛΗ ECRUTEAK."
	done

BillsMomText_AfterEcruteak:
	text "Χαίρομαι που"
	line "βλέπω τον γιο μου."
	done

BillsYoungerSisterUsefulNumberText:
	text "Είσαι εκπ/της;"

	para "Έχω ένα χρήσιμο"
	line "αριθμό για"
	cont "εσενα, αν θέλεις."
	done

RecordedBillsNumberText:
	text "<PLAYER> πήρε"
	line "αριθμό του BILL."
	done

BillsYoungerSisterRefusedNumberText:
	text "Ο αδελφός μου"
	line "έφτιαξε τον απο-"
	cont "θηκευτικό χώρο."

	para "Θα σου έδινα"
	line "τον αριθμό του"
	cont "BILL…"
	done

BillsYoungerSisterPhoneFullText:
	text "Δεν έχεις άλλο"
	line "χώρο γι'αριθμούς."
	done

BillsYoungerSisterStorageSystemText:
	text "Ο μεγάλος αδελφός"
	line "μου, ο BILL έκανε"

	para "τον αποθηκευτικό"
	line "χώρο στο PC."
	done

BillsFamilysHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 4
	warp_event  3,  7, GOLDENROD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, BillsHouseBookshelf2
	bg_event  1,  1, BGEVENT_READ, BillsHouseBookshelf1
	bg_event  7,  1, BGEVENT_READ, BillsHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillScript, EVENT_MET_BILL
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsMomScript, -1
	object_event  5,  4, SPRITE_TWIN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsYoungerSisterScript, -1
