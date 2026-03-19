commit 834b3c4f57d973b16e54638c5aa030b054f9745d
Author: Steven Karis <skaris@omnition.io>
Date:   Tue Mar 12 13:35:56 2019 -0700

    Fix nodebatcher to be simpler and more efficient (#487)
    
    The current node batcher implementation is both overly complex and not very efficient. This simplifies the code by just using a simple mutex, which also improves its performance a great deal.
