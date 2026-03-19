commit 231ed437ae2fad1039822d8c7c360e094d4bdd13
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Tue Jun 4 17:27:25 2019 -0400

    Add implementation of OpenCensus exporter config
    
    - Added factory and config loading for OpenCensus exporter.
    
    Note: the factory is not compelte yet. We will need to add ability to
    create the exporter based on its config. It will be done in a future PR.
    
    Testing done: automated tests
