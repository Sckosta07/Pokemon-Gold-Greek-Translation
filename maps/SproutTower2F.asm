	object_const_def
	const SPROUTTOWER2F_SAGE1
	const SPROUTTOWER2F_SAGE2
	const SPROUTTOWER2F_POKE_BALL

SproutTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSageNico:
	trainer SAGE, NICO, EVENT_BEAT_SAGE_NICO, SageNicoSeenText, SageNicoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageNicoAfterBattleText
	waitbutton
	closetext
	end

TrainerSageEdmond:
	trainer SAGE, EDMOND, EVENT_BEAT_SAGE_EDMOND, SageEdmondSeenText, SageEdmondBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageEdmondAfterBattleText
	waitbutton
	closetext
	end

SproutTower2FStatue:
	jumptext SproutTower2FStatueText

SproutTower2FXDefend:
	itemball X_DEFEND

SageNicoSeenText:
	text "Αν είναι σκληρή η"
	line "μάχη, ο ΠΥΡΓΟΣ"
	cont "στέκεται δυνατός."
	done

SageNicoBeatenText:
	text "Πάλεψα σκληρά"
	line "μα είμαι αδύναμος."
	done

SageNicoAfterBattleText:
	text "Η ελαστική κολόνα"
	line "προστατεύει τον"

	para "ΠΥΡΓΟ, ακόμα"
	line "και από σεισμούς."
	done

SageEdmondSeenText:
	text "…Πέτα σαν φύλλο"
	line "στον άνεμο…"
	done

SageEdmondBeatenText:
	text "Ω, είμαι αδύναμος!"
	done

SageEdmondAfterBattleText:
	text "Αντέγραψα τις"
	line "ευγενείς κινήσεις"

	para "του BELLSPROUT"
	line "στις μάχες…"

	para "Μα δεν προπο-"
	line "νήθηκα αρκετά."
	done

SproutTower2FStatueText:
	text "#μον άγαλμα…"

	para "Φαίνεται πολύ"
	line "επιβλητικό."
	done

SproutTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  4, SPROUT_TOWER_1F, 3
	warp_event  2,  6, SPROUT_TOWER_1F, 4
	warp_event 17,  3, SPROUT_TOWER_1F, 5
	warp_event 10, 14, SPROUT_TOWER_3F, 1

	def_coord_events

	def_bg_events
	bg_event 12, 15, BGEVENT_READ, SproutTower2FStatue

	def_object_events
	object_event 14,  4, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageNico, -1
	object_event  3, 15, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSageEdmond, -1
	object_event  3,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower2FXDefend, EVENT_SPROUT_TOWER_2F_X_DEFEND
