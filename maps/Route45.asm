	object_const_def
	const ROUTE45_POKEFAN_M1
	const ROUTE45_POKEFAN_M2
	const ROUTE45_POKEFAN_M3
	const ROUTE45_POKEFAN_M4
	const ROUTE45_BLACK_BELT
	const ROUTE45_COOLTRAINER_M
	const ROUTE45_COOLTRAINER_F
	const ROUTE45_FRUIT_TREE
	const ROUTE45_POKE_BALL1
	const ROUTE45_POKE_BALL2
	const ROUTE45_POKE_BALL3
	const ROUTE45_POKE_BALL4

Route45_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerBlackbeltKenji:
	trainer BLACKBELT_T, KENJI3, EVENT_BEAT_BLACKBELT_KENJI, BlackbeltKenjiSeenText, BlackbeltKenjiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_KENJI_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_BLACKBELT_KENJI
	iftrue Route45NumberAcceptedM
	checkevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext BlackbeltKenjiAfterBattleText
	waitbutton
	setevent EVENT_KENJI_ASKED_FOR_PHONE_NUMBER
	scall Route45AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route45AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_BLACKBELT_KENJI
	ifequal PHONE_CONTACTS_FULL, Route45PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route45NumberDeclinedM
	gettrainername STRING_BUFFER_3, BLACKBELT_T, KENJI3
	scall Route45RegisteredNumberM
	sjump Route45NumberAcceptedM

.WantsBattle:
	scall Route45RematchM
	winlosstext BlackbeltKenjiBeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer BLACKBELT_T, KENJI3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_KENJI_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer BLACKBELT_T, KENJI1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_KENJI_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer BLACKBELT_T, KENJI2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_KENJI_READY_FOR_REMATCH
	end

Route45AskNumber1M:
	jumpstd AskNumber1MScript
	end

Route45AskNumber2M:
	jumpstd AskNumber2MScript
	end

Route45RegisteredNumberM:
	jumpstd RegisteredNumberMScript
	end

Route45NumberAcceptedM:
	jumpstd NumberAcceptedMScript
	end

Route45NumberDeclinedM:
	jumpstd NumberDeclinedMScript
	end

Route45PhoneFullM:
	jumpstd PhoneFullMScript
	end

Route45RematchM:
	jumpstd RematchMScript
	end

TrainerHikerErik:
	trainer HIKER, ERIK, EVENT_BEAT_HIKER_ERIK, HikerErikSeenText, HikerErikBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerErikAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerMichael:
	trainer HIKER, MICHAEL, EVENT_BEAT_HIKER_MICHAEL, HikerMichaelSeenText, HikerMichaelBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerMichaelAfterBattleText
	waitbutton
	closetext
	end

TrainerHikerParry:
	trainer HIKER, PARRY3, EVENT_BEAT_HIKER_PARRY, HikerParry3SeenText, HikerParry3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	checkevent EVENT_PARRY_READY_FOR_REMATCH
	iftrue .WantsBattle
	checkcellnum PHONE_HIKER_PARRY
	iftrue Route45NumberAcceptedM
	checkevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	iftrue .AskedAlready
	writetext HikerParryAfterBattleText
	promptbutton
	setevent EVENT_PARRY_ASKED_FOR_PHONE_NUMBER
	scall Route45AskNumber1M
	sjump .AskForNumber

.AskedAlready:
	scall Route45AskNumber2M
.AskForNumber:
	askforphonenumber PHONE_HIKER_PARRY
	ifequal PHONE_CONTACTS_FULL, Route45PhoneFullM
	ifequal PHONE_CONTACT_REFUSED, Route45NumberDeclinedM
	gettrainername STRING_BUFFER_3, HIKER, PARRY1
	scall Route45RegisteredNumberM
	sjump Route45NumberAcceptedM

.WantsBattle:
	scall Route45RematchM
	winlosstext HikerParry3BeatenText, 0
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .LoadFight2
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .LoadFight1
	loadtrainer HIKER, PARRY3
	startbattle
	reloadmapafterbattle
	clearevent EVENT_PARRY_READY_FOR_REMATCH
	end

.LoadFight1:
	loadtrainer HIKER, PARRY1
	startbattle
	reloadmapafterbattle
	clearevent EVENT_PARRY_READY_FOR_REMATCH
	end

.LoadFight2:
	loadtrainer HIKER, PARRY2
	startbattle
	reloadmapafterbattle
	clearevent EVENT_PARRY_READY_FOR_REMATCH
	end

TrainerHikerTimothy:
	trainer HIKER, TIMOTHY, EVENT_BEAT_HIKER_TIMOTHY, HikerTimothySeenText, HikerTimothyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext HikerTimothyAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermRyan:
	trainer COOLTRAINERM, RYAN, EVENT_BEAT_COOLTRAINERM_RYAN, CooltrainermRyanSeenText, CooltrainermRyanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermRyanAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfKelly:
	trainer COOLTRAINERF, KELLY, EVENT_BEAT_COOLTRAINERF_KELLY, CooltrainerfKellySeenText, CooltrainerfKellyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfKellyAfterBattleText
	waitbutton
	closetext
	end

Route45Sign:
	jumptext Route45SignText

Route45FruitTree:
	fruittree FRUITTREE_ROUTE_45

Route45XSpecial:
	itemball X_SPECIAL

Route45Revive:
	itemball REVIVE

Route45Elixer:
	itemball ELIXER

Route45MaxPotion:
	itemball MAX_POTION

Route45HiddenPpUp:
	hiddenitem PP_UP, EVENT_ROUTE_45_HIDDEN_PP_UP

HikerErikSeenText:
	text "Προετοιμάσου"
	line "για τα πάντα!"

	para "Θα δούμε αν τα"
	line "#μον σου μεγά-"
	cont "λωσαν σωστά!"
	done

HikerErikBeatenText:
	text "Ω, έχασα!"
	done

HikerErikAfterBattleText:
	text "Πάω πίσω στο"
	line "ΔΡΟΜΟ ΠΑΓΟΥ"

	para "για να προπο-"
	line "νηθώ και άλλο."
	done

HikerMichaelSeenText:
	text "Γιο! Είσαι τολμηρός!"
	line "Μα ξέρεις κάτι;"

	para "Οταν λενε για"
	line "πλήρες θάρρος,"
	cont "εμένα εννοούν!"
	done

HikerMichaelBeatenText:
	text "Τα #μον δεν"
	line "ήταν τολμηρά!"
	done

HikerMichaelAfterBattleText:
	text "Μικρέ, λατρεύω"
	line "το HP UP! Γιαμ!"

	para "Πίνω τα φάρμακα"
	line "των #MON!"

	para "Δεν κάνω πίσω!"
	done

HikerParry3SeenText:
	text "Τα #μον είναι"
	line "γεμάτα δύναμη!"
	done

HikerParry3BeatenText:
	text "Γαχαχαχ! Είμαι"
	line "πολύ χαμένος!"
	done

HikerParryAfterBattleText:
	text "Δεν είμαι καλός"
	line "στην σκέψη."

	para "Οπότε, απλώς"
	line "βάζω δύναμη!"
	done

HikerTimothySeenText:
	text "Γιατί ανεβαίνω"
	line "τα βουνά;"

	para "Επειδή είναι"
	line "εκεί."

	para "Γιατί προπονώ"
	line "#μον;"

	para "Επειδή είναι"
	line "εκεί!"
	done

HikerTimothyBeatenText:
	text "Ήττες…"
	line "Είναι εκεί επίσης!"
	done

HikerTimothyAfterBattleText:
	text "Ότι καλύτερο μου"
	line "συνέβη είναι η"

	para "ανακάλυψη"
	line "των #μον."
	done

BlackbeltKenjiSeenText:
	text "Είχα προπονηθεί"
	line "εδώ μόνος."

	para "Ιδού τα φρούτα"
	line "των καρπών μου!"
	done

BlackbeltKenjiBeatenText:
	text "Γααααργχ!"
	done

BlackbeltKenjiAfterBattleText:
	text "Αυτό απαιτεί"
	line "ακραία μέτρα."

	para "Πρέπει να προ-"
	line "πονηθώ μόνος"
	cont "μου."
	done

CooltrainermRyanSeenText:
	text "Ποιές είναι οι"
	line "σκέψεις σου για"
	cont "τα #μον;"
	done

CooltrainermRyanBeatenText:
	text "Κέρδισες τον"
	line "σεβασμό μου."
	done

CooltrainermRyanAfterBattleText:
	text "Βλέπω μεγαλώ-"
	line "νεις #μον"
	cont "με φροντίδα."

	para "Η φιλία σου"
	line "θα σε γλιτώσει"
	cont "απο δυσκολίες."
	done

CooltrainerfKellySeenText:
	text "Ποιά είναι η"
	line "στρατηγική σου;"

	para "Είναι χαζό να"
	line "βάζεις δυνατές"
	cont "κινήσεις έτσι."
	done

CooltrainerfKellyBeatenText:
	text "Καλά. Έχασα."
	done

CooltrainerfKellyAfterBattleText:
	text "Δεν είναι υπέρ"
	line "μου οι δυνατές"
	cont "κινήσεις."

	para "Θέλω να νικάω,"
	line "μα επίσης δεν θέλω"
	cont "να βλάπτω #μον."
	done

Route45DummyText: ; unreferenced
	text "Είμαι & εγώ"
	line "καλος στα #μον."
	done

Route45SignText:
	text "ΔΡΟΜΟΣ 45"
	line "ΔΡΟΜΟΣ ΒΟΥΝΟΥ"
	done

Route45_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  5, DARK_CAVE_BLACKTHORN_ENTRANCE, 1

	def_coord_events

	def_bg_events
	bg_event 10,  4, BGEVENT_READ, Route45Sign
	bg_event 13, 80, BGEVENT_ITEM, Route45HiddenPpUp

	def_object_events
	object_event 10, 16, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerErik, -1
	object_event 15, 64, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerMichael, -1
	object_event  5, 28, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerHikerParry, -1
	object_event  9, 64, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerHikerTimothy, -1
	object_event 11, 50, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerBlackbeltKenji, -1
	object_event 17, 18, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCooltrainermRyan, -1
	object_event  4, 36, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfKelly, -1
	object_event 16, 82, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route45FruitTree, -1
	object_event  6, 51, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45XSpecial, EVENT_ROUTE_45_X_SPECIAL
	object_event  6, 66, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Revive, EVENT_ROUTE_45_REVIVE
	object_event  4, 21, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45Elixer, EVENT_ROUTE_45_ELIXER
	object_event  8, 33, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route45MaxPotion, EVENT_ROUTE_45_MAX_POTION
