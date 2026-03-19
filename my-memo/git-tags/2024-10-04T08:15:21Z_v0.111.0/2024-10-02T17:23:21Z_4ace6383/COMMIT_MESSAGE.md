commit 4ace6383744a60526a193ca86b8d3009d947148d
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Wed Oct 2 13:23:21 2024 -0400

    [chore][graph] Decompose buildConnector (#11330)
    
    The primary goal here was to delegate from each switch case, rather than
    nest logic as deep as necessary.
