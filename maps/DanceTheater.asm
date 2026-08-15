	object_const_def
	const DANCETHEATER_KIMONO_GIRL1
	const DANCETHEATER_KIMONO_GIRL2
	const DANCETHEATER_KIMONO_GIRL3
	const DANCETHEATER_KIMONO_GIRL4
	const DANCETHEATER_KIMONO_GIRL5
	const DANCETHEATER_GENTLEMAN
	const DANCETHEATER_RHYDON
	const DANCETHEATER_COOLTRAINER_M
	const DANCETHEATER_GRANNY

DanceTheater_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerKimonoGirlNaoko:
	trainer KIMONO_GIRL, NAOKO, EVENT_BEAT_KIMONO_GIRL_NAOKO, KimonoGirlNaokoSeenText, KimonoGirlNaokoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlNaokoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlSayo:
	trainer KIMONO_GIRL, SAYO, EVENT_BEAT_KIMONO_GIRL_SAYO, KimonoGirlSayoSeenText, KimonoGirlSayoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlSayoAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlZuki:
	trainer KIMONO_GIRL, ZUKI, EVENT_BEAT_KIMONO_GIRL_ZUKI, KimonoGirlZukiSeenText, KimonoGirlZukiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlZukiAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlKuni:
	trainer KIMONO_GIRL, KUNI, EVENT_BEAT_KIMONO_GIRL_KUNI, KimonoGirlKuniSeenText, KimonoGirlKuniBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlKuniAfterBattleText
	waitbutton
	closetext
	end

TrainerKimonoGirlMiki:
	trainer KIMONO_GIRL, MIKI, EVENT_BEAT_KIMONO_GIRL_MIKI, KimonoGirlMikiSeenText, KimonoGirlMikiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlMikiAfterBattleText
	waitbutton
	closetext
	end

DanceTheaterSurfGuy:
	faceplayer
	opentext
	writetext SurfGuyNeverLeftAScratchText
	promptbutton
	checkevent EVENT_GOT_HM03_SURF
	iftrue SurfGuyAlreadyGaveSurf
	checkevent EVENT_BEAT_KIMONO_GIRL_NAOKO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_SAYO
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_ZUKI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_KUNI
	iffalse .KimonoGirlsUndefeated
	checkevent EVENT_BEAT_KIMONO_GIRL_MIKI
	iffalse .KimonoGirlsUndefeated
	sjump .GetSurf

.KimonoGirlsUndefeated:
	writetext SurfGuyLadGiftText
	waitbutton
	closetext
	end

.GetSurf:
	writetext SurfGuyLikeADanceText
	promptbutton
	verbosegiveitem HM_SURF
	setevent EVENT_GOT_HM03_SURF
	writetext SurfGuySurfExplanationText
	waitbutton
	closetext
	end

SurfGuyAlreadyGaveSurf:
	writetext SurfGuyElegantKimonoGirlsText
	waitbutton
	closetext
	end

DanceTheaterRhydon:
	opentext
	writetext RhydonText
	cry RHYDON
	waitbutton
	closetext
	end

DanceTheaterCooltrainerMScript:
	jumptextfaceplayer DanceTheaterCooltrainerMText

DanceTheaterGrannyScript:
	jumptextfaceplayer DanceTheaterGrannyText

DanceTheaterFancyPanel:
	jumptext DanceTheaterFancyPanelText

KimonoGirlNaokoSeenText:
	text "Έχεις όμορφα"
	line "#μον. Να τα"
	cont "δω στη μάχη;"
	done

KimonoGirlNaokoBeatenText:
	text "Ω, είσαι"
	line "πολύ δυνατός."
	done

KimonoGirlNaokoAfterBattleText:
	text "Το απόλαυσα."
	line "Θα ήθελα να"
	cont "σε ξανά δω."
	done

KimonoGirlSayoSeenText:
	text "Πάντα χορεύω"
	line "με #μον."

	para "Φυσικά, επίσης"
	line "τα προπονώ."

KimonoGirlSayoBeatenText:
	text "Ω, παραλίγο!"
	line "Σχεδόν νίκησα."
	done

KimonoGirlSayoAfterBattleText:
	text "Ο ρυθμός έχει"
	line "σημασία και στο"

	para "χορό και στα"
	line "#μον."
	done

KimonoGirlZukiSeenText:
	text "Δεν έχω"
	line "ομορφο φιόγκο;"

	para "Ω. #μον"
	line "μάχη;"
	done

KimonoGirlZukiBeatenText:
	text "Ξέμεινα από"
	line "#μον…"
	done

KimonoGirlZukiAfterBattleText:
	text "Βάζω διαφορετικά"
	line "λουλουδια στο"
	cont "φιόγκο κάθε μήνα."
	done

KimonoGirlKuniSeenText:
	text "Ω, τι ωραίος"
	line "εκπ/της. Θες"
	cont "μια μάχη;"
	done

KimonoGirlKuniBeatenText:
	text "Είσαι πιο δυ-"
	line "νατός από κοντά."
	done

KimonoGirlKuniAfterBattleText:
	text "Προπονήθηκα πολύ,"
	line "έτσι σκέφτηκα πως"

	para "ήμουν ικανή."
	line "Υποθέτω πως όχι."
	done

KimonoGirlMikiSeenText:
	text "Σου αρέσει ο"
	line "χορός μου; Είμαι"
	cont "καλή στα #μον."
	done

KimonoGirlMikiBeatenText:
	text "Ουχ, είσαι"
	line "και εσύ καλός."
	done

KimonoGirlMikiAfterBattleText:
	text "Χορεύω επειδή"
	line "αρέσει στον"

	para "κόσμο αυτό"
	line "που κάνω."

	para "Τα #MON μου"
	line "με βοηθάνε."
	done

SurfGuyNeverLeftAScratchText:
	text "Οι ΓΚΕΪΣΕΣ"
	line "είναι καλές"

	para "χορεύτριες, αλλά"
	line "και έμπειρες"
	cont "στα #μον."

	para "Πάντα τις"
	line "προκαλώ, μα"

	para "ποτέ δεν κάνω"
	line "ούτε γρατζουνιά…"
	done

SurfGuyLadGiftText:
	text "Μικρέ! Αν"
	line "νικήσεις όλες τις"

	para "ΓΚΕΪΣΕΣ, θα"
	line "σου δώσω δώρο."
	done

SurfGuyLikeADanceText:
	text "Έτσι όπως κανείς"
	line "μάχες, ήταν σαν"
	cont "να χορεύεις."

	para "Ήταν σπάνιο"
	line "θέαμα!"

	para "Θέλω να πάρεις"
	line "αυτό. Μην σε"
	cont "νοιάζει--πάρτο!"
	done

SurfGuySurfExplanationText:
	text "Είναι ΣΕΡΦ!"

	para "Μια κίνηση που"
	line "κάνει το #μον"
	cont "να κολυμπάει."
	done

SurfGuyElegantKimonoGirlsText:
	text "Εύχομαι τα #μον"
	line "μου να είχαν χάρη"
	cont "σαν τις ΓΚΕΪΣΕΣ…"
	done

RhydonText:
	text "RHYDON: Γαγουχ"
	line "γαγογουχ!"
	done

DanceTheaterCooltrainerMText:
	text "Ο τύπος πάντα με"
	line "το RHYDON του."

	para "Λέει πως θέλει"
	line "#μον που κανει"
	cont "ΣΕΡΦ και χορεύει."

	para "Προσπαθεί να"
	line "κανει συγχρονι-"
	cont "σμένη κολύμβηση"
	cont "με #μον;"
	done

DanceTheaterGrannyText:
	text "Οι ΓΚΕΪΣΕΣ"
	line "ειναι όμορφες…"

	para "Μα έχουν κάνει"
	line "σκληρή προπό-"
	cont "νηση όλες τους."

	para "Και πρέπει να"
	line "μάθουν έθιμα"

	para "πριν εμφανιστούν"
	line "δημοσίως."

	para "Μα αν αγαπάς"
	line "κάτι, όλα"
	cont "είναι πιθανά."
	done

DanceTheaterFancyPanelText:
	text "Μια όμορφη γλάστρα"
	line "με διακοσμιση"
	cont "λουλουδιών."
	done

DanceTheater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5, 13, ECRUTEAK_CITY, 8
	warp_event  6, 13, ECRUTEAK_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  5,  6, BGEVENT_UP, DanceTheaterFancyPanel
	bg_event  6,  6, BGEVENT_UP, DanceTheaterFancyPanel

	def_object_events
	object_event  0,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlNaoko, -1
	object_event  2,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlSayo, -1
	object_event  6,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlZuki, -1
	object_event  9,  1, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlKuni, -1
	object_event 11,  2, SPRITE_KIMONO_GIRL, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerKimonoGirlMiki, -1
	object_event  7, 10, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterSurfGuy, -1
	object_event  6,  8, SPRITE_RHYDON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DanceTheaterRhydon, -1
	object_event 10, 10, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DanceTheaterCooltrainerMScript, -1
	object_event  3,  6, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DanceTheaterGrannyScript, -1
