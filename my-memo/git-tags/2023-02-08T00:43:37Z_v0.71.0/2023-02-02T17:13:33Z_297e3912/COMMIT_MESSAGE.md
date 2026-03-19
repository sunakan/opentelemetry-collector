commit 297e3912d5847ac0d53b77b2aa1c6042e13749bb
Author: Moh Osman <59479562+moh-osman3@users.noreply.github.com>
Date:   Thu Feb 2 12:13:33 2023 -0500

    Instrument proctelemetry.ProcessMetrics (#6886)
    
    * Instrument proctelemetry.ProcessMetrics (#67)
    
    * Instrument proctelemetry.ProcessMetrics
    
    * add chloggen
    
    * fix lint and remove unneeded context
    
    * catch potential case where some metricValues are 0
    
    * address review feedback
    
    * rebase and remove unneeded registry
    
    * only run assertMetrics for OC
    
    * address review comments
    
    * rebase and update featuregate function in use
    
    * rebase and update to use new otel metrics api
    
    * fix lint err
    
    * address feedback
    
    * newline
    
    * use multierr for errors
