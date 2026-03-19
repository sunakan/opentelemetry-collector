commit c5c96077272780e3f734bf1027f3bcbff3781f7a
Author: Jade Guiton <jade.guiton@datadoghq.com>
Date:   Wed Feb 12 16:51:30 2025 +0100

    [chore] Add fmt step to mdatagen-test (#12373)
    
    #### Description
    
    Not sure if anyone is actually using `make mdatagen-test`, but it is
    failing on main because of missing imports. This is because `mdatagen`
    does not work without a subsequent `goimports` pass. This PR adds a
    `make fmt` step to make it pass again.
