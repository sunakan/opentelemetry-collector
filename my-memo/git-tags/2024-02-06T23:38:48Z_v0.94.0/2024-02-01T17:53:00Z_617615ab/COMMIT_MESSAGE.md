commit 617615abdc03058e3aa3975adc2b1fed52eb73cb
Author: Evan Bradley <11745660+evan-bradley@users.noreply.github.com>
Date:   Thu Feb 1 12:53:00 2024 -0500

    [chore] Use `grep -E` in root Makefile to fix warning (#9445)
    
    This removes a warning on recent GNU grep versions, but also works on
    other grep implementations. Contrib already is using the `-E` flag.
