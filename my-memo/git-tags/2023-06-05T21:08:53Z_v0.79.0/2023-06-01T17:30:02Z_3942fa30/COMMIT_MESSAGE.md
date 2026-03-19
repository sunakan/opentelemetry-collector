commit 3942fa30721bc8b5c34a690296bd7b1cd620acbe
Author: bryan-aguilar <46550959+bryan-aguilar@users.noreply.github.com>
Date:   Thu Jun 1 10:30:02 2023 -0700

    [chore][processor/batch] Update description of send_batch_size (#7803)
    
    This PR improves the description of the send_batch_size configuration option in the batch processor. The current documentation may not be 100 percent clear to new users of the processor. This change seeks to add clarification that send_batch_size is just a trigger to send and does not enforce limits.
