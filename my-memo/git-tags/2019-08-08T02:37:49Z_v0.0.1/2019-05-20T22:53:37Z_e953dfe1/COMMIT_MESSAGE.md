commit e953dfe12e601be6788140360c72e2d2f155a5f8
Author: mwiczer <wiczerm@gmail.com>
Date:   Mon May 20 18:53:37 2019 -0400

    Fix bug in internal.CombineErrors (#553)
    
    Previously, multiple errors would produce a bunch of leading "; "s.
    e.g. CombineErrors([foo bar]) = "[; ; foo; bar]"
