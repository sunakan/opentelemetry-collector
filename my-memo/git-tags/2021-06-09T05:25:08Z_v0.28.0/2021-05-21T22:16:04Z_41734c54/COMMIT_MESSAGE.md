commit 41734c54c50be5eb0261e29a1a41abc04103035f
Author: Patryk Matyjasek <72449525+pmatyjasek-sumo@users.noreply.github.com>
Date:   Sat May 22 00:16:04 2021 +0200

    Standarize Settings, Params and Parameters (#3163)
    
    * Standarize Settings, Params and Parameters
    Replace Parameters and settings structs with new struct Settings
    Replace dependencies in service and main
    Update tests
    
    Signed-off-by: Patryk Matyjasek <pmatyjasek@sumologic.com>
    
    # Conflicts:
    #       service/application_windows.go
    
    * Fix unnecessary file
    
    * Rework Settings structure to fit all requirements.
    Split it into ServiceSettings and ApplicationSettings.
    
    Signed-off-by: Patryk Matyjasek <pmatyjasek@sumologic.com>
    
    # Conflicts:
    #       CHANGELOG.md
    #       service/application_windows.go
    
    * Fix linter issues:
    - Fix import orders
    - Rename stutter structs
    
    Signed-off-by: Patryk Matyjasek <pmatyjasek@sumologic.com>
    
    # Conflicts:
    #       CHANGELOG.md
    #       service/application_windows.go
    
    * Remove CommonSettings struct,
    Make SvcSettings private
    
    Signed-off-by: Patryk Matyjasek <pmatyjasek@sumologic.com>
    
    * Remove unused Settings struct.
    Fix Windows tests
    
    Signed-off-by: Patryk Matyjasek <pmatyjasek@sumologic.com>
    
    * Update CHANGELOG.md
    
    Co-authored-by: Bogdan Drutu <lazy@splunk.com>
