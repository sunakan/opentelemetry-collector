commit e46c4b63ff9faeba895fbba98daf1a4f80027059
Author: Emmanuel T Odeke <emmanuel@orijtech.com>
Date:   Tue Oct 16 22:13:14 2018 -0700

    all: move helper TimeToTimestamp to internal
    
    Move the common helper TimeToTimestamp to internal
    instead of duplicating its functionality allover
    the repository. It is needed for implementing other
    interceptors.
