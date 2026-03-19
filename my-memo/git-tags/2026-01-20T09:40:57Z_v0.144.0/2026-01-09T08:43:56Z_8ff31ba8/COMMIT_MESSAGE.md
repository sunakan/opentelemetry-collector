commit 8ff31ba8f7d11d78ff2f9461665d579f71eabf8b
Author: Dmitry Anoshin <anoshindx@gmail.com>
Date:   Fri Jan 9 00:43:56 2026 -0800

    [chore] Simplify experimental factory wrappers (#14395)
    
    Removes unnecessary `factoryOpts` wrapper structs from all x-prefixed
    components, simplifying factory option handling by applying options
    directly to the factory.
