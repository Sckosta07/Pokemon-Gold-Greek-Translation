	object_const_def
	const ROUTE35GOLDENRODGATE_RANDY
	const ROUTE35GOLDENRODGATE_POKEFAN_F

Route35GoldenrodGate_MapScripts:
	def_scene_scripts

	def_callbacks

RandyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_RANDY
	iftrue .gothpup
	checkevent EVENT_GAVE_KENYA
	iftrue .questcomplete
	checkevent EVENT_GOT_KENYA
	iftrue .alreadyhavekenya
	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
	yesorno
	iffalse .refused
	writetext Route35GoldenrodGateRandyThanksText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke SPEAROW, 10, NO_ITEM, GiftSpearowName, GiftSpearowOTName
	givepokemail GiftSpearowMail
	setevent EVENT_GOT_KENYA
.alreadyhavekenya
	writetext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText
	waitbutton
	closetext
	end

.partyfull
	writetext Route35GoldenrodGateRandyCantCarryAnotherMonText
	waitbutton
	closetext
	end

.refused
	writetext Route35GoldenrodGateRandyOhNeverMindThenText
	waitbutton
	closetext
	end

.questcomplete
	writetext Route35GoldenrodGateRandySomethingForYourTroubleText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .bagfull
	setevent EVENT_GOT_HP_UP_FROM_RANDY
.gothpup
	writetext Route35GoldenrodGateRandyMyPalWasSnoozingRightText
	waitbutton
.bagfull
	closetext
	end

GiftSpearowMail:
	db FLOWER_MAIL
	db   "ΣΚΟΤΕΙΝΗ ΣΠΗΛΙΑ"
	next "οδηγεί αλλού@"

GiftSpearowName:
	db "KENYA@"

GiftSpearowOTName:
	db "RANDY@"

Route35GoldenrodGatePokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText
	waitbutton
	closetext
	end

.FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText_FoughtSudowoodo
	waitbutton
	closetext
	end

Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
	text "Συγνώμη, φίλε!"
	line "Κάνεις χάρη σε"
	cont "έναν άνθρωπο;"

	para "Παίρνεις αυτό το"
	line "#μον με το MAIL"
	cont "στον φιλο μου;"

	para "Στο ΔΡΟΜΟ 31;"
	done

Route35GoldenrodGateRandyThanksText:
	text "Θα πας; Τέλεια!"
	line "Ευχαριστώ, φίλε!"

	para "Ο φίλος μου είναι"
	line "χοντρούλης που"
	cont "κοιμάται πολύ."

	para "Θα τον αναγνωρί-"
	line "σεις αμέσως!"
	done

Route35GoldenrodGatePlayerReceivedAMonWithMailText:
	text "<PLAYER> πήρε"
	line "#μον με MAIL."
	done

Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
	text "Διάβασε το, μα"
	line "μην το χάσεις!"
	cont "ΔΡΟΜΟΣ 31!"

	para "Ω, ναι. Υπάρχει"
	line "ένα παράξενο"
	cont "δέντρο στον δρόμο."

	para "Αναρωτιέμαι αν"
	line "το έκοψαν;"
	done

Route35GoldenrodGateRandyCantCarryAnotherMonText:
	text "Δεν έχεις χώρο"
	line "για άλλο #μον…"
	done

Route35GoldenrodGateRandyOhNeverMindThenText:
	text "Ω… Ξέχνα"
	line "το, τότε…"
	done

Route35GoldenrodGateRandySomethingForYourTroubleText:
	text "Ευχαριστώ, φίλε!"
	line "Κάνεις την παράδο-"
	cont "ση για εμένα!"

	para "Ορίστε κάτι για"
	line "τον κόπο σου!"
	done

Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
	text "Ο φίλος μου"
	line "κοιμόνταν, ε;"
	cont "Χεχ! Τι να πω;"
	done

Route35GoldenrodGatePokefanFText:
	text "Παράξενο δέντρο"
	line "κλείνει το δρόμο."

	para "Κουνιέται αν πας"
	line "να το περάσεις."

	para "Άκουσα έγινε"
	line "άγριο όταν κάποιος"

	para "το ποτήζει με"
	line "ΠΟΤΙΣΤΗΡΙ."
	done

Route35GoldenrodGatePokefanFText_FoughtSudowoodo:
	text "Μ'αρέσει το"
	line "ΠΟΚΕΝΑΝΟΥΡΙΜΑ"
	cont "στο ραδιο."
	done

Route35GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, ROUTE_35, 1
	warp_event  5,  0, ROUTE_35, 2
	warp_event  4,  7, GOLDENROD_CITY, 13
	warp_event  5,  7, GOLDENROD_CITY, 13

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RandyScript, -1
	object_event  6,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
