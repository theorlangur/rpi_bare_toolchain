ENTRY(_start)
 
SECTIONS
{
    /* Starts at LOADER_ADDR. */
    . = 0x8000;
    /* For AArch64, use . = 0x80000; */
    __start = .;
    __text_start = .;
    .text 0x8000 :
    {
        KEEP(*(.text.boot))
        *(.text)
        *(.text.*)
    }
    . = ALIGN(4096); /* align to page size */
    __text_end = .;
 
    __rodata_start = .;
    .rodata :
    {
        *(.rodata)
        *(.rodata.*)
    }
    . = ALIGN(4096); /* align to page size */
    __rodata_end = .;
 
    __data_start = .;
    .data :
    {
        *(.data)
        *(.data.*)
    }
    . = ALIGN(4096); /* align to page size */
    __data_end = .;
 
    __bss_start = .;
    .bss :
    {
        bss = .;
        *(.bss)
    }
    . = ALIGN(4096); /* align to page size */
    __bss_end = .;
    __bss_size = __bss_end - __bss_start;
    __end = .;
    .ARM.exidx :
    {
	*(.ARM.exidx)
    }
}
