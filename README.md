# CS236LabTester
Tests your lab output against the input and output files that are given and generates .txt files for all failed tests

# What is contained in the LabTester.txt file?
The LabTester.txt file contains some bash functions and aliases that can be used to quickly test your code. 
The functions include:
  full236 - runs the program with all input files and tests all output files against the output of its respective input file based on     the arguements given.

  c236 - checks if a test passed and if it didn't prints an output file of what was wrong in the format of #Fail.txt

  r236 - runs the program with an input and puts that input into actual.txt

  resetDiff - deletes the diffFile.txt file >> this file contains what tests passed and failed
  
Aliases:
  comp236 - compiles the program in the current directory
    
# How To install these temporarily?
Merely copy and paste the contents of LabTester.txt into your bash terminal for that session and you are good to go. (Paste in terminal is right click)

# How To install these permantly?
I didn't go through the process of making this an actual bash script. If you want to do that go ahead, but of course I don't have any right to tell you what to do and what not to do. If you are just as lazy as I am then you can just follow these steps to make them commands (which you can call similar to the way you call ls and cd):
  1) run this command in bash with your favorite test editor(I'll give some examples):
    nano ~/.bashrc
    vi ~/.bashrc
    gedit ~/.bashrc
    you get the point.
  2) Go to the very bottom of the file and paste the contents of the LabTester.txt file there.
  3) Pat yourself on the back for a mission complete and an easy testing cycle for the rest of the labs.

# Troubleshooting
  ## I can't find the .bashrc file
   probably doesn't exist then a quick google search can tell you how to make one and everything from that point on should be   
   straitforward. Just follow the directions above.
  ## I ran full236 and it didn't work
   1) make sure you use the comp236 -- it takes no parameters -- command first. The other functions are dependant on the compiled code
   being named lab_236
   2) make sure you have downloaded all the test files and that the follow the in#.txt and out#.txt naming scheme.
   3) make sure that you run the command directly and example of how to run the code and explanation of it is down below.
   4) make sure you copied everything correctly
   5) I probably made some mistake. Information on how to submit a bug report below.
  ## I don't know how to install or use bash
   1) for use of bash there are lots of helpful online guides. just search bash guide and you'll probably find one. 
   Bash is a very powerful and useful tool so I suggest taking a look.
   2) If you have linux well you probably have bash so I won't even bother. But here is an installation guide for you windows 10 users
   out there (this isn't a dig at you. I also use windows 10 so... yeah.) https://docs.microsoft.com/en-us/windows/wsl/install-win10


# How do I use these commands?
I recommend exclusively using the full236 command -- The other commands exist because full236 is dependant on them.
  1) c236 and r236 take one argument -- which is a number. 
  So if you wanted to run the code with in21.txt you would run the command: r236 21       
  If you wanted to compare the current output to out21.txt you would run the command: c236 21
  2) full236 takes (n) number of arguements if you wanted to do a full test for all the input and output files of lab 2 you would run
  the command: full236 21 22 23 24 25 26 27 28 29 61 62
  
  full236 generates several files one is the diffFile.txt which merely contains what tests passed and what tests failed. 
  For all failed tests there will be a $testNumberFail.txt(for out21.txt it would generate 21Fail.txt) file which stores the result
  of the diff. 
  
# How do I submit a bug report or feature request?
  1) for a feature request email traegand@byu.edu with subject LABTESTER -- FEATURE REQUEST 
  2) for a bug report email traegand@byu.edu with subject LABTESTER -- BUG REPORT
  
  
Cheers and happy testing!
