commit afefb7464ee00494e93ff76ef5d554a9d46c91b0
Author: Daniel Jaglowski <jaglows3@gmail.com>
Date:   Fri Aug 2 09:05:48 2024 -0500

    [chore] Add readonly matrix test. Remove invalid mutability assertions (#10632)
    
    The primary objective here was to add new test cases for the graph.
    However, I found that mutability assertions added in #8634 appear to be
    nondeterministic. Therefore, important test cases cannot be covered with
    them in place. This effectively removes the assertions about mutability
    for now.
    
    @dmitryax, I'm curious if you have better ideas here. I am thinking that
    perhaps it would be better to have an entirely separate set of test
    cases which are focused on mutability expectations.
    
    Co-authored-by: Pablo Baeyens <pablo.baeyens@datadoghq.com>
