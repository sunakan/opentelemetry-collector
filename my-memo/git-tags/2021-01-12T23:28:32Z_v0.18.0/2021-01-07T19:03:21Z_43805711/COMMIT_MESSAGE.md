commit 4380571128c2ef1264ee0535bbf52f00bb598385
Author: Andrei Ozerov <andrei.ozerov92@gmail.com>
Date:   Thu Jan 7 22:03:21 2021 +0300

    Add pdata TraceID.IsEmpty() method (#2331)
    
    * Add pdata TraceID.IsEmpty() method
    
    Add the new method that equals to calling !data.TraceID(t).IsValid() for
    the internal data.TraceID.
    
    * Add a deprecation note for the TraceID.IsValid
    
    We don't need both since they are equivalent.
    
    * Add TraceID.IsEmpty method call to tests
    
    Extend TestTraceID.
