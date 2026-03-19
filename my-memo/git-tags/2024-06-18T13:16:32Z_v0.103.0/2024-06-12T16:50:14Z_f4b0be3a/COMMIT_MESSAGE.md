commit f4b0be3a523c5b0efd7bfb0a0238f8aff5e14a0a
Author: Juraci Paixão Kröhling <juraci@kroehling.de>
Date:   Wed Jun 12 18:50:14 2024 +0200

    [pdata] Change mode for generated files (#10395)
    
    This came up during the security review, but this shouldn't have any
    practical effect other than removing a nosec directive, given that git
    will store the files in 0644 mode anyway.
    
    This is what the security audit references as "OTE-01-005 WP1".
    
    Signed-off-by: Juraci Paixão Kröhling <juraci@kroehling.de>
    Co-authored-by: Alex Boten <223565+codeboten@users.noreply.github.com>
