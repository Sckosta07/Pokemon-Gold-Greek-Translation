	object_const_def
	const COPYCATSHOUSE2F_COPYCAT
	const COPYCATSHOUSE2F_DODRIO
	const COPYCATSHOUSE2F_FAIRYDOLL ; lost item
	const COPYCATSHOUSE2F_MONSTERDOLL
	const COPYCATSHOUSE2F_BIRDDOLL

CopycatsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks

Copycat:
	faceplayer
	checkevent EVENT_GOT_PASS_FROM_COPYCAT
	iftrue .GotPass
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue .TryGivePassAgain
	checkitem LOST_ITEM
	iftrue .ReturnLostItem
	applymovement COPYCATSHOUSE2F_COPYCAT, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_CHRIS
	special LoadUsedSpritesGFX
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .TalkAboutLostItem
	opentext
	writetext CopycatText_Male_1
	waitbutton
	closetext
	applymovement COPYCATSHOUSE2F_COPYCAT, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_QuickMimicking
	waitbutton
	closetext
	end

.TalkAboutLostItem:
	opentext
	writetext CopycatText_Male_2
	waitbutton
	closetext
	applymovement COPYCATSHOUSE2F_COPYCAT, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_Worried
	waitbutton
	closetext
	setevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	end

.ReturnLostItem:
	opentext
	writetext CopycatText_GiveDoll
	promptbutton
	takeitem LOST_ITEM
	setevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	clearevent EVENT_COPYCATS_HOUSE_2F_DOLL
	sjump .GivePass

.TryGivePassAgain:
	opentext
.GivePass:
	writetext CopycatText_GivePass
	promptbutton
	verbosegiveitem PASS
	iffalse .Cancel
	setevent EVENT_GOT_PASS_FROM_COPYCAT
	writetext CopycatText_ExplainPass
	waitbutton
	closetext
	end

.GotPass:
	applymovement COPYCATSHOUSE2F_COPYCAT, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_CHRIS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_Male_3
	waitbutton
	closetext
	applymovement COPYCATSHOUSE2F_COPYCAT, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_ItsAScream
	waitbutton
.Cancel:
	closetext
	end

CopycatsDodrio:
	opentext
	writetext CopycatsDodrioText1
	cry DODRIO
	promptbutton
	writetext CopycatsDodrioText2
	waitbutton
	closetext
	end

CopycatsHouse2FDoll:
	jumptext CopycatsHouse2FDollText

CopycatsHouse2FBookshelf:
	jumpstd PictureBookshelfScript

CopycatSpinAroundMovementData:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

CopycatText_Male_1:
	text "<PLAYER>: Γεια! Σου"
	line "αρεσουν τα #μον;"

	para "<PLAYER>: Ωχ, όχι,"
	line "μόλις σε ρώτησα."

	para "<PLAYER>: Ε;"
	line "Παράξενο!"
	done

CopycatText_QuickMimicking:
	text "ΜΙΜΗΤΡΙΑ: Χμ;"
	line "Να σταματήσω;"

	para "Μα αυτό είναι το"
	line "καλο μου χομπι!"
	done

CopycatText_Male_2:
	text "<PLAYER>: Γεια!"
	line "Άκουσα πως"

	para "έχασες την"
	line "ΠΟΚΕ ΚΟΥΚΛΑ."

	para "<PLAYER>: Αν στη"
	line "βρω, θα μου δώσεις"
	cont "το ΠΑΣΟ τρένου;"

	para "<PLAYER>: Θα πάω"
	line "να στο βρω."

	para "Μάλλον το έχασες"
	line "όταν πηγές στην"
	cont "ΠΟΛΗ VERMILION;"
	done

CopycatText_Worried:
	text "ΜΙΜΗΤΡΙΑ: PARDON;"

	para "Να μην αποφα-"
	line "σίζω τι θα"
	cont "κάνεις;"

	para "Μα ανησυχώ"
	line "πολύ… Τι και αν"
	cont "κάποιος τη βρει;"
	done

CopycatText_GiveDoll:
	text "ΜΙΜΗΤΡΙΑ: Γιούπι!"
	line "Είναι η CLEFAIRY"
	cont "ΠΟΚΕ ΚΟΥΚΛΑ μου!"

	para "Βλέπεις το δάκρυ"
	line "στο δεξί πόδι"

	para "ραμμένο; Είναι"
	line "απόδειξη!"
	done

CopycatText_GivePass:
	text "OK. Ορίστε το"
	line "ΠΑΣΟ του ΤΡΕΝΟΥ"
	cont "όπως υποσχέθηκα!"
	done

CopycatText_ExplainPass:
	text "ΜΙΜΗΤΡΙΑ: Είναι"
	line "το ΠΑΣΟ για το"
	cont "ΤΡΕΝΟ ΜΑΓΝΗΤΗ."

	para "Ο τύπος της"
	line "εταιρίας το έδωσε"

	para "όταν διέλυσαν το"
	line "παλιό σπίτι για"
	cont "τον ΣΤΑΘΜΟ."
	done

CopycatText_Male_3:
	text "<PLAYER>: Γεια!"
	line "Ευχαριστώ πολύ"
	cont "για το ΠΑΣΟ!"

	para "<PLAYER>: PARDON;"

	para "<PLAYER>: Έχει"
	line "πλάκα να μιμήσαι"
	cont "κάθε κίνηση;"
	done

CopycatText_ItsAScream:
	text "ΜΙΜΗΤΡΙΑ: Σίγουρα!"
	line "Είναι τέλειο!"
	done

CopycatsDodrioText1:
	text "DODRIO: Γιι γιιι!"
	done

CopycatsDodrioText2:
	text "ΚΑΘΡΕΥΤΗ, ΚΑΘΡΕΥ-"
	line "ΤΑΚΙ ΜΟΥ, ΠΟΙΟ"

	para "ΕΙΝΑΙ ΤΟ ΠΙΟ"
	line "ΟΜΟΡΦΟ ΠΑΝΤΟΥ;"
	done

CopycatsHouse2FDollText:
	text "Είναι ένα σπάνιο"
	line "#μον! Ε;"

	para "Είναι κουκλάκι…"
	done

CopycatsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, COPYCATS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CopycatsHouse2FBookshelf
	bg_event  1,  1, BGEVENT_READ, CopycatsHouse2FBookshelf

	def_object_events
	object_event  4,  3, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Copycat, -1
	object_event  6,  4, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CopycatsDodrio, -1
	object_event  6,  1, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, EVENT_COPYCATS_HOUSE_2F_DOLL
	object_event  2,  1, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
	object_event  7,  1, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
