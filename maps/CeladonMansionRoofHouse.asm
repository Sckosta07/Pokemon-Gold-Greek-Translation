	object_const_def
	const CELADONMANSIONROOFHOUSE_PHARMACIST

CeladonMansionRoofHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonMansionRoofHousePharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM03_CURSE
	iftrue .GotCurse
	writetext CeladonMansionRoofHousePharmacistIntroText
	promptbutton
	checktime NITE
	iftrue .Night
	writetext CeladonMansionRoofHousePharmacistNotNightText
	waitbutton
	closetext
	end

.Night:
	writetext CeladonMansionRoofHousePharmacistStoryText
	promptbutton
	verbosegiveitem TM_CURSE
	iffalse .NoRoom
	setevent EVENT_GOT_TM03_CURSE
.GotCurse:
	writetext CeladonMansionRoofHousePharmacistCurseText
	waitbutton
.NoRoom:
	closetext
	end

CeladonMansionRoofHousePharmacistIntroText:
	text "Θα σου πω μια"
	line "τρομερή ιστορία…"
	done

CeladonMansionRoofHousePharmacistNotNightText:
	text "Πάντως, δεν"
	line "είναι τρομακτικά"

	para "όσο έχει φως"
	line "εκεί έξω."

	para "Έλα πίσω στο"
	line "ηλιοβασίλεμα, OK;"
	done

CeladonMansionRoofHousePharmacistStoryText:
	text "Μια φορά και ένα"
	line "καιρό, ήταν ένα"

	para "αγοράκι που πήρε"
	line "ένα νέο ΔΙΚΥΚΛΟ…"

	para "Ήθελε να κάνει"
	line "πετάλι αμέσως…"

	para "Πέρναγε τόσο"
	line "καλά που δεν"

	para "πρόσεξε το"
	line "ηλιοβασίλεμα…"

	para "Καθώς πήγαινε"
	line "σπίτι στο σκοτάδι,"

	para "το ποδήλατο"
	line "ξαφνικά ήταν αργό!"

	para "Το πετάλι"
	line "έγινε βαρύ!"

	para "Όταν σταμάτησε"
	line "εντελώς, αυτό"

	para "άρχισε να"
	line "κάνει ανάποδα!"

	para "Ήταν σαν να"
	line "είχε δική του"

	para "θέληση και τον"
	line "τράβαγε πίσω!"

	para "…"

	para "…"

	para "ΣΡΙΙΕΕΕΕΚ!"

	para "Το αγόρι πήγαινε"
	line "ανάποδα στον"
	cont "ΔΡΟΜΟ ΔΙΚΥΚΛΩΝ!"

	para "…"
	line "Βα-δαμ βαδαμ!"

	para "Επειδή άκουσες"
	line "υπομονετικά,"
	cont "πάρε αυτό--TM03!"
	done

CeladonMansionRoofHousePharmacistCurseText:
	text "TM03 έχει ΚΑΤΑΡΑ."

	para "Είναι τρομερή"
	line "κίνηση που αργά"

	para "μειώνει το HP"
	line "του αντιπάλου."
	done

CeladonMansionRoofHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_MANSION_ROOF, 3
	warp_event  3,  7, CELADON_MANSION_ROOF, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHousePharmacistScript, -1
