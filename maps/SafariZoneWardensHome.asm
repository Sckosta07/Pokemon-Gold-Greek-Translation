	object_const_def
	const SAFARIZONEWARDENSHOME_LASS

SafariZoneWardensHome_MapScripts:
	def_scene_scripts

	def_callbacks

WardensGranddaughter:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	iftrue .AlreadyMet
	writetext WardensGranddaughterText1
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	end
.AlreadyMet:
	writetext WardensGranddaughterText2
	waitbutton
	closetext
	end

WardenPhoto:
	jumptext WardenPhotoText

SafariZonePhoto:
	jumptext SafariZonePhotoText

WardensHomeBookshelf:
	jumpstd PictureBookshelfScript

WardensGranddaughterText1:
	text "Ο παππούς μου"
	line "είναι ΦΥΛΑΚΑΣ"
	cont "ΖΩΝΗΣ ΣΑΦΑΡΙ."

	para "Τουλάχιστον ήταν…"

	para "Αποφάσισε να"
	line "πάει ταξίδι και"

	para "πήγε στο εξωτερικό"
	line "ολομόναχος."

	para "Δεν τρέχει τη"
	line "ΖΩΝΗ ΣΑΦΑΡΙ"
	cont "πλέον."
	done

WardensGranddaughterText2:
	text "Πολλοί απογοη-"
	line "τεύτηκαν που η"

	para "ΖΩΝΗ ΣΑΦΑΡΙ"
	line "έκλεισε, μα είναι"
	cont "πεισματάρης…"
	done

WardenPhotoText:
	text "Φωτογραφία ενός"
	line "γκρινιάρη γέρου"

	para "που είναι γύρω"
	line "από #μον."
	done

SafariZonePhotoText:
	text "Φωτογραφία μιας"
	line "πεδιάδας γρασιδιού"

	para "με σπάνια #μον"
	line "να παίζουν."
	done

SafariZoneWardensHome_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 6
	warp_event  3,  7, FUCHSIA_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, WardensHomeBookshelf
	bg_event  1,  1, BGEVENT_READ, WardensHomeBookshelf
	bg_event  7,  0, BGEVENT_READ, WardenPhoto
	bg_event  9,  0, BGEVENT_READ, SafariZonePhoto

	def_object_events
	object_event  2,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, WardensGranddaughter, -1
