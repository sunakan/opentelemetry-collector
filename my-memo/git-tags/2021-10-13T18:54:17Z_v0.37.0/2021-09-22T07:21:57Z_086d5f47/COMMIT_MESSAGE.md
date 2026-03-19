commit 086d5f473ab051412c9242f94b41eba483b5d9e3
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Wed Sep 22 10:21:57 2021 +0300

    Change fanout consumers to do smart routing based on next consumers (#4037)
    
    This PR does change some important things:
    * Applies an optimization for when multiple pipelines are connected to the same receiver,
      and clones only when needed.
    * Applies the same logic of cloning when fanout to multiple exporters from one pipeline.
      Before this was not the case and even though exporters correctly set the Capabilities that was ignored.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
