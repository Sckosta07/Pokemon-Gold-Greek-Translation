NameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 1
	dw .Names
	db 1 ; default option

.Names:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 5 ; items
	db "ΕΠΙΛΟΓΗ@"

PlayerNameArray:
IF DEF(_GOLD)
	db "ΧΡΥΣΟΣ@"
	db "ΚΩΣΤΑΣ@"
	db "ΜΗΤΣΟΣ@"
	db "ΜΑΚΗΣ@"
ELIF DEF(_SILVER)
	db "ΑΡΓΥΡΗΣ@"
	db "ΑΝΤΩΝΗΣ@"
	db "ΧΑΡΗΣ@"
	db "ΤΑΚΗΣ@"
ENDC
	db 2 ; title indent
	db "ΟΝΟΜΑ@" ; title
