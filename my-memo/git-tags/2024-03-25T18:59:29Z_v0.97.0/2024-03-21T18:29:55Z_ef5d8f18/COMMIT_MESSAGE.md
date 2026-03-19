commit ef5d8f18cad912a69afbe9305150b9f09a1b94b9
Author: KIMBOH LOVETTE <37558983+Kimbohlovette@users.noreply.github.com>
Date:   Thu Mar 21 19:29:55 2024 +0100

    Nicer error message when passing an empty configuration file (#9762)
    
    This PR checks if `cfg.Validate()` error is `errMissingReceivers` error
    then returns a nicely formated error.
