commit e81e312d672dba792a04d7486a3bad376b673047
Author: Ruslan Abelharisov <abelharisov@gmail.com>
Date:   Thu Oct 24 20:20:13 2019 +0300

    Use "github.com/stretchr/testify/require" in receiver/zipkinreceiver (#405)
    
    * migrate code base to use "github.com/stretchr/testify/require" in receiver/zipkinreceiver
    
    * use require.Equal and replase t.Error with require
