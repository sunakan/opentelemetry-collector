commit f4f68db25d1f9f2eda65d7e60b24a4b6167ec996
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Dec 1 13:50:19 2020 -0500

    Expose non-nullable elements from slices of pointers (#2200)
    
    Currently for slices of pointers, pdata exposes elements that are pointers to the pointer in the slice (double pointers in the internal implementation). Because of this users have to deal with possible nil values, have to initialize elements (in some cases) etc, but in reality the elements in the slice cannot be nil, so this just adds extra unnecessary complexity. This is possible because:
    
    * Gogo proto (and protobuf) will not unmarshal any nil element in a slice;
    * Our APIs to add elements/remove elements from the slice will guarantee that we never have a nil element in the slice between [0, len-1];
    
    This is an important change because will allow us to change the internal representation (use slice of pointers or non-pointers) without affecting the public API.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
