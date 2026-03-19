commit 883afc505d45e0c86814330a95d8a163ddb51a63
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Tue Nov 2 01:54:12 2021 +0100

    Remove BaseProcessorFactory, force using helper (#4175)
    
    * Add internalinterface package
    
    This adds a general InternalInterface to make an interface impossible
    to implement.
    
    * Use internalinterface.InternalInterface for Processor as a test
    
    * Add Changelog note
    
    * need to use -> must use
    
    * Add small unit test
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
