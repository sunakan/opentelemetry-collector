commit 698fbae76b7ca0e550dfcc784c2dbfae23174350
Author: Pablo Baeyens <pablo.baeyens@datadoghq.com>
Date:   Thu Apr 14 17:42:48 2022 +0200

    Use `go.uber.org/atomic` everywhere (#5215)
    
    * Add depguard to enforce usage of `go.uber.org/atomic`
    
    * Use `go.uber.org/atomic` everywhere
