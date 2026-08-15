	object_const_def
	const POWERPLANT_OFFICER1
	const POWERPLANT_GYM_GUIDE1
	const POWERPLANT_GYM_GUIDE2
	const POWERPLANT_OFFICER2
	const POWERPLANT_GYM_GUIDE3
	const POWERPLANT_MANAGER

PowerPlant_MapScripts:
	def_scene_scripts
	scene_script PowerPlantNoop1Scene, SCENE_POWERPLANT_NOOP
	scene_script PowerPlantNoop2Scene, SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL

	def_callbacks

PowerPlantNoop1Scene:
	end

PowerPlantNoop2Scene:
	end

PowerPlantGuardPhoneScript:
	playsound SFX_CALL
	showemote EMOTE_SHOCK, POWERPLANT_OFFICER1, 15
	waitsfx
	pause 30
	applymovement POWERPLANT_OFFICER1, PowerPlantOfficer1ApproachGymGuide2Movement
	turnobject POWERPLANT_GYM_GUIDE1, DOWN
	turnobject POWERPLANT_GYM_GUIDE2, DOWN
	opentext
	writetext PowerPlantOfficer1CeruleanShadyCharacterText
	waitbutton
	closetext
	turnobject POWERPLANT_OFFICER1, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext PowerPlantOfficer1CouldIAskForYourCooperationText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement POWERPLANT_OFFICER1, PowerPlantOfficer1ReturnToPostMovement
	setscene SCENE_POWERPLANT_NOOP
	end

PowerPlantOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue .MetManager
	writetext PowerPlantOfficer1AThiefBrokeInText
	waitbutton
	closetext
	end

.MetManager:
	writetext PowerPlantOfficer1CouldIAskForYourCooperationText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantOfficer1HaveToBeefUpSecurityText
	waitbutton
	closetext
	end

PowerPlantGymGuide1Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext PowerPlantGymGuide1SomeoneStoleAPartText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantGymGuide1GeneratorUpAndRunningText
	waitbutton
	closetext
	end

PowerPlantGymGuide2Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext PowerPlantGymGuide2PowerPlantUpAndRunningText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantGymGuide2GeneratorIsRunningAgainText
	waitbutton
	closetext
	end

PowerPlantOfficer2Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext PowerPlantOfficer2ManagerHasBeenSadAndFuriousText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantOfficer2ManagerHasBeenCheerfulText
	waitbutton
	closetext
	end

PowerPlantGymGuide4Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext PowerPlantGymGuide4MagnetTrainConsumesElectricityText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantGymGuide4WeCanGetMagnetTrainRunningText
	waitbutton
	closetext
	end

PowerPlantManager:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	checkitem MACHINE_PART
	iftrue .FoundMachinePart
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue .MetManager
	writetext PowerPlantManagerWhoWouldRuinMyGeneratorText
	waitbutton
	closetext
	setevent EVENT_MET_MANAGER_AT_POWER_PLANT
	clearevent EVENT_CERULEAN_GYM_ROCKET
	clearevent EVENT_FOUND_MACHINE_PART_IN_CERULEAN_GYM
	setmapscene CERULEAN_GYM, SCENE_CERULEANGYM_GRUNT_RUNS_OUT
	setscene SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL
	end

.MetManager:
	writetext PowerPlantManagerIWontForgiveCulpritText
	waitbutton
	closetext
	end

.FoundMachinePart:
	writetext PowerPlantManagerThatsThePartText
	promptbutton
	takeitem MACHINE_PART
	setevent EVENT_RETURNED_MACHINE_PART
	clearevent EVENT_SAFFRON_TRAIN_STATION_POPULATION
	setevent EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	setevent EVENT_ROUTE_24_ROCKET
	setevent EVENT_RESTORED_POWER_TO_KANTO
	clearevent EVENT_GOLDENROD_TRAIN_STATION_GENTLEMAN
.ReturnedMachinePart:
	checkevent EVENT_GOT_TM07_ZAP_CANNON
	iftrue .GotZapCannon
	writetext PowerPlantManagerTakeThisTMText
	promptbutton
	verbosegiveitem TM_ZAP_CANNON
	iffalse .NoRoom
	setevent EVENT_GOT_TM07_ZAP_CANNON
	writetext PowerPlantManagerTM07IsZapCannonText
	waitbutton
.NoRoom:
	closetext
	end

.GotZapCannon:
	writetext PowerPlantManagerMyBelovedGeneratorText
	waitbutton
	closetext
	end

PowerPlantBookshelf:
	jumpstd DifficultBookshelfScript

PowerPlantOfficer1ApproachGymGuide2Movement:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

PowerPlantOfficer1ReturnToPostMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

PowerPlantOfficer1AThiefBrokeInText:
	text "Ένας κλέφτης μπήκε"
	line "στο ΕΡΓΟΣΤΑΣΙΟ…"

	para "Που πηγαίνουμε"
	line "ως κοινωνία;"
	done

PowerPlantOfficer1CeruleanShadyCharacterText:
	text "Μόλις πήρα"
	line "νέα από CERULEAN."

	para "Φαίνεται ένας"
	line "σκιώδης τύπος"

	para "τριγυρνάει"
	line "εδώ γύρω."
	done

PowerPlantOfficer1CouldIAskForYourCooperationText:
	text "Να σου ζητήσω"
	line "συνεργασία;"
	done

PowerPlantOfficer1HaveToBeefUpSecurityText:
	text "Πρέπει να ενι-"
	line "σχύσουμε την"
	cont "ασφάλεια μας."
	done

PowerPlantGymGuide1SomeoneStoleAPartText:
	text "Κάποιος το έσκασε"
	line "με ενα κομμάτι"

	para "που είναι σημαντι-"
	line "κό για γεννήτριες."

	para "Χωρίς αυτό, η"
	line "νέα γεννήτρια"
	cont "είναι άχρηστη!"
	done

PowerPlantGymGuide1GeneratorUpAndRunningText:
	text "Η γεννήτρια"
	line "λειτουργεί. Βγάζει"

	para "ηλεκτρισμό"
	line "για περίσσευμα."
	done

PowerPlantGymGuide2PowerPlantUpAndRunningText:
	text "Το ΕΡΓΟΣΤΑΣΙΟ"
	line "είχε εγκαταληφθεί"
	cont "στο παρελθόν."

	para "Το πήραμε πίσω"
	line "και δουλεύουμε"

	para "για ρεύμα στο"
	line "ΤΡΕΝΟ ΜΑΓΝΗΤΗ."
	done

PowerPlantGymGuide2GeneratorIsRunningAgainText:
	text "Η γεννήτρια"
	line "λειτουργεί πάλι!"
	done

PowerPlantOfficer2ManagerHasBeenSadAndFuriousText:
	text "Ο ΔΙΕΥΘΥΝΤΗΣ"
	line "του ΕΡΓΟΣΤΑΣΙΟΥ"
	cont "είναι μπροστά."

	para "Μα αφού κάποιος"
	line "χάλασε τη γεννή-"
	cont "τρια, λυπάται"
	cont "και θυμώνει"
	cont "την ίδια ώρα…"
	done

PowerPlantOfficer2ManagerHasBeenCheerfulText:
	text "Αφού η γεννήτρια"
	line "φτιάχτηκε, ο"

	para "ΔΙΡΥΘΥΝΤΗΣ"
	line "χαίρεται."
	done

PowerPlantGymGuide4MagnetTrainConsumesElectricityText:
	text "Το ΤΡΕΝΟ ΜΑΓΝΗΤΗΣ"
	line "καταναλώνει"
	cont "πολύ ενέργεια."

	para "Δεν λειτουργεί"
	line "αν η νέα γεννήτρια"
	cont "δεν λειτουργεί."
	done

PowerPlantGymGuide4WeCanGetMagnetTrainRunningText:
	text "Εντάξει! Επιτέ-"
	line "λους το ΤΡΕΝΟ"

	para "ΜΑΓΝΗΤΗΣ"
	line "λειτουργεί ξανά."
	done

PowerPlantManagerWhoWouldRuinMyGeneratorText:
	text "ΔΙΕΥΘΥΝΤΗΣ: Εί-"
	line "είμαι έτοιμος να"
	cont "χτυπήσω κάποιον!"

	para "Ποιός θα τολμούσε"
	line "να την χαλασει;"

	para "Πέρασα πολύ"
	line "χρόνο σε αυτή!"

	para "Αν τον βρεις,"
	line "θα πάρει μια"

	para "γεύση του"
	line "ΚΑΝΟΝΙΟΥ ΖΑΠ!"
	done

PowerPlantManagerIWontForgiveCulpritText:
	text "ΔΙΕΥΘΥΝΤΗΣ: Δεν"
	line "θα τον συγχωρέσω!"

	para "Ο ένοχος θα κλά-"
	line "ψει & απολογηθεί,"

	para "μα και πάλι"
	line "θα τον χτυπήσω!"

	para "Γαχαχαχαχ!"
	done

PowerPlantManagerThatsThePartText:
	text "ΔΙΕΥΘΥΝΤΗΣ: Ναι!"

	para "Αυτο είναι το"
	line "ΚΟΜΜΑΤΙ από την"
	cont "γεννήτρια μου!"
	cont "Το βρήκες;"
	done

PowerPlantManagerTakeThisTMText:
	text "Γαχαχ! Ευχαριστώ!"

	para "Ορίστε! Πάρε το"
	line "ΤΜ ως βραβείο!"
	done

PowerPlantManagerTM07IsZapCannonText:
	text "ΔΙΕΥΘΥΝΤΗΣ: TM07"
	line "έχει ΚΑΝΟΝΙ ΖΑΠ."

	para "Είναι δυνατή"
	line "τεχνική!"

	para "Δεν είναι ότι όλοι"
	line "θεωρούνται"

	para "καλοί, έτσι"
	line "βαράει άσχημα!"
	done

PowerPlantManagerMyBelovedGeneratorText:
	text "ΔΙΕΥΘΥΝΤΗΣ: Η"
	line "γεννήτρια μου!"

	para "Βγάζει τον"
	line "ηλεκτρισμό έξω!"
	done

PowerPlant_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, ROUTE_10_NORTH, 2
	warp_event  3, 17, ROUTE_10_NORTH, 2

	def_coord_events
	coord_event  5, 12, SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL, PowerPlantGuardPhoneScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event  1,  1, BGEVENT_READ, PowerPlantBookshelf

	def_object_events
	object_event  4, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PowerPlantOfficerScript, -1
	object_event  2,  9, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuide1Script, -1
	object_event  6, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuide2Script, -1
	object_event  9,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PowerPlantOfficer2Script, -1
	object_event  7,  2, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuide4Script, -1
	object_event 14, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantManager, -1
