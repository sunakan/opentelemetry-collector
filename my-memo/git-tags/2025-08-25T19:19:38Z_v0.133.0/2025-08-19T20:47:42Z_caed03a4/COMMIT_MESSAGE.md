commit caed03a4d166dac1c35bda78ada22b1848d405d7
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Aug 19 13:47:42 2025 -0700

    [chore] Move UnmarshalJSON to use the ProtoField to generate (#13675)
    
    Also, this PR improves JSON unmarshal logic by avoiding stack calls
    caused by using the Read[Array|Object]CB and replace with simple
    non-recursive iterations.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
