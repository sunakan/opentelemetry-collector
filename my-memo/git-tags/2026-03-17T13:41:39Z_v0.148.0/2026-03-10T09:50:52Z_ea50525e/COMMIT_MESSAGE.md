commit ea50525e4663626d23173d722580e0ef50374095
Author: Damien Mathieu <42@dmathieu.com>
Date:   Tue Mar 10 10:50:52 2026 +0100

    Switch the dictionaries of dictionary tables only once (#14709)
    
    Right now, when merging profiles, we switch dictionary entries when they
    are used.
    
    For example, for each sample, we do:
    
    * Run `switchDictionary` for that sample.
    * Switch all the sample indices dictionaries.
    * Run `switchDictionary` for the stack associated with that sample.
    * Update the sample's stack ID with the one provided by the new
    dictionary.
    
    This has a pretty big issue, as when stacks are associated to multiple
    samples (which is very common in production workloads, but was missed in
    tests), we will try switching the stack's dictionary multiple times.
    
    * Switch the stack's dictionary, works fine.
    * Switch it again. Now, we try assigning indices from the source
    dictionary when they have meaning in the destination one.
    
    Instead, we now do the following:
    
    * Run `switchDictionary` for the stacks.
    * Loop through samples, and run `switchDictionary` for each of them.
    * Retrieve the stack. Because we already switched its dictionary, we get
    a stack already pointing at the new dictionary.
    * Update the sample's stack ID with the one provided by the new
    dictionary.
    
    <sub>This investigation and PR were proudly done **without** the use of
    any LLM.</sub>
    
    ---------
    
    Signed-off-by: Florian Lehner <florian.lehner@elastic.co>
    Co-authored-by: Florian Lehner <florian.lehner@elastic.co>
