commit a8db6271f90ad6877e77967cfaf288cda6e810bd
Author: Jay Camp <jay.r.camp@gmail.com>
Date:   Mon Jun 22 15:16:10 2020 -0400

    Testbed improvements (#1161)
    
    * Use atomic wrappers for readability and for preventing accidentally accessing atomic variables
      non-atomically.
    * Enhance readability of large numbers in testbed by formatting with thousands separator.
    * Include rate per second in testbed output.
