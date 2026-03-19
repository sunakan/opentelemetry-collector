commit 8042a032f4936a43e081ceae04edb68c7c582160
Author: Iris Song <73505006+IrisTuntun@users.noreply.github.com>
Date:   Mon Jun 7 03:07:15 2021 -0700

    Remove the proto dependency in goldendataset for traces (#3322)
    
    * Remove the proto dependency in goldendataset for traces
    
    * revert changelog
    
    * update changelog
    
    * Update consumer/pdata/common.go
    
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
    
    * Fix common.go where there is a missing "}"
    
    * Add functions to convert proto keyvalues to AttributeMap
    
    * further remove proto dependency
    
    * Add PR number to CHANGELOG
    
    * update resource_generator_test and resource_to_oc_test
    
    * Return nil instead of empty objects for some generator functions.
    
    Co-authored-by: Anthony Mirabella <a9@aneurysm9.com>
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
