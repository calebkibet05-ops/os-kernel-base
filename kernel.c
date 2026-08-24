/* kernel.c */
void kmain(void) {
    const char *str = "HELLO FROM KERNEL!";
    char *vidptr = (char*) 0xb8000; // VGA text buffer
    unsigned int i = 0;
    unsigned int j = 0;

    // Clear the screen (2 lines of text, 80 columns * 2 bytes per char)
    while(j < 80 * 25 * 2) {
        vidptr[j] = ' ';
        vidptr[j+1] = 0x07; // Text attribute (light grey on black)
        j += 2;
    }

    j = 0;
    // Write string to screen
    while(str[j] != '\0') {
        vidptr[i] = str[j];
        vidptr[i+1] = 0x0A; // Bright green text on black
        ++j;
        i += 2;
    }
    
    return;
}
