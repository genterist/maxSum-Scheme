# maxSum
A Scheme program that takes a list of numbers and returns the maximum sum of any sublist. A sublist is defined as a list of any number of consecutive elements in the input list. For example, for an input list (1 -2 3), there are 6 possible sublists: (1 -2 3), (1 -2), (-2 3), (1), (-2), (3). And in this case, the maxsum is 3. Here are some more examples:
     > (maxsum ‘(1 2 3 4))
     10
     > (maxsum ‘(1 2 -3 4 5))
     9
     > (maxsum ‘(5 -2 3 -1 4))
     9
     > (maxsum ‘(-6 5 4 3 -2 7))
     17
