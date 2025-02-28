// https://en.wikibooks.org/wiki/X86_Disassembly/Branches

/**
 * if (condition) then
 *      do_action;
 * 
 * if not (condition) then goto end;
 *      do_action;
 *      end:
 */

void if_then() {
    // Perform a jump only if true
    int x = 0;

    if (x == 0) {
        x = 1;
    }

    x++;
}