commit 995b68a780eeb56538d5f9691c42e3c05e661d2e
Author: James Bebbington <jbebbington@google.com>
Date:   Tue May 26 07:18:50 2020 +1000

    Change host metrics receiver to use done channel instead of relying on provided context's cancelFn to signal end of ticker (#1017)
