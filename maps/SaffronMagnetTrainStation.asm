	object_const_def
	const SAFFRONMAGNETTRAINSTATION_OFFICER
	const SAFFRONMAGNETTRAINSTATION_GYM_GUIDE
	const SAFFRONMAGNETTRAINSTATION_TEACHER
	const SAFFRONMAGNETTRAINSTATION_LASS

SaffronMagnetTrainStation_MapScripts:
	def_scene_scripts
	scene_script SaffronMagnetTrainStationNoopScene, SCENE_SAFFRONMAGNETTRAINSTATION_ARRIVE_FROM_GOLDENROD

	def_callbacks

SaffronMagnetTrainStationNoopScene:
	end

SaffronMagnetTrainStationOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .MagnetTrainToGoldenrod
	writetext SaffronMagnetTrainStationOfficerTrainIsntOperatingText
	waitbutton
	closetext
	end

.MagnetTrainToGoldenrod:
	writetext SaffronMagnetTrainStationOfficerAreYouComingOnBoardText
	yesorno
	iffalse .DecidedNotToRide
	checkitem PASS
	iffalse .PassNotInBag
	writetext SaffronMagnetTrainStationOfficerRightThisWayText
	waitbutton
	closetext
	applymovement SAFFRONMAGNETTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, SaffronMagnetTrainStationPlayerApproachAndEnterTrainMovement
	setval TRUE
	special MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	end

.PassNotInBag:
	writetext SaffronMagnetTrainStationOfficerYouDontHaveAPassText
	waitbutton
	closetext
	end

.DecidedNotToRide:
	writetext SaffronMagnetTrainStationOfficerHopeToSeeYouAgainText
	waitbutton
	closetext
	end

Script_ArriveFromGoldenrod:
	applymovement SAFFRONMAGNETTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, SaffronMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement
	applymovement SAFFRONMAGNETTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerReturnToBoardingGateMovement
	opentext
	writetext SaffronMagnetTrainStationOfficerArrivedInSaffronText
	waitbutton
	closetext
	end

SaffronMagnetTrainStationGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext SaffronMagnetTrainStationGymGuideText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext SaffronMagnetTrainStationGymGuideText_ReturnedMachinePart
	waitbutton
	closetext
	end

SaffronMagnetTrainStationTeacherScript:
	jumptextfaceplayer SaffronMagnetTrainStationTeacherText

SaffronMagnetTrainStationLassScript:
	jumptextfaceplayer SaffronMagnetTrainStationLassText

SaffronMagnetTrainStationOfficerApproachTrainDoorMovement:
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

SaffronMagnetTrainStationOfficerReturnToBoardingGateMovement:
	step LEFT
	step DOWN
	step DOWN
	step_end

SaffronMagnetTrainStationPlayerApproachAndEnterTrainMovement:
	step UP
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step UP
	step UP
	step_end

SaffronMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement:
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	turn_head UP
	step_end

SaffronMagnetTrainStationOfficerTrainIsntOperatingText:
	text "Λυπάμαι, μα το"
	line "ΤΡΕΝΟ ΜΑΓΝΗΤΗΣ"
	cont "δεν τρέχει τώρα."
	done

SaffronMagnetTrainStationOfficerAreYouComingOnBoardText:
	text "Σύντομα πάμε"
	line "στη GOLDENROD."

	para "Θέλετε να έρθετε"
	line "και εσείς;"
	done

SaffronMagnetTrainStationOfficerRightThisWayText:
	text "Να δω το"
	line "ΠΑΣΟ, παρακαλώ;"

	para "OK. από"
	line "εδώ, κύριε."
	done

SaffronMagnetTrainStationOfficerYouDontHaveAPassText:
	text "Λυπάμαι, μα δεν"
	line "έχετε ΠΑΣΟ."
	done

SaffronMagnetTrainStationOfficerHopeToSeeYouAgainText:
	text "Ελπίζουμε να"
	line "σας ξανά δούμε."
	done

SaffronMagnetTrainStationOfficerArrivedInSaffronText:
	text "Πάμε στην"
	line "SAFFRON."

	para "Ελπίζουμε να"
	line "σας ξανά δούμε."
	done

SaffronMagnetTrainStationGymGuideText:
	text "Το ΤΡΕΝΟ ΜΑΓΝΗΤΗΣ"
	line "είναι μοντέρνο"

	para "τραίνο που έχει"
	line "ηλεκτρισμό και"

	para "μαγνήτες για να"
	line "πιάσει απίστευτες"
	cont "ταχύτητες."

	para "Ωστόσο, αν"
	line "δεν έχει"
	cont "ηλεκτρισμό…"
	done

SaffronMagnetTrainStationGymGuideText_ReturnedMachinePart:
	text "Φιου…"

	para "Πόσες φορές"
	line "έχω πάει μπρος"

	para "και πίσω μεταξύ"
	line "KANTO και JOHTO;"
	done

SaffronMagnetTrainStationTeacherText:
	text "Πριν το ΣΤΑΘΜΟ"
	line "του ΤΡΕΝΟΥ εδώ"

	para "ήταν χτισμένο,"
	line "ένα σπίτι."

	para "Ένα κοριτσάκι, η"
	line "ΜΙΜΗΤΡΙΑ"
	cont "ζούσε εδώ."
	done

SaffronMagnetTrainStationLassText:
	text "Γεια. Έχεις το"
	line "ΠΑΣΟ; Εγώ έχω"

	para "ένα. Όλοι εδώ"
	line "στη SAFFRON που"

	para "παίρνουν το ΤΡΕΝΟ"
	line "έχουν ΠΑΣΟ."
	done

SaffronMagnetTrainStation_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8, 17, SAFFRON_CITY, 6
	warp_event  9, 17, SAFFRON_CITY, 6
	warp_event  6,  5, GOLDENROD_MAGNET_TRAIN_STATION, 4
	warp_event 11,  5, GOLDENROD_MAGNET_TRAIN_STATION, 3

	def_coord_events
	coord_event 11,  6, SCENE_SAFFRONMAGNETTRAINSTATION_ARRIVE_FROM_GOLDENROD, Script_ArriveFromGoldenrod

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationOfficerScript, -1
	object_event 10, 14, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationGymGuideScript, -1
	object_event  6, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationTeacherScript, EVENT_SAFFRON_TRAIN_STATION_POPULATION
	object_event  6, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationLassScript, EVENT_SAFFRON_TRAIN_STATION_POPULATION
