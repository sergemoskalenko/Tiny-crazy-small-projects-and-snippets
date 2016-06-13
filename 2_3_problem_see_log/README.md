Problem #2 - Programming Warm Up 
Write a function that takes a string and return a boolean stating 
if a string starts and ends with an upper-case letter A-Z. 
Rules: 
* You may not do something trivial like calling is_uppercase(). 
* You may not use any references and may not use any development 
   environment to run or test your code. 
* Code efficiency does not matter, but it should be reasonably 
  tidy and bug-free. 


Problem #3 - Programming with algorithms and data structures 
Write a function that takes an array of numbers and the length of the array. 
The array of numbers can be of any length with the numbers being any size, 
positive or negative. You will be evaluated on the efficiency of the solution 
and tidiness/quality of your code. 

Your function should: 
* Report the range of the numbers (i.e. min and max) 
* Print to screen a list of all numbers within the 
  range that are missing from the array 
* Print the count of all numbers that appear 
  2 or more times within the array 
* Include documentation in-code and follow other "best practices" 
  that you would for production code 

Rules: 
* You may not use any helper functions such as zin 0 , 
  max () , f ind( I , f ilter (1 , etc 
* Your solution must run in linear time 0 (N) 
* No sorting is allowed (because then it would not 0 (N) ) 
* Your solution must be memory efficient. 
  Even if input is [-9999999999. 9999999999]. 
* Assume the compiler/interpreter is dumb. For the purpose of the task, 
  assume the compile will do the wrong thing and not magically optimize 
  your code if you do something questionable. 
* You must explicitly identify the data structure as you use them. 
  For example if you are use fool], on the same include a comment 
  saying if you plan for it to be a LinkedList, an Array, 
  or a ??? data-structure 
* You may use reference ONLY to clarify 
  the basic syntax of a function and if you need a short refresher 
  on Big-0 notation and linear-time, but you may not search for 
  the answer or use sites like StackOverflow where people 
  "tell you how to do something". If you use any references 
  please include links to them at the top of your program. 

  Example: If your function is given 
  [ 3, 1, -5, 3, 3, -5, 0, 1, 1, 3] and the corresponded array length of 10, 
  the program would output the following: 
  
Range is -5 to 3

Missing numbers:
-4
-3
-2
-1
2

Duplicate numbers:
-5 appears 2 times
1 appears 3 times
3 appears 4 times
