ENTRY(_start)
SECTIONS {
	. = 0x0;
	.text : ALIGN(0x1000) {
		*(.text)
	}
	.data : ALIGN(0x1000) {
		*(.data)
	}
	.bss : ALIGN(0x1000) {
		*(.bss)
	}
}
