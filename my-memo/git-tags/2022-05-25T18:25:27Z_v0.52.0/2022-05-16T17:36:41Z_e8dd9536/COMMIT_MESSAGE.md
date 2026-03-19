commit e8dd9536f5e53228606c325f12d4bfc4b4293acc
Author: Bogdan Drutu <bogdandrutu@gmail.com>
Date:   Mon May 16 10:36:41 2022 -0700

    Enable errorlint and fix all warnings (#5364)
    
    On top of the errorlint errors, also changes `fmt.Errorf("string literal")` with `errors.New("string literal")`.
    
    Signed-off-by: Bogdan Drutu <bogdandrutu@gmail.com>
