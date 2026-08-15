	object_const_def
	const LAKEOFRAGEMAGIKARPHOUSE_FISHING_GURU

LakeOfRageMagikarpHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MagikarpLengthRaterScript:
	faceplayer
	opentext
	checkevent EVENT_LAKE_OF_RAGE_ETHER_ON_STANDBY
	iftrue .GetReward
	checkevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	iftrue .AskedForMagikarp
	checkevent EVENT_CLEARED_ROCKET_HIDEOUT
	iftrue .ClearedRocketHideout
	checkevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	iftrue .ExplainedHistory
	writetext MagikarpLengthRaterText_LakeOfRageHistory
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_EXPLAINED_WEIRD_MAGIKARP
	end

.ExplainedHistory:
	writetext MagikarpLengthRaterText_MenInBlack
	waitbutton
	closetext
	end

.ClearedRocketHideout:
	writetext MagikarpLengthRaterText_WorldsLargestMagikarp
	waitbutton
	closetext
	setevent EVENT_LAKE_OF_RAGE_ASKED_FOR_MAGIKARP
	end

.AskedForMagikarp:
	setval MAGIKARP
	special FindPartyMonThatSpecies
	iffalse .ClearedRocketHideout
	writetext MagikarpLengthRaterText_YouHaveAMagikarp
	waitbutton
	special CheckMagikarpLength
	ifequal MAGIKARPLENGTH_NOT_MAGIKARP, .NotMagikarp
	ifequal MAGIKARPLENGTH_REFUSED, .Refused
	ifequal MAGIKARPLENGTH_TOO_SHORT, .TooShort
	; MAGIKARPLENGTH_BEAT_RECORD
	sjump .GetReward

.GetReward:
	writetext MagikarpLengthRaterText_Memento
	promptbutton
	verbosegiveitem ETHER
	iffalse .NoRoom
	writetext MagikarpLengthRaterText_Bonus
	waitbutton
	closetext
	clearevent EVENT_LAKE_OF_RAGE_ETHER_ON_STANDBY
	end

.NoRoom:
	closetext
	setevent EVENT_LAKE_OF_RAGE_ETHER_ON_STANDBY
	end

.TooShort:
	writetext MagikarpLengthRaterText_TooShort
	waitbutton
	closetext
	end

.NotMagikarp:
	writetext MagikarpLengthRaterText_NotMagikarp
	waitbutton
	closetext
	end

.Refused:
	writetext MagikarpLengthRaterText_Refused
	waitbutton
	closetext
	end

LakeOfRageMagikarpHouseUnusedRecordSign: ; unreferenced
	jumptext LakeOfRageMagikarpHouseUnusedRecordText

MagikarpHouseBookshelf:
	jumpstd DifficultBookshelfScript

MagikarpLengthRaterText_LakeOfRageHistory:
	text "Η ΛΙΜΝΗ ΟΡΓΗΣ"
	line "είναι βασικά κρα-"

	para "τήρας απο μανία"
	line "των GYARADOS."

	para "Ο κρατήρας γέμησε"
	line "με νερό βροχής"

	para "και η ΛΙΜΝΗ"
	line "σχηματίστηκε."

	para "Αυτή η ιστορία"
	line "πέρασε από τον"

	para "παππού του"
	line "παππού μου."

	para "Συνήθως εδώ"
	line "μπορείς να βρεις"

	para "ζωντανά MAGIKARP"
	line "στη ΛΙΜΝΗ, μα…"

	para "Δεν καταλαβαίνω"
	line "τι γίνεται."
	done

MagikarpLengthRaterText_MenInBlack:
	text "Η ΛΙΜΝΗ δεν"
	line "είναι ήρεμη από"

	para "τότε που οι μαυρο-"
	line "φορεμένοι ήρθαν."
	done

MagikarpLengthRaterText_WorldsLargestMagikarp:
	text "Η ΛΙΜΝΗ ΟΡΓΗΣ"
	line "ηρέμησε ξανά."

	para "Τα MAGIKARP"
	line "επέστρεψαν."

	para "Κατάλαβα το"
	line "όνειρο μου να"
	cont "δω το μεγαλύτερο"
	cont "MAGIKARP."

	para "Έχεις ΚΑΛΑΜΙ;"
	line "Παρακαλώ βοήθησε"
	cont "αν θες."
	done

MagikarpLengthRaterText_YouHaveAMagikarp:
	text "A, έχεις ένα"
	line "MAGIKARP! Ας"

	para "δούμε πόσο"
	line "μεγάλο είναι."
	done

MagikarpLengthRaterText_Memento:
	text "Ουάου! Αυτό"
	line "είναι εξαιρετικό!"

	para "Σου βγάζω"
	line "το καπέλο!"

	para "Πάρε αυτό"
	line "ως γεγονός!"
	done

MagikarpLengthRaterText_Bonus:
	text "Το ιστορικό"
	line "είναι απαραίτητο."

	para "Σκέψου το ως"
	line "ένα μπόνους!"
	done

MagikarpLengthRaterText_TooShort:
	text "Ουάου! Αυτό"
	line "είναι εξαιρετικό!"

	para "…Εύχομαι να το"
	line "έλεγα αυτό, μα"

	para "έχω δει και"
	line "μεγαλύτερα."
	done

MagikarpLengthRaterText_NotMagikarp:
	text "Τι; Αυτό δεν"
	line "είναι MAGIKARP!"
	done

MagikarpLengthRaterText_Refused:
	text "Ω… Ώστε"
	line "έφερες ένα"

	para "καλό για εμένα;"
	line "Την επόμενη φορά."
	done

LakeOfRageMagikarpHouseUnusedRecordText:
	text "ΤΡΕΧΩΝ ΙΣΤΟΡΙΚΟ"

	para "@"
	text_ram wStringBuffer3
	text " πιάστηκε"
	line "@"
	text_ram wStringBuffer4
	text_end

LakeOfRageMagikarpHouseUnusedDummyText: ; unreferenced
	text_end

LakeOfRageMagikarpHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAKE_OF_RAGE, 2
	warp_event  3,  7, LAKE_OF_RAGE, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MagikarpHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MagikarpHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MagikarpLengthRaterScript, -1
