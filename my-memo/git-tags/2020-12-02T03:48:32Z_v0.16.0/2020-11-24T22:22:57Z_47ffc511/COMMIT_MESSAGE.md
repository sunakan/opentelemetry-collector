commit 47ffc511cb764fb833747bce351efd0df7916447
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Nov 24 17:22:57 2020 -0500

    Expose non-nullable metric types (#2208)
    
    This is possible because:
    
    * Gogo proto (and protobuf) will not unmarshal any nil element in a oneof;
    * Set type will initialize the oneof wrapper as well as the element;
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
