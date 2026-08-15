TypeNames:
; entries correspond to types (see constants/type_constants.asm)
	table_width 2
	dw Normal
	dw Fighting
	dw Flying
	dw Poison
	dw Ground
	dw Rock
	dw Bird
	dw Bug
	dw Ghost
	dw Steel
	assert_table_length UNUSED_TYPES
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw Normal
	dw CurseType
	assert_table_length UNUSED_TYPES_END
	dw Fire
	dw Water
	dw Grass
	dw Electric
	dw Psychic
	dw Ice
	dw Dragon
	dw Dark
	assert_table_length TYPES_END

Normal:    db "ΚΑΝΟΝΙΚΟ@"
Fighting:  db "ΜΑΧΗΤΙΚΟ@"
Flying:    db "ΥΠΤΑΜΕΝΟ@"
Poison:    db "ΔΗΛΗΤΗΡΙΟ@"
CurseType: db "???@"
Fire:      db "ΦΩΤΙΑ@"
Water:     db "ΝΕΡΟ@"
Grass:     db "ΓΡΑΣΙΔΙ@"
Electric:  db "ΗΛΕΚΤΡΙΚΟ@"
Psychic:   db "ΨΥΧΙΚΟ@"
Ice:       db "ΠΑΓΟΣ@"
Ground:    db "ΓΗΣ@"
Rock:      db "ΠΕΤΡΑ@"
Bird:      db "ΠΤΗΝΟ@"
Bug:       db "ΕΝΤΟΜΟ@"
Ghost:     db "ΦΑΝΤΑΣΜΑ@"
Steel:     db "ΑΤΣΑΛΙ@"
Dragon:    db "ΔΡΑΚΟΣ@"
Dark:      db "ΣΚΟΤΕΙΝΟ@"
