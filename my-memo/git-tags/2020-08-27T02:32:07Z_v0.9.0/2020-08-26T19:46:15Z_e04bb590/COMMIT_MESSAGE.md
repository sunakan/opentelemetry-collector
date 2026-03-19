commit e04bb590a3289e847635ac0bdf0a158da5d87b32
Author: Tigran Najaryan <4194920+tigrannajaryan@users.noreply.github.com>
Date:   Wed Aug 26 15:46:15 2020 -0400

    Add minimal support for array value type (#1523)
    
    Array value type was added to AnyValue Protobuf definition but corresponding
    support in the Collector was missing.
    
    This commit adds AnyValueArray internal data type which wraps an a slice of
    AnyValue pointers.
    
    AnyValueArray supports minimal set of functions for now. We will add more
    functions if needed in the future.
