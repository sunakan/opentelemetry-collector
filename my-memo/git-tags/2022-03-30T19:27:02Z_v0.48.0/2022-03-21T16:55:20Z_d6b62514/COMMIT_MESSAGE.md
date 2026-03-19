commit d6b625149701980f6e67d1132d5361e70e56a936
Author: Dmitrii Anoshin <anoshindx@gmail.com>
Date:   Mon Mar 21 09:55:20 2022 -0700

    Remove "Attribute" part from common pdata collections names (#5001)
    
    * Remove "Attribute" part from common pdata collections names
    
    All of the pdata wrappers for collections include Attribute part in its name because the fields used to be part of the attributes fields only. But it's not the case anymore since `pdata.LogRecord.Body` uses AnyValue that can contain any common collection. This change renames AttributeMap and AttributeValueSlice collections by removing Attribute part from their names and making them consistent.
    
    * Change NewMapFromRaw to take interface{}
    
    Co-authored-by: Bogdan Drutu <bogdandrutu@gmail.com>
