# Project 1 : Parallel Multiway Merge Sort
test machine: csel-kh1260-15.cselabs.umn.edu
group number: G[55]
name: Isaac Blaine-Sauer , [Peter Ortiz]
x500: BLAIN075 , [ORTIZ363] 

## Compile
	> make clean
	> make

## Execution
	> make run1
	> make run2 
	...
	> make run9

## Result
Check "output" folder. You can compare your output with one in "expected" folder.
We were unable to get the final sorted list to be in a file called master.out so instead it will be present in ".out"
	
## Note:
You can modify the given files, functions and code snippets as you need.
Be mindful of headers and/or Makefile modifications accordingly. 
Execution should be the same as provided.

## Individual contributions
Both partners worked together on the vast majority of the code, including the implementation of the creation of child processes and output. 
Isaac was responsible primarily for the merge sort application, while Peter fixed bugs in the main processes creation parts. Both members feel as though they contributed equally.

## Leaf Node Sorting Algorithm
We used quicksort for our leaf node sorting.

## Project Overview
In this project, we used process-related functions such as fork(), exec() and wait() to make the multiway merge sort run in parallel. Each sublist is
sorted by a spawned child process and merged by a parent process. Child process creation is based on
“division instruction” provided along with input data. Apart from merge sort algorithm, quicksort was required for leaf node sorting because the last
sublists may not always have one element unlike typical multiway merge sort.