	object_const_def
	const GOLDENRODFLOWERSHOP_TEACHER
	const GOLDENRODFLOWERSHOP_FLORIA

GoldenrodFlowerShop_MapScripts:
	def_scene_scripts

	def_callbacks

FlowerShopTeacherScript:
	checkevent EVENT_GOT_SQUIRTBOTTLE
	iftrue .Lalala
	checkflag ENGINE_PLAINBADGE
	iffalse .Lalala
	faceplayer
	opentext
	writetext GoldenrodFlowerShopTeacherBetterThanWhitneyText
	promptbutton
	verbosegiveitem SQUIRTBOTTLE
	setevent EVENT_GOT_SQUIRTBOTTLE
	closetext

.Lalala:
	turnobject GOLDENRODFLOWERSHOP_TEACHER, LEFT
	opentext
	writetext GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText
	waitbutton
	closetext
	end

FlowerShopFloriaScript:
	faceplayer
	opentext
	checkflag ENGINE_PLAINBADGE
	iffalse .NoPlainBadge
	writetext GoldenrodFlowerShopFloriaJumpsInSurpriseText
	waitbutton
	closetext
	end

.NoPlainBadge:
	writetext GoldenrodFlowerShopFloriaMustBeAMonText
	waitbutton
	closetext
	end

FlowerShopShelf1: ; unreferenced
	jumpstd PictureBookshelfScript

FlowerShopShelf2: ; unreferenced
	jumpstd MagazineBookshelfScript

FlowerShopRadio: ; unreferenced
	jumpstd Radio2Script

GoldenrodFlowerShopTeacherBetterThanWhitneyText:
	text "είσαι καλύτερος"
	line "απο την WHITNEY."

	para "Ξέρεις για το"
	line "ζωηρό δέντρο;"

	para "Αν το βρέξεις με"
	line "ΠΟΤΙΣΤΗΡΙ,"
	cont "θα επιτεθεί."

	para "Μα αφού έχεις"
	line "κάποια ΕΜΒΛΗΜΑΤΑ,"
	cont "θα είσαι OK."
	done

GoldenrodFlowerShopTeacherLalalaHavePlentyOfWaterText:
	text "Λαλαλα λαλαλαλα."
	line "πάρε άφθονο"
	cont "νερό, αγάπη μου!"
	done

GoldenrodFlowerShopFloriaMustBeAMonText:
	text "Όταν έβρεξα το"
	line "ζωηρό δέντρο"

	para "στον ΔΡΟΜΟ 36,"
	line "πετάχτηκε έξω!"

	para "Νομίζω πως"
	line "είναι #μον."

	para "Μα θέλει κάποιον"
	line "σαν την WHIT-"
	cont "NEY, την GYM"
	cont "ΗΓΕΤΗ, γι' αυτό."
	done

GoldenrodFlowerShopFloriaJumpsInSurpriseText:
	text "Ήξερες για"
	line "το ζωηρό δέντρο;"

	para "Αν το βρέξεις,"
	line "θσ πεταχτεί"
	cont "με έκπληξη!"
	done

GoldenrodFlowerShop_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 6
	warp_event  3,  7, GOLDENROD_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FlowerShopTeacherScript, -1
	object_event  5,  6, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FlowerShopFloriaScript, -1
