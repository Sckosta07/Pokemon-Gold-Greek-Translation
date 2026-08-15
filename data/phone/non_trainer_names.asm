NonTrainerCallerNames:
; entries correspond to PHONECONTACT_* constants (see constants/trainer_constants.asm)
	table_width 2
	dw .none
	dw .mom
	dw .bikeshop
	dw .bill
	dw .elm
	assert_table_length NUM_NONTRAINER_PHONECONTACTS + 1

.none:     db "----------@"
.mom:      db "ΜΑΜΑ@"
.bill:     db "BILL@"
.elm:      db "ΚΑΘ.ELM@"
.bikeshop: db "ΔΙΚΥΚΛΑ@"
