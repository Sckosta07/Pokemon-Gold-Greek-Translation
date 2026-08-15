	object_const_def
	const SPROUTTOWER3F_SAGE1
	const SPROUTTOWER3F_SAGE2
	const SPROUTTOWER3F_SAGE3
	const SPROUTTOWER3F_SAGE4
	const SPROUTTOWER3F_POKE_BALL1
	const SPROUTTOWER3F_POKE_BALL2
	const SPROUTTOWER3F_RIVAL

SproutTower3F_MapScripts:
	def_scene_scripts
	scene_script SproutTower3FNoop1Scene, SCENE_SPROUTTOWER3F_RIVAL_ENCOUNTER
	scene_script SproutTower3FNoop2Scene, SCENE_SPROUTTOWER3F_NOOP

	def_callbacks

SproutTower3FNoop1Scene:
	end

SproutTower3FNoop2Scene:
	end

SproutTower3FRivalScene:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	pause 15
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	applymovement PLAYER, SproutTower3FPlayerApproachesRivalMovement
	applymovement SPROUTTOWER3F_RIVAL, SproutTower3FRivalApproachesElderMovement
	opentext
	writetext SproutTowerElderLecturesRivalText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, SPROUTTOWER3F_RIVAL, 15
	turnobject SPROUTTOWER3F_RIVAL, DOWN
	pause 15
	applymovement SPROUTTOWER3F_RIVAL, SproutTower3FRivalLeavesElderMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext SproutTowerRivalOnlyCareAboutStrongText
	waitbutton
	closetext
	turnobject SPROUTTOWER3F_RIVAL, UP
	opentext
	writetext SproutTowerRivalUsedEscapeRopeText
	pause 15
	closetext
	playsound SFX_WARP_TO
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	disappear SPROUTTOWER3F_RIVAL
	waitsfx
	special FadeInFromBlack
	setscene SCENE_SPROUTTOWER3F_NOOP
	special RestartMapMusic
	end

SageLiScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .GotFlash
	writetext SageLiSeenText
	waitbutton
	closetext
	winlosstext SageLiBeatenText, 0
	loadtrainer SAGE, LI
	startbattle
	reloadmapafterbattle
	opentext
	writetext SageLiTakeThisFlashText
	promptbutton
	verbosegiveitem HM_FLASH
	setevent EVENT_GOT_HM05_FLASH
	setevent EVENT_BEAT_SAGE_LI
	writetext SageLiFlashExplanationText
	waitbutton
	closetext
	end

.GotFlash:
	writetext SageLiAfterBattleText
	waitbutton
	closetext
	end

TrainerSageJin:
	trainer SAGE, JIN, EVENT_BEAT_SAGE_JIN, SageJinSeenText, SageJinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageJinAfterBattleText
	waitbutton
	closetext
	end

TrainerSageTroy:
	trainer SAGE, TROY, EVENT_BEAT_SAGE_TROY, SageTroySeenText, SageTroyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageTroyAfterBattleText
	waitbutton
	closetext
	end

TrainerSageNeal:
	trainer SAGE, NEAL, EVENT_BEAT_SAGE_NEAL, SageNealSeenText, SageNealBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageNealAfterBattleText
	waitbutton
	closetext
	end

SproutTower3FPainting:
	jumptext SproutTower3FPaintingText

SproutTower3FStatue:
	jumptext SproutTower3FStatueText

SproutTower3FPotion:
	itemball POTION

SproutTower3FEscapeRope:
	itemball ESCAPE_ROPE

SproutTower3FPlayerApproachesRivalMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

SproutTower3FRivalApproachesElderMovement:
	step UP
	step_end

SproutTower3FRivalLeavesElderMovement:
	step RIGHT
	step DOWN
	step_end

SproutTowerElderLecturesRivalText:
	text "ΓΕΡΟΝΤΑΣ: Είσαι"
	line "όντως έμπειρος ως"
	cont "εκπαιδευτής."

	para "Όπως υποσχέθηκα,"
	line "ορίστε το HM."

	para "Μα άσε με να"
	line "σου πω αυτό: Να"

	para "φέρεσαι στα"
	line "#μον καλύτερα."

	para "Στη μαχη"
	line "είσαι σκληρός."

	para "#μον δεν είναι"
	line "εργαλεία πολέμου…"
	done

SproutTowerRivalOnlyCareAboutStrongText:
	text "…"
	line "…Χαμφ!"

	para "Τον λένε"
	line "ΓΕΡΟΝΤΑ μα"
	cont "είναι αδύναμος."

	para "Είναι η μόνη"
	line "λογική εξήγηση."

	para "Δεν θα έχανα"
	line "ποτέ από βλάκες"

	para "που λένε για καλο-"
	line "σύνες στα #μον."

	para "Νοιάζομαι μόνο"
	line "για τα δυνατά"
	cont "που νικάνε."

	para "Δεν θα με ένοιαζε"
	line "λιγότερο για τα"
	cont "αδύναμα #μον."
	done

SproutTowerRivalUsedEscapeRopeText:
	text "<RIVAL> έκανε"
	line "ΣΧΟΙΝΙ ΦΥΓΗΣ!"
	done

SageLiSeenText:
	text "Τι ωραία που"
	line "ήρθες εδώ!"

	para "Ο ΠΥΡΓΟΣ ΦΥΤΩΝ εί-"
	line "ναι για προπόνηση."

	para "Άνθρωποι και #-"
	line "μον βλέπουν τη"

	para "συνεργασία να έχει"
	line "λαμπρό μέλλον."

	para "Είμαι η τελική"
	line "δοκιμασία."

	para "Άσε με τσεκάρω"
	line "πόσο καλά τα πας"

	para "με τα #μον"
	line "σου!"
	done

SageLiBeatenText:
	text "Α, έξοχα!"
	done

SageLiTakeThisFlashText:
	text "Εσύ και τα #-"
	line "μον σου δεν"

	para "έχετε πρόβλημα"
	line "για αυτό."

	para "Πάρε το ΗΜ"
	line "ΛΑΜΨΗ."
	done

SageLiFlashExplanationText:
	text "Η ΛΑΜΨΗ φωτίζει"
	line "ακόμα και τα πιο"
	cont "σκοτεινά μέρη."

	para "Μα βάζοντας το"
	line "έξω από τις μάχες"

	para "θέλει το ΕΜΒΛΗΜΑ"
	line "του GYM VIOLET."
	done

SageLiAfterBattleText:
	text "Ελπίζω να"
	line "έμαθες από το"
	cont "ταξίδι σου."
	done

SageJinSeenText:
	text "Προπονούμαι για"
	line "την φώτιση στα"
	cont "#μον!"
	done

SageJinBeatenText:
	text "Νικήθηκα από"
	line "ένα μικρό παιδί!"
	done

SageJinAfterBattleText:
	text "Όσο τα #μον"
	line "δυναμώνουν, τόσο"
	cont "και ο εκπ/της."

	para "Όχι, στάσου. Όσο"
	line "δυναμώνεις εσύ,"

	para "το ίδιο και"
	line "τα #μον σου."
	done

SageTroySeenText:
	text "Για να δω πόσο"
	line "σε εμπιστεύονται"
	cont "τα #μον σου."
	done

SageTroyBeatenText:
	text "Ναι, η πίστη σου"
	line "είναι αληθινή!"
	done

SageTroyAfterBattleText:
	text "Δεν είσαι μακριά"
	line "από τον ΓΕΡΟΝΤΑ."
	done

SageNealSeenText:
	text "Το HM του"
	line "ΓΕΡΟΝΤΑ φωτίζει"
	cont "όλα τα σκοτάδια."
	done

SageNealBeatenText:
	text "Το κεφάλι μου"
	line "είναι φωτεινό!"
	done

SageNealAfterBattleText:
	text "Άσε να φοτιστεί"
	line "το ταξίδι σου."
	done

SproutTower3FPaintingText:
	text "Ένας δυνατός"
	line "πίνακας από ένα"
	cont "BELLSPROUT."
	done

SproutTower3FStatueText:
	text "Άγαλμα #MON…"

	para "Δείχνει"
	line "πανέμορφο."
	done

SproutTower3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 14, SPROUT_TOWER_2F, 4

	def_coord_events
	coord_event 11,  9, SCENE_SPROUTTOWER3F_RIVAL_ENCOUNTER, SproutTower3FRivalScene

	def_bg_events
	bg_event  8,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event 11,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event  9,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event 10,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event  5, 15, BGEVENT_READ, SproutTower3FStatue
	bg_event 14, 15, BGEVENT_READ, SproutTower3FStatue

	def_object_events
	object_event  8, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageJin, -1
	object_event  8,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageTroy, -1
	object_event 10,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SageLiScript, -1
	object_event 11, 11, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageNeal, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FPotion, EVENT_SPROUT_TOWER_3F_POTION
	object_event 14,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FEscapeRope, EVENT_SPROUT_TOWER_3F_ESCAPE_ROPE
	object_event 10,  4, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_SPROUT_TOWER
