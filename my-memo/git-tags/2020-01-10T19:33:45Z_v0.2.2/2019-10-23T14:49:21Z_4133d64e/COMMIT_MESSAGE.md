commit 4133d64e1a7279aa70f7c601da121c6f09078037
Author: Ruslan Abelharisov <abelharisov@gmail.com>
Date:   Wed Oct 23 17:49:21 2019 +0300

    Use "github.com/stretchr/testify/require" in receiver/opencensusreceiver (#404)
    
    * migrate code base to use "github.com/stretchr/testify/require" in receiver/opencensusreceiver
    
    * fix go vet warning
    
    * use require.Equal
