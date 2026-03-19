commit 8167c49f126f1794c9e8b424b92f41724575e46e
Author: Steven Karis <skaris@omnition.io>
Date:   Thu Jan 10 10:54:47 2019 -0800

    Fix nil pointer panic zipkinv1 (#299)
    
    * Fixes a branch that would cause a nil panic on spans with no annotations
    
    If we received a span with no annotations, there would be a nil panic
    due to parsedAnnotations being nil. This fixes that
    
    Issue:
    
    Testing Done: unit test
    
    * Add test
    
    * Remove print debug line
