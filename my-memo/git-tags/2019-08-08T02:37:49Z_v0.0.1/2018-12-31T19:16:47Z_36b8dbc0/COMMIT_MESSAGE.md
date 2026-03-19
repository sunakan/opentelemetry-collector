commit 36b8dbc0389a295a2b862d1794ff93107d6791d5
Author: Paulo Janotti <paulo@omnition.io>
Date:   Mon Dec 31 11:16:47 2018 -0800

    Adds Batch Queue of Ids (for tail-sampling) (#282)
    
    * Adds Batch Queue of Ids (for tail-sampling)
    
    Adding one of the types used to implement tail-based sampling.
    
    This type will be used to create the batches that are periodically
    processed while running tail-based sampling. The idea is that
    receivers will put ids concurrently in a batch while from time
    to time a batch will be taken for sampling policy evaluation.
    
    The pipeline of batches behaves in FIFO fashion and the owner of the type
    is in charge of closing each batch by calling the proper method (which returns the
    first batch in the pipe while also starting a new batch).
    
    * PR Feedback
    
    Trying to avoid confusion with the docs by using pipeline instead of queue.
    
    * Better package name
    
    From id_batch_queue to id_batcher (all related renames: files, folders, etc).
