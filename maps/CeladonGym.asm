	object_const_def
	const CELADONGYM_ERIKA
	const CELADONGYM_LASS1
	const CELADONGYM_LASS2
	const CELADONGYM_BEAUTY
	const CELADONGYM_TWIN1
	const CELADONGYM_TWIN2

CeladonGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGymErikaScript:
	faceplayer
	opentext
	checkflag ENGINE_RAINBOWBADGE
	iftrue .FightDone
	writetext ErikaBeforeBattleText
	waitbutton
	closetext
	winlosstext ErikaBeatenText, 0
	loadtrainer ERIKA, ERIKA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_LASS_MICHELLE
	setevent EVENT_BEAT_PICNICKER_TANYA
	setevent EVENT_BEAT_BEAUTY_JULIA
	setevent EVENT_BEAT_TWINS_JO_AND_ZOE
	opentext
	writetext PlayerReceivedRainbowBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RAINBOWBADGE
.FightDone:
	checkevent EVENT_GOT_TM19_GIGA_DRAIN
	iftrue .GotGigaDrain
	writetext ErikaExplainTMText
	promptbutton
	verbosegiveitem TM_GIGA_DRAIN
	iffalse .GotGigaDrain
	setevent EVENT_GOT_TM19_GIGA_DRAIN
.GotGigaDrain:
	writetext ErikaAfterBattleText
	waitbutton
	closetext
	end

TrainerLassMichelle:
	trainer LASS, MICHELLE, EVENT_BEAT_LASS_MICHELLE, LassMichelleSeenText, LassMichelleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassMichelleAfterBattleText
	waitbutton
	closetext
	end

TrainerPicnickerTanya:
	trainer PICNICKER, TANYA, EVENT_BEAT_PICNICKER_TANYA, PicnickerTanyaSeenText, PicnickerTanyaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerTanyaAfterBattleText
	waitbutton
	closetext
	end

TrainerBeautyJulia:
	trainer BEAUTY, JULIA, EVENT_BEAT_BEAUTY_JULIA, BeautyJuliaSeenText, BeautyJuliaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyJuliaAfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsJoAndZoe1:
	trainer TWINS, JOANDZOE1, EVENT_BEAT_TWINS_JO_AND_ZOE, TwinsJoAndZoe1SeenText, TwinsJoAndZoe1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsJoAndZoe1AfterBattleText
	waitbutton
	closetext
	end

TrainerTwinsJoAndZoe2:
	trainer TWINS, JOANDZOE2, EVENT_BEAT_TWINS_JO_AND_ZOE, TwinsJoAndZoe2SeenText, TwinsJoAndZoe2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TwinsJoAndZoe2AfterBattleText
	waitbutton
	closetext
	end

CeladonGymStatue:
	checkflag ENGINE_RAINBOWBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	gettrainername STRING_BUFFER_4, ERIKA, ERIKA1
	jumpstd GymStatue2Script

ErikaBeforeBattleText:
	text "ERIKA: Γεια…"
	line "Ωραίος καιρός,"

	para "δεν είναι;"
	line "Τόσο ευχάριστος…"

	para "…Φοβάμαι μην"
	line "αποκοιμηθώ…"

	para "Με λένε ERIKA."
	line "Είμαι η ΗΓΕΤΗΣ"
	cont "του CELADON GYM."

	para "…Ω; Ήρθες από"
	line "το JOHTO,"
	cont "λες; τι ωραία…"

	para "Ω. Συγνώμη,"
	line "δεν κατάλαβα"

	para "ότι ήθελες να"
	line "με προκαλέσεις."

	para "Πολύ καλά, μα"
	line "δεν θα χάσω."
	done

ErikaBeatenText:
	text "ERIKA: Ω!"
	line "Ηττήθηκα σίγουρα…"

	para "Είσαι ξεκάθαρα"
	line "δυνατός…"

	para "Θα σου δώσω το"
	line "ΟΥΡΑΝΟΕΜΒΛΗΜΑ…"
	done

PlayerReceivedRainbowBadgeText:
	text "<PLAYER> πήρε"
	line "ΟΥΡΑΝΟΕΜΒΛΗΜΑ."
	done

ErikaExplainTMText:
	text "ERIKA: Αυτή ήταν"
	line "φωτεινή μάχη."

	para "Πήρα έμπνευση."
	line "Παρακαλώ, πάρε"
	cont "αυτό το TM."

	para "Έχει ΥΠΕΡΑΝΤΛΗΣΗ."

	para "Είναι θαυμάσια"
	line "κίνηση που αντλεί"

	para "την μισή ζημια"
	line "που δέχεται για"
	cont "να γιατρέψει"

	para "τα #μον σου."
	line "Βάλτο σε ένα…"
	done

ErikaAfterBattleText:
	text "ERIKA: Η ήττα"
	line "αφήνει πικρή"
	cont "επίγευση…"

	para "Μα ξέροντας ότι"
	line "υπάρχουν δυνατοί"

	para "εκπ/τες, θέλω"
	line "να γινω καλύτερη…"
	done

LassMichelleSeenText:
	text "Στάσου! Μόνο"
	line "κορίτσια μπαίνουν!"
	done

LassMichelleBeatenText:
	text "Ωχ, μπλιαχ!"
	done

LassMichelleAfterBattleText:
	text "Δεν αντιπαθούμε"
	line "τα αγόρια."

	para "Μα υπάρχουν"
	line "κάποια πράγματα"

	para "που μόνο τα"
	line "κορίτσια λένε."
	done

PicnickerTanyaSeenText:
	text "Ω, μάχη;"
	line "Λίγο φοβερή,"
	cont "αλλά και OK!"
	done

PicnickerTanyaBeatenText:
	text "Ω, αυτό ήταν;"
	done

PicnickerTanyaAfterBattleText:
	text "Ω, κοίτα τα"
	line "ΕΜΒΛΗΜΑΤΑ σου."

	para "Σίγουρα θα"
	line "έχανα!"
	done

BeautyJuliaSeenText:
	text "Που κοιτάς,"
	line "στα λουλούδια"
	cont "ή σε εμένα;"
	done

BeautyJuliaBeatenText:
	text "Τι ενοχλητικός!"
	done

BeautyJuliaAfterBattleText:
	text "Πως θα γίνω"
	line "και εγώ κυρία"
	cont "σαν την ERIKA;"
	done

TwinsJoAndZoe1SeenText:
	text "Θα σου δείξω"
	line "#μον κινήσεις"
	cont "της ERIKA!"
	done

TwinsJoAndZoe1BeatenText:
	text "Ω… Χάσαμε…"
	done

TwinsJoAndZoe1AfterBattleText:
	text "Η ERIKA θα σε"
	line "νικήσει για εμάς!"
	done

TwinsJoAndZoe2SeenText:
	text "Θα προστατέψουμε"
	line "την ERIKA!"
	done

TwinsJoAndZoe2BeatenText:
	text "Δεν νικήσαμε…"
	done

TwinsJoAndZoe2AfterBattleText:
	text "Η ERIKA είναι,"
	line "πολύ πιο δυνατή!"
	done

CeladonGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CELADON_CITY, 8
	warp_event  5, 17, CELADON_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CeladonGymStatue
	bg_event  6, 15, BGEVENT_READ, CeladonGymStatue

	def_object_events
	object_event  5,  3, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGymErikaScript, -1
	object_event  7,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerLassMichelle, -1
	object_event  2,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerTanya, -1
	object_event  3,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerBeautyJulia, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe1, -1
	object_event  5, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe2, -1
