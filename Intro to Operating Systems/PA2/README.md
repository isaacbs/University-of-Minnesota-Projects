## Group Number 55
# Isaac Blaine-Sauer BLAIN075
# Peter Ortiz ORTIZ363
Peter Ortiz implimented the forking/piping
Isaac Blaine-Sauer implimented the searchPatternInFile and dirTraverse
Both partners worked together on the rest of the other things and feel as though they contributed equally.

Enter make clean;
Enter make;
Use Make run(1-8) in order to run the input cases

In this project we spawned multiple child processes. Each child process was responsible for
searching some portion of the root directory and communicating the search results to the parent
using pipes. Parent is responsible for reading from these pipes and printing the output to the
terminal.