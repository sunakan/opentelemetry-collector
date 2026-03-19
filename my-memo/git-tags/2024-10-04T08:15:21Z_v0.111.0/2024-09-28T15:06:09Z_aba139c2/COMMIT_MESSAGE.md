commit aba139c2cbf3ed45100230e3564b0be27981a5b5
Author: Matthieu MOREL <matthieu.morel35@gmail.com>
Date:   Sat Sep 28 17:06:09 2024 +0200

    [chore]: use ErrorContains and EqualError (#11295)
    
    #### Description
    
    Testifylint doesn't support it yet.
    This replaces `Contains(t, err.Error()` by `ErrorContains(t, err` and
    `Equal(t, err.Error()` by `EqualError(t, err`
    As they both check for nil error it becomes useless to check it yourself
    without having defined a custom message
    
    <!-- Signed-off-by: Matthieu MOREL <matthieu.morel35@gmail.com> -->
    
    Signed-off-by: Matthieu MOREL <matthieu.morel35@gmail.com>
