> library(swirl)

| Hi! Type swirl() when you are ready to begin.

> install_from_swirl("R Programming")
  |==============================================================================================================================================| 100%
Downloading: 46 MB      
| Course installed successfully!

> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did then. If you are new, call yourself something unique.

What shall I call you? Pramod

| Thanks, Pramod. Let's cover a couple of quick housekeeping items before we begin our first lesson. First of all, you should know that when you see
| '...', that means you should press Enter when you are done reading and ready to continue.

...  <-- That's your cue to press Enter to continue

| Also, when you see 'ANSWER:', the R prompt (>), or when you are asked to select from a list, that means it's your turn to enter a response, then
| press Enter to continue.

Select 1, 2, or 3 and press Enter 

1: Continue.
2: Proceed.
3: Let's get going!

Selection: 3

| You can exit swirl and return to the R prompt (>) at any time by pressing the Esc key. If you are already at the prompt, type bye() to exit and save
| your progress. When you exit properly, you'll see a short message letting you know you've done so.

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

| Let's get started!

...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 2

| OK. I'm opening the swirl courses web page in your browser.

| Leaving swirl now. Type swirl() to resume.

> ls()
character(0)
> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same name as you did then. If you are new, call yourself something unique.

What shall I call you? Pramod

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers       4: Vectors                    5: Missing Values          
 6: Subsetting Vectors         7: Matrices and Data Frames   8: Logic                      9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data           13: Simulation                14: Dates and Times           15: Base Graphics           


Selection: 1
  |                                                                                                                                              |   0%

| In this lesson, we will explore some basic building blocks of the R programming language.

...
  |====                                                                                                                                          |   3%
| If at any point you'd like more information on a particular topic related to R, you can type help.start() at the prompt, which will open a menu of resources (either within RStudio or your default web browser, depending on your setup). Alternatively, a
| simple web search often yields the answer you're looking for.

...
  |=======                                                                                                                                       |   5%
| In its simplest form, R can be used as an interactive calculator. Type 5 + 7 and press Enter.

> 5+7
[1] 12

| Great job!
  |===========                                                                                                                                   |   8%
| R simply prints the result of 12 by default. However, R is a programming language and often the reason we use a programming language as opposed to a calculator is to automate some process or avoid unnecessary repetition.

...
  |===============                                                                                                                               |  11%
| In this case, we may want to use our result from above in a second calculation. Instead of retyping 5 + 7 every time we need it, we can just create a new variable that stores the result.

...
  |===================                                                                                                                           |  13%
| The way you assign a value to a variable in R is by using the assignment operator, which is just a 'less than' symbol followed by a 'minus' sign. It looks like this: <-

...
  |======================                                                                                                                        |  16%
| Think of the assignment operator as an arrow. You are assigning the value on the right side of the arrow to the variable name on the left side of the arrow.

...
  |==========================                                                                                                                    |  18%
| To assign the result of 5 + 7 to a new variable called x, you type x <- 5 + 7. This can be read as 'x gets 5 plus 7'. Give it a try now.

> x <- 5+7

| That's a job well done!
  |==============================                                                                                                                |  21%
| You'll notice that R did not print the result of 12 this time. When you use the assignment operator, R assumes that you don't want to see the result immediately, but rather that you intend to use the result for something else later on.

...
  |==================================                                                                                                            |  24%
| To view the contents of the variable x, just type x and press Enter. Try it now.

> x
[1] 12

| Excellent work!
  |=====================================                                                                                                         |  26%
| Now, store the result of x - 3 in a new variable called y.

> y <- x-3

| Excellent job!
  |=========================================                                                                                                     |  29%
| What is the value of y? Type y to find out.

> y
[1] 9

| Excellent work!
  |=============================================                                                                                                 |  32%
| Now, let's create a small collection of numbers called a vector. Any object that contains data is called a data structure and numeric vectors are the simplest type of data structure in R. In fact, even a single number is considered a vector of length
| one.

...
  |=================================================                                                                                             |  34%
| The easiest way to create a vector is with the c() function, which stands for 'concatenate' or 'combine'. To create a vector containing the numbers 1.1, 9, and 3.14, type c(1.1, 9, 3.14). Try it now and store the result in a variable called z.

> c(1.9,9,3.14)
[1] 1.90 9.00 3.14

| Give it another try. Or, type info() for more options.

| Inputting z <- c(1.1, 9, 3.14) will assign the vector (1.1, 9, 3.14) to a new variable called z. Including single spaces after the commas in the vector is not required, but helps make your code less cluttered and more readable.

> z <- c(1.1,9,3.14)

| Excellent work!
  |====================================================                                                                                          |  37%
| Anytime you have questions about a particular function, you can access R's built-in help files via the `?` command. For example, if you want more information on the c() function, type ?c without the parentheses that normally follow a function name. Give
| it a try.

> ?c
starting httpd help server ... done

| All that hard work is paying off!
  |========================================================                                                                                      |  39%
| Type z to view its contents. Notice that there are no commas separating the values in the output.

> class(z)
[1] "numeric"

| Give it another try. Or, type info() for more options.

| Type z and press Enter to view its contents.

> z
[1] 1.10 9.00 3.14

| You got it!
  |============================================================                                                                                  |  42%
| You can combine vectors to make a new vector. Create a new vector that contains z, 555, then z again in that order. Don't assign this vector to a new variable, so that we can just see the result immediately.

> z <- c(z,555)

| That's not exactly what I'm looking for. Try again. Or, type info() for more options.

| Type c(z, 555, z). Don't create a new variable. We just want to view the result.

> z <- c(z,555,z)

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type info() for more options.

| Type c(z, 555, z). Don't create a new variable. We just want to view the result.

> c(z,555,z)
[1]   1.10   9.00   3.14 555.00   1.10   9.00   3.14

| Excellent job!
  |================================================================                                                                              |  45%
| Numeric vectors can be used in arithmetic expressions. Type the following to see what happens: z * 2 + 100.

> z * 2 + 100
[1] 102.20 118.00 106.28

| Great job!
  |===================================================================                                                                           |  47%
| First, R multiplied each of the three elements in z by 2. Then it added 100 to each element to get the result you see above.

...
  |=======================================================================                                                                       |  50%
| Other common arithmetic operators are `+`, `-`, `/`, and `^` (where x^2 means 'x squared'). To take the square root, use the sqrt() function and to take the absolute value, use the abs() function.

...
  |===========================================================================                                                                   |  53%
| Take the square root of z - 1 and assign it to a new variable called my_sqrt.

> my_sqrt <- sqrt(z-1)

| Keep up the great work!
  |==============================================================================                                                                |  55%
| Before we view the contents of the my_sqrt variable, what do you think it contains?

1: a vector of length 3
2: a single number (i.e a vector of length 1)
3: a vector of length 0 (i.e. an empty vector)

Selection: 1

| That's the answer I was looking for.
  |==================================================================================                                                            |  58%
| Print the contents of my_sqrt.

> my_sqrt
[1] 0.3162278 2.8284271 1.4628739

| All that hard work is paying off!
  |======================================================================================                                                        |  61%
| As you may have guessed, R first subtracted 1 from each element of z, then took the square root of each element. This leaves you with a vector of the same length as the original vector z.

...
  |==========================================================================================                                                    |  63%
| Now, create a new variable called my_div that gets the value of z divided by my_sqrt.

> my_div <- z/my_sqrt

| Great job!
  |=============================================================================================                                                 |  66%
| Which statement do you think is true?

1: The first element of my_div is equal to the first element of z divided by the first element of my_sqrt, and so on...
2: my_div is a single number (i.e a vector of length 1)
3: my_div is undefined

Selection: 1

| You nailed it! Good job!
  |=================================================================================================                                             |  68%
| Go ahead and print the contents of my_div.

> my_div
[1] 3.478505 3.181981 2.146460

| Great job!
  |=====================================================================================================                                         |  71%
| When given two vectors of the same length, R simply performs the specified arithmetic operation (`+`, `-`, `*`, etc.) element-by-element. If the vectors are of different lengths, R 'recycles' the shorter vector until it is the same length as the longer
| vector.

...
  |=========================================================================================================                                     |  74%
| When we did z * 2 + 100 in our earlier example, z was a vector of length 3, but technically 2 and 100 are each vectors of length 1.

...
  |============================================================================================================                                  |  76%
| Behind the scenes, R is 'recycling' the 2 to make a vector of 2s and the 100 to make a vector of 100s. In other words, when you ask R to compute z * 2 + 100, what it really computes is this: z * c(2, 2, 2) + c(100, 100, 100).

...
  |================================================================================================================                              |  79%
| To see another example of how this vector 'recycling' works, try adding c(1, 2, 3, 4) and c(0, 10). Don't worry about saving the result in a new variable.

> c(1,2,3,4) + c(0,10)
[1]  1 12  3 14

| You're the best!
  |====================================================================================================================                          |  82%
| If the length of the shorter vector does not divide evenly into the length of the longer vector, R will still apply the 'recycling' method, but will throw a warning to let you know something fishy might be going on.

...
  |========================================================================================================================                      |  84%
| Try c(1, 2, 3, 4) + c(0, 10, 100) for an example.

> c(1,2,3,4) + c(0,10,100)
[1]   1  12 103   4
Warning message:
In c(1, 2, 3, 4) + c(0, 10, 100) :
  longer object length is not a multiple of shorter object length

| Keep working like that and you'll get there!
  |===========================================================================================================================                   |  87%
| Before concluding this lesson, I'd like to show you a couple of time-saving tricks.

...
  |===============================================================================================================================               |  89%
| Earlier in the lesson, you computed z * 2 + 100. Let's pretend that you made a mistake and that you meant to add 1000 instead of 100. You could either re-type the expression, or...

...
  |===================================================================================================================================           |  92%
| In many programming environments, the up arrow will cycle through previous commands. Try hitting the up arrow on your keyboard until you get to this command (z * 2 + 100), then change 100 to 1000 and hit Enter. If the up arrow doesn't work for you, just
| type the corrected command.

> z * 2 + 1000
[1] 1002.20 1018.00 1006.28

| Your dedication is inspiring!
  |=======================================================================================================================================       |  95%
| Finally, let's pretend you'd like to view the contents of a variable that you created earlier, but you can't seem to remember if you named it my_div or myDiv. You could try both and see what works, or...

...
  |==========================================================================================================================================    |  97%
| You can type the first two letters of the variable name, then hit the Tab key (possibly more than once). Most programming environments will provide a list of variables that you've created that begin with 'my'. This is called auto-completion and can be
| quite handy when you have many variables in your workspace. Give it a try. (If auto-completion doesn't work for you, just type my_div and press Enter.)

> my_div
[1] 3.478505 3.181981 2.146460

| You are doing so well!
  |==============================================================================================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? pramod.voola@gmail.com
What is your assignment token? wRwE5s8g6MUMiJXT
Grade submission succeeded!

| Keep up the great work!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files        3: Sequences of Numbers       4: Vectors                    5: Missing Values             6: Subsetting Vectors         7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply         11: vapply and tapply         12: Looking at Data           13: Simulation                14: Dates and Times           15: Base Graphics             

Selection: 2
  |                                                                                                                                                                                                                                                      |   0%

| In this lesson, you'll learn how to examine your local workspace in R and begin to explore the relationship between your workspace and the file system of your machine.

...
  |======                                                                                                                                                                                                                                                |   3%
| Because different operating systems have different conventions with regards to things like file paths, the outputs of these commands may vary across machines.

...
  |=============                                                                                                                                                                                                                                         |   5%
| However it's important to note that R provides a common API (a common set of commands) for interacting with files, that way your code will work across different kinds of computers.

...
  |===================                                                                                                                                                                                                                                   |   8%
| Let's jump right in so you can get a feel for how these special functions work!

...
  |=========================                                                                                                                                                                                                                             |  10%
| Determine which directory your R session is using as its current working directory using getwd().

> getwd()
[1] "/Users/Pramod"

| You got it!
  |================================                                                                                                                                                                                                                      |  13%
| List all the objects in your local workspace using ls().

> ls()
[1] "my_div"  "my_sqrt" "x"       "y"       "z"      

| That's a job well done!
  |======================================                                                                                                                                                                                                                |  15%
| Some R commands are the same as their equivalents commands on Linux or on a Mac. Both Linux and Mac operating systems are based on an operating system called Unix. It's always a good idea to learn more about Unix!

...getwd()
  |============================================                                                                                                                                                                                                          |  18%
| Assign 9 to x using x <- 9.

> x <- 9

| That's the answer I was looking for.
  |==================================================                                                                                                                                                                                                    |  21%
| Now take a look at objects that are in your workspace using ls().

> ls()
[1] "my_div"  "my_sqrt" "x"       "y"       "z"      

| Nice work!
  |=========================================================                                                                                                                                                                                             |  23%
| List all the files in your working directory using list.files() or dir().

> dir()
[1] "Datatytpes.R"          "myfunction.R"          "PracticingRbasics.txt"

| You're the best!
  |===============================================================                                                                                                                                                                                       |  26%
| As we go through this lesson, you should be examining the help page for each new function. Check out the help page for list.files with the command ?list.files.

> list.files()
[1] "Datatytpes.R"          "myfunction.R"          "PracticingRbasics.txt"

| One more time. You can do it! Or, type info() for more options.

| Type ?list.files to see the help page.

> ?list.files

| Great job!
  |=====================================================================                                                                                                                                                                                 |  28%
| One of the most helpful parts of any R help file is the See Also section. Read that section for list.files. Some of these functions may be used in later portions of this lesson.

...
  |============================================================================                                                                                                                                                                          |  31%
| Using the args() function on a function name is also a handy way to see what arguments a function can take.

...
  |==================================================================================                                                                                                                                                                    |  33%
| Use the args() function to determine the arguments to list.files().

> list.files()
[1] "Datatytpes.R"          "myfunction.R"          "PracticingRbasics.txt"

| One more time. You can do it! Or, type info() for more options.

| Type args(list.files) to see the arguments to list.files.

> args(list.files)
function (path = ".", pattern = NULL, all.files = FALSE, full.names = FALSE, 
    recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, 
    no.. = FALSE) 
NULL

| You got it!
  |========================================================================================                                                                                                                                                              |  36%
| Assign the value of the current working directory to a variable called "old.dir".

> old.dir <- getwd()

| Great job!
  |===============================================================================================                                                                                                                                                       |  38%
| We will use old.dir at the end of this lesson to move back to the place that we started. A lot of query functions like getwd() have the useful property that they return the answer to the question as a result of the function.

...
  |=====================================================================================================                                                                                                                                                 |  41%
| Use dir.create() to create a directory in the current working directory called "testdir".

> dir.create("testdir")

| You are amazing!
  |===========================================================================================================                                                                                                                                           |  44%
| We will do all our work in this new directory and then delete it after we are done. This is the R analog to "Take only pictures, leave only footprints."

...
  |==================================================================================================================                                                                                                                                    |  46%
| Set your working directory to "testdir" with the setwd() command.

> setwd("testdir")

| All that hard work is paying off!
  |========================================================================================================================                                                                                                                              |  49%
| In general, you will want your working directory to be someplace sensible, perhaps created for the specific project that you are working on. In fact, organizing your work in R packages using RStudio is an excellent option. Check out RStudio at http://www.rstudio.com/

...
  |==============================================================================================================================                                                                                                                        |  51%
| Create a file in your working directory called "mytest.R" using the file.create() function.

> file.create("mytest.R")
[1] TRUE

| All that practice is paying off!
  |====================================================================================================================================                                                                                                                  |  54%
| This should be the only file in this newly created directory. Let's check this by listing all the files in the current directory.

> ls()
[1] "my_div"  "my_sqrt" "old.dir" "x"       "y"       "z"      

| You're close...I can feel it! Try it again. Or, type info() for more options.

| list.files() shows that the directory only contains mytest.R.

> list.files()
[1] "mytest.R"

| Excellent job!
  |===========================================================================================================================================                                                                                                           |  56%
| Check to see if "mytest.R" exists in the working directory using the file.exists() function.

> file.exists("mytest.R")
[1] TRUE

| You got it right!
  |=================================================================================================================================================                                                                                                     |  59%
| These sorts of functions are excessive for interactive use. But, if you are running a program that loops through a series of files and does some processing on each one, you will want to check to see that each exists before you try to process it.

...
  |=======================================================================================================================================================                                                                                               |  62%
| Access information about the file "mytest.R" by using file.info().

> file.info("mytest.R")
         size isdir mode               mtime               ctime               atime uid gid  uname grname
mytest.R    0 FALSE  644 2022-01-03 01:24:05 2022-01-03 01:24:05 2022-01-03 01:24:05 501  20 Pramod  staff

| Keep up the great work!
  |==============================================================================================================================================================                                                                                        |  64%
| You can use the $ operator --- e.g., file.info("mytest.R")$mode --- to grab specific items.

...
  |====================================================================================================================================================================                                                                                  |  67%
| Change the name of the file "mytest.R" to "mytest2.R" by using file.rename().

> file.rename("mytest.R", "mytest2.R")
[1] TRUE

| That's a job well done!
  |==========================================================================================================================================================================                                                                            |  69%
| Your operating system will provide simpler tools for these sorts of tasks, but having the ability to manipulate files programatically is useful. You might now try to delete mytest.R using file.remove('mytest.R'), but that won't work since mytest.R no longer exists. You have already
| renamed it.

...
  |=================================================================================================================================================================================                                                                     |  72%
| Make a copy of "mytest2.R" called "mytest3.R" using file.copy().

> file.copy("mytest2.R","mytest3.R")
[1] TRUE

| Your dedication is inspiring!
  |=======================================================================================================================================================================================                                                               |  74%
| You now have two files in the current directory. That may not seem very interesting. But what if you were working with dozens, or millions, of individual files? In that case, being able to programatically act on many files would be absolutely necessary. Don't forget that you can,
| temporarily, leave the lesson by typing play() and then return by typing nxt().

...
  |=============================================================================================================================================================================================                                                         |  77%
| Provide the relative path to the file "mytest3.R" by using file.path().

> file.path("mytest3.R")
[1] "mytest3.R"

| All that practice is paying off!
  |====================================================================================================================================================================================================                                                  |  79%
| You can use file.path to construct file and directory paths that are independent of the operating system your R code is running on. Pass 'folder1' and 'folder2' as arguments to file.path to make a platform-independent pathname.

> file.path('folder1','folder2')
[1] "folder1/folder2"

| Nice work!
  |==========================================================================================================================================================================================================                                            |  82%
| Take a look at the documentation for dir.create by entering ?dir.create . Notice the 'recursive' argument. In order to create nested directories, 'recursive' must be set to TRUE.

> ?dir.create

| Perseverance, that's the answer.
  |================================================================================================================================================================================================================                                      |  85%
| Create a directory in the current working directory called "testdir2" and a subdirectory for it called "testdir3", all in one command by using dir.create() and file.path().

> 