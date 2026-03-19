commit dbc92d6ff3d864db6cf25c34493b63b8cc860ba9
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon Apr 6 17:09:17 2020 -0700

    Remove AttributeKeyValue, make update methods safe (#781)
    
    Fix a bug in the setters for AttributeValue, the setter needs to overwrite the previous value with the default value.
