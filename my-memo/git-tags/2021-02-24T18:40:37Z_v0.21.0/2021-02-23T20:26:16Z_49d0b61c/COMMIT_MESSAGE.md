commit 49d0b61c4623e83989b6ae6f1fdabe30c1e4734a
Author: Altieres Freitas <altieressfreitas@gmail.com>
Date:   Tue Feb 23 17:26:16 2021 -0300

    Add SASL_SCRAM authentication mechanism on kafka exporter (#2503)
    
    Fix godoc comment to better explain struct proposal
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    Fix return error message format
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    Fix Typo on test comment
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    Add username and password validation to prevent empty values
    Add specific error message on username and password validation
