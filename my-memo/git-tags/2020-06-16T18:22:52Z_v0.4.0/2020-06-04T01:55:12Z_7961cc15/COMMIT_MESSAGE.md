commit 7961cc157bd0c75532e5a45e09e278e4c34a0eb5
Author: Annie Fu <16651409+anniefu@users.noreply.github.com>
Date:   Wed Jun 3 18:55:12 2020 -0700

    filterprocessor for filtering (dropping) incoming metrics (#1001)
    
    * filterprocessor for filtering (dropping) incoming metrics by various properties
    
    traceprocessor for spans to come in a separate PR.
    
    * Add benchmark test and use new trace processor format
    
    * Address PR and fix build
    
    * Remove testing caching processor
    
    * Address PR & increase test coverage
    
    * Pre-allocate filtered metrics slice
