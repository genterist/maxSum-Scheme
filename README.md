# maxSum
A Scheme program that takes a list of numbers and returns the maximum sum of any sublist. A sublist is defined as a list of any number of consecutive elements in the input list. For example, for an input list (1 -2 3), there are 6 possible sublists: (1 -2 3), (1 -2), (-2 3), (1), (-2), (3). And in this case, the maxsum is 3. Here are some more examples:<br/>
     > (maxsum ‘(1 2 3 4))              <br/>
     10                                 <br/>
     > (maxsum ‘(1 2 -3 4 5))           <br/>
     9                                  <br/>
     > (maxsum ‘(5 -2 3 -1 4))          <br/>
     9                                  <br/>
     > (maxsum ‘(-6 5 4 3 -2 7))        <br/>
     17                                 <br/>
