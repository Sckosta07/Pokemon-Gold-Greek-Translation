	object_const_def
	const CIANWOODCITY_STANDING_YOUNGSTER
	const CIANWOODCITY_POKEFAN_M
	const CIANWOODCITY_LASS
	const CIANWOODCITY_ROCK1
	const CIANWOODCITY_ROCK2
	const CIANWOODCITY_ROCK3
	const CIANWOODCITY_ROCK4
	const CIANWOODCITY_ROCK5
	const CIANWOODCITY_ROCK6
	const CIANWOODCITY_POKEFAN_F

CianwoodCity_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CianwoodCityFlypointCallback

CianwoodCityFlypointCallback:
	setflag ENGINE_FLYPOINT_CIANWOOD
	endcallback

CianwoodCityChucksWife:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM02_FLY
	iftrue .GotFly
	writetext ChucksWifeEasierToFlyText
	promptbutton
	checkevent EVENT_BEAT_CHUCK
	iftrue .BeatChuck
	writetext ChucksWifeBeatChuckText
	waitbutton
	closetext
	end

.BeatChuck:
	writetext ChucksWifeGiveHMText
	promptbutton
	verbosegiveitem HM_FLY
	iffalse .Done
	setevent EVENT_GOT_HM02_FLY
	writetext ChucksWifeFlySpeechText
	promptbutton
.GotFly:
	writetext ChucksWifeChubbyText
	waitbutton
.Done:
	closetext
	end

CianwoodCityYoungster:
	jumptextfaceplayer CianwoodCityYoungsterText

CianwoodCityPokefanM:
	jumptextfaceplayer CianwoodCityPokefanMText

CianwoodCityLass:
	jumptextfaceplayer CianwoodCityLassText

CianwoodCityUnusedScript: ; unreferenced
	jumptextfaceplayer CianwoodCityUnusedText

CianwoodCitySign:
	jumptext CianwoodCitySignText

CianwoodGymSign:
	jumptext CianwoodGymSignText

CianwoodPharmacySign:
	jumptext CianwoodPharmacySignText

CianwoodPhotoStudioSign:
	jumptext CianwoodPhotoStudioSignText

CianwoodPokecenterSign:
	jumpstd PokecenterSignScript

CianwoodCityRock:
	jumpstd SmashRockScript

CianwoodCityHiddenRevive:
	hiddenitem REVIVE, EVENT_CIANWOOD_CITY_HIDDEN_REVIVE

CianwoodCityHiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_CIANWOOD_CITY_HIDDEN_MAX_ETHER

ChucksWifeEasierToFlyText:
	text "Πέρασες τη"
	line "θάλασσα για εκεί;"

	para "Πρέπει να"
	line "είναι δύσκολο."

	para "Πρέπει να είναι"
	line "πιο εύκολο αν"

	para "τα #μον σου"
	line "ήσξεραν ΠΤΗΣΗ…"
	done

ChucksWifeBeatChuckText:
	text "Μα δεν γίνεται η"
	line "ΠΤΗΣΗ χωρίς το"
	cont "ΕΜΒΛΗΜΑ μας."

	para "Αν νικήσεις τον"
	line "ΗΓΕΤΗ GYM εδώ,"
	cont "έλα να με δεις."

	para "Έχω ένα καλό"
	line "δώρο για εσένα."
	done

ChucksWifeGiveHMText:
	text "Είναι το ΕΜΒΛΗΜΑ"
	line "της CIANWOOD!"

	para "Τότε πάρε"
	line "αυτό το HM."
	done

ChucksWifeFlySpeechText:
	text "Μάθε ΠΤΗΣΗ στα"
	line "#μον σου."

	para "Μπορείς να"
	line "ΠΕΤΑΣ οπότε"

	para "και όπου έχεις"
	line "παει πρώτα."
	done

ChucksWifeChubbyText:
	text "Ο άντρας μου"
	line "έχασε από εσένα,"
	cont "οπότε προπονείται."

	para "Είναι καλό, αφού"
	line "είχε γίνει λίγο"
	cont "χοντρούλης."
	done

CianwoodCityYoungsterText:
	text "Αν ΠΕΤΑΞΕΙΣ,"
	line "θα πας πίσω στην"

	para "OLIVINE"
	line "αμέσως."
	done

CianwoodCityPokefanMText:
	text "Βράχοι βόρεια"
	line "της πόλης μπορούν"
	cont "να σπάσουν."

	para "Μπορεί να"
	line "κρύβουν κάτι."

	para "Τα #μον σου"
	line "μπορούν να κάνουν"
	cont "ΒΡΑΧΟΣΠΑΣΤΗ."
	done

CianwoodCityLassText:
	text "Ο CHUCK, ο GYM"
	line "ΗΓΕΤΗΣ, μαλώνει"

	para "με τα μαχητικά"
	line "#μον του."
	done

CianwoodCityUnusedText:
	text "Υπάρχουν πολλά"
	line "νησιά μεταξύ εδώ"
	cont "και της OLIVINE."

	para "Μυθικό θαλάσσιο"
	line "πλάσμα υποτίθεται"
	cont "πως ζει εκεί."
	done

CianwoodCitySignText:
	text "ΠΟΛΗ CIANWOOD"

	para "Λιμάνι Κυκλωμένο"
	line "από Άγρια Νερά"
	done

CianwoodGymSignText:
	text "ΠΟΛΗ CIANWOOD"
	line "ΠΟΚΕMON GYM"

	para "ΗΓΕΤΗΣ: CHUCK"

	para "Οι Ζωηρές Γροθιές"
	line "Μιλούν γι' Αυτον"
	done

CianwoodPharmacySignText:
	text "500 Χρόνια"
	line "Παράδοσης"

	para "ΦΑΡΜΑΚΕΙΟ"
	line "ΠΟΛΗΣ CIANWOOD"

	para "Περιμένουμε"
	line "Ερωτήσεις Φαρμάκων"
	done

CianwoodPhotoStudioSignText:
	text "ΠΟΛΗ CIANWOOD"
	line "ΣΤΟΥΝΤΙΟ ΦΩΤΟ"

	para "Πάρτε Εικόνες"
	line "ως Ενθύμια!"
	done

CianwoodCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17, 41, MANIAS_HOUSE, 1
	warp_event  8, 43, CIANWOOD_GYM, 1
	warp_event 23, 43, CIANWOOD_POKECENTER_1F, 1
	warp_event 15, 47, CIANWOOD_PHARMACY, 1
	warp_event  9, 31, CIANWOOD_PHOTO_STUDIO, 1
	warp_event 15, 37, CIANWOOD_LUGIA_SPEECH_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 20, 34, BGEVENT_READ, CianwoodCitySign
	bg_event  7, 45, BGEVENT_READ, CianwoodGymSign
	bg_event 24, 43, BGEVENT_READ, CianwoodPokecenterSign
	bg_event 19, 47, BGEVENT_READ, CianwoodPharmacySign
	bg_event  8, 32, BGEVENT_READ, CianwoodPhotoStudioSign
	bg_event  8, 16, BGEVENT_ITEM, CianwoodCityHiddenRevive
	bg_event  5, 29, BGEVENT_ITEM, CianwoodCityHiddenMaxEther

	def_object_events
	object_event 21, 37, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodCityYoungster, -1
	object_event 17, 31, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityPokefanM, -1
	object_event 14, 42, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityLass, -1
	object_event  8, 16, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event 11, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  6, 24, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  5, 29, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event 10, 27, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event  7, 17, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityRock, -1
	object_event 10, 46, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodCityChucksWife, -1
