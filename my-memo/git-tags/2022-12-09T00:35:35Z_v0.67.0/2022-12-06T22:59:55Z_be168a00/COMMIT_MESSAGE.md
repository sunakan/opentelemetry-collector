commit be168a0043cfa23b467b56b635f6351502e44f4d
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Dec 6 14:59:55 2022 -0800

    Move service.[Collector|NewSvcHandler|CollectorSettings|State|NewCommand] to collector package (#6608)
    
    * Instrument obsreport.Processor (#6607)
    
    * Instrument obsreport.Processor
    
    * add processor promchecker tests
    
    * add chloggen
    
    * run make genpdata and fix linter errors
    
    * address review feedback and retest
    
    * pass cfg into createOtelMetrics
    
    * Update otelcol/moved.go
    
    Co-authored-by: Alex Boten <alex@boten.ca>
    
    * Update service/collector.go
    
    Co-authored-by: Alex Boten <alex@boten.ca>
    
    Co-authored-by: Moh Osman <59479562+moh-osman3@users.noreply.github.com>
    Co-authored-by: Alex Boten <alex@boten.ca>
