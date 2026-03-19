commit ffedebe8585f7e47f05a1386a0848f2af103c7d0
Author: Raphael Philipe Mendes da Silva <raphasil@amazon.com>
Date:   Fri Oct 6 09:14:11 2023 -0700

    [chore]: Validate number of consumers in exporterhelper (#8629)
    
    **Description:** Validate number of consumers in exporterhelper
    
    This is a very small bug fix that does not even deserve a changelog
    entry. The collector will not work if a queue with a number of consumers
    <= 0 is used, so we should fail loudly instead of just hanging not
    draining the data from the queue.
    
    **Testing:** UTs were added.
    
    
    _Please delete paragraphs that you did not use before submitting._
