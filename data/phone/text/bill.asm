BillPhoneMornGreetingText:
	text "Καλημέρα!"

	para "Εδώ ΔΕΙΑΧΕΙΡΗΣΗ"
	line "ΕΞΥΠΗΡΕΤΗΣΗΣ"

	para "ΣΥΣΤΗΜΑΤΟΣ"
	line "ΧΩΡΟΥ ΠΟΚΕΜΟΝ."
	done

BillPhoneDayGreetingText:
	text "Καλή μέρα!"

	para "Εδώ ΔΙΑΧΕΙΡΗΣΗ"
	line "ΕΞΥΠΗΡΕΤΗΣΗΣ"

	para "ΣΥΣΤΗΜΑΤΟΣ"
	line "ΧΩΡΟΥ ΠΟΚΕΜΟΝ."
	done

BillPhoneNiteGreetingText:
	text "Καλησπέρα!"

	para "Εδώ ΔΙΑΧΕΙΡΗΣΗ"
	line "ΕΞΥΠΗΡΕΤΗΣΗΣ"

	para "ΣΥΣΤΗΜΑΤΟΣ"
	line "ΧΩΡΟΥ ΠΟΚΕΜΟΝ."
	done

BillPhoneGenericText:
	text "Ποιός καλεί;"

	para "<PLAYER>, έτσι;"
	line "Στάσου λίγο…"

	para "<……>"
	line "<……>"
	done

BillPhoneNotFullText:
	text "Ευχαριστώ για"
	line "την αναμονή!"

	para "<PLAYER>, το ΚΟΥΤΙ"
	line "έχει χώρο για @"
	text_ram wStringBuffer3
	text_start
	cont "άλλα #μον."

	para "Βγες έξω και"
	line "γέμησε το!"
	done

BillPhoneNearlyFullText:
	text "Ευχαριστώ για"
	line "την αναμονή!"

	para "<PLAYER>, το ΚΟΥΤΙ"
	line "έχει χώρο για"
	cont "@"
	text_ram wStringBuffer3
	text "άλλα #μον."

	para "Ίσως να"
	line "αλλάξεις ΚΟΥΤΙ."
	done

BillPhoneFullText:
	text "Ευχαριστώ για"
	line "την αναμονή!"

	para "<PLAYER>, το"
	line "ΚΟΥΤΙ γέμησε!"

	para "Άλλαξε τα"
	line "ΚΟΥΤΙΑ αν"

	para "Θέλεις να"
	line "πιάνεις #μον."
	done

BillPhoneNewlyFullText:
	text "Γεια, <PLAYER>;"
	line "Εγώ είμαι, ο BILL!"

	para "Ευχαριστώ για τη"
	line "χρήση ΣΥΣΤΗΜΑΤΟΣ."

	para "Το τελευταίο #-"
	line "μον που έστειλες"
	cont "γέμησε το ΚΟΥΤΙ."

	para "Άλλαξε ΚΟΥΤΙΑ"
	line "αν θέλεις να"

	para "πιάνεις περι-"
	line "σσότερα #μον."

	para "Αντίο τώρα!"
	done
