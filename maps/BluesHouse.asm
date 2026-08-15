	object_const_def
	const BLUESHOUSE_DAISY

BluesHouse_MapScripts:
	def_scene_scripts

	def_callbacks

DaisyScript:
	faceplayer
	opentext
	readvar VAR_HOUR
	ifequal 15, .ThreePM
	writetext DaisyHelloText
	waitbutton
	closetext
	end

.ThreePM:
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGroomedMon
	writetext DaisyOfferGroomingText
	yesorno
	iffalse .Refused
	writetext DaisyWhichMonText
	waitbutton
	special DaisysGrooming
	ifequal $0, .Refused
	ifequal $1, .CantGroomEgg
	setflag ENGINE_DAISYS_GROOMING
	writetext DaisyAlrightText
	waitbutton
	closetext
	special FadeOutToWhite
	playmusic MUSIC_HEAL
	pause 60
	special FadeInFromWhite
	special RestartMapMusic
	opentext
	writetext GroomedMonLooksContentText
	special PlayCurMonCry
	promptbutton
	writetext DaisyAllDoneText
	waitbutton
	closetext
	end

.AlreadyGroomedMon:
	writetext DaisyAlreadyGroomedText
	waitbutton
	closetext
	end

.Refused:
	writetext DaisyRefusedText
	waitbutton
	closetext
	end

.CantGroomEgg:
	writetext DaisyCantGroomEggText
	waitbutton
	closetext
	end

DaisyHelloText:
	text "DAISY: Γεια! Ο"
	line "αδελφός μου είναι"

	para "ο ΗΓΕΤΗΣ της"
	line "ΠΟΛΗΣ VIRIDIAN."

	para "Όμως φεύγει από"
	line "την πόλη συχνά,"

	para "και προκαλεί θέμα-"
	line "τα στους εκπ/τες."
	done

DaisyOfferGroomingText:
	text "DAISY: Γεια! Ήρθες"
	line "στην ώρα. Θα"
	cont "έπινα τσάι."

	para "Θα μου κάνεις"
	line "παρέα;"

	para "Ω, το #μον"
	line "σου είναι βρόμικο."

	para "Θέλεις να"
	line "στο καθαρίσω;"
	done

DaisyWhichMonText:
	text "DAISY: Ποιό"
	line "να καθαρίσω;"
	done

DaisyAlrightText:
	text "DAISY: OK, θα"
	line "δείχνει ωραίο σε"
	cont "χρόνο μηδέν."
	done

GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text " φαίνεται"
	line "χαρούμενο."
	done

DaisyAllDoneText:
	text "DAISY: Ορίστε!"
	line "Έτοιμο!"

	para "Βλέπεις; Δεν"
	line "είναι όμορφο;"

	para "Τι γλυκούλι"
	line "#μον."
	done

DaisyAlreadyGroomedText:
	text "DAISY: Πάντα"
	line "πίνω τσάι αυτή"

	para "την ώρα. Κάνε"
	line "μου παρέα."
	done

DaisyRefusedText:
	text "DAISY: Δεν θες"
	line "να στο καθαρίσω;"

	para "OK, απλως θα"
	line "πιούμε τσάι."
	done

DaisyCantGroomEggText:
	text "DAISY: Λυπάμαι."
	line "Δεν καθαριζω"
	cont "και ΑΥΓΑ."
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DaisyScript, -1
