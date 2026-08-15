ElevatorFloorNames:
; entries correspond to FLOOR_* constants
	table_width 2
	dw .B4F
	dw .B3F
	dw .B2F
	dw .B1F
	dw ._1F
	dw ._2F
	dw ._3F
	dw ._4F
	dw ._5F
	dw ._6F
	dw ._7F
	dw ._8F
	dw ._9F
	dw ._10F
	dw ._11F
	dw .ROOF
	assert_table_length NUM_FLOORS

.B4F:  db "B4ος@"
.B3F:  db "B3ος@"
.B2F:  db "B2ος@"
.B1F:  db "B1ος@"
._1F:  db "1ος@"
._2F:  db "2ος@"
._3F:  db "3ος@"
._4F:  db "4ος@"
._5F:  db "5ος@"
._6F:  db "6ος@"
._7F:  db "7ος@"
._8F:  db "8ος@"
._9F:  db "9ος@"
._10F: db "10ος@"
._11F: db "11ος@"
.ROOF: db "ΤΑΡ.@"
