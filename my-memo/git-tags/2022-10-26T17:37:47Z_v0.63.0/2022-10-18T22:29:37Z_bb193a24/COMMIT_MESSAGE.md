commit bb193a24d0a968027ad48c397899ae3688165756
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Tue Oct 18 15:29:37 2022 -0700

    Deprecate New[JSON|Proto][Marshaler|Unmarshale], expose the structs (#6340)
    
    The main motivation is because we want to be able to extend these Marshaler/Unmarshaler implementation with possible options.
    
    Because of that we have 2 options: 1. add Option to each New func, OR 2. expose the structs so that later users can configure different options inside these structs, similar with `jsonpb.Marshaler`.
    
    I implemented the version 2 since it is simpler, and less code, and also common in the industry.
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
    
    Signed-off-by: Bogdan <bogdandrutu@gmail.com>
