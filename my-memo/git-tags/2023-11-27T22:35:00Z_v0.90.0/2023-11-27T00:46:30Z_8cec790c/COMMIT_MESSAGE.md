commit 8cec790c1c5b8a7dfc4006b7a05b2f6bf904af8f
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Sun Nov 26 16:46:30 2023 -0800

    [chore] [exporterhelper] Remove retry sender -> queue sender callback (#8985)
    
    Use returned error instead to simplify the senders feedback loop. This
    change preserves the behavior. Re-enqueueing of the temporary failures
    depends on the enabled retry sender. This will be changed in the next
    step when re-queueing becomes a configurable option
