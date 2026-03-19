commit a1ecc6f9489f34a624bf802949ff0cef7d254ac1
Author: Paulo Janotti <paulo@omnition.io>
Date:   Thu Aug 1 11:29:10 2019 -0700

    Add Zipkin exporter factory (#207)
    
    * Add Zipkin exporter factory
    
    Add the Zipkin exporter configuration factory using the new configuration format. This does not bring many of the settings from the old configuration since they won't be used. In a sub-sequent PR the code of the exporter itself will be changed.
    
    * PR Feedback: add 1 test plus some comments
    
    * Rename endpoint to http-url and related field
    
    * Fix goimports issue
    
    * Remove TODO commented code
    
    Replaced the TODO commented code with an issue.
    
    * Rename the field used to specify destination
