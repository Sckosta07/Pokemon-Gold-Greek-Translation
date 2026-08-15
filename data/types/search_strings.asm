PokedexTypeSearchStrings:
; entries correspond with PokedexTypeSearchConversionTable (see data/types/search_types.asm)
	table_width POKEDEX_TYPE_STRING_LENGTH
	db "  ----  @"
	db "ΚΑΝΟΝΙΚΟ@"
	db " ΦΩΤΙΑ  @"
	db "  ΝΕΡΟ  @"
	db "ΓΡΑΣΙΔΙ @"
	db "ΗΛΕΚΤΡ. @"
	db " ΠΑΓΟΣ  @"
	db "ΝΑΧΗΤΙΚΟ@"
	db "  ΔΛΤ   @"
	db "ΕΔΑΦΟΥΣ @"
	db "ΥΠΤΑΜΕΝΟ@"
	db " ΨΥΧΙΚΟ @"
	db " ΕΝΤΟΜΟ @"
	db " ΠΕΤΡΑ  @"
	db "ΦΑΝΤΑΣΜΑ@"
	db " ΔΡΑΚΟΣ @"
	db "ΣΚΟΤΕΙΝΟ@"
	db " ΑΤΣΑΛΙ @"
	assert_table_length NUM_TYPES + 1
