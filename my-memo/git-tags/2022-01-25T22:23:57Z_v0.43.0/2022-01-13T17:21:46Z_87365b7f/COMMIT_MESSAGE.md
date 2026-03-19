commit 87365b7fde4674d0b50d18a368c775ac05a30576
Author: Kemal <223029+disq@users.noreply.github.com>
Date:   Thu Jan 13 17:21:46 2022 +0000

    Include request headers in client.Info (#4547)
    
    * Include request headers in client.Info
    
    * Add GRPC metadata
    
    * Add tests
    
    * Add changelog
    
    * Clone headers
    
    * Add config option
    
    * Update config/confighttp/clientinfohandler.go
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    * Update config/confighttp/confighttp.go
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    * Update config/configgrpc/configgrpc.go
    
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
    
    * oops
    
    * Fix the test
    
    * Immutable metadata
    
    * Really immutable metadata
    
    * Really return copy, add test
    
    * Optimize metadata getter
    
    * Move changelog entry to unreleased
    
    * Add experimental remarks per CR
    
    Co-authored-by: Kemal Hadimli <disq@users.noreply.github.com>
    Co-authored-by: Juraci Paixão Kröhling <juraci.github@kroehling.de>
