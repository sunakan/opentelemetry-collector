commit 63362d5eca860948fe70f79678619ab43ea6fd5b
Author: Paulo Janotti <paulo@omnition.io>
Date:   Fri Sep 20 12:40:21 2019 -0700

    Update testbed modules (#360)
    
    * Update testbed go.mod
    
    These are different than the ones on root and if you use an IDE (depending on the settings) these files may get automatically changed constantly. This update to go.mod avoids that.
    
    * Run go mod tidy for testbed
