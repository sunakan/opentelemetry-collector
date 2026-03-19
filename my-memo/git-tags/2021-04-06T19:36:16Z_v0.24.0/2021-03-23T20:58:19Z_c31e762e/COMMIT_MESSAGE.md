commit c31e762e386d15fe54dbfb45cec9c08e4bf98d95
Author: Paulo Janotti <pjanotti@splunk.com>
Date:   Tue Mar 23 13:58:19 2021 -0700

    Add configsource component (#2720)
    
    * Add configsource component
    
    Create the new component with  minimal code addition.
    
    * Add ApplyConfigSources to a configuration
    
    * Add ApplyConfigSources to a configuration
    
    * Add ConfigSourceSettings
    
    * Add local expandEnvConfig to configsource package
    
    Avoids exposing it from config package.
    
    * Relocate configsource to config/interal
    
    * Move ConfigSource from component package to under configsource
    
    * Fixes after files moved
    
    * Make configmodels.ConfigSource internal
    
    * Add comments and some renames
    
    * Fix deepestConfigSourcesFirst
    
    Fix whitespace
    
    * Fix whitespace
    
    * Do not allow nested config source invocations
    
    * Undo accidental change to go.sum
    
    * PR Feedback
    
    * Reducing scope: keeping only config source interfaces
    
    * Remove boiler plate code that can be added later
    
    * Reduce the interface to a minimum
    
    * Return error from Session.Close
