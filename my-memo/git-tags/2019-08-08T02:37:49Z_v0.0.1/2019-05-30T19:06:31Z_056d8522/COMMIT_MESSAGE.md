commit 056d8522c0b6f406f3d42f3f68385acee4e26868
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Thu May 30 15:06:31 2019 -0400

    Implement V2 configuration loading (#557)
    
    * Implement V2 configuration loading
    
    Implemented reading of generic parts of V2 configuration from Viper and
    validation of the configuration.
    
    Added stretchr/testify library to be able to use helpers like assert() in tests.
    
    Testing done: automated tests
    
    * Fix PR comments
