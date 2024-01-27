ENTRY(_start)
 
SECTIONS
{
    .text 0x8000 :
    {
        *(.text.boot)
        *(.text)
/*        *(.text.*)  */
    }
    . = ALIGN(4096); /* align to page size */
 
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
}
