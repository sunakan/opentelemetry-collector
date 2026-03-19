commit a31ad5bf6c332fb77a4cc97b13cee541acaf624f
Author: Pablo Baeyens <pbaeyens31+github@gmail.com>
Date:   Mon Apr 12 16:45:45 2021 +0200

    Move Unmarshaler interface to Config instead of Factory (#2867)
    
    * Make custom unmarshaling a config interface
    
    If a component wants custom unmarshaling they need to add an
    Unmarshal method to their Config struct instead of providing
    it through the factory.
    
    * Add interface assert for unmarshable configurations
    
    * Document Unmarshal methods
    
    * Mention that config.Unmarshable is an optional interface.
    
    * Use config.Parser on config.Unmarshable interface
    Move customUnmarshaler implementation to Unmarshal
    
    * Deprecate factory unmarshaler interface
    
    * Amend comment
    
    * Empty commit to retrigger CI
    
    * Add deprecation comment
    
    * Revert previous commits
    
    Revert "Add deprecation comment"
    
    This reverts commit 4e10ec27f2c290e1f3d341989b1a05cd4b3cb3e3.
    
    Revert "Amend comment"
    
    This reverts commit ab5ae0af76fc720e12451f6b8d8ae99ab3b17628.
    
    Revert "Deprecate factory unmarshaler interface"
    
    This reverts commit e33c788d555898b7f94eb46114d74a19a108cf5b.
    
    * Add fallback to use deprecatedUnmarshaler
    
    * Rename config.Unmarshable to config.CustomUnmarshable; update docs
    
    * Empty commit to retrigger CI
